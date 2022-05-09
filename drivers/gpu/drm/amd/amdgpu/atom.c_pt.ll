; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/atom.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/atom.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.92 = type { ptr, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.atom_context = type { ptr, %struct.mutex, ptr, i32, i32, ptr, i16, i32, [2 x i32], i16, i16, i8, i32, i32, i32, ptr, i32, [20 x i8], [64 x i8], [64 x i8], i32, [32 x i8], [32 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atom_exec_context = type { ptr, ptr, ptr, i32, i16, i32, i32, i8 }
%struct._ATOM_ROM_HEADER = type { %struct._ATOM_COMMON_TABLE_HEADER, [4 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8 }
%struct._ATOM_COMMON_TABLE_HEADER = type { i16, i8, i8 }
%struct._ATOM_MASTER_DATA_TABLE = type { %struct._ATOM_COMMON_TABLE_HEADER, %struct._ATOM_MASTER_LIST_OF_DATA_TABLES }
%struct._ATOM_MASTER_LIST_OF_DATA_TABLES = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct._ATOM_FIRMWARE_INFO = type <{ %struct._ATOM_COMMON_TABLE_HEADER, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [3 x i8], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, %union._ATOM_FIRMWARE_CAPABILITY_ACCESS, i16, i16, i8, i8, i8 }>
%union._ATOM_FIRMWARE_CAPABILITY_ACCESS = type { %struct._ATOM_FIRMWARE_CAPABILITY }
%struct._ATOM_FIRMWARE_CAPABILITY = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.card_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@amdgpu_atom_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016amdgpu: Invalid BIOS magic\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amdgpu_atom_parse\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/amd/amdgpu/atom.c\00", [62 x i8] zeroinitializer }, align 32
@amdgpu_atom_parse._entry_ptr = internal global ptr @amdgpu_atom_parse._entry, section ".printk_index", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" 761295520\00", [21 x i8] zeroinitializer }, align 32
@amdgpu_atom_parse._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016amdgpu: Invalid ATI magic\0A\00", [35 x i8] zeroinitializer }, align 32
@amdgpu_atom_parse._entry_ptr.6 = internal global ptr @amdgpu_atom_parse._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ATOM\00", [27 x i8] zeroinitializer }, align 32
@amdgpu_atom_parse._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1490, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016amdgpu: Invalid ATOM magic\0A\00", [34 x i8] zeroinitializer }, align 32
@amdgpu_atom_parse._entry_ptr.10 = internal global ptr @amdgpu_atom_parse._entry.8, section ".printk_index", align 4
@amdgpu_atom_parse._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016amdgpu: ATOM BIOS: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@amdgpu_atom_parse._entry_ptr.13 = internal global ptr @amdgpu_atom_parse._entry.11, section ".printk_index", align 4
@amdgpu_atom_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@amdgpu_atom_execute_table_locked._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"amdgpu_atom_execute_table_locked\00", [63 x i8] zeroinitializer }, align 32
@amdgpu_atom_execute_table_locked._entry_ptr = internal global ptr @amdgpu_atom_execute_table_locked._entry, section ".printk_index", align 4
@debug_depth = internal global { i32, [28 x i8] } zeroinitializer, align 32
@amdgpu_atom_execute_table_locked._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 1221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c">> execute %04X (len %d, WS %d, PS %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@amdgpu_atom_execute_table_locked._entry_ptr.18 = internal global ptr @amdgpu_atom_execute_table_locked._entry.16, section ".printk_index", align 4
@amdgpu_atom_execute_table_locked._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amdgpu_atom_execute_table_locked._entry_ptr.20 = internal global ptr @amdgpu_atom_execute_table_locked._entry.19, section ".printk_index", align 4
@amdgpu_atom_execute_table_locked._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.2, i32 1238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s @ 0x%04X\0A\00", [19 x i8] zeroinitializer }, align 32
@amdgpu_atom_execute_table_locked._entry_ptr.23 = internal global ptr @amdgpu_atom_execute_table_locked._entry.21, section ".printk_index", align 4
@atom_op_names = internal constant { [123 x ptr], [116 x i8] } { [123 x ptr] [ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159], [116 x i8] zeroinitializer }, align 32
@amdgpu_atom_execute_table_locked._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amdgpu_atom_execute_table_locked._entry_ptr.25 = internal global ptr @amdgpu_atom_execute_table_locked._entry.24, section ".printk_index", align 4
@amdgpu_atom_execute_table_locked._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.15, ptr @.str.2, i32 1240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"[%d] @ 0x%04X\0A\00", [17 x i8] zeroinitializer }, align 32
@amdgpu_atom_execute_table_locked._entry_ptr.28 = internal global ptr @amdgpu_atom_execute_table_locked._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"atombios stuck executing %04X (len %d, WS %d, PS %d) @ 0x%04X\0A\00", [33 x i8] zeroinitializer }, align 32
@opcode_table = internal constant { [127 x %struct.anon.92], [232 x i8] } { [127 x %struct.anon.92] [%struct.anon.92 zeroinitializer, %struct.anon.92 { ptr @atom_op_move, i32 0 }, %struct.anon.92 { ptr @atom_op_move, i32 1 }, %struct.anon.92 { ptr @atom_op_move, i32 2 }, %struct.anon.92 { ptr @atom_op_move, i32 3 }, %struct.anon.92 { ptr @atom_op_move, i32 6 }, %struct.anon.92 { ptr @atom_op_move, i32 7 }, %struct.anon.92 { ptr @atom_op_and, i32 0 }, %struct.anon.92 { ptr @atom_op_and, i32 1 }, %struct.anon.92 { ptr @atom_op_and, i32 2 }, %struct.anon.92 { ptr @atom_op_and, i32 3 }, %struct.anon.92 { ptr @atom_op_and, i32 6 }, %struct.anon.92 { ptr @atom_op_and, i32 7 }, %struct.anon.92 { ptr @atom_op_or, i32 0 }, %struct.anon.92 { ptr @atom_op_or, i32 1 }, %struct.anon.92 { ptr @atom_op_or, i32 2 }, %struct.anon.92 { ptr @atom_op_or, i32 3 }, %struct.anon.92 { ptr @atom_op_or, i32 6 }, %struct.anon.92 { ptr @atom_op_or, i32 7 }, %struct.anon.92 { ptr @atom_op_shift_left, i32 0 }, %struct.anon.92 { ptr @atom_op_shift_left, i32 1 }, %struct.anon.92 { ptr @atom_op_shift_left, i32 2 }, %struct.anon.92 { ptr @atom_op_shift_left, i32 3 }, %struct.anon.92 { ptr @atom_op_shift_left, i32 6 }, %struct.anon.92 { ptr @atom_op_shift_left, i32 7 }, %struct.anon.92 { ptr @atom_op_shift_right, i32 0 }, %struct.anon.92 { ptr @atom_op_shift_right, i32 1 }, %struct.anon.92 { ptr @atom_op_shift_right, i32 2 }, %struct.anon.92 { ptr @atom_op_shift_right, i32 3 }, %struct.anon.92 { ptr @atom_op_shift_right, i32 6 }, %struct.anon.92 { ptr @atom_op_shift_right, i32 7 }, %struct.anon.92 { ptr @atom_op_mul, i32 0 }, %struct.anon.92 { ptr @atom_op_mul, i32 1 }, %struct.anon.92 { ptr @atom_op_mul, i32 2 }, %struct.anon.92 { ptr @atom_op_mul, i32 3 }, %struct.anon.92 { ptr @atom_op_mul, i32 6 }, %struct.anon.92 { ptr @atom_op_mul, i32 7 }, %struct.anon.92 { ptr @atom_op_div, i32 0 }, %struct.anon.92 { ptr @atom_op_div, i32 1 }, %struct.anon.92 { ptr @atom_op_div, i32 2 }, %struct.anon.92 { ptr @atom_op_div, i32 3 }, %struct.anon.92 { ptr @atom_op_div, i32 6 }, %struct.anon.92 { ptr @atom_op_div, i32 7 }, %struct.anon.92 { ptr @atom_op_add, i32 0 }, %struct.anon.92 { ptr @atom_op_add, i32 1 }, %struct.anon.92 { ptr @atom_op_add, i32 2 }, %struct.anon.92 { ptr @atom_op_add, i32 3 }, %struct.anon.92 { ptr @atom_op_add, i32 6 }, %struct.anon.92 { ptr @atom_op_add, i32 7 }, %struct.anon.92 { ptr @atom_op_sub, i32 0 }, %struct.anon.92 { ptr @atom_op_sub, i32 1 }, %struct.anon.92 { ptr @atom_op_sub, i32 2 }, %struct.anon.92 { ptr @atom_op_sub, i32 3 }, %struct.anon.92 { ptr @atom_op_sub, i32 6 }, %struct.anon.92 { ptr @atom_op_sub, i32 7 }, %struct.anon.92 { ptr @atom_op_setport, i32 0 }, %struct.anon.92 { ptr @atom_op_setport, i32 1 }, %struct.anon.92 { ptr @atom_op_setport, i32 2 }, %struct.anon.92 { ptr @atom_op_setregblock, i32 0 }, %struct.anon.92 { ptr @atom_op_setfbbase, i32 0 }, %struct.anon.92 { ptr @atom_op_compare, i32 0 }, %struct.anon.92 { ptr @atom_op_compare, i32 1 }, %struct.anon.92 { ptr @atom_op_compare, i32 2 }, %struct.anon.92 { ptr @atom_op_compare, i32 3 }, %struct.anon.92 { ptr @atom_op_compare, i32 6 }, %struct.anon.92 { ptr @atom_op_compare, i32 7 }, %struct.anon.92 { ptr @atom_op_switch, i32 0 }, %struct.anon.92 { ptr @atom_op_jump, i32 2 }, %struct.anon.92 { ptr @atom_op_jump, i32 5 }, %struct.anon.92 { ptr @atom_op_jump, i32 3 }, %struct.anon.92 { ptr @atom_op_jump, i32 0 }, %struct.anon.92 { ptr @atom_op_jump, i32 4 }, %struct.anon.92 { ptr @atom_op_jump, i32 1 }, %struct.anon.92 { ptr @atom_op_jump, i32 6 }, %struct.anon.92 { ptr @atom_op_test, i32 0 }, %struct.anon.92 { ptr @atom_op_test, i32 1 }, %struct.anon.92 { ptr @atom_op_test, i32 2 }, %struct.anon.92 { ptr @atom_op_test, i32 3 }, %struct.anon.92 { ptr @atom_op_test, i32 6 }, %struct.anon.92 { ptr @atom_op_test, i32 7 }, %struct.anon.92 { ptr @atom_op_delay, i32 1 }, %struct.anon.92 { ptr @atom_op_delay, i32 0 }, %struct.anon.92 { ptr @atom_op_calltable, i32 0 }, %struct.anon.92 { ptr @atom_op_repeat, i32 0 }, %struct.anon.92 { ptr @atom_op_clear, i32 0 }, %struct.anon.92 { ptr @atom_op_clear, i32 1 }, %struct.anon.92 { ptr @atom_op_clear, i32 2 }, %struct.anon.92 { ptr @atom_op_clear, i32 3 }, %struct.anon.92 { ptr @atom_op_clear, i32 6 }, %struct.anon.92 { ptr @atom_op_clear, i32 7 }, %struct.anon.92 { ptr @atom_op_nop, i32 0 }, %struct.anon.92 { ptr @atom_op_eot, i32 0 }, %struct.anon.92 { ptr @atom_op_mask, i32 0 }, %struct.anon.92 { ptr @atom_op_mask, i32 1 }, %struct.anon.92 { ptr @atom_op_mask, i32 2 }, %struct.anon.92 { ptr @atom_op_mask, i32 3 }, %struct.anon.92 { ptr @atom_op_mask, i32 6 }, %struct.anon.92 { ptr @atom_op_mask, i32 7 }, %struct.anon.92 { ptr @atom_op_postcard, i32 0 }, %struct.anon.92 { ptr @atom_op_beep, i32 0 }, %struct.anon.92 { ptr @atom_op_savereg, i32 0 }, %struct.anon.92 { ptr @atom_op_restorereg, i32 0 }, %struct.anon.92 { ptr @atom_op_setdatablock, i32 0 }, %struct.anon.92 { ptr @atom_op_xor, i32 0 }, %struct.anon.92 { ptr @atom_op_xor, i32 1 }, %struct.anon.92 { ptr @atom_op_xor, i32 2 }, %struct.anon.92 { ptr @atom_op_xor, i32 3 }, %struct.anon.92 { ptr @atom_op_xor, i32 6 }, %struct.anon.92 { ptr @atom_op_xor, i32 7 }, %struct.anon.92 { ptr @atom_op_shl, i32 0 }, %struct.anon.92 { ptr @atom_op_shl, i32 1 }, %struct.anon.92 { ptr @atom_op_shl, i32 2 }, %struct.anon.92 { ptr @atom_op_shl, i32 3 }, %struct.anon.92 { ptr @atom_op_shl, i32 6 }, %struct.anon.92 { ptr @atom_op_shl, i32 7 }, %struct.anon.92 { ptr @atom_op_shr, i32 0 }, %struct.anon.92 { ptr @atom_op_shr, i32 1 }, %struct.anon.92 { ptr @atom_op_shr, i32 2 }, %struct.anon.92 { ptr @atom_op_shr, i32 3 }, %struct.anon.92 { ptr @atom_op_shr, i32 6 }, %struct.anon.92 { ptr @atom_op_shr, i32 7 }, %struct.anon.92 { ptr @atom_op_debug, i32 0 }, %struct.anon.92 { ptr @atom_op_processds, i32 0 }, %struct.anon.92 { ptr @atom_op_mul32, i32 1 }, %struct.anon.92 { ptr @atom_op_mul32, i32 2 }, %struct.anon.92 { ptr @atom_op_div32, i32 1 }, %struct.anon.92 { ptr @atom_op_div32, i32 2 }], [232 x i8] zeroinitializer }, align 32
@amdgpu_atom_execute_table_locked._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@amdgpu_atom_execute_table_locked._entry_ptr.31 = internal global ptr @amdgpu_atom_execute_table_locked._entry.30, section ".printk_index", align 4
@amdgpu_atom_execute_table_locked._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.15, ptr @.str.2, i32 1258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<<\0A\00", [28 x i8] zeroinitializer }, align 32
@amdgpu_atom_execute_table_locked._entry_ptr.34 = internal global ptr @amdgpu_atom_execute_table_locked._entry.32, section ".printk_index", align 4
@debug_print_spaces._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 97, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"   \00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"debug_print_spaces\00", [45 x i8] zeroinitializer }, align 32
@debug_print_spaces._entry_ptr = internal global ptr @debug_print_spaces._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RESERVED\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MOVE_REG\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MOVE_PS\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MOVE_WS\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MOVE_FB\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MOVE_PLL\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MOVE_MC\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AND_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AND_PS\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AND_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AND_FB\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AND_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AND_MC\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OR_REG\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OR_PS\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OR_WS\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OR_FB\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"OR_PLL\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OR_MC\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SHIFT_LEFT_REG\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SHIFT_LEFT_PS\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SHIFT_LEFT_WS\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SHIFT_LEFT_FB\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SHIFT_LEFT_PLL\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SHIFT_LEFT_MC\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SHIFT_RIGHT_REG\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SHIFT_RIGHT_PS\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SHIFT_RIGHT_WS\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SHIFT_RIGHT_FB\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SHIFT_RIGHT_PLL\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SHIFT_RIGHT_MC\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MUL_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MUL_PS\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MUL_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MUL_FB\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MUL_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MUL_MC\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DIV_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIV_PS\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIV_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIV_FB\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DIV_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DIV_MC\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADD_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADD_PS\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADD_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADD_FB\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADD_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADD_MC\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SUB_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SUB_PS\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SUB_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SUB_FB\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SUB_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SUB_MC\00", [25 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET_ATI_PORT\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET_PCI_PORT\00", [19 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SET_SYS_IO_PORT\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SET_REG_BLOCK\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SET_FB_BASE\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"COMPARE_REG\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"COMPARE_PS\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"COMPARE_WS\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"COMPARE_FB\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"COMPARE_PLL\00", [20 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"COMPARE_MC\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SWITCH\00", [25 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"JUMP\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"JUMP_EQUAL\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"JUMP_BELOW\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"JUMP_ABOVE\00", [21 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"JUMP_BELOW_OR_EQUAL\00", [44 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"JUMP_ABOVE_OR_EQUAL\00", [44 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"JUMP_NOT_EQUAL\00", [17 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TEST_REG\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TEST_PS\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TEST_WS\00", [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TEST_FB\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TEST_PLL\00", [23 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TEST_MC\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DELAY_MILLISEC\00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DELAY_MICROSEC\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CALL_TABLE\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"REPEAT\00", [25 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CLEAR_REG\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLEAR_PS\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLEAR_WS\00", [23 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLEAR_FB\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CLEAR_PLL\00", [22 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLEAR_MC\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NOP\00", [28 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EOT\00", [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MASK_REG\00", [23 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MASK_PS\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MASK_WS\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MASK_FB\00", [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MASK_PLL\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MASK_MC\00", [24 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"POST_CARD\00", [22 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BEEP\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SAVE_REG\00", [23 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RESTORE_REG\00", [20 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SET_DATA_BLOCK\00", [17 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XOR_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XOR_PS\00", [25 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XOR_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XOR_FB\00", [25 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"XOR_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"XOR_MC\00", [25 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SHL_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHL_PS\00", [25 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHL_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHL_FB\00", [25 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SHL_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHL_MC\00", [25 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SHR_REG\00", [24 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHR_PS\00", [25 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHR_WS\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHR_FB\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SHR_PLL\00", [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SHR_MC\00", [25 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DEBUG\00", [26 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CTB_DS\00", [25 x i8] zeroinitializer }, align 32
@atom_op_move._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.160, ptr @.str.2, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atom_op_move\00", [19 x i8] zeroinitializer }, align 32
@atom_op_move._entry_ptr = internal global ptr @atom_op_move._entry, section ".printk_index", align 4
@atom_op_move._entry.161 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.160, ptr @.str.2, i32 795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"   src: \00", [23 x i8] zeroinitializer }, align 32
@atom_op_move._entry_ptr.163 = internal global ptr @atom_op_move._entry.161, section ".printk_index", align 4
@atom_op_move._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.160, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_move._entry_ptr.165 = internal global ptr @atom_op_move._entry.164, section ".printk_index", align 4
@atom_op_move._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.160, ptr @.str.2, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"   dst: \00", [23 x i8] zeroinitializer }, align 32
@atom_op_move._entry_ptr.168 = internal global ptr @atom_op_move._entry.166, section ".printk_index", align 4
@atom_dst_to_src = internal constant { [8 x [4 x i32]], [32 x i8] } { [8 x [4 x i32]] [[4 x i32] zeroinitializer, [4 x i32] [i32 1, i32 2, i32 3, i32 0], [4 x i32] [i32 1, i32 2, i32 3, i32 0], [4 x i32] [i32 1, i32 2, i32 3, i32 0], [4 x i32] [i32 4, i32 5, i32 6, i32 7], [4 x i32] [i32 4, i32 5, i32 6, i32 7], [4 x i32] [i32 4, i32 5, i32 6, i32 7], [4 x i32] [i32 4, i32 5, i32 6, i32 7]], [32 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.170, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017REG[0x%04X]\00", [18 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atom_get_src_int\00", [47 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr = internal global ptr @atom_get_src_int._entry, section ".printk_index", align 4
@atom_get_src_int._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.170, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016amdgpu: PCI registers are not implemented\0A\00", [51 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.173 = internal global ptr @atom_get_src_int._entry.171, section ".printk_index", align 4
@atom_get_src_int._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.170, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016amdgpu: SYSIO registers are not implemented\0A\00", [49 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.176 = internal global ptr @atom_get_src_int._entry.174, section ".printk_index", align 4
@atom_get_src_int._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.170, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016amdgpu: Bad IO mode\0A\00", [41 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.179 = internal global ptr @atom_get_src_int._entry.177, section ".printk_index", align 4
@atom_get_src_int._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.170, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016amdgpu: Undefined indirect IO read method %d\0A\00", [48 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.182 = internal global ptr @atom_get_src_int._entry.180, section ".printk_index", align 4
@atom_get_src_int._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.170, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017PS[0x%02X,0x%04X]\00", [44 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.185 = internal global ptr @atom_get_src_int._entry.183, section ".printk_index", align 4
@atom_get_src_int._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.170, ptr @.str.2, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017WS[0x%02X]\00", [19 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.188 = internal global ptr @atom_get_src_int._entry.186, section ".printk_index", align 4
@atom_get_src_int._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.170, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017ID[0x%04X+%04X]\00", [46 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.191 = internal global ptr @atom_get_src_int._entry.189, section ".printk_index", align 4
@atom_get_src_int._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.170, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017ID[0x%04X]\00", [19 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.194 = internal global ptr @atom_get_src_int._entry.192, section ".printk_index", align 4
@.str.195 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"ATOM: fb read beyond scratch region: %d vs. %d\0A\00", [48 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.170, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017FB[0x%02X]\00", [19 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.198 = internal global ptr @atom_get_src_int._entry.196, section ".printk_index", align 4
@atom_get_src_int._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.170, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017IMM 0x%08X\0A\00", [18 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.201 = internal global ptr @atom_get_src_int._entry.199, section ".printk_index", align 4
@atom_get_src_int._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.170, ptr @.str.2, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017IMM 0x%04X\0A\00", [18 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.204 = internal global ptr @atom_get_src_int._entry.202, section ".printk_index", align 4
@atom_get_src_int._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.170, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017IMM 0x%02X\0A\00", [18 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.207 = internal global ptr @atom_get_src_int._entry.205, section ".printk_index", align 4
@atom_get_src_int._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.170, ptr @.str.2, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\017PLL[0x%02X]\00", [18 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.210 = internal global ptr @atom_get_src_int._entry.208, section ".printk_index", align 4
@atom_get_src_int._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.170, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017MC[0x%02X]\00", [19 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.213 = internal global ptr @atom_get_src_int._entry.211, section ".printk_index", align 4
@atom_arg_mask = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 65535, i32 16776960, i32 -65536, i32 255, i32 65280, i32 16711680, i32 -16777216], [32 x i8] zeroinitializer }, align 32
@atom_arg_shift = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 8, i32 16, i32 0, i32 8, i32 16, i32 24], [32 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.170, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017.[31:0] -> 0x%08X\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.216 = internal global ptr @atom_get_src_int._entry.214, section ".printk_index", align 4
@atom_get_src_int._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.170, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017.[15:0] -> 0x%04X\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.219 = internal global ptr @atom_get_src_int._entry.217, section ".printk_index", align 4
@atom_get_src_int._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.170, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017.[23:8] -> 0x%04X\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.222 = internal global ptr @atom_get_src_int._entry.220, section ".printk_index", align 4
@atom_get_src_int._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.170, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017.[31:16] -> 0x%04X\0A\00", [42 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.225 = internal global ptr @atom_get_src_int._entry.223, section ".printk_index", align 4
@atom_get_src_int._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.170, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017.[7:0] -> 0x%02X\0A\00", [44 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.228 = internal global ptr @atom_get_src_int._entry.226, section ".printk_index", align 4
@atom_get_src_int._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.170, ptr @.str.2, i32 352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017.[15:8] -> 0x%02X\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.231 = internal global ptr @atom_get_src_int._entry.229, section ".printk_index", align 4
@atom_get_src_int._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.170, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017.[23:16] -> 0x%02X\0A\00", [42 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.234 = internal global ptr @atom_get_src_int._entry.232, section ".printk_index", align 4
@atom_get_src_int._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.170, ptr @.str.2, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017.[31:24] -> 0x%02X\0A\00", [42 x i8] zeroinitializer }, align 32
@atom_get_src_int._entry_ptr.237 = internal global ptr @atom_get_src_int._entry.235, section ".printk_index", align 4
@atom_iio_execute._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.239, ptr @.str.2, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016amdgpu: Unknown IIO opcode\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atom_iio_execute\00", [47 x i8] zeroinitializer }, align 32
@atom_iio_execute._entry_ptr = internal global ptr @atom_iio_execute._entry, section ".printk_index", align 4
@atom_put_dst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.240, ptr @.str.2, i32 463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atom_put_dst\00", [19 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr = internal global ptr @atom_put_dst._entry, section ".printk_index", align 4
@atom_put_dst._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.240, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.242 = internal global ptr @atom_put_dst._entry.241, section ".printk_index", align 4
@atom_put_dst._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.240, ptr @.str.2, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.244 = internal global ptr @atom_put_dst._entry.243, section ".printk_index", align 4
@atom_put_dst._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.240, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.246 = internal global ptr @atom_put_dst._entry.245, section ".printk_index", align 4
@atom_put_dst._entry.247 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.248, ptr @.str.240, ptr @.str.2, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016amdgpu: Undefined indirect IO write method %d\0A\00", [47 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.249 = internal global ptr @atom_put_dst._entry.247, section ".printk_index", align 4
@atom_put_dst._entry.250 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.251, ptr @.str.240, ptr @.str.2, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017PS[0x%02X]\00", [19 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.252 = internal global ptr @atom_put_dst._entry.250, section ".printk_index", align 4
@atom_put_dst._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.240, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.254 = internal global ptr @atom_put_dst._entry.253, section ".printk_index", align 4
@.str.255 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ATOM: fb write beyond scratch region: %d vs. %d\0A\00", [47 x i8] zeroinitializer }, align 32
@atom_put_dst._entry.256 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.240, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.257 = internal global ptr @atom_put_dst._entry.256, section ".printk_index", align 4
@atom_put_dst._entry.258 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.240, ptr @.str.2, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.259 = internal global ptr @atom_put_dst._entry.258, section ".printk_index", align 4
@atom_put_dst._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.240, ptr @.str.2, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.261 = internal global ptr @atom_put_dst._entry.260, section ".printk_index", align 4
@atom_put_dst._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.263, ptr @.str.240, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017.[31:0] <- 0x%08X\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.264 = internal global ptr @atom_put_dst._entry.262, section ".printk_index", align 4
@atom_put_dst._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.240, ptr @.str.2, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017.[15:0] <- 0x%04X\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.267 = internal global ptr @atom_put_dst._entry.265, section ".printk_index", align 4
@atom_put_dst._entry.268 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.240, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017.[23:8] <- 0x%04X\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.270 = internal global ptr @atom_put_dst._entry.268, section ".printk_index", align 4
@atom_put_dst._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.240, ptr @.str.2, i32 566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017.[31:16] <- 0x%04X\0A\00", [42 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.273 = internal global ptr @atom_put_dst._entry.271, section ".printk_index", align 4
@atom_put_dst._entry.274 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.275, ptr @.str.240, ptr @.str.2, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017.[7:0] <- 0x%02X\0A\00", [44 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.276 = internal global ptr @atom_put_dst._entry.274, section ".printk_index", align 4
@atom_put_dst._entry.277 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.240, ptr @.str.2, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017.[15:8] <- 0x%02X\0A\00", [43 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.279 = internal global ptr @atom_put_dst._entry.277, section ".printk_index", align 4
@atom_put_dst._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.240, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017.[23:16] <- 0x%02X\0A\00", [42 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.282 = internal global ptr @atom_put_dst._entry.280, section ".printk_index", align 4
@atom_put_dst._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.240, ptr @.str.2, i32 578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017.[31:24] <- 0x%02X\0A\00", [42 x i8] zeroinitializer }, align 32
@atom_put_dst._entry_ptr.285 = internal global ptr @atom_put_dst._entry.283, section ".printk_index", align 4
@atom_op_and._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.286, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atom_op_and\00", [20 x i8] zeroinitializer }, align 32
@atom_op_and._entry_ptr = internal global ptr @atom_op_and._entry, section ".printk_index", align 4
@atom_op_and._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.286, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_and._entry_ptr.288 = internal global ptr @atom_op_and._entry.287, section ".printk_index", align 4
@atom_op_and._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.286, ptr @.str.2, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_and._entry_ptr.290 = internal global ptr @atom_op_and._entry.289, section ".printk_index", align 4
@atom_op_and._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.286, ptr @.str.2, i32 604, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_and._entry_ptr.292 = internal global ptr @atom_op_and._entry.291, section ".printk_index", align 4
@atom_op_and._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.286, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_and._entry_ptr.294 = internal global ptr @atom_op_and._entry.293, section ".printk_index", align 4
@atom_op_and._entry.295 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.286, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_and._entry_ptr.296 = internal global ptr @atom_op_and._entry.295, section ".printk_index", align 4
@atom_op_or._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.297, ptr @.str.2, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"atom_op_or\00", [21 x i8] zeroinitializer }, align 32
@atom_op_or._entry_ptr = internal global ptr @atom_op_or._entry, section ".printk_index", align 4
@atom_op_or._entry.298 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.297, ptr @.str.2, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_or._entry_ptr.299 = internal global ptr @atom_op_or._entry.298, section ".printk_index", align 4
@atom_op_or._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.297, ptr @.str.2, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_or._entry_ptr.301 = internal global ptr @atom_op_or._entry.300, section ".printk_index", align 4
@atom_op_or._entry.302 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.297, ptr @.str.2, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_or._entry_ptr.303 = internal global ptr @atom_op_or._entry.302, section ".printk_index", align 4
@atom_op_or._entry.304 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.297, ptr @.str.2, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_or._entry_ptr.305 = internal global ptr @atom_op_or._entry.304, section ".printk_index", align 4
@atom_op_or._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.297, ptr @.str.2, i32 841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_or._entry_ptr.307 = internal global ptr @atom_op_or._entry.306, section ".printk_index", align 4
@atom_def_dst = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 3], [32 x i8] zeroinitializer }, align 32
@atom_op_shift_left._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.308, ptr @.str.2, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atom_op_shift_left\00", [45 x i8] zeroinitializer }, align 32
@atom_op_shift_left._entry_ptr = internal global ptr @atom_op_shift_left._entry, section ".printk_index", align 4
@atom_op_shift_left._entry.309 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.308, ptr @.str.2, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_left._entry_ptr.310 = internal global ptr @atom_op_shift_left._entry.309, section ".printk_index", align 4
@atom_op_shift_left._entry.311 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.308, ptr @.str.2, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_left._entry_ptr.312 = internal global ptr @atom_op_shift_left._entry.311, section ".printk_index", align 4
@atom_op_shift_left._entry.313 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.308, ptr @.str.2, i32 931, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"   shift: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@atom_op_shift_left._entry_ptr.315 = internal global ptr @atom_op_shift_left._entry.313, section ".printk_index", align 4
@atom_op_shift_left._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.308, ptr @.str.2, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_left._entry_ptr.317 = internal global ptr @atom_op_shift_left._entry.316, section ".printk_index", align 4
@atom_op_shift_left._entry.318 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.308, ptr @.str.2, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_left._entry_ptr.319 = internal global ptr @atom_op_shift_left._entry.318, section ".printk_index", align 4
@atom_op_shift_right._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.320, ptr @.str.2, i32 944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atom_op_shift_right\00", [44 x i8] zeroinitializer }, align 32
@atom_op_shift_right._entry_ptr = internal global ptr @atom_op_shift_right._entry, section ".printk_index", align 4
@atom_op_shift_right._entry.321 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.320, ptr @.str.2, i32 944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_right._entry_ptr.322 = internal global ptr @atom_op_shift_right._entry.321, section ".printk_index", align 4
@atom_op_shift_right._entry.323 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.320, ptr @.str.2, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_right._entry_ptr.324 = internal global ptr @atom_op_shift_right._entry.323, section ".printk_index", align 4
@atom_op_shift_right._entry.325 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.320, ptr @.str.2, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_right._entry_ptr.326 = internal global ptr @atom_op_shift_right._entry.325, section ".printk_index", align 4
@atom_op_shift_right._entry.327 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.320, ptr @.str.2, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_right._entry_ptr.328 = internal global ptr @atom_op_shift_right._entry.327, section ".printk_index", align 4
@atom_op_shift_right._entry.329 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.320, ptr @.str.2, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shift_right._entry_ptr.330 = internal global ptr @atom_op_shift_right._entry.329, section ".printk_index", align 4
@atom_op_mul._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.331, ptr @.str.2, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atom_op_mul\00", [20 x i8] zeroinitializer }, align 32
@atom_op_mul._entry_ptr = internal global ptr @atom_op_mul._entry, section ".printk_index", align 4
@atom_op_mul._entry.332 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.331, ptr @.str.2, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"   src1: \00", [22 x i8] zeroinitializer }, align 32
@atom_op_mul._entry_ptr.334 = internal global ptr @atom_op_mul._entry.332, section ".printk_index", align 4
@atom_op_mul._entry.335 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.331, ptr @.str.2, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mul._entry_ptr.336 = internal global ptr @atom_op_mul._entry.335, section ".printk_index", align 4
@atom_op_mul._entry.337 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.338, ptr @.str.331, ptr @.str.2, i32 807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"   src2: \00", [22 x i8] zeroinitializer }, align 32
@atom_op_mul._entry_ptr.339 = internal global ptr @atom_op_mul._entry.337, section ".printk_index", align 4
@atom_op_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.340, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atom_op_div\00", [20 x i8] zeroinitializer }, align 32
@atom_op_div._entry_ptr = internal global ptr @atom_op_div._entry, section ".printk_index", align 4
@atom_op_div._entry.341 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.340, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_div._entry_ptr.342 = internal global ptr @atom_op_div._entry.341, section ".printk_index", align 4
@atom_op_div._entry.343 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.340, ptr @.str.2, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_div._entry_ptr.344 = internal global ptr @atom_op_div._entry.343, section ".printk_index", align 4
@atom_op_div._entry.345 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.338, ptr @.str.340, ptr @.str.2, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_div._entry_ptr.346 = internal global ptr @atom_op_div._entry.345, section ".printk_index", align 4
@atom_op_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.347, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atom_op_add\00", [20 x i8] zeroinitializer }, align 32
@atom_op_add._entry_ptr = internal global ptr @atom_op_add._entry, section ".printk_index", align 4
@atom_op_add._entry.348 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.347, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_add._entry_ptr.349 = internal global ptr @atom_op_add._entry.348, section ".printk_index", align 4
@atom_op_add._entry.350 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.347, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_add._entry_ptr.351 = internal global ptr @atom_op_add._entry.350, section ".printk_index", align 4
@atom_op_add._entry.352 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.347, ptr @.str.2, i32 590, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_add._entry_ptr.353 = internal global ptr @atom_op_add._entry.352, section ".printk_index", align 4
@atom_op_add._entry.354 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.347, ptr @.str.2, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_add._entry_ptr.355 = internal global ptr @atom_op_add._entry.354, section ".printk_index", align 4
@atom_op_add._entry.356 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.347, ptr @.str.2, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_add._entry_ptr.357 = internal global ptr @atom_op_add._entry.356, section ".printk_index", align 4
@atom_op_sub._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.358, ptr @.str.2, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atom_op_sub\00", [20 x i8] zeroinitializer }, align 32
@atom_op_sub._entry_ptr = internal global ptr @atom_op_sub._entry, section ".printk_index", align 4
@atom_op_sub._entry.359 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.358, ptr @.str.2, i32 996, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_sub._entry_ptr.360 = internal global ptr @atom_op_sub._entry.359, section ".printk_index", align 4
@atom_op_sub._entry.361 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.358, ptr @.str.2, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_sub._entry_ptr.362 = internal global ptr @atom_op_sub._entry.361, section ".printk_index", align 4
@atom_op_sub._entry.363 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.358, ptr @.str.2, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_sub._entry_ptr.364 = internal global ptr @atom_op_sub._entry.363, section ".printk_index", align 4
@atom_op_sub._entry.365 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.358, ptr @.str.2, i32 1001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_sub._entry_ptr.366 = internal global ptr @atom_op_sub._entry.365, section ".printk_index", align 4
@atom_op_sub._entry.367 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.358, ptr @.str.2, i32 1001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_sub._entry_ptr.368 = internal global ptr @atom_op_sub._entry.367, section ".printk_index", align 4
@atom_op_setport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.369, ptr @.str.2, i32 894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atom_op_setport\00", [16 x i8] zeroinitializer }, align 32
@atom_op_setport._entry_ptr = internal global ptr @atom_op_setport._entry, section ".printk_index", align 4
@atom_op_setport._entry.370 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.371, ptr @.str.369, ptr @.str.2, i32 894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"   port: %d (%s)\0A\00", [46 x i8] zeroinitializer }, align 32
@atom_op_setport._entry_ptr.372 = internal global ptr @atom_op_setport._entry.370, section ".printk_index", align 4
@atom_io_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.382], [44 x i8] zeroinitializer }, align 32
@atom_op_setport._entry.373 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.369, ptr @.str.2, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_setport._entry_ptr.374 = internal global ptr @atom_op_setport._entry.373, section ".printk_index", align 4
@atom_op_setport._entry.375 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.376, ptr @.str.369, ptr @.str.2, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"   port: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@atom_op_setport._entry_ptr.377 = internal global ptr @atom_op_setport._entry.375, section ".printk_index", align 4
@.str.378 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MM\00", [29 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PLL\00", [28 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"MC\00", [29 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PCIE\00", [27 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCIE PORT\00", [22 x i8] zeroinitializer }, align 32
@atom_op_setregblock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.383, ptr @.str.2, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atom_op_setregblock\00", [44 x i8] zeroinitializer }, align 32
@atom_op_setregblock._entry_ptr = internal global ptr @atom_op_setregblock._entry, section ".printk_index", align 4
@atom_op_setregblock._entry.384 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.385, ptr @.str.383, ptr @.str.2, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.385 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"   base: 0x%04X\0A\00", [47 x i8] zeroinitializer }, align 32
@atom_op_setregblock._entry_ptr.386 = internal global ptr @atom_op_setregblock._entry.384, section ".printk_index", align 4
@atom_op_setfbbase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.387, ptr @.str.2, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atom_op_setfbbase\00", [46 x i8] zeroinitializer }, align 32
@atom_op_setfbbase._entry_ptr = internal global ptr @atom_op_setfbbase._entry, section ".printk_index", align 4
@atom_op_setfbbase._entry.388 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.389, ptr @.str.387, ptr @.str.2, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"   fb_base: \00", [19 x i8] zeroinitializer }, align 32
@atom_op_setfbbase._entry_ptr.390 = internal global ptr @atom_op_setfbbase._entry.388, section ".printk_index", align 4
@atom_op_compare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.391, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.391 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atom_op_compare\00", [16 x i8] zeroinitializer }, align 32
@atom_op_compare._entry_ptr = internal global ptr @atom_op_compare._entry, section ".printk_index", align 4
@atom_op_compare._entry.392 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.391, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_compare._entry_ptr.393 = internal global ptr @atom_op_compare._entry.392, section ".printk_index", align 4
@atom_op_compare._entry.394 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.391, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_compare._entry_ptr.395 = internal global ptr @atom_op_compare._entry.394, section ".printk_index", align 4
@atom_op_compare._entry.396 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.338, ptr @.str.391, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_compare._entry_ptr.397 = internal global ptr @atom_op_compare._entry.396, section ".printk_index", align 4
@atom_op_compare._entry.398 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.391, ptr @.str.2, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_compare._entry_ptr.399 = internal global ptr @atom_op_compare._entry.398, section ".printk_index", align 4
@atom_op_compare._entry.400 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.401, ptr @.str.391, ptr @.str.2, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"   result: %s %s\0A\00", [46 x i8] zeroinitializer }, align 32
@atom_op_compare._entry_ptr.402 = internal global ptr @atom_op_compare._entry.400, section ".printk_index", align 4
@.str.403 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EQ\00", [29 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NE\00", [29 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GT\00", [29 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LE\00", [29 x i8] zeroinitializer }, align 32
@atom_op_switch._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.407, ptr @.str.2, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atom_op_switch\00", [17 x i8] zeroinitializer }, align 32
@atom_op_switch._entry_ptr = internal global ptr @atom_op_switch._entry, section ".printk_index", align 4
@atom_op_switch._entry.408 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.409, ptr @.str.407, ptr @.str.2, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"   switch: \00", [20 x i8] zeroinitializer }, align 32
@atom_op_switch._entry_ptr.410 = internal global ptr @atom_op_switch._entry.408, section ".printk_index", align 4
@atom_op_switch._entry.411 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.407, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_switch._entry_ptr.412 = internal global ptr @atom_op_switch._entry.411, section ".printk_index", align 4
@atom_op_switch._entry.413 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.414, ptr @.str.407, ptr @.str.2, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"   case: \00", [22 x i8] zeroinitializer }, align 32
@atom_op_switch._entry_ptr.415 = internal global ptr @atom_op_switch._entry.413, section ".printk_index", align 4
@atom_op_switch._entry.416 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.407, ptr @.str.2, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_switch._entry_ptr.417 = internal global ptr @atom_op_switch._entry.416, section ".printk_index", align 4
@atom_op_switch._entry.418 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.419, ptr @.str.407, ptr @.str.2, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.419 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"   target: %04X\0A\00", [47 x i8] zeroinitializer }, align 32
@atom_op_switch._entry_ptr.420 = internal global ptr @atom_op_switch._entry.418, section ".printk_index", align 4
@atom_op_switch._entry.421 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.422, ptr @.str.407, ptr @.str.2, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016amdgpu: Bad case\0A\00", [44 x i8] zeroinitializer }, align 32
@atom_op_switch._entry_ptr.423 = internal global ptr @atom_op_switch._entry.421, section ".printk_index", align 4
@atom_op_jump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.424, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atom_op_jump\00", [19 x i8] zeroinitializer }, align 32
@atom_op_jump._entry_ptr = internal global ptr @atom_op_jump._entry, section ".printk_index", align 4
@atom_op_jump._entry.425 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.426, ptr @.str.424, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"   taken: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@atom_op_jump._entry_ptr.427 = internal global ptr @atom_op_jump._entry.425, section ".printk_index", align 4
@.str.428 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.429 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@atom_op_jump._entry.430 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.424, ptr @.str.2, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_jump._entry_ptr.431 = internal global ptr @atom_op_jump._entry.430, section ".printk_index", align 4
@atom_op_jump._entry.432 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.433, ptr @.str.424, ptr @.str.2, i32 744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.433 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"   target: 0x%04X\0A\00", [45 x i8] zeroinitializer }, align 32
@atom_op_jump._entry_ptr.434 = internal global ptr @atom_op_jump._entry.432, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.435 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"atombios stuck in loop for more than %dsecs aborting\0A\00", [42 x i8] zeroinitializer }, align 32
@atom_op_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.436, ptr @.str.2, i32 1036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.436 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atom_op_test\00", [19 x i8] zeroinitializer }, align 32
@atom_op_test._entry_ptr = internal global ptr @atom_op_test._entry, section ".printk_index", align 4
@atom_op_test._entry.437 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.436, ptr @.str.2, i32 1036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_test._entry_ptr.438 = internal global ptr @atom_op_test._entry.437, section ".printk_index", align 4
@atom_op_test._entry.439 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.436, ptr @.str.2, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_test._entry_ptr.440 = internal global ptr @atom_op_test._entry.439, section ".printk_index", align 4
@atom_op_test._entry.441 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.338, ptr @.str.436, ptr @.str.2, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_test._entry_ptr.442 = internal global ptr @atom_op_test._entry.441, section ".printk_index", align 4
@atom_op_test._entry.443 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.436, ptr @.str.2, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_test._entry_ptr.444 = internal global ptr @atom_op_test._entry.443, section ".printk_index", align 4
@atom_op_test._entry.445 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.446, ptr @.str.436, ptr @.str.2, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.446 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"   result: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@atom_op_test._entry_ptr.447 = internal global ptr @atom_op_test._entry.445, section ".printk_index", align 4
@atom_op_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.448, ptr @.str.2, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.448 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atom_op_delay\00", [18 x i8] zeroinitializer }, align 32
@atom_op_delay._entry_ptr = internal global ptr @atom_op_delay._entry, section ".printk_index", align 4
@atom_op_delay._entry.449 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.450, ptr @.str.448, ptr @.str.2, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.450 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"   count: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@atom_op_delay._entry_ptr.451 = internal global ptr @atom_op_delay._entry.449, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kgdb_active = external dso_local global %struct.atomic_t, align 4
@atom_op_calltable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.452, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.452 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atom_op_calltable\00", [46 x i8] zeroinitializer }, align 32
@atom_op_calltable._entry_ptr = internal global ptr @atom_op_calltable._entry, section ".printk_index", align 4
@atom_op_calltable._entry.453 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.454, ptr @.str.452, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.454 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"   table: %d (%s)\0A\00", [45 x i8] zeroinitializer }, align 32
@atom_op_calltable._entry_ptr.455 = internal global ptr @atom_op_calltable._entry.453, section ".printk_index", align 4
@atom_table_names = internal constant { [74 x ptr], [88 x i8] } { [74 x ptr] [ptr @.str.461, ptr @.str.462, ptr @.str.463, ptr @.str.464, ptr @.str.465, ptr @.str.466, ptr @.str.467, ptr @.str.468, ptr @.str.469, ptr @.str.470, ptr @.str.471, ptr @.str.472, ptr @.str.473, ptr @.str.474, ptr @.str.475, ptr @.str.476, ptr @.str.477, ptr @.str.478, ptr @.str.479, ptr @.str.480, ptr @.str.481, ptr @.str.482, ptr @.str.483, ptr @.str.484, ptr @.str.485, ptr @.str.486, ptr @.str.487, ptr @.str.488, ptr @.str.489, ptr @.str.490, ptr @.str.491, ptr @.str.492, ptr @.str.493, ptr @.str.494, ptr @.str.495, ptr @.str.496, ptr @.str.497, ptr @.str.498, ptr @.str.499, ptr @.str.500, ptr @.str.501, ptr @.str.502, ptr @.str.503, ptr @.str.504, ptr @.str.505, ptr @.str.506, ptr @.str.507, ptr @.str.508, ptr @.str.509, ptr @.str.510, ptr @.str.511, ptr @.str.512, ptr @.str.513, ptr @.str.514, ptr @.str.515, ptr @.str.516, ptr @.str.517, ptr @.str.518, ptr @.str.519, ptr @.str.520, ptr @.str.521, ptr @.str.522, ptr @.str.523, ptr @.str.524, ptr @.str.525, ptr @.str.526, ptr @.str.527, ptr @.str.528, ptr @.str.529, ptr @.str.530, ptr @.str.531, ptr @.str.532, ptr @.str.533, ptr @.str.534], [88 x i8] zeroinitializer }, align 32
@atom_op_calltable._entry.456 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.452, ptr @.str.2, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_calltable._entry_ptr.457 = internal global ptr @atom_op_calltable._entry.456, section ".printk_index", align 4
@atom_op_calltable._entry.458 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.459, ptr @.str.452, ptr @.str.2, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.459 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"   table: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@atom_op_calltable._entry_ptr.460 = internal global ptr @atom_op_calltable._entry.458, section ".printk_index", align 4
@.str.461 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ASIC_Init\00", [22 x i8] zeroinitializer }, align 32
@.str.462 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GetDisplaySurfaceSize\00", [42 x i8] zeroinitializer }, align 32
@.str.463 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ASIC_RegistersInit\00", [45 x i8] zeroinitializer }, align 32
@.str.464 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"VRAM_BlockVenderDetection\00", [38 x i8] zeroinitializer }, align 32
@.str.465 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SetClocksRatio\00", [17 x i8] zeroinitializer }, align 32
@.str.466 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MemoryControllerInit\00", [43 x i8] zeroinitializer }, align 32
@.str.467 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GPIO_PinInit\00", [19 x i8] zeroinitializer }, align 32
@.str.468 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MemoryParamAdjust\00", [46 x i8] zeroinitializer }, align 32
@.str.469 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DVOEncoderControl\00", [46 x i8] zeroinitializer }, align 32
@.str.470 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GPIOPinControl\00", [17 x i8] zeroinitializer }, align 32
@.str.471 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SetEngineClock\00", [17 x i8] zeroinitializer }, align 32
@.str.472 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SetMemoryClock\00", [17 x i8] zeroinitializer }, align 32
@.str.473 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SetPixelClock\00", [18 x i8] zeroinitializer }, align 32
@.str.474 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DynamicClockGating\00", [45 x i8] zeroinitializer }, align 32
@.str.475 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ResetMemoryDLL\00", [17 x i8] zeroinitializer }, align 32
@.str.476 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ResetMemoryDevice\00", [46 x i8] zeroinitializer }, align 32
@.str.477 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MemoryPLLInit\00", [18 x i8] zeroinitializer }, align 32
@.str.478 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EnableMemorySelfRefresh\00", [40 x i8] zeroinitializer }, align 32
@.str.479 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AdjustMemoryController\00", [41 x i8] zeroinitializer }, align 32
@.str.480 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EnableASIC_StaticPwrMgt\00", [40 x i8] zeroinitializer }, align 32
@.str.481 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ASIC_StaticPwrMgtStatusChange\00", [34 x i8] zeroinitializer }, align 32
@.str.482 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC_LoadDetection\00", [46 x i8] zeroinitializer }, align 32
@.str.483 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TMDS2EncoderControl\00", [44 x i8] zeroinitializer }, align 32
@.str.484 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LCD1OutputControl\00", [46 x i8] zeroinitializer }, align 32
@.str.485 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC1EncoderControl\00", [45 x i8] zeroinitializer }, align 32
@.str.486 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC2EncoderControl\00", [45 x i8] zeroinitializer }, align 32
@.str.487 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DVOOutputControl\00", [47 x i8] zeroinitializer }, align 32
@.str.488 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CV1OutputControl\00", [47 x i8] zeroinitializer }, align 32
@.str.489 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SetCRTC_DPM_State\00", [46 x i8] zeroinitializer }, align 32
@.str.490 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TVEncoderControl\00", [47 x i8] zeroinitializer }, align 32
@.str.491 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TMDS1EncoderControl\00", [44 x i8] zeroinitializer }, align 32
@.str.492 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LVDSEncoderControl\00", [45 x i8] zeroinitializer }, align 32
@.str.493 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TV1OutputControl\00", [47 x i8] zeroinitializer }, align 32
@.str.494 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"EnableScaler\00", [19 x i8] zeroinitializer }, align 32
@.str.495 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BlankCRTC\00", [22 x i8] zeroinitializer }, align 32
@.str.496 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EnableCRTC\00", [21 x i8] zeroinitializer }, align 32
@.str.497 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"GetPixelClock\00", [18 x i8] zeroinitializer }, align 32
@.str.498 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EnableVGA_Render\00", [47 x i8] zeroinitializer }, align 32
@.str.499 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EnableVGA_Access\00", [47 x i8] zeroinitializer }, align 32
@.str.500 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SetCRTC_Timing\00", [17 x i8] zeroinitializer }, align 32
@.str.501 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SetCRTC_OverScan\00", [47 x i8] zeroinitializer }, align 32
@.str.502 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SetCRTC_Replication\00", [44 x i8] zeroinitializer }, align 32
@.str.503 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SelectCRTC_Source\00", [46 x i8] zeroinitializer }, align 32
@.str.504 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EnableGraphSurfaces\00", [44 x i8] zeroinitializer }, align 32
@.str.505 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"UpdateCRTC_DoubleBufferRegisters\00", [63 x i8] zeroinitializer }, align 32
@.str.506 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LUT_AutoFill\00", [19 x i8] zeroinitializer }, align 32
@.str.507 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EnableHW_IconCursor\00", [44 x i8] zeroinitializer }, align 32
@.str.508 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GetMemoryClock\00", [17 x i8] zeroinitializer }, align 32
@.str.509 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GetEngineClock\00", [17 x i8] zeroinitializer }, align 32
@.str.510 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SetCRTC_UsingDTDTiming\00", [41 x i8] zeroinitializer }, align 32
@.str.511 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TVBootUpStdPinDetection\00", [40 x i8] zeroinitializer }, align 32
@.str.512 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DFP2OutputControl\00", [46 x i8] zeroinitializer }, align 32
@.str.513 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"VRAM_BlockDetectionByStrap\00", [37 x i8] zeroinitializer }, align 32
@.str.514 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MemoryCleanUp\00", [18 x i8] zeroinitializer }, align 32
@.str.515 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ReadEDIDFromHWAssistedI2C\00", [38 x i8] zeroinitializer }, align 32
@.str.516 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WriteOneByteToHWAssistedI2C\00", [36 x i8] zeroinitializer }, align 32
@.str.517 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ReadHWAssistedI2CStatus\00", [40 x i8] zeroinitializer }, align 32
@.str.518 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SpeedFanControl\00", [16 x i8] zeroinitializer }, align 32
@.str.519 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PowerConnectorDetection\00", [40 x i8] zeroinitializer }, align 32
@.str.520 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MC_Synchronization\00", [45 x i8] zeroinitializer }, align 32
@.str.521 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ComputeMemoryEnginePLL\00", [41 x i8] zeroinitializer }, align 32
@.str.522 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MemoryRefreshConversion\00", [40 x i8] zeroinitializer }, align 32
@.str.523 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VRAM_GetCurrentInfoBlock\00", [39 x i8] zeroinitializer }, align 32
@.str.524 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DynamicMemorySettings\00", [42 x i8] zeroinitializer }, align 32
@.str.525 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MemoryTraining\00", [17 x i8] zeroinitializer }, align 32
@.str.526 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EnableLVDS_SS\00", [18 x i8] zeroinitializer }, align 32
@.str.527 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DFP1OutputControl\00", [46 x i8] zeroinitializer }, align 32
@.str.528 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SetVoltage\00", [21 x i8] zeroinitializer }, align 32
@.str.529 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CRT1OutputControl\00", [46 x i8] zeroinitializer }, align 32
@.str.530 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CRT2OutputControl\00", [46 x i8] zeroinitializer }, align 32
@.str.531 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SetupHWAssistedI2CStatus\00", [39 x i8] zeroinitializer }, align 32
@.str.532 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ClockSource\00", [20 x i8] zeroinitializer }, align 32
@.str.533 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MemoryDeviceInit\00", [47 x i8] zeroinitializer }, align 32
@.str.534 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EnableYUV\00", [22 x i8] zeroinitializer }, align 32
@atom_op_repeat._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.535, ptr @.str.536, ptr @.str.2, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.535 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016amdgpu: unimplemented!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.536 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atom_op_repeat\00", [17 x i8] zeroinitializer }, align 32
@atom_op_repeat._entry_ptr = internal global ptr @atom_op_repeat._entry, section ".printk_index", align 4
@atom_op_clear._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.537, ptr @.str.2, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.537 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atom_op_clear\00", [18 x i8] zeroinitializer }, align 32
@atom_op_clear._entry_ptr = internal global ptr @atom_op_clear._entry, section ".printk_index", align 4
@atom_op_clear._entry.538 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.537, ptr @.str.2, i32 640, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_clear._entry_ptr.539 = internal global ptr @atom_op_clear._entry.538, section ".printk_index", align 4
@atom_op_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.540, ptr @.str.2, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.540 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atom_op_mask\00", [19 x i8] zeroinitializer }, align 32
@atom_op_mask._entry_ptr = internal global ptr @atom_op_mask._entry, section ".printk_index", align 4
@atom_op_mask._entry.541 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.540, ptr @.str.2, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mask._entry_ptr.542 = internal global ptr @atom_op_mask._entry.541, section ".printk_index", align 4
@atom_op_mask._entry.543 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.540, ptr @.str.2, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mask._entry_ptr.544 = internal global ptr @atom_op_mask._entry.543, section ".printk_index", align 4
@atom_op_mask._entry.545 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.546, ptr @.str.540, ptr @.str.2, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.546 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"   mask: 0x%08x\00", [16 x i8] zeroinitializer }, align 32
@atom_op_mask._entry_ptr.547 = internal global ptr @atom_op_mask._entry.545, section ".printk_index", align 4
@atom_op_mask._entry.548 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.540, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mask._entry_ptr.549 = internal global ptr @atom_op_mask._entry.548, section ".printk_index", align 4
@atom_op_mask._entry.550 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.540, ptr @.str.2, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mask._entry_ptr.551 = internal global ptr @atom_op_mask._entry.550, section ".printk_index", align 4
@atom_op_mask._entry.552 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.540, ptr @.str.2, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mask._entry_ptr.553 = internal global ptr @atom_op_mask._entry.552, section ".printk_index", align 4
@atom_op_mask._entry.554 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.540, ptr @.str.2, i32 780, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mask._entry_ptr.555 = internal global ptr @atom_op_mask._entry.554, section ".printk_index", align 4
@atom_op_postcard._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.556, ptr @.str.2, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.556 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atom_op_postcard\00", [47 x i8] zeroinitializer }, align 32
@atom_op_postcard._entry_ptr = internal global ptr @atom_op_postcard._entry, section ".printk_index", align 4
@atom_op_postcard._entry.557 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.558, ptr @.str.556, ptr @.str.2, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.558 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"POST card output: 0x%02X\0A\00", [38 x i8] zeroinitializer }, align 32
@atom_op_postcard._entry_ptr.559 = internal global ptr @atom_op_postcard._entry.557, section ".printk_index", align 4
@atom_op_beep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.560, ptr @.str.561, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.560 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ATOM BIOS beeped!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.561 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atom_op_beep\00", [19 x i8] zeroinitializer }, align 32
@atom_op_beep._entry_ptr = internal global ptr @atom_op_beep._entry, section ".printk_index", align 4
@atom_op_savereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.535, ptr @.str.562, ptr @.str.2, i32 863, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.562 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atom_op_savereg\00", [16 x i8] zeroinitializer }, align 32
@atom_op_savereg._entry_ptr = internal global ptr @atom_op_savereg._entry, section ".printk_index", align 4
@atom_op_restorereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.535, ptr @.str.563, ptr @.str.2, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.563 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atom_op_restorereg\00", [45 x i8] zeroinitializer }, align 32
@atom_op_restorereg._entry_ptr = internal global ptr @atom_op_restorereg._entry, section ".printk_index", align 4
@atom_op_setdatablock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.564, ptr @.str.2, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.564 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atom_op_setdatablock\00", [43 x i8] zeroinitializer }, align 32
@atom_op_setdatablock._entry_ptr = internal global ptr @atom_op_setdatablock._entry, section ".printk_index", align 4
@atom_op_setdatablock._entry.565 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.566, ptr @.str.564, ptr @.str.2, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.566 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"   block: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@atom_op_setdatablock._entry_ptr.567 = internal global ptr @atom_op_setdatablock._entry.565, section ".printk_index", align 4
@atom_op_setdatablock._entry.568 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.564, ptr @.str.2, i32 877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_setdatablock._entry_ptr.569 = internal global ptr @atom_op_setdatablock._entry.568, section ".printk_index", align 4
@atom_op_setdatablock._entry.570 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.385, ptr @.str.564, ptr @.str.2, i32 877, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_setdatablock._entry_ptr.571 = internal global ptr @atom_op_setdatablock._entry.570, section ".printk_index", align 4
@atom_op_xor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.572, ptr @.str.2, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.572 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atom_op_xor\00", [20 x i8] zeroinitializer }, align 32
@atom_op_xor._entry_ptr = internal global ptr @atom_op_xor._entry, section ".printk_index", align 4
@atom_op_xor._entry.573 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.572, ptr @.str.2, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_xor._entry_ptr.574 = internal global ptr @atom_op_xor._entry.573, section ".printk_index", align 4
@atom_op_xor._entry.575 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.572, ptr @.str.2, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_xor._entry_ptr.576 = internal global ptr @atom_op_xor._entry.575, section ".printk_index", align 4
@atom_op_xor._entry.577 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.572, ptr @.str.2, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_xor._entry_ptr.578 = internal global ptr @atom_op_xor._entry.577, section ".printk_index", align 4
@atom_op_xor._entry.579 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.572, ptr @.str.2, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_xor._entry_ptr.580 = internal global ptr @atom_op_xor._entry.579, section ".printk_index", align 4
@atom_op_xor._entry.581 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.572, ptr @.str.2, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_xor._entry_ptr.582 = internal global ptr @atom_op_xor._entry.581, section ".printk_index", align 4
@atom_op_shl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.583, ptr @.str.2, i32 959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.583 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atom_op_shl\00", [20 x i8] zeroinitializer }, align 32
@atom_op_shl._entry_ptr = internal global ptr @atom_op_shl._entry, section ".printk_index", align 4
@atom_op_shl._entry.584 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.583, ptr @.str.2, i32 959, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shl._entry_ptr.585 = internal global ptr @atom_op_shl._entry.584, section ".printk_index", align 4
@atom_op_shl._entry.586 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.583, ptr @.str.2, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shl._entry_ptr.587 = internal global ptr @atom_op_shl._entry.586, section ".printk_index", align 4
@atom_op_shl._entry.588 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.583, ptr @.str.2, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shl._entry_ptr.589 = internal global ptr @atom_op_shl._entry.588, section ".printk_index", align 4
@atom_op_shl._entry.590 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.583, ptr @.str.2, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shl._entry_ptr.591 = internal global ptr @atom_op_shl._entry.590, section ".printk_index", align 4
@atom_op_shl._entry.592 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.583, ptr @.str.2, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shl._entry_ptr.593 = internal global ptr @atom_op_shl._entry.592, section ".printk_index", align 4
@atom_op_shr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.594, ptr @.str.2, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.594 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atom_op_shr\00", [20 x i8] zeroinitializer }, align 32
@atom_op_shr._entry_ptr = internal global ptr @atom_op_shr._entry, section ".printk_index", align 4
@atom_op_shr._entry.595 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.594, ptr @.str.2, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shr._entry_ptr.596 = internal global ptr @atom_op_shr._entry.595, section ".printk_index", align 4
@atom_op_shr._entry.597 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.594, ptr @.str.2, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shr._entry_ptr.598 = internal global ptr @atom_op_shr._entry.597, section ".printk_index", align 4
@atom_op_shr._entry.599 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.594, ptr @.str.2, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shr._entry_ptr.600 = internal global ptr @atom_op_shr._entry.599, section ".printk_index", align 4
@atom_op_shr._entry.601 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.594, ptr @.str.2, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shr._entry_ptr.602 = internal global ptr @atom_op_shr._entry.601, section ".printk_index", align 4
@atom_op_shr._entry.603 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.594, ptr @.str.2, i32 987, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_shr._entry_ptr.604 = internal global ptr @atom_op_shr._entry.603, section ".printk_index", align 4
@atom_op_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.605, ptr @.str.2, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.605 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atom_op_debug\00", [18 x i8] zeroinitializer }, align 32
@atom_op_debug._entry_ptr = internal global ptr @atom_op_debug._entry, section ".printk_index", align 4
@atom_op_debug._entry.606 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.607, ptr @.str.605, ptr @.str.2, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.607 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DEBUG output: 0x%02X\0A\00", [42 x i8] zeroinitializer }, align 32
@atom_op_debug._entry_ptr.608 = internal global ptr @atom_op_debug._entry.606, section ".printk_index", align 4
@atom_op_processds._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.609, ptr @.str.2, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.609 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atom_op_processds\00", [46 x i8] zeroinitializer }, align 32
@atom_op_processds._entry_ptr = internal global ptr @atom_op_processds._entry, section ".printk_index", align 4
@atom_op_processds._entry.610 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.611, ptr @.str.609, ptr @.str.2, i32 1068, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.611 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PROCESSDS output: 0x%02X\0A\00", [38 x i8] zeroinitializer }, align 32
@atom_op_processds._entry_ptr.612 = internal global ptr @atom_op_processds._entry.610, section ".printk_index", align 4
@atom_op_mul32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.613, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.613 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atom_op_mul32\00", [18 x i8] zeroinitializer }, align 32
@atom_op_mul32._entry_ptr = internal global ptr @atom_op_mul32._entry, section ".printk_index", align 4
@atom_op_mul32._entry.614 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.613, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mul32._entry_ptr.615 = internal global ptr @atom_op_mul32._entry.614, section ".printk_index", align 4
@atom_op_mul32._entry.616 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.613, ptr @.str.2, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mul32._entry_ptr.617 = internal global ptr @atom_op_mul32._entry.616, section ".printk_index", align 4
@atom_op_mul32._entry.618 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.338, ptr @.str.613, ptr @.str.2, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_mul32._entry_ptr.619 = internal global ptr @atom_op_mul32._entry.618, section ".printk_index", align 4
@atom_op_div32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.620, ptr @.str.2, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.620 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atom_op_div32\00", [18 x i8] zeroinitializer }, align 32
@atom_op_div32._entry_ptr = internal global ptr @atom_op_div32._entry, section ".printk_index", align 4
@atom_op_div32._entry.621 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.620, ptr @.str.2, i32 692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_div32._entry_ptr.622 = internal global ptr @atom_op_div32._entry.621, section ".printk_index", align 4
@atom_op_div32._entry.623 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.620, ptr @.str.2, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_div32._entry_ptr.624 = internal global ptr @atom_op_div32._entry.623, section ".printk_index", align 4
@atom_op_div32._entry.625 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.338, ptr @.str.620, ptr @.str.2, i32 694, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atom_op_div32._entry_ptr.626 = internal global ptr @atom_op_div32._entry.625, section ".printk_index", align 4
@atom_iio_len = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 1, i32 2, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 3], [56 x i8] zeroinitializer }, align 32
@.str.627 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"--N/A--\00", [24 x i8] zeroinitializer }, align 32
@.str.628 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ATOMBIOS\00", [23 x i8] zeroinitializer }, align 32
@.str.629 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ATOMBIOSBK-AMD\00", [17 x i8] zeroinitializer }, align 32
@switch.table.atom_op_move = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.630 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.631 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.632 = internal global [10 x i64] [i64 8, i64 3, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.633 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.634 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 7]
@__sancov_gen_cov_switch_values.635 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.636 = internal global [11 x i64] [i64 9, i64 8, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72]
@__sancov_gen_cov_switch_values.637 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.638 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.639 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.640 = internal global [11 x i64] [i64 9, i64 8, i64 64, i64 65, i64 66, i64 67, i64 68, i64 69, i64 70, i64 71, i64 72]
@__sancov_gen_cov_switch_values.641 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.642 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.643 = internal global [11 x i64] [i64 9, i64 8, i64 0, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1474, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1479, i32 33 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1481, i32 3 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1488, i32 40 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1490, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1509, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant [18 x i8] c"amdgpu_atom_debug\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 70, i32 5 }
@___asan_gen_.692 = private unnamed_addr constant [12 x i8] c"debug_depth\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 92, i32 12 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1221, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1238, i32 4 }
@___asan_gen_.710 = private unnamed_addr constant [14 x i8] c"atom_op_names\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 33, i32 14 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1240, i32 4 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1242, i32 4 }
@___asan_gen_.725 = private unnamed_addr constant [13 x i8] c"opcode_table\00", align 1
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1074, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1258, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 97, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 34, i32 1 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 34, i32 13 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 34, i32 25 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 34, i32 36 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 34, i32 47 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 34, i32 58 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 35, i32 1 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 35, i32 12 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 35, i32 23 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 35, i32 33 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 35, i32 43 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 35, i32 53 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 35, i32 64 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 36, i32 1 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 36, i32 11 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 36, i32 20 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 36, i32 29 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 36, i32 38 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 36, i32 48 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 36, i32 57 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 37, i32 1 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 37, i32 18 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 37, i32 35 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 37, i32 52 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 38, i32 1 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 38, i32 18 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 38, i32 37 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 38, i32 55 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 39, i32 1 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 39, i32 19 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 39, i32 38 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 39, i32 56 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 40, i32 1 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 40, i32 11 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 40, i32 21 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 40, i32 31 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 40, i32 42 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 40, i32 52 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 40, i32 63 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 41, i32 1 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 41, i32 11 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 41, i32 21 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 41, i32 32 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 41, i32 42 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 41, i32 53 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 41, i32 63 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 42, i32 1 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 42, i32 11 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 42, i32 22 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 42, i32 32 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 42, i32 43 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 42, i32 53 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 42, i32 63 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 43, i32 1 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 43, i32 12 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 43, i32 22 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 43, i32 38 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 43, i32 54 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 44, i32 1 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 44, i32 18 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 44, i32 33 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 44, i32 48 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 45, i32 1 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 45, i32 15 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 45, i32 29 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 45, i32 44 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 45, i32 58 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 46, i32 1 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 46, i32 9 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 46, i32 23 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 46, i32 37 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 46, i32 51 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 47, i32 1 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 47, i32 24 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 47, i32 42 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 47, i32 54 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 47, i32 65 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 48, i32 1 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 48, i32 12 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 48, i32 24 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 48, i32 35 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 48, i32 53 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 49, i32 1 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 49, i32 15 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 49, i32 25 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 49, i32 38 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 49, i32 50 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 49, i32 62 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 50, i32 1 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 50, i32 14 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 50, i32 26 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 50, i32 33 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 50, i32 40 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 50, i32 52 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 50, i32 63 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 51, i32 1 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 51, i32 12 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 51, i32 24 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 51, i32 35 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 51, i32 48 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 51, i32 56 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 52, i32 1 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 52, i32 16 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 52, i32 34 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 52, i32 45 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 52, i32 55 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 52, i32 65 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 53, i32 1 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 53, i32 12 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 53, i32 22 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 53, i32 33 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 53, i32 43 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 53, i32 53 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 53, i32 63 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 54, i32 1 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 54, i32 11 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 54, i32 22 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 54, i32 32 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 54, i32 42 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 54, i32 52 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 54, i32 63 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 55, i32 1 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 55, i32 10 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 795, i32 2 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 797, i32 2 }
@___asan_gen_.1136 = private unnamed_addr constant [16 x i8] c"atom_dst_to_src\00", align 1
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 79, i32 12 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 191, i32 4 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 198, i32 4 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 201, i32 4 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 205, i32 5 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 209, i32 5 }
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 226, i32 4 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 232, i32 4 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 270, i32 5 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 272, i32 5 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 280, i32 4 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 286, i32 4 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 294, i32 5 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 302, i32 5 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 311, i32 5 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 319, i32 4 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 326, i32 4 }
@___asan_gen_.1235 = private unnamed_addr constant [14 x i8] c"atom_arg_mask\00", align 1
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 74, i32 17 }
@___asan_gen_.1238 = private unnamed_addr constant [15 x i8] c"atom_arg_shift\00", align 1
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 77, i32 12 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 337, i32 4 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 340, i32 4 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 343, i32 4 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 346, i32 4 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 349, i32 4 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 352, i32 4 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 355, i32 4 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 358, i32 4 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 174, i32 4 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 463, i32 3 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 474, i32 4 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 477, i32 4 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 481, i32 5 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 485, i32 5 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 496, i32 3 }
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 502, i32 3 }
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 536, i32 4 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 540, i32 3 }
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 545, i32 3 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 551, i32 3 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 557, i32 3 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 560, i32 3 }
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 563, i32 3 }
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 566, i32 3 }
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 569, i32 3 }
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 572, i32 3 }
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 575, i32 3 }
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 578, i32 3 }
@___asan_gen_.1396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 602, i32 2 }
@___asan_gen_.1402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 604, i32 2 }
@___asan_gen_.1408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 607, i32 2 }
@___asan_gen_.1417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 836, i32 2 }
@___asan_gen_.1423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 838, i32 2 }
@___asan_gen_.1429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 841, i32 2 }
@___asan_gen_.1430 = private unnamed_addr constant [13 x i8] c"atom_def_dst\00", align 1
@___asan_gen_.1432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 90, i32 12 }
@___asan_gen_.1441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 928, i32 2 }
@___asan_gen_.1450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 931, i32 2 }
@___asan_gen_.1456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 933, i32 2 }
@___asan_gen_.1465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 944, i32 2 }
@___asan_gen_.1471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 947, i32 2 }
@___asan_gen_.1477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 949, i32 2 }
@___asan_gen_.1489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 805, i32 2 }
@___asan_gen_.1498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 807, i32 2 }
@___asan_gen_.1507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 674, i32 2 }
@___asan_gen_.1513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 676, i32 2 }
@___asan_gen_.1522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 588, i32 2 }
@___asan_gen_.1528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 590, i32 2 }
@___asan_gen_.1534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 593, i32 2 }
@___asan_gen_.1543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 996, i32 2 }
@___asan_gen_.1549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 998, i32 2 }
@___asan_gen_.1555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1001, i32 2 }
@___asan_gen_.1567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 894, i32 4 }
@___asan_gen_.1568 = private unnamed_addr constant [14 x i8] c"atom_io_names\00", align 1
@___asan_gen_.1570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 88, i32 14 }
@___asan_gen_.1579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 896, i32 4 }
@___asan_gen_.1582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 89, i32 1 }
@___asan_gen_.1585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 89, i32 7 }
@___asan_gen_.1588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 89, i32 14 }
@___asan_gen_.1591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 89, i32 20 }
@___asan_gen_.1594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 89, i32 28 }
@___asan_gen_.1606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 918, i32 2 }
@___asan_gen_.1618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 883, i32 2 }
@___asan_gen_.1627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 648, i32 2 }
@___asan_gen_.1633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 650, i32 2 }
@___asan_gen_.1654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 654, i32 2 }
@___asan_gen_.1666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1009, i32 2 }
@___asan_gen_.1675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1014, i32 4 }
@___asan_gen_.1684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1020, i32 5 }
@___asan_gen_.1690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1026, i32 4 }
@___asan_gen_.1708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 743, i32 3 }
@___asan_gen_.1717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 744, i32 2 }
@___asan_gen_.1720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 751, i32 6 }
@___asan_gen_.1729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1036, i32 2 }
@___asan_gen_.1735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1038, i32 2 }
@___asan_gen_.1744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1041, i32 2 }
@___asan_gen_.1756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 661, i32 2 }
@___asan_gen_.1768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 622, i32 3 }
@___asan_gen_.1769 = private unnamed_addr constant [17 x i8] c"atom_table_names\00", align 1
@___asan_gen_.1771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 59, i32 14 }
@___asan_gen_.1780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 624, i32 3 }
@___asan_gen_.1783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 60, i32 1 }
@___asan_gen_.1786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 60, i32 14 }
@___asan_gen_.1789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 60, i32 39 }
@___asan_gen_.1792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 61, i32 1 }
@___asan_gen_.1795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 61, i32 30 }
@___asan_gen_.1798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 61, i32 48 }
@___asan_gen_.1801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 62, i32 1 }
@___asan_gen_.1804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 62, i32 17 }
@___asan_gen_.1807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 62, i32 38 }
@___asan_gen_.1810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 63, i32 1 }
@___asan_gen_.1813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 63, i32 19 }
@___asan_gen_.1816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 63, i32 37 }
@___asan_gen_.1819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 63, i32 55 }
@___asan_gen_.1822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 64, i32 1 }
@___asan_gen_.1825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 64, i32 23 }
@___asan_gen_.1828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 64, i32 41 }
@___asan_gen_.1831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 65, i32 1 }
@___asan_gen_.1834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 65, i32 18 }
@___asan_gen_.1837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 65, i32 45 }
@___asan_gen_.1840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 66, i32 1 }
@___asan_gen_.1843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 66, i32 28 }
@___asan_gen_.1846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 67, i32 1 }
@___asan_gen_.1849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 67, i32 22 }
@___asan_gen_.1852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 67, i32 45 }
@___asan_gen_.1855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 68, i32 1 }
@___asan_gen_.1858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 68, i32 23 }
@___asan_gen_.1861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 68, i32 45 }
@___asan_gen_.1864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 69, i32 1 }
@___asan_gen_.1867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 69, i32 21 }
@___asan_gen_.1870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 69, i32 42 }
@___asan_gen_.1873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 70, i32 1 }
@___asan_gen_.1876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 70, i32 24 }
@___asan_gen_.1879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 70, i32 46 }
@___asan_gen_.1882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 71, i32 1 }
@___asan_gen_.1885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 71, i32 17 }
@___asan_gen_.1888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 71, i32 30 }
@___asan_gen_.1891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 71, i32 44 }
@___asan_gen_.1894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 72, i32 1 }
@___asan_gen_.1897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 72, i32 21 }
@___asan_gen_.1900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 72, i32 41 }
@___asan_gen_.1903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 73, i32 1 }
@___asan_gen_.1906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 73, i32 21 }
@___asan_gen_.1909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 73, i32 44 }
@___asan_gen_.1912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 74, i32 1 }
@___asan_gen_.1915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 74, i32 24 }
@___asan_gen_.1918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 75, i32 1 }
@___asan_gen_.1921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 75, i32 17 }
@___asan_gen_.1924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 75, i32 40 }
@___asan_gen_.1927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 76, i32 1 }
@___asan_gen_.1930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 76, i32 19 }
@___asan_gen_.1933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 76, i32 45 }
@___asan_gen_.1936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 77, i32 1 }
@___asan_gen_.1939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 77, i32 22 }
@___asan_gen_.1942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 77, i32 52 }
@___asan_gen_.1945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 78, i32 1 }
@___asan_gen_.1948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 78, i32 30 }
@___asan_gen_.1951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 79, i32 1 }
@___asan_gen_.1954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 79, i32 28 }
@___asan_gen_.1957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 79, i32 47 }
@___asan_gen_.1960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 80, i32 1 }
@___asan_gen_.1963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 80, i32 23 }
@___asan_gen_.1966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 80, i32 49 }
@___asan_gen_.1969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 81, i32 1 }
@___asan_gen_.1972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 81, i32 29 }
@___asan_gen_.1975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 81, i32 54 }
@___asan_gen_.1978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 82, i32 1 }
@___asan_gen_.1981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 82, i32 18 }
@___asan_gen_.1984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 82, i32 39 }
@___asan_gen_.1987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 82, i32 53 }
@___asan_gen_.1990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 83, i32 1 }
@___asan_gen_.1993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 83, i32 22 }
@___asan_gen_.1996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 83, i32 50 }
@___asan_gen_.1999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 84, i32 1 }
@___asan_gen_.2001 = private unnamed_addr constant [54 x i8] c"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h\00", align 1
@___asan_gen_.2002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2001, i32 84, i32 21 }
@___asan_gen_.2011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 853, i32 2 }
@___asan_gen_.2020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 640, i32 2 }
@___asan_gen_.2029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 772, i32 2 }
@___asan_gen_.2038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 775, i32 2 }
@___asan_gen_.2044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 776, i32 2 }
@___asan_gen_.2050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 780, i32 2 }
@___asan_gen_.2062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 848, i32 2 }
@___asan_gen_.2071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 613, i32 2 }
@___asan_gen_.2077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 863, i32 2 }
@___asan_gen_.2083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 858, i32 2 }
@___asan_gen_.2095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 870, i32 2 }
@___asan_gen_.2101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 877, i32 2 }
@___asan_gen_.2110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1049, i32 2 }
@___asan_gen_.2116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1051, i32 2 }
@___asan_gen_.2122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1054, i32 2 }
@___asan_gen_.2131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 959, i32 2 }
@___asan_gen_.2137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 964, i32 2 }
@___asan_gen_.2143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 968, i32 2 }
@___asan_gen_.2152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 978, i32 2 }
@___asan_gen_.2158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 983, i32 2 }
@___asan_gen_.2164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 987, i32 2 }
@___asan_gen_.2176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1061, i32 2 }
@___asan_gen_.2188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1068, i32 2 }
@___asan_gen_.2197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 817, i32 2 }
@___asan_gen_.2203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 819, i32 2 }
@___asan_gen_.2212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 692, i32 2 }
@___asan_gen_.2216 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.2218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 694, i32 2 }
@___asan_gen_.2219 = private unnamed_addr constant [13 x i8] c"atom_iio_len\00", align 1
@___asan_gen_.2221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1287, i32 12 }
@___asan_gen_.2224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1312, i32 19 }
@___asan_gen_.2227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1422, i32 41 }
@___asan_gen_.2228 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2229 = private constant [37 x i8] c"../drivers/gpu/drm/amd/amdgpu/atom.c\00", align 1
@___asan_gen_.2230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2229, i32 1446, i32 40 }
@___asan_gen_.2231 = private unnamed_addr constant [26 x i8] c"switch.table.atom_op_move\00", align 1
@llvm.compiler.used = appending global [720 x ptr] [ptr @amdgpu_atom_execute_table_locked._entry, ptr @amdgpu_atom_execute_table_locked._entry.16, ptr @amdgpu_atom_execute_table_locked._entry.19, ptr @amdgpu_atom_execute_table_locked._entry.21, ptr @amdgpu_atom_execute_table_locked._entry.24, ptr @amdgpu_atom_execute_table_locked._entry.26, ptr @amdgpu_atom_execute_table_locked._entry.30, ptr @amdgpu_atom_execute_table_locked._entry.32, ptr @amdgpu_atom_execute_table_locked._entry_ptr, ptr @amdgpu_atom_execute_table_locked._entry_ptr.18, ptr @amdgpu_atom_execute_table_locked._entry_ptr.20, ptr @amdgpu_atom_execute_table_locked._entry_ptr.23, ptr @amdgpu_atom_execute_table_locked._entry_ptr.25, ptr @amdgpu_atom_execute_table_locked._entry_ptr.28, ptr @amdgpu_atom_execute_table_locked._entry_ptr.31, ptr @amdgpu_atom_execute_table_locked._entry_ptr.34, ptr @amdgpu_atom_parse._entry, ptr @amdgpu_atom_parse._entry.11, ptr @amdgpu_atom_parse._entry.4, ptr @amdgpu_atom_parse._entry.8, ptr @amdgpu_atom_parse._entry_ptr, ptr @amdgpu_atom_parse._entry_ptr.10, ptr @amdgpu_atom_parse._entry_ptr.13, ptr @amdgpu_atom_parse._entry_ptr.6, ptr @atom_get_src_int._entry, ptr @atom_get_src_int._entry.171, ptr @atom_get_src_int._entry.174, ptr @atom_get_src_int._entry.177, ptr @atom_get_src_int._entry.180, ptr @atom_get_src_int._entry.183, ptr @atom_get_src_int._entry.186, ptr @atom_get_src_int._entry.189, ptr @atom_get_src_int._entry.192, ptr @atom_get_src_int._entry.196, ptr @atom_get_src_int._entry.199, ptr @atom_get_src_int._entry.202, ptr @atom_get_src_int._entry.205, ptr @atom_get_src_int._entry.208, ptr @atom_get_src_int._entry.211, ptr @atom_get_src_int._entry.214, ptr @atom_get_src_int._entry.217, ptr @atom_get_src_int._entry.220, ptr @atom_get_src_int._entry.223, ptr @atom_get_src_int._entry.226, ptr @atom_get_src_int._entry.229, ptr @atom_get_src_int._entry.232, ptr @atom_get_src_int._entry.235, ptr @atom_get_src_int._entry_ptr, ptr @atom_get_src_int._entry_ptr.173, ptr @atom_get_src_int._entry_ptr.176, ptr @atom_get_src_int._entry_ptr.179, ptr @atom_get_src_int._entry_ptr.182, ptr @atom_get_src_int._entry_ptr.185, ptr @atom_get_src_int._entry_ptr.188, ptr @atom_get_src_int._entry_ptr.191, ptr @atom_get_src_int._entry_ptr.194, ptr @atom_get_src_int._entry_ptr.198, ptr @atom_get_src_int._entry_ptr.201, ptr @atom_get_src_int._entry_ptr.204, ptr @atom_get_src_int._entry_ptr.207, ptr @atom_get_src_int._entry_ptr.210, ptr @atom_get_src_int._entry_ptr.213, ptr @atom_get_src_int._entry_ptr.216, ptr @atom_get_src_int._entry_ptr.219, ptr @atom_get_src_int._entry_ptr.222, ptr @atom_get_src_int._entry_ptr.225, ptr @atom_get_src_int._entry_ptr.228, ptr @atom_get_src_int._entry_ptr.231, ptr @atom_get_src_int._entry_ptr.234, ptr @atom_get_src_int._entry_ptr.237, ptr @atom_iio_execute._entry, ptr @atom_iio_execute._entry_ptr, ptr @atom_op_add._entry, ptr @atom_op_add._entry.348, ptr @atom_op_add._entry.350, ptr @atom_op_add._entry.352, ptr @atom_op_add._entry.354, ptr @atom_op_add._entry.356, ptr @atom_op_add._entry_ptr, ptr @atom_op_add._entry_ptr.349, ptr @atom_op_add._entry_ptr.351, ptr @atom_op_add._entry_ptr.353, ptr @atom_op_add._entry_ptr.355, ptr @atom_op_add._entry_ptr.357, ptr @atom_op_and._entry, ptr @atom_op_and._entry.287, ptr @atom_op_and._entry.289, ptr @atom_op_and._entry.291, ptr @atom_op_and._entry.293, ptr @atom_op_and._entry.295, ptr @atom_op_and._entry_ptr, ptr @atom_op_and._entry_ptr.288, ptr @atom_op_and._entry_ptr.290, ptr @atom_op_and._entry_ptr.292, ptr @atom_op_and._entry_ptr.294, ptr @atom_op_and._entry_ptr.296, ptr @atom_op_beep._entry, ptr @atom_op_beep._entry_ptr, ptr @atom_op_calltable._entry, ptr @atom_op_calltable._entry.453, ptr @atom_op_calltable._entry.456, ptr @atom_op_calltable._entry.458, ptr @atom_op_calltable._entry_ptr, ptr @atom_op_calltable._entry_ptr.455, ptr @atom_op_calltable._entry_ptr.457, ptr @atom_op_calltable._entry_ptr.460, ptr @atom_op_clear._entry, ptr @atom_op_clear._entry.538, ptr @atom_op_clear._entry_ptr, ptr @atom_op_clear._entry_ptr.539, ptr @atom_op_compare._entry, ptr @atom_op_compare._entry.392, ptr @atom_op_compare._entry.394, ptr @atom_op_compare._entry.396, ptr @atom_op_compare._entry.398, ptr @atom_op_compare._entry.400, ptr @atom_op_compare._entry_ptr, ptr @atom_op_compare._entry_ptr.393, ptr @atom_op_compare._entry_ptr.395, ptr @atom_op_compare._entry_ptr.397, ptr @atom_op_compare._entry_ptr.399, ptr @atom_op_compare._entry_ptr.402, ptr @atom_op_debug._entry, ptr @atom_op_debug._entry.606, ptr @atom_op_debug._entry_ptr, ptr @atom_op_debug._entry_ptr.608, ptr @atom_op_delay._entry, ptr @atom_op_delay._entry.449, ptr @atom_op_delay._entry_ptr, ptr @atom_op_delay._entry_ptr.451, ptr @atom_op_div._entry, ptr @atom_op_div._entry.341, ptr @atom_op_div._entry.343, ptr @atom_op_div._entry.345, ptr @atom_op_div._entry_ptr, ptr @atom_op_div._entry_ptr.342, ptr @atom_op_div._entry_ptr.344, ptr @atom_op_div._entry_ptr.346, ptr @atom_op_div32._entry, ptr @atom_op_div32._entry.621, ptr @atom_op_div32._entry.623, ptr @atom_op_div32._entry.625, ptr @atom_op_div32._entry_ptr, ptr @atom_op_div32._entry_ptr.622, ptr @atom_op_div32._entry_ptr.624, ptr @atom_op_div32._entry_ptr.626, ptr @atom_op_jump._entry, ptr @atom_op_jump._entry.425, ptr @atom_op_jump._entry.430, ptr @atom_op_jump._entry.432, ptr @atom_op_jump._entry_ptr, ptr @atom_op_jump._entry_ptr.427, ptr @atom_op_jump._entry_ptr.431, ptr @atom_op_jump._entry_ptr.434, ptr @atom_op_mask._entry, ptr @atom_op_mask._entry.541, ptr @atom_op_mask._entry.543, ptr @atom_op_mask._entry.545, ptr @atom_op_mask._entry.548, ptr @atom_op_mask._entry.550, ptr @atom_op_mask._entry.552, ptr @atom_op_mask._entry.554, ptr @atom_op_mask._entry_ptr, ptr @atom_op_mask._entry_ptr.542, ptr @atom_op_mask._entry_ptr.544, ptr @atom_op_mask._entry_ptr.547, ptr @atom_op_mask._entry_ptr.549, ptr @atom_op_mask._entry_ptr.551, ptr @atom_op_mask._entry_ptr.553, ptr @atom_op_mask._entry_ptr.555, ptr @atom_op_move._entry, ptr @atom_op_move._entry.161, ptr @atom_op_move._entry.164, ptr @atom_op_move._entry.166, ptr @atom_op_move._entry_ptr, ptr @atom_op_move._entry_ptr.163, ptr @atom_op_move._entry_ptr.165, ptr @atom_op_move._entry_ptr.168, ptr @atom_op_mul._entry, ptr @atom_op_mul._entry.332, ptr @atom_op_mul._entry.335, ptr @atom_op_mul._entry.337, ptr @atom_op_mul._entry_ptr, ptr @atom_op_mul._entry_ptr.334, ptr @atom_op_mul._entry_ptr.336, ptr @atom_op_mul._entry_ptr.339, ptr @atom_op_mul32._entry, ptr @atom_op_mul32._entry.614, ptr @atom_op_mul32._entry.616, ptr @atom_op_mul32._entry.618, ptr @atom_op_mul32._entry_ptr, ptr @atom_op_mul32._entry_ptr.615, ptr @atom_op_mul32._entry_ptr.617, ptr @atom_op_mul32._entry_ptr.619, ptr @atom_op_or._entry, ptr @atom_op_or._entry.298, ptr @atom_op_or._entry.300, ptr @atom_op_or._entry.302, ptr @atom_op_or._entry.304, ptr @atom_op_or._entry.306, ptr @atom_op_or._entry_ptr, ptr @atom_op_or._entry_ptr.299, ptr @atom_op_or._entry_ptr.301, ptr @atom_op_or._entry_ptr.303, ptr @atom_op_or._entry_ptr.305, ptr @atom_op_or._entry_ptr.307, ptr @atom_op_postcard._entry, ptr @atom_op_postcard._entry.557, ptr @atom_op_postcard._entry_ptr, ptr @atom_op_postcard._entry_ptr.559, ptr @atom_op_processds._entry, ptr @atom_op_processds._entry.610, ptr @atom_op_processds._entry_ptr, ptr @atom_op_processds._entry_ptr.612, ptr @atom_op_repeat._entry, ptr @atom_op_repeat._entry_ptr, ptr @atom_op_restorereg._entry, ptr @atom_op_restorereg._entry_ptr, ptr @atom_op_savereg._entry, ptr @atom_op_savereg._entry_ptr, ptr @atom_op_setdatablock._entry, ptr @atom_op_setdatablock._entry.565, ptr @atom_op_setdatablock._entry.568, ptr @atom_op_setdatablock._entry.570, ptr @atom_op_setdatablock._entry_ptr, ptr @atom_op_setdatablock._entry_ptr.567, ptr @atom_op_setdatablock._entry_ptr.569, ptr @atom_op_setdatablock._entry_ptr.571, ptr @atom_op_setfbbase._entry, ptr @atom_op_setfbbase._entry.388, ptr @atom_op_setfbbase._entry_ptr, ptr @atom_op_setfbbase._entry_ptr.390, ptr @atom_op_setport._entry, ptr @atom_op_setport._entry.370, ptr @atom_op_setport._entry.373, ptr @atom_op_setport._entry.375, ptr @atom_op_setport._entry_ptr, ptr @atom_op_setport._entry_ptr.372, ptr @atom_op_setport._entry_ptr.374, ptr @atom_op_setport._entry_ptr.377, ptr @atom_op_setregblock._entry, ptr @atom_op_setregblock._entry.384, ptr @atom_op_setregblock._entry_ptr, ptr @atom_op_setregblock._entry_ptr.386, ptr @atom_op_shift_left._entry, ptr @atom_op_shift_left._entry.309, ptr @atom_op_shift_left._entry.311, ptr @atom_op_shift_left._entry.313, ptr @atom_op_shift_left._entry.316, ptr @atom_op_shift_left._entry.318, ptr @atom_op_shift_left._entry_ptr, ptr @atom_op_shift_left._entry_ptr.310, ptr @atom_op_shift_left._entry_ptr.312, ptr @atom_op_shift_left._entry_ptr.315, ptr @atom_op_shift_left._entry_ptr.317, ptr @atom_op_shift_left._entry_ptr.319, ptr @atom_op_shift_right._entry, ptr @atom_op_shift_right._entry.321, ptr @atom_op_shift_right._entry.323, ptr @atom_op_shift_right._entry.325, ptr @atom_op_shift_right._entry.327, ptr @atom_op_shift_right._entry.329, ptr @atom_op_shift_right._entry_ptr, ptr @atom_op_shift_right._entry_ptr.322, ptr @atom_op_shift_right._entry_ptr.324, ptr @atom_op_shift_right._entry_ptr.326, ptr @atom_op_shift_right._entry_ptr.328, ptr @atom_op_shift_right._entry_ptr.330, ptr @atom_op_shl._entry, ptr @atom_op_shl._entry.584, ptr @atom_op_shl._entry.586, ptr @atom_op_shl._entry.588, ptr @atom_op_shl._entry.590, ptr @atom_op_shl._entry.592, ptr @atom_op_shl._entry_ptr, ptr @atom_op_shl._entry_ptr.585, ptr @atom_op_shl._entry_ptr.587, ptr @atom_op_shl._entry_ptr.589, ptr @atom_op_shl._entry_ptr.591, ptr @atom_op_shl._entry_ptr.593, ptr @atom_op_shr._entry, ptr @atom_op_shr._entry.595, ptr @atom_op_shr._entry.597, ptr @atom_op_shr._entry.599, ptr @atom_op_shr._entry.601, ptr @atom_op_shr._entry.603, ptr @atom_op_shr._entry_ptr, ptr @atom_op_shr._entry_ptr.596, ptr @atom_op_shr._entry_ptr.598, ptr @atom_op_shr._entry_ptr.600, ptr @atom_op_shr._entry_ptr.602, ptr @atom_op_shr._entry_ptr.604, ptr @atom_op_sub._entry, ptr @atom_op_sub._entry.359, ptr @atom_op_sub._entry.361, ptr @atom_op_sub._entry.363, ptr @atom_op_sub._entry.365, ptr @atom_op_sub._entry.367, ptr @atom_op_sub._entry_ptr, ptr @atom_op_sub._entry_ptr.360, ptr @atom_op_sub._entry_ptr.362, ptr @atom_op_sub._entry_ptr.364, ptr @atom_op_sub._entry_ptr.366, ptr @atom_op_sub._entry_ptr.368, ptr @atom_op_switch._entry, ptr @atom_op_switch._entry.408, ptr @atom_op_switch._entry.411, ptr @atom_op_switch._entry.413, ptr @atom_op_switch._entry.416, ptr @atom_op_switch._entry.418, ptr @atom_op_switch._entry.421, ptr @atom_op_switch._entry_ptr, ptr @atom_op_switch._entry_ptr.410, ptr @atom_op_switch._entry_ptr.412, ptr @atom_op_switch._entry_ptr.415, ptr @atom_op_switch._entry_ptr.417, ptr @atom_op_switch._entry_ptr.420, ptr @atom_op_switch._entry_ptr.423, ptr @atom_op_test._entry, ptr @atom_op_test._entry.437, ptr @atom_op_test._entry.439, ptr @atom_op_test._entry.441, ptr @atom_op_test._entry.443, ptr @atom_op_test._entry.445, ptr @atom_op_test._entry_ptr, ptr @atom_op_test._entry_ptr.438, ptr @atom_op_test._entry_ptr.440, ptr @atom_op_test._entry_ptr.442, ptr @atom_op_test._entry_ptr.444, ptr @atom_op_test._entry_ptr.447, ptr @atom_op_xor._entry, ptr @atom_op_xor._entry.573, ptr @atom_op_xor._entry.575, ptr @atom_op_xor._entry.577, ptr @atom_op_xor._entry.579, ptr @atom_op_xor._entry.581, ptr @atom_op_xor._entry_ptr, ptr @atom_op_xor._entry_ptr.574, ptr @atom_op_xor._entry_ptr.576, ptr @atom_op_xor._entry_ptr.578, ptr @atom_op_xor._entry_ptr.580, ptr @atom_op_xor._entry_ptr.582, ptr @atom_put_dst._entry, ptr @atom_put_dst._entry.241, ptr @atom_put_dst._entry.243, ptr @atom_put_dst._entry.245, ptr @atom_put_dst._entry.247, ptr @atom_put_dst._entry.250, ptr @atom_put_dst._entry.253, ptr @atom_put_dst._entry.256, ptr @atom_put_dst._entry.258, ptr @atom_put_dst._entry.260, ptr @atom_put_dst._entry.262, ptr @atom_put_dst._entry.265, ptr @atom_put_dst._entry.268, ptr @atom_put_dst._entry.271, ptr @atom_put_dst._entry.274, ptr @atom_put_dst._entry.277, ptr @atom_put_dst._entry.280, ptr @atom_put_dst._entry.283, ptr @atom_put_dst._entry_ptr, ptr @atom_put_dst._entry_ptr.242, ptr @atom_put_dst._entry_ptr.244, ptr @atom_put_dst._entry_ptr.246, ptr @atom_put_dst._entry_ptr.249, ptr @atom_put_dst._entry_ptr.252, ptr @atom_put_dst._entry_ptr.254, ptr @atom_put_dst._entry_ptr.257, ptr @atom_put_dst._entry_ptr.259, ptr @atom_put_dst._entry_ptr.261, ptr @atom_put_dst._entry_ptr.264, ptr @atom_put_dst._entry_ptr.267, ptr @atom_put_dst._entry_ptr.270, ptr @atom_put_dst._entry_ptr.273, ptr @atom_put_dst._entry_ptr.276, ptr @atom_put_dst._entry_ptr.279, ptr @atom_put_dst._entry_ptr.282, ptr @atom_put_dst._entry_ptr.285, ptr @debug_print_spaces._entry, ptr @debug_print_spaces._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @amdgpu_atom_debug, ptr @.str.14, ptr @.str.15, ptr @debug_depth, ptr @.str.17, ptr @.str.22, ptr @atom_op_names, ptr @.str.27, ptr @.str.29, ptr @opcode_table, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.162, ptr @.str.167, ptr @atom_dst_to_src, ptr @.str.169, ptr @.str.170, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.195, ptr @.str.197, ptr @.str.200, ptr @.str.203, ptr @.str.206, ptr @.str.209, ptr @.str.212, ptr @atom_arg_mask, ptr @atom_arg_shift, ptr @.str.215, ptr @.str.218, ptr @.str.221, ptr @.str.224, ptr @.str.227, ptr @.str.230, ptr @.str.233, ptr @.str.236, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.248, ptr @.str.251, ptr @.str.255, ptr @.str.263, ptr @.str.266, ptr @.str.269, ptr @.str.272, ptr @.str.275, ptr @.str.278, ptr @.str.281, ptr @.str.284, ptr @.str.286, ptr @.str.297, ptr @atom_def_dst, ptr @.str.308, ptr @.str.314, ptr @.str.320, ptr @.str.331, ptr @.str.333, ptr @.str.338, ptr @.str.340, ptr @.str.347, ptr @.str.358, ptr @.str.369, ptr @.str.371, ptr @atom_io_names, ptr @.str.376, ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.382, ptr @.str.383, ptr @.str.385, ptr @.str.387, ptr @.str.389, ptr @.str.391, ptr @.str.401, ptr @.str.403, ptr @.str.404, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @.str.409, ptr @.str.414, ptr @.str.419, ptr @.str.422, ptr @.str.424, ptr @.str.426, ptr @.str.428, ptr @.str.429, ptr @.str.433, ptr @.str.435, ptr @.str.436, ptr @.str.446, ptr @.str.448, ptr @.str.450, ptr @.str.452, ptr @.str.454, ptr @atom_table_names, ptr @.str.459, ptr @.str.461, ptr @.str.462, ptr @.str.463, ptr @.str.464, ptr @.str.465, ptr @.str.466, ptr @.str.467, ptr @.str.468, ptr @.str.469, ptr @.str.470, ptr @.str.471, ptr @.str.472, ptr @.str.473, ptr @.str.474, ptr @.str.475, ptr @.str.476, ptr @.str.477, ptr @.str.478, ptr @.str.479, ptr @.str.480, ptr @.str.481, ptr @.str.482, ptr @.str.483, ptr @.str.484, ptr @.str.485, ptr @.str.486, ptr @.str.487, ptr @.str.488, ptr @.str.489, ptr @.str.490, ptr @.str.491, ptr @.str.492, ptr @.str.493, ptr @.str.494, ptr @.str.495, ptr @.str.496, ptr @.str.497, ptr @.str.498, ptr @.str.499, ptr @.str.500, ptr @.str.501, ptr @.str.502, ptr @.str.503, ptr @.str.504, ptr @.str.505, ptr @.str.506, ptr @.str.507, ptr @.str.508, ptr @.str.509, ptr @.str.510, ptr @.str.511, ptr @.str.512, ptr @.str.513, ptr @.str.514, ptr @.str.515, ptr @.str.516, ptr @.str.517, ptr @.str.518, ptr @.str.519, ptr @.str.520, ptr @.str.521, ptr @.str.522, ptr @.str.523, ptr @.str.524, ptr @.str.525, ptr @.str.526, ptr @.str.527, ptr @.str.528, ptr @.str.529, ptr @.str.530, ptr @.str.531, ptr @.str.532, ptr @.str.533, ptr @.str.534, ptr @.str.535, ptr @.str.536, ptr @.str.537, ptr @.str.540, ptr @.str.546, ptr @.str.556, ptr @.str.558, ptr @.str.560, ptr @.str.561, ptr @.str.562, ptr @.str.563, ptr @.str.564, ptr @.str.566, ptr @.str.572, ptr @.str.583, ptr @.str.594, ptr @.str.605, ptr @.str.607, ptr @.str.609, ptr @.str.611, ptr @.str.613, ptr @.str.620, ptr @atom_iio_len, ptr @.str.627, ptr @.str.628, ptr @.str.629, ptr @switch.table.atom_op_move], section "llvm.metadata"
@0 = internal global [530 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atom_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atom_parse._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atom_parse._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atom_parse._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atom_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atom_execute_table_locked._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_depth to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atom_execute_table_locked._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atom_execute_table_locked._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atom_execute_table_locked._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_names to i32), i32 492, i32 608, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atom_execute_table_locked._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atom_execute_table_locked._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opcode_table to i32), i32 1016, i32 1248, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atom_execute_table_locked._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amdgpu_atom_execute_table_locked._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug_print_spaces._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_move._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_move._entry.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_move._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_move._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_dst_to_src to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_arg_mask to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_arg_shift to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_get_src_int._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_iio_execute._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.247 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.250 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.256 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.258 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.268 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.274 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_put_dst._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_and._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_and._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_and._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_and._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_and._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_and._entry.295 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_or._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_or._entry.298 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_or._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_or._entry.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_or._entry.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_or._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_def_dst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_left._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_left._entry.309 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_left._entry.311 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_left._entry.313 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_left._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_left._entry.318 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_right._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_right._entry.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_right._entry.323 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_right._entry.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_right._entry.327 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shift_right._entry.329 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mul._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mul._entry.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mul._entry.335 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mul._entry.337 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_div._entry.341 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_div._entry.343 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_div._entry.345 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_add._entry.348 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_add._entry.350 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_add._entry.352 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_add._entry.354 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_add._entry.356 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_sub._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_sub._entry.359 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_sub._entry.361 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_sub._entry.363 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_sub._entry.365 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_sub._entry.367 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setport._entry.370 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_io_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1568 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setport._entry.373 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setport._entry.375 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setregblock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setregblock._entry.384 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setfbbase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setfbbase._entry.388 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_compare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_compare._entry.392 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_compare._entry.394 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_compare._entry.396 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_compare._entry.398 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_compare._entry.400 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_switch._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_switch._entry.408 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_switch._entry.411 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_switch._entry.413 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_switch._entry.416 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_switch._entry.418 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_switch._entry.421 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_jump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_jump._entry.425 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.429 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_jump._entry.430 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_jump._entry.432 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.435 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.436 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_test._entry.437 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_test._entry.439 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_test._entry.441 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_test._entry.443 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_test._entry.445 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.446 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.448 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_delay._entry.449 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.450 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_calltable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.452 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_calltable._entry.453 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.454 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_table_names to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.1769 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_calltable._entry.456 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_calltable._entry.458 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.459 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.461 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.462 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.463 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.464 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.465 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.466 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.467 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.468 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.469 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.470 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.471 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.472 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.473 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.474 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.475 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.476 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.477 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.478 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.479 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.480 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.481 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.482 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.483 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.484 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.485 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.486 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.487 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.488 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.489 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.490 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.491 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.492 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.493 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.494 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.495 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.496 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.497 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.498 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.499 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.500 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.501 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.502 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.503 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.504 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.505 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.506 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.507 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.508 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.509 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.510 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.511 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.512 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.513 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.514 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.515 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.516 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.517 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.518 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.519 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.520 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.521 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.522 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.523 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.524 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.525 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.526 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.527 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.528 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.529 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.530 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.531 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.532 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.533 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.534 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_repeat._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.535 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.536 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_clear._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.537 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_clear._entry.538 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.540 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mask._entry.541 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mask._entry.543 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mask._entry.545 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.546 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mask._entry.548 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mask._entry.550 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mask._entry.552 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mask._entry.554 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_postcard._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.556 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_postcard._entry.557 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.558 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_beep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.560 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.561 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_savereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.562 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_restorereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.563 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setdatablock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.564 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setdatablock._entry.565 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.566 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setdatablock._entry.568 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_setdatablock._entry.570 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_xor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.572 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_xor._entry.573 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_xor._entry.575 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_xor._entry.577 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_xor._entry.579 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_xor._entry.581 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.583 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shl._entry.584 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shl._entry.586 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shl._entry.588 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shl._entry.590 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shl._entry.592 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.594 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shr._entry.595 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shr._entry.597 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shr._entry.599 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shr._entry.601 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_shr._entry.603 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.605 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_debug._entry.606 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.607 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_processds._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.609 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_processds._entry.610 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.611 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mul32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.613 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mul32._entry.614 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mul32._entry.616 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_mul32._entry.618 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_div32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.620 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_div32._entry.621 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_div32._entry.623 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_op_div32._entry.625 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atom_iio_len to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.2219 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.627 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.628 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.629 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atom_op_move to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2231 to i32), i32 ptrtoint (ptr @___asan_gen_.2229 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atom_execute_table(ptr noundef %ctx, i32 noundef %index, ptr noundef %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %data_block = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %data_block to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %data_block, align 4
  %reg_block = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 10
  %1 = ptrtoint ptr %reg_block to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %reg_block, align 2
  %fb_base = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fb_base, align 4
  %io_mode = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 14
  %3 = ptrtoint ptr %io_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %io_mode, align 4
  %divmul = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 8
  %4 = ptrtoint ptr %divmul to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %divmul, align 4
  %arrayidx2 = getelementptr %struct.atom_context, ptr %ctx, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx2, align 4
  %call = tail call fastcc i32 @amdgpu_atom_execute_table_locked(ptr noundef %ctx, i32 noundef %index, ptr noundef %params)
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @amdgpu_atom_execute_table_locked(ptr noundef %ctx, i32 noundef %index, ptr noundef %params) unnamed_addr #0 align 64 {
entry:
  %ptr = alloca i32, align 4
  %ectx = alloca %struct.atom_exec_context, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bios = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios, align 4
  %cmd_table = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %cmd_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_table, align 4
  %mul = shl i32 %index, 1
  %add = add i32 %mul, 4
  %add1 = add i32 %add, %3
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 %add1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %5 to i16
  %add.i = add i32 %add1, 1
  %arrayidx.i7.i = getelementptr i8, ptr %1, i32 %add.i
  %6 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %7 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  %conv = zext i16 %or.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ectx) #12
  %8 = getelementptr inbounds i8, ptr %ectx, i32 8
  %9 = call ptr @memset(ptr %8, i32 255, i32 24)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i)
  %tobool.not = icmp eq i16 %or.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i156 = getelementptr i8, ptr %1, i32 %conv
  %10 = ptrtoint ptr %arrayidx.i.i156 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i156, align 1
  %conv.i157 = zext i8 %11 to i32
  %add.i158 = add nuw nsw i32 %conv, 1
  %arrayidx.i7.i159 = getelementptr i8, ptr %1, i32 %add.i158
  %12 = ptrtoint ptr %arrayidx.i7.i159 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i7.i159, align 1
  %conv3.i160 = zext i8 %13 to i32
  %shl.i161 = shl nuw nsw i32 %conv3.i160, 8
  %or.i162 = or i32 %shl.i161, %conv.i157
  %add7 = add nuw nsw i32 %conv, 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 %add7
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv9 = zext i8 %15 to i32
  %add11 = add nuw nsw i32 %conv, 5
  %arrayidx.i163 = getelementptr i8, ptr %1, i32 %add11
  %16 = ptrtoint ptr %arrayidx.i163 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i163, align 1
  %18 = and i8 %17, 127
  %and = zext i8 %18 to i32
  %add14 = add nuw nsw i32 %conv, 6
  %19 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add14, ptr %ptr, align 4
  %20 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool15.not = icmp eq i32 %20, 0
  br i1 %tobool15.not, label %if.end.do.end26_crit_edge, label %do.end

if.end.do.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26

do.end:                                           ; preds = %if.end
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %21 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not1.i = icmp eq i32 %21, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %21, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %conv, i32 noundef %or.i162, i32 noundef %conv9, i32 noundef %and) #15
  br label %do.end26

do.end26:                                         ; preds = %debug_print_spaces.exit, %if.end.do.end26_crit_edge
  %22 = ptrtoint ptr %ectx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ctx, ptr %ectx, align 4
  %div155 = lshr i32 %and, 2
  %ps_shift = getelementptr inbounds %struct.atom_exec_context, ptr %ectx, i32 0, i32 3
  %23 = ptrtoint ptr %ps_shift to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div155, ptr %ps_shift, align 4
  %start = getelementptr inbounds %struct.atom_exec_context, ptr %ectx, i32 0, i32 4
  %24 = ptrtoint ptr %start to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %or.i, ptr %start, align 4
  %ps29 = getelementptr inbounds %struct.atom_exec_context, ptr %ectx, i32 0, i32 1
  %25 = ptrtoint ptr %ps29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %params, ptr %ps29, align 4
  %abort = getelementptr inbounds %struct.atom_exec_context, ptr %ectx, i32 0, i32 7
  %26 = ptrtoint ptr %abort to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %abort, align 4
  %last_jump = getelementptr inbounds %struct.atom_exec_context, ptr %ectx, i32 0, i32 5
  %27 = ptrtoint ptr %last_jump to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %last_jump, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool30.not = icmp eq i8 %15, 0
  br i1 %tobool30.not, label %do.end26.if.end35_crit_edge, label %if.end7.i.i

do.end26.if.end35_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.end7.i.i:                                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #14
  %28 = shl nuw nsw i32 %conv9, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %28, i32 noundef 3520) #16
  br label %if.end35

if.end35:                                         ; preds = %if.end7.i.i, %do.end26.if.end35_crit_edge
  %.sink = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %do.end26.if.end35_crit_edge ]
  %ws34 = getelementptr inbounds %struct.atom_exec_context, ptr %ectx, i32 0, i32 2
  %29 = ptrtoint ptr %ws34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %.sink, ptr %ws34, align 4
  %30 = load i32, ptr @debug_depth, align 4
  %inc = add i32 %30, 1
  store i32 %inc, ptr @debug_depth, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.then89.while.cond_crit_edge, %if.end35
  %31 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bios, align 4
  %33 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ptr, align 4
  %inc37 = add i32 %34, 1
  store i32 %inc37, ptr %ptr, align 4
  %arrayidx.i164 = getelementptr i8, ptr %32, i32 %34
  %35 = ptrtoint ptr %arrayidx.i164 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i164, align 1
  %conv39 = zext i8 %36 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 123, i8 %36)
  %cmp = icmp ult i8 %36, 123
  %37 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool43.not = icmp eq i32 %37, 0
  br i1 %cmp, label %do.body42, label %do.body59

do.body42:                                        ; preds = %while.cond
  br i1 %tobool43.not, label %do.body42.if.end77_crit_edge, label %do.end47

do.body42.if.end77_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

do.end47:                                         ; preds = %do.body42
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %38 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not1.i165 = icmp eq i32 %38, 0
  br i1 %tobool.not1.i165, label %do.end47.debug_print_spaces.exit171_crit_edge, label %do.end47.do.end.i170_crit_edge

do.end47.do.end.i170_crit_edge:                   ; preds = %do.end47
  br label %do.end.i170

do.end47.debug_print_spaces.exit171_crit_edge:    ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit171

do.end.i170:                                      ; preds = %do.end.i170.do.end.i170_crit_edge, %do.end47.do.end.i170_crit_edge
  %n.addr.02.i166 = phi i32 [ %dec.i167, %do.end.i170.do.end.i170_crit_edge ], [ %38, %do.end47.do.end.i170_crit_edge ]
  %dec.i167 = add i32 %n.addr.02.i166, -1
  %call.i168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i169 = icmp eq i32 %dec.i167, 0
  br i1 %tobool.not.i169, label %do.end.i170.debug_print_spaces.exit171_crit_edge, label %do.end.i170.do.end.i170_crit_edge

do.end.i170.do.end.i170_crit_edge:                ; preds = %do.end.i170
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i170

do.end.i170.debug_print_spaces.exit171_crit_edge: ; preds = %do.end.i170
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit171

debug_print_spaces.exit171:                       ; preds = %do.end.i170.debug_print_spaces.exit171_crit_edge, %do.end47.debug_print_spaces.exit171_crit_edge
  %arrayidx = getelementptr [123 x ptr], ptr @atom_op_names, i32 0, i32 %conv39
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %41 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ptr, align 4
  %sub = add i32 %42, -1
  %call54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %40, i32 noundef %sub) #15
  br label %if.end77

do.body59:                                        ; preds = %while.cond
  br i1 %tobool43.not, label %do.body59.if.end77_crit_edge, label %do.end64

do.body59.if.end77_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

do.end64:                                         ; preds = %do.body59
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %43 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not1.i172 = icmp eq i32 %43, 0
  br i1 %tobool.not1.i172, label %do.end64.debug_print_spaces.exit178_crit_edge, label %do.end64.do.end.i177_crit_edge

do.end64.do.end.i177_crit_edge:                   ; preds = %do.end64
  br label %do.end.i177

do.end64.debug_print_spaces.exit178_crit_edge:    ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit178

do.end.i177:                                      ; preds = %do.end.i177.do.end.i177_crit_edge, %do.end64.do.end.i177_crit_edge
  %n.addr.02.i173 = phi i32 [ %dec.i174, %do.end.i177.do.end.i177_crit_edge ], [ %43, %do.end64.do.end.i177_crit_edge ]
  %dec.i174 = add i32 %n.addr.02.i173, -1
  %call.i175 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i176 = icmp eq i32 %dec.i174, 0
  br i1 %tobool.not.i176, label %do.end.i177.debug_print_spaces.exit178_crit_edge, label %do.end.i177.do.end.i177_crit_edge

do.end.i177.do.end.i177_crit_edge:                ; preds = %do.end.i177
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i177

do.end.i177.debug_print_spaces.exit178_crit_edge: ; preds = %do.end.i177
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit178

debug_print_spaces.exit178:                       ; preds = %do.end.i177.debug_print_spaces.exit178_crit_edge, %do.end64.debug_print_spaces.exit178_crit_edge
  %44 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ptr, align 4
  %sub72 = add i32 %45, -1
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv39, i32 noundef %sub72) #15
  br label %if.end77

if.end77:                                         ; preds = %debug_print_spaces.exit178, %do.body59.if.end77_crit_edge, %debug_print_spaces.exit171, %do.body42.if.end77_crit_edge
  %46 = ptrtoint ptr %abort to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %abort, align 4, !range !1072
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool79.not = icmp eq i8 %47, 0
  br i1 %tobool79.not, label %if.end82, label %if.then80

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ptr, align 4
  %sub81 = add i32 %49, -1
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29, i32 noundef %conv, i32 noundef %or.i162, i32 noundef %conv9, i32 noundef %and, i32 noundef %sub81) #12
  br label %free

if.end82:                                         ; preds = %if.end77
  %50 = add i8 %36, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -126, i8 %50)
  %51 = icmp ult i8 %50, -126
  br i1 %51, label %if.end82.while.end_crit_edge, label %if.then89

if.end82.while.end_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.then89:                                        ; preds = %if.end82
  %arrayidx91 = getelementptr [127 x %struct.anon.92], ptr @opcode_table, i32 0, i32 %conv39
  %52 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx91, align 4
  %arg = getelementptr [127 x %struct.anon.92], ptr @opcode_table, i32 0, i32 %conv39, i32 1
  %54 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arg, align 4
  call void %53(ptr noundef nonnull %ectx, ptr noundef nonnull %ptr, i32 noundef %55) #12
  %cmp97 = icmp eq i8 %36, 91
  br i1 %cmp97, label %if.then89.while.end_crit_edge, label %if.then89.while.cond_crit_edge

if.then89.while.cond_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

if.then89.while.end_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.then89.while.end_crit_edge, %if.end82.while.end_crit_edge
  %56 = load i32, ptr @debug_depth, align 4
  %dec = add i32 %56, -1
  store i32 %dec, ptr @debug_depth, align 4
  %57 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool102.not = icmp eq i32 %57, 0
  br i1 %tobool102.not, label %while.end.free_crit_edge, label %do.end106

while.end.free_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %free

do.end106:                                        ; preds = %while.end
  %call108 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %58 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not1.i179 = icmp eq i32 %58, 0
  br i1 %tobool.not1.i179, label %do.end106.debug_print_spaces.exit185_crit_edge, label %do.end106.do.end.i184_crit_edge

do.end106.do.end.i184_crit_edge:                  ; preds = %do.end106
  br label %do.end.i184

do.end106.debug_print_spaces.exit185_crit_edge:   ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit185

do.end.i184:                                      ; preds = %do.end.i184.do.end.i184_crit_edge, %do.end106.do.end.i184_crit_edge
  %n.addr.02.i180 = phi i32 [ %dec.i181, %do.end.i184.do.end.i184_crit_edge ], [ %58, %do.end106.do.end.i184_crit_edge ]
  %dec.i181 = add i32 %n.addr.02.i180, -1
  %call.i182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i183 = icmp eq i32 %dec.i181, 0
  br i1 %tobool.not.i183, label %do.end.i184.debug_print_spaces.exit185_crit_edge, label %do.end.i184.do.end.i184_crit_edge

do.end.i184.do.end.i184_crit_edge:                ; preds = %do.end.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i184

do.end.i184.debug_print_spaces.exit185_crit_edge: ; preds = %do.end.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit185

debug_print_spaces.exit185:                       ; preds = %do.end.i184.debug_print_spaces.exit185_crit_edge, %do.end106.debug_print_spaces.exit185_crit_edge
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #15
  br label %free

free:                                             ; preds = %debug_print_spaces.exit185, %while.end.free_crit_edge, %if.then80
  %ret.0 = phi i32 [ -22, %if.then80 ], [ 0, %debug_print_spaces.exit185 ], [ 0, %while.end.free_crit_edge ]
  br i1 %tobool30.not, label %free.cleanup_crit_edge, label %if.then118

free.cleanup_crit_edge:                           ; preds = %free
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then118:                                       ; preds = %free
  call void @__sanitizer_cov_trace_pc() #14
  %ws119 = getelementptr inbounds %struct.atom_exec_context, ptr %ectx, i32 0, i32 2
  %59 = ptrtoint ptr %ws119 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ws119, align 4
  call void @kfree(ptr noundef %60) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then118, %free.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %if.then118 ], [ %ret.0, %free.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ectx) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @amdgpu_atom_parse(ptr noundef %card, ptr noundef %bios) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 372) #17
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %card, ptr %call7.i.i, align 8
  %bios2 = getelementptr inbounds %struct.atom_context, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %bios2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %bios, ptr %bios2, align 8
  %3 = ptrtoint ptr %bios to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bios, align 1
  %conv.i = zext i8 %4 to i16
  %arrayidx.i7.i = getelementptr i8, ptr %bios, i32 1
  %5 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %6 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -21931, i16 %or.i)
  %cmp.not = icmp eq i16 %or.i, -21931
  br i1 %cmp.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %bios, i32 48
  %call10 = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(11) @.str.3, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end18, label %do.end15

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %arrayidx.i.i = getelementptr i8, ptr %bios, i32 72
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i136 = zext i8 %8 to i32
  %arrayidx.i7.i137 = getelementptr i8, ptr %bios, i32 73
  %9 = ptrtoint ptr %arrayidx.i7.i137 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i7.i137, align 1
  %conv3.i138 = zext i8 %10 to i32
  %shl.i139 = shl nuw nsw i32 %conv3.i138, 8
  %or.i140 = or i32 %shl.i139, %conv.i136
  %add = add nuw nsw i32 %or.i140, 4
  %add.ptr23 = getelementptr i8, ptr %bios, i32 %add
  %call24 = tail call i32 @strncmp(ptr noundef %add.ptr23, ptr noundef nonnull dereferenceable(5) @.str.7, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

if.end32:                                         ; preds = %if.end18
  %add34 = add nuw nsw i32 %or.i140, 30
  %arrayidx.i.i141 = getelementptr i8, ptr %bios, i32 %add34
  %11 = ptrtoint ptr %arrayidx.i.i141 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i141, align 1
  %conv.i142 = zext i8 %12 to i32
  %add.i = add nuw nsw i32 %or.i140, 31
  %arrayidx.i7.i143 = getelementptr i8, ptr %bios, i32 %add.i
  %13 = ptrtoint ptr %arrayidx.i7.i143 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i7.i143, align 1
  %conv3.i144 = zext i8 %14 to i32
  %shl.i145 = shl nuw nsw i32 %conv3.i144, 8
  %or.i146 = or i32 %shl.i145, %conv.i142
  %cmd_table = getelementptr inbounds %struct.atom_context, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %cmd_table to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i146, ptr %cmd_table, align 4
  %add38 = add nuw nsw i32 %or.i140, 32
  %arrayidx.i.i147 = getelementptr i8, ptr %bios, i32 %add38
  %16 = ptrtoint ptr %arrayidx.i.i147 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i147, align 1
  %conv.i148 = zext i8 %17 to i32
  %add.i149 = add nuw nsw i32 %or.i140, 33
  %arrayidx.i7.i150 = getelementptr i8, ptr %bios, i32 %add.i149
  %18 = ptrtoint ptr %arrayidx.i7.i150 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i7.i150, align 1
  %conv3.i151 = zext i8 %19 to i32
  %shl.i152 = shl nuw nsw i32 %conv3.i151, 8
  %or.i153 = or i32 %shl.i152, %conv.i148
  %data_table = getelementptr inbounds %struct.atom_context, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %data_table to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.i153, ptr %data_table, align 8
  %add43 = add nuw nsw i32 %or.i153, 50
  %arrayidx.i.i154 = getelementptr i8, ptr %bios, i32 %add43
  %21 = ptrtoint ptr %arrayidx.i.i154 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i154, align 1
  %add.i156 = add nuw nsw i32 %or.i153, 51
  %arrayidx.i7.i157 = getelementptr i8, ptr %bios, i32 %add.i156
  %23 = ptrtoint ptr %arrayidx.i7.i157 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i7.i157, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 512) #17
  %iio.i = getelementptr inbounds %struct.atom_context, ptr %call7.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %iio.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i.i, ptr %iio.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end32.if.then48_crit_edge, label %while.cond.preheader.i

if.end32.if.then48_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48

while.cond.preheader.i:                           ; preds = %if.end32
  %conv3.i158 = zext i8 %24 to i32
  %shl.i159 = shl nuw nsw i32 %conv3.i158, 8
  %conv.i155 = zext i8 %22 to i32
  %or.i160 = or i32 %shl.i159, %conv.i155
  %add46 = add nuw nsw i32 %or.i160, 4
  %27 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bios2, align 8
  %arrayidx.i43.i = getelementptr i8, ptr %28, i32 %add46
  %29 = ptrtoint ptr %arrayidx.i43.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i43.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp44.i = icmp eq i8 %30, 1
  br i1 %cmp44.i, label %while.cond.preheader.i.while.body.i_crit_edge, label %while.cond.preheader.i.atom_index_iio.exit_crit_edge

while.cond.preheader.i.atom_index_iio.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %atom_index_iio.exit

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.end.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %31 = phi ptr [ %38, %while.end.i.while.body.i_crit_edge ], [ %28, %while.cond.preheader.i.while.body.i_crit_edge ]
  %base.addr.045.i = phi i32 [ %add22.i, %while.end.i.while.body.i_crit_edge ], [ %add46, %while.cond.preheader.i.while.body.i_crit_edge ]
  %add.i161 = add i32 %base.addr.045.i, 2
  %conv4.i = trunc i32 %add.i161 to i16
  %32 = ptrtoint ptr %iio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iio.i, align 4
  %add7.i = add i32 %base.addr.045.i, 1
  %arrayidx.i37.i = getelementptr i8, ptr %31, i32 %add7.i
  %34 = ptrtoint ptr %arrayidx.i37.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i37.i, align 1
  %idxprom.i = zext i8 %35 to i32
  %arrayidx.i = getelementptr i16, ptr %33, i32 %idxprom.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv4.i, ptr %arrayidx.i, align 2
  %37 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bios2, align 8
  %arrayidx.i3840.i = getelementptr i8, ptr %38, i32 %add.i161
  %39 = ptrtoint ptr %arrayidx.i3840.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i3840.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %40)
  %cmp14.not41.i = icmp eq i8 %40, 9
  br i1 %cmp14.not41.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body16.i_crit_edge

while.body.i.while.body16.i_crit_edge:            ; preds = %while.body.i
  br label %while.body16.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.body16.i:                                   ; preds = %while.body16.i.while.body16.i_crit_edge, %while.body.i.while.body16.i_crit_edge
  %41 = phi i8 [ %45, %while.body16.i.while.body16.i_crit_edge ], [ %40, %while.body.i.while.body16.i_crit_edge ]
  %base.addr.142.i = phi i32 [ %add21.i, %while.body16.i.while.body16.i_crit_edge ], [ %add.i161, %while.body.i.while.body16.i_crit_edge ]
  %idxprom19.i = zext i8 %41 to i32
  %arrayidx20.i = getelementptr [10 x i32], ptr @atom_iio_len, i32 0, i32 %idxprom19.i
  %42 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx20.i, align 4
  %add21.i = add i32 %43, %base.addr.142.i
  %arrayidx.i38.i = getelementptr i8, ptr %38, i32 %add21.i
  %44 = ptrtoint ptr %arrayidx.i38.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx.i38.i, align 1
  %cmp14.not.i = icmp eq i8 %45, 9
  br i1 %cmp14.not.i, label %while.body16.i.while.end.i_crit_edge, label %while.body16.i.while.body16.i_crit_edge

while.body16.i.while.body16.i_crit_edge:          ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body16.i

while.body16.i.while.end.i_crit_edge:             ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

while.end.i:                                      ; preds = %while.body16.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %base.addr.1.lcssa.i = phi i32 [ %add.i161, %while.body.i.while.end.i_crit_edge ], [ %add21.i, %while.body16.i.while.end.i_crit_edge ]
  %add22.i = add i32 %base.addr.1.lcssa.i, 3
  %arrayidx.i.i162 = getelementptr i8, ptr %38, i32 %add22.i
  %46 = ptrtoint ptr %arrayidx.i.i162 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.i162, align 1
  %cmp.i = icmp eq i8 %47, 1
  br i1 %cmp.i, label %while.end.i.while.body.i_crit_edge, label %while.end.i.atom_index_iio.exit_crit_edge

while.end.i.atom_index_iio.exit_crit_edge:        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %atom_index_iio.exit

while.end.i.while.body.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

atom_index_iio.exit:                              ; preds = %while.end.i.atom_index_iio.exit_crit_edge, %while.cond.preheader.i.atom_index_iio.exit_crit_edge
  %48 = ptrtoint ptr %iio.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr = load ptr, ptr %iio.i, align 4
  %tobool47.not = icmp eq ptr %.pr, null
  br i1 %tobool47.not, label %atom_index_iio.exit.if.then48_crit_edge, label %if.end49

atom_index_iio.exit.if.then48_crit_edge:          ; preds = %atom_index_iio.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then48

if.then48:                                        ; preds = %atom_index_iio.exit.if.then48_crit_edge, %if.end32.if.then48_crit_edge
  tail call void @kfree(ptr noundef null) #12
  tail call void @kfree(ptr noundef %call7.i.i) #12
  br label %cleanup

if.end49:                                         ; preds = %atom_index_iio.exit
  %49 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %bios2, align 8
  %arrayidx.i.i164 = getelementptr i8, ptr %50, i32 110
  %51 = ptrtoint ptr %arrayidx.i.i164 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.i164, align 1
  %conv.i165 = zext i8 %52 to i16
  %arrayidx.i7.i166 = getelementptr i8, ptr %50, i32 111
  %53 = ptrtoint ptr %arrayidx.i7.i166 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.i7.i166, align 1
  %conv3.i167 = zext i8 %54 to i16
  %shl.i168 = shl nuw i16 %conv3.i167, 8
  %or.i169 = or i16 %shl.i168, %conv.i165
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i169)
  %cmp53 = icmp eq i16 %or.i169, 0
  %spec.store.select = select i1 %cmp53, i16 128, i16 %or.i169
  %conv58 = zext i16 %spec.store.select to i32
  %add.ptr59 = getelementptr i8, ptr %50, i32 %conv58
  %55 = ptrtoint ptr %add.ptr59 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %add.ptr59, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp61.not = icmp eq i8 %56, 0
  br i1 %cmp61.not, label %if.end49.if.end70_crit_edge, label %do.end66

if.end49.if.end70_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end70

do.end66:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %add.ptr59) #15
  %vbios_version = getelementptr inbounds %struct.atom_context, ptr %call7.i.i, i32 0, i32 17
  %call69 = tail call i32 @strlcpy(ptr noundef %vbios_version, ptr noundef %add.ptr59, i32 noundef 20) #12
  br label %if.end70

if.end70:                                         ; preds = %do.end66, %if.end49.if.end70_crit_edge
  %57 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bios2, align 8
  %add.ptr72 = getelementptr i8, ptr %58, i32 %or.i140
  %usMasterDataTableOffset = getelementptr inbounds %struct._ATOM_ROM_HEADER, ptr %add.ptr72, i32 0, i32 14
  %59 = ptrtoint ptr %usMasterDataTableOffset to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %usMasterDataTableOffset, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %60)
  %cmp74.not = icmp eq i16 %60, 0
  br i1 %cmp74.not, label %if.end70.if.end91_crit_edge, label %if.then76

if.end70.if.end91_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then76:                                        ; preds = %if.end70
  %conv73 = zext i16 %60 to i32
  %add.ptr80 = getelementptr i8, ptr %58, i32 %conv73
  %ListOfDataTables = getelementptr inbounds %struct._ATOM_MASTER_DATA_TABLE, ptr %add.ptr80, i32 0, i32 1
  %FirmwareInfo = getelementptr inbounds %struct._ATOM_MASTER_LIST_OF_DATA_TABLES, ptr %ListOfDataTables, i32 0, i32 4
  %61 = ptrtoint ptr %FirmwareInfo to i32
  call void @__asan_loadN_noabort(i32 %61, i32 2)
  %62 = load i16, ptr %FirmwareInfo, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %cmp82.not = icmp eq i16 %62, 0
  br i1 %cmp82.not, label %if.then76.if.end91_crit_edge, label %if.then84

if.then76.if.end91_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then84:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #14
  %conv81 = zext i16 %62 to i32
  %add.ptr89 = getelementptr i8, ptr %58, i32 %conv81
  %ulFirmwareRevision = getelementptr inbounds %struct._ATOM_FIRMWARE_INFO, ptr %add.ptr89, i32 0, i32 1
  %63 = ptrtoint ptr %ulFirmwareRevision to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %64 = load i32, ptr %ulFirmwareRevision, align 1
  %version = getelementptr inbounds %struct.atom_context, ptr %call7.i.i, i32 0, i32 20
  %65 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %version, align 8
  br label %if.end91

if.end91:                                         ; preds = %if.then84, %if.then76.if.end91_crit_edge, %if.end70.if.end91_crit_edge
  %66 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %bios2, align 8
  %add.ptr.i = getelementptr i8, ptr %67, i32 47
  %68 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %add.ptr.i, align 1
  %conv.i171 = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %cmp.not.i = icmp eq i8 %69, 0
  br i1 %cmp.not.i, label %if.else.i, label %while.cond.preheader.preheader.i

while.cond.preheader.preheader.i:                 ; preds = %if.end91
  %add.ptr2.i = getelementptr i8, ptr %67, i32 110
  %70 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %add.ptr2.i, align 2
  %conv3.i172 = zext i16 %71 to i32
  %add.ptr4.i = getelementptr i8, ptr %67, i32 %conv3.i172
  br label %while.cond.preheader.i174

if.else.i:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.atom_context, ptr %call7.i.i, i32 0, i32 18
  %72 = call ptr @memcpy(ptr %name.i, ptr @.str.627, i32 7)
  %arrayidx.i173 = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 18, i32 7
  br label %atom_get_vbios_name.exit

while.cond.preheader.i174:                        ; preds = %while.end.i175.while.cond.preheader.i174_crit_edge, %while.cond.preheader.preheader.i
  %i.051.i = phi i32 [ %inc.i, %while.end.i175.while.cond.preheader.i174_crit_edge ], [ 0, %while.cond.preheader.preheader.i ]
  %c_ptr.050.i = phi ptr [ %incdec.ptr.i, %while.end.i175.while.cond.preheader.i174_crit_edge ], [ %add.ptr4.i, %while.cond.preheader.preheader.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %while.cond.preheader.i174
  %c_ptr.1.i = phi ptr [ %incdec.ptr.i, %while.cond.i.while.cond.i_crit_edge ], [ %c_ptr.050.i, %while.cond.preheader.i174 ]
  %73 = ptrtoint ptr %c_ptr.1.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %c_ptr.1.i, align 1
  %cmp10.not.i = icmp eq i8 %74, 0
  %incdec.ptr.i = getelementptr i8, ptr %c_ptr.1.i, i32 1
  br i1 %cmp10.not.i, label %while.end.i175, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

while.end.i175:                                   ; preds = %while.cond.i
  %inc.i = add nuw nsw i32 %i.051.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i171
  br i1 %exitcond.not.i, label %for.end.i, label %while.end.i175.while.cond.preheader.i174_crit_edge

while.end.i175.while.cond.preheader.i174_crit_edge: ; preds = %while.end.i175
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader.i174

for.end.i:                                        ; preds = %while.end.i175
  %add.ptr13.i = getelementptr i8, ptr %c_ptr.1.i, i32 3
  %call.i = tail call i32 @strnlen(ptr noundef %add.ptr13.i, i32 noundef 63) #18
  %name14.i = getelementptr inbounds %struct.atom_context, ptr %call7.i.i, i32 0, i32 18
  %75 = call ptr @memcpy(ptr %name14.i, ptr %add.ptr13.i, i32 %call.i)
  %add.ptr18.i = getelementptr i8, ptr %name14.i, i32 %call.i
  br label %while.cond19.i

while.cond19.i:                                   ; preds = %while.cond19.i.while.cond19.i_crit_edge, %for.end.i
  %back.0.i = phi ptr [ %add.ptr18.i, %for.end.i ], [ %incdec.ptr20.i, %while.cond19.i.while.cond19.i_crit_edge ]
  %incdec.ptr20.i = getelementptr i8, ptr %back.0.i, i32 -1
  %76 = ptrtoint ptr %incdec.ptr20.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %incdec.ptr20.i, align 1
  %cmp22.i = icmp eq i8 %77, 32
  br i1 %cmp22.i, label %while.cond19.i.while.cond19.i_crit_edge, label %while.cond19.i.atom_get_vbios_name.exit_crit_edge

while.cond19.i.atom_get_vbios_name.exit_crit_edge: ; preds = %while.cond19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %atom_get_vbios_name.exit

while.cond19.i.while.cond19.i_crit_edge:          ; preds = %while.cond19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond19.i

atom_get_vbios_name.exit:                         ; preds = %while.cond19.i.atom_get_vbios_name.exit_crit_edge, %if.else.i
  %back.0.lcssa.sink.i = phi ptr [ %arrayidx.i173, %if.else.i ], [ %back.0.i, %while.cond19.i.atom_get_vbios_name.exit_crit_edge ]
  %78 = ptrtoint ptr %back.0.lcssa.sink.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 0, ptr %back.0.lcssa.sink.i, align 1
  %79 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %bios2, align 8
  %add.ptr.i177 = getelementptr i8, ptr %80, i32 47
  %81 = ptrtoint ptr %add.ptr.i177 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %add.ptr.i177, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp.not.i178 = icmp eq i8 %82, 0
  br i1 %cmp.not.i178, label %atom_get_vbios_name.exit.if.end.i_crit_edge, label %if.then.i

atom_get_vbios_name.exit.if.end.i_crit_edge:      ; preds = %atom_get_vbios_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %atom_get_vbios_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr2.i179 = getelementptr i8, ptr %80, i32 110
  %83 = ptrtoint ptr %add.ptr2.i179 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %add.ptr2.i179, align 2
  %conv3.i180 = zext i16 %84 to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %atom_get_vbios_name.exit.if.end.i_crit_edge
  %.sink.i = phi i32 [ %conv3.i180, %if.then.i ], [ 128, %atom_get_vbios_name.exit.if.end.i_crit_edge ]
  %add.ptr5.i = getelementptr i8, ptr %80, i32 %.sink.i
  %85 = ptrtoint ptr %add.ptr5.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %add.ptr5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp7.i = icmp eq i8 %86, 0
  br i1 %cmp7.i, label %if.end.i.for.cond2.preheader.i.i_crit_edge, label %if.end15.i

if.end.i.for.cond2.preheader.i.i_crit_edge:       ; preds = %if.end.i
  br label %for.cond2.preheader.i.i

for.cond2.preheader.i.i:                          ; preds = %for.inc22.i.i.for.cond2.preheader.i.i_crit_edge, %if.end.i.for.cond2.preheader.i.i_crit_edge
  %start.addr.07.i.i = phi i32 [ %inc23.i.i, %for.inc22.i.i.for.cond2.preheader.i.i_crit_edge ], [ 3, %if.end.i.for.cond2.preheader.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %80, i32 %start.addr.07.i.i
  %87 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %add.ptr.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %88)
  %cmp10.not.i.i = icmp eq i8 %88, 65
  br i1 %cmp10.not.i.i, label %for.inc.i.i, label %for.cond2.preheader.i.i.lor.lhs.false.i.i_crit_edge

for.cond2.preheader.i.i.lor.lhs.false.i.i_crit_edge: ; preds = %for.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i

for.inc.i.i:                                      ; preds = %for.cond2.preheader.i.i
  %add.ptr8.i.1.i = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %89 = ptrtoint ptr %add.ptr8.i.1.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %add.ptr8.i.1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %90)
  %cmp10.not.i.1.i = icmp eq i8 %90, 84
  br i1 %cmp10.not.i.1.i, label %for.inc.i.1.i, label %for.inc.i.i.lor.lhs.false.i.i_crit_edge

for.inc.i.i.lor.lhs.false.i.i_crit_edge:          ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i

for.inc.i.1.i:                                    ; preds = %for.inc.i.i
  %add.ptr8.i.2.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %91 = ptrtoint ptr %add.ptr8.i.2.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %add.ptr8.i.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %92)
  %cmp10.not.i.2.i = icmp eq i8 %92, 79
  br i1 %cmp10.not.i.2.i, label %for.inc.i.2.i, label %for.inc.i.1.i.lor.lhs.false.i.i_crit_edge

for.inc.i.1.i.lor.lhs.false.i.i_crit_edge:        ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i

for.inc.i.2.i:                                    ; preds = %for.inc.i.1.i
  %add.ptr8.i.3.i = getelementptr i8, ptr %add.ptr.i.i, i32 3
  %93 = ptrtoint ptr %add.ptr8.i.3.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %add.ptr8.i.3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 77, i8 %94)
  %cmp10.not.i.3.i = icmp eq i8 %94, 77
  br i1 %cmp10.not.i.3.i, label %for.inc.i.3.i, label %for.inc.i.2.i.lor.lhs.false.i.i_crit_edge

for.inc.i.2.i.lor.lhs.false.i.i_crit_edge:        ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i

for.inc.i.3.i:                                    ; preds = %for.inc.i.2.i
  %add.ptr8.i.4.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %95 = ptrtoint ptr %add.ptr8.i.4.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %add.ptr8.i.4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %96)
  %cmp10.not.i.4.i = icmp eq i8 %96, 66
  br i1 %cmp10.not.i.4.i, label %for.inc.i.4.i, label %for.inc.i.3.i.lor.lhs.false.i.i_crit_edge

for.inc.i.3.i.lor.lhs.false.i.i_crit_edge:        ; preds = %for.inc.i.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i

for.inc.i.4.i:                                    ; preds = %for.inc.i.3.i
  %add.ptr8.i.5.i = getelementptr i8, ptr %add.ptr.i.i, i32 5
  %97 = ptrtoint ptr %add.ptr8.i.5.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %add.ptr8.i.5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %98)
  %cmp10.not.i.5.i = icmp eq i8 %98, 73
  br i1 %cmp10.not.i.5.i, label %for.inc.i.5.i, label %for.inc.i.4.i.lor.lhs.false.i.i_crit_edge

for.inc.i.4.i.lor.lhs.false.i.i_crit_edge:        ; preds = %for.inc.i.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i

for.inc.i.5.i:                                    ; preds = %for.inc.i.4.i
  %add.ptr8.i.6.i = getelementptr i8, ptr %add.ptr.i.i, i32 6
  %99 = ptrtoint ptr %add.ptr8.i.6.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %add.ptr8.i.6.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %100)
  %cmp10.not.i.6.i = icmp eq i8 %100, 79
  br i1 %cmp10.not.i.6.i, label %for.inc.i.6.i, label %for.inc.i.5.i.lor.lhs.false.i.i_crit_edge

for.inc.i.5.i.lor.lhs.false.i.i_crit_edge:        ; preds = %for.inc.i.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i

for.inc.i.6.i:                                    ; preds = %for.inc.i.5.i
  %add.ptr8.i.7.i = getelementptr i8, ptr %add.ptr.i.i, i32 7
  %101 = ptrtoint ptr %add.ptr8.i.7.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %add.ptr8.i.7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %102)
  %cmp10.not.i.7.i = icmp eq i8 %102, 83
  br i1 %cmp10.not.i.7.i, label %for.inc.i.6.i.atom_find_str_in_rom.exit.i_crit_edge, label %for.inc.i.6.i.lor.lhs.false.i.i_crit_edge

for.inc.i.6.i.lor.lhs.false.i.i_crit_edge:        ; preds = %for.inc.i.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i

for.inc.i.6.i.atom_find_str_in_rom.exit.i_crit_edge: ; preds = %for.inc.i.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %atom_find_str_in_rom.exit.i

lor.lhs.false.i.i:                                ; preds = %for.inc.i.6.i.lor.lhs.false.i.i_crit_edge, %for.inc.i.5.i.lor.lhs.false.i.i_crit_edge, %for.inc.i.4.i.lor.lhs.false.i.i_crit_edge, %for.inc.i.3.i.lor.lhs.false.i.i_crit_edge, %for.inc.i.2.i.lor.lhs.false.i.i_crit_edge, %for.inc.i.1.i.lor.lhs.false.i.i_crit_edge, %for.inc.i.i.lor.lhs.false.i.i_crit_edge, %for.cond2.preheader.i.i.lor.lhs.false.i.i_crit_edge
  %str_off.03.i.lcssa.i = phi i32 [ 0, %for.cond2.preheader.i.i.lor.lhs.false.i.i_crit_edge ], [ 1, %for.inc.i.i.lor.lhs.false.i.i_crit_edge ], [ 2, %for.inc.i.1.i.lor.lhs.false.i.i_crit_edge ], [ 3, %for.inc.i.2.i.lor.lhs.false.i.i_crit_edge ], [ 4, %for.inc.i.3.i.lor.lhs.false.i.i_crit_edge ], [ 5, %for.inc.i.4.i.lor.lhs.false.i.i_crit_edge ], [ 6, %for.inc.i.5.i.lor.lhs.false.i.i_crit_edge ], [ 7, %for.inc.i.6.i.lor.lhs.false.i.i_crit_edge ]
  %arrayidx15.i.i = getelementptr i8, ptr @.str.628, i32 %str_off.03.i.lcssa.i
  %103 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx15.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %cmp17.i.i = icmp eq i8 %104, 0
  br i1 %cmp17.i.i, label %lor.lhs.false.i.i.atom_find_str_in_rom.exit.i_crit_edge, label %for.inc22.i.i

lor.lhs.false.i.i.atom_find_str_in_rom.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %atom_find_str_in_rom.exit.i

for.inc22.i.i:                                    ; preds = %lor.lhs.false.i.i
  %inc23.i.i = add nuw nsw i32 %start.addr.07.i.i, 1
  %exitcond9.not.i.i = icmp eq i32 %inc23.i.i, 1025
  br i1 %exitcond9.not.i.i, label %for.inc22.i.i.select.unfold.i_crit_edge, label %for.inc22.i.i.for.cond2.preheader.i.i_crit_edge

for.inc22.i.i.for.cond2.preheader.i.i_crit_edge:  ; preds = %for.inc22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond2.preheader.i.i

for.inc22.i.i.select.unfold.i_crit_edge:          ; preds = %for.inc22.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %select.unfold.i

atom_find_str_in_rom.exit.i:                      ; preds = %lor.lhs.false.i.i.atom_find_str_in_rom.exit.i_crit_edge, %for.inc.i.6.i.atom_find_str_in_rom.exit.i_crit_edge
  %cmp10.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp10.i, label %atom_find_str_in_rom.exit.i.select.unfold.i_crit_edge, label %atom_find_str_in_rom.exit.i.if.end22.i_crit_edge

atom_find_str_in_rom.exit.i.if.end22.i_crit_edge: ; preds = %atom_find_str_in_rom.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

atom_find_str_in_rom.exit.i.select.unfold.i_crit_edge: ; preds = %atom_find_str_in_rom.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %select.unfold.i

select.unfold.i:                                  ; preds = %atom_find_str_in_rom.exit.i.select.unfold.i_crit_edge, %for.inc22.i.i.select.unfold.i_crit_edge
  br label %if.end22.i

if.end15.i:                                       ; preds = %if.end.i
  %cmp16.not.i = icmp eq ptr %add.ptr5.i, null
  br i1 %cmp16.not.i, label %if.end15.i.atom_get_vbios_pn.exit_crit_edge, label %if.end15.i.if.end22.i_crit_edge

if.end15.i.if.end22.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.i

if.end15.i.atom_get_vbios_pn.exit_crit_edge:      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %atom_get_vbios_pn.exit

if.end22.i:                                       ; preds = %if.end15.i.if.end22.i_crit_edge, %select.unfold.i, %atom_find_str_in_rom.exit.i.if.end22.i_crit_edge
  %vbios_str.166.i = phi ptr [ %add.ptr5.i, %if.end15.i.if.end22.i_crit_edge ], [ inttoptr (i32 8 to ptr), %select.unfold.i ], [ %add.ptr.i.i, %atom_find_str_in_rom.exit.i.if.end22.i_crit_edge ]
  %105 = ptrtoint ptr %vbios_str.166.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %vbios_str.166.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %cmp19.i = icmp eq i8 %106, 0
  %spec.select63.idx.i = zext i1 %cmp19.i to i32
  %spec.select63.i = getelementptr i8, ptr %vbios_str.166.i, i32 %spec.select63.idx.i
  %cmp23.not.i = icmp eq ptr %spec.select63.i, null
  br i1 %cmp23.not.i, label %if.end22.i.atom_get_vbios_pn.exit_crit_edge, label %if.end22.i.land.lhs.true28.i_crit_edge

if.end22.i.land.lhs.true28.i_crit_edge:           ; preds = %if.end22.i
  br label %land.lhs.true28.i

if.end22.i.atom_get_vbios_pn.exit_crit_edge:      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %atom_get_vbios_pn.exit

land.lhs.true28.i:                                ; preds = %while.body.i184.land.lhs.true28.i_crit_edge, %if.end22.i.land.lhs.true28.i_crit_edge
  %count.076.i = phi i32 [ %inc.i182, %while.body.i184.land.lhs.true28.i_crit_edge ], [ 0, %if.end22.i.land.lhs.true28.i_crit_edge ]
  %arrayidx.i181 = getelementptr i8, ptr %spec.select63.i, i32 %count.076.i
  %107 = ptrtoint ptr %arrayidx.i181 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.i181, align 1
  %109 = add i8 %108, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 91, i8 %109)
  %110 = icmp ult i8 %109, 91
  br i1 %110, label %while.body.i184, label %land.lhs.true28.i.while.end.i185_crit_edge

land.lhs.true28.i.while.end.i185_crit_edge:       ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i185

while.body.i184:                                  ; preds = %land.lhs.true28.i
  %arrayidx37.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 19, i32 %count.076.i
  %111 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %108, ptr %arrayidx37.i, align 1
  %inc.i182 = add nuw nsw i32 %count.076.i, 1
  %exitcond.not.i183 = icmp eq i32 %inc.i182, 43
  br i1 %exitcond.not.i183, label %while.body.i184.while.end.i185_crit_edge, label %while.body.i184.land.lhs.true28.i_crit_edge

while.body.i184.land.lhs.true28.i_crit_edge:      ; preds = %while.body.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true28.i

while.body.i184.while.end.i185_crit_edge:         ; preds = %while.body.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i185

while.end.i185:                                   ; preds = %while.body.i184.while.end.i185_crit_edge, %land.lhs.true28.i.while.end.i185_crit_edge
  %count.0.lcssa.i = phi i32 [ 43, %while.body.i184.while.end.i185_crit_edge ], [ %count.076.i, %land.lhs.true28.i.while.end.i185_crit_edge ]
  %arrayidx39.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 19, i32 %count.0.lcssa.i
  %112 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %arrayidx39.i, align 1
  br label %atom_get_vbios_pn.exit

atom_get_vbios_pn.exit:                           ; preds = %while.end.i185, %if.end22.i.atom_get_vbios_pn.exit_crit_edge, %if.end15.i.atom_get_vbios_pn.exit_crit_edge
  %113 = ptrtoint ptr %bios2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bios2, align 8
  %add.ptr.i187 = getelementptr i8, ptr %114, i32 80
  %date.i = getelementptr inbounds %struct.atom_context, ptr %call7.i.i, i32 0, i32 22
  %115 = ptrtoint ptr %date.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 50, ptr %date.i, align 4
  %arrayidx2.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 22, i32 1
  %116 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 48, ptr %arrayidx2.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %114, i32 86
  %117 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx3.i, align 1
  %arrayidx5.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 22, i32 2
  %119 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %arrayidx5.i, align 2
  %arrayidx6.i = getelementptr i8, ptr %114, i32 87
  %120 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx6.i, align 1
  %arrayidx8.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 22, i32 3
  %122 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 22, i32 4
  %123 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 47, ptr %arrayidx10.i, align 8
  %124 = ptrtoint ptr %add.ptr.i187 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %add.ptr.i187, align 1
  %arrayidx13.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 22, i32 5
  %126 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %125, ptr %arrayidx13.i, align 1
  %arrayidx14.i = getelementptr i8, ptr %114, i32 81
  %127 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx14.i, align 1
  %arrayidx16.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 22, i32 6
  %129 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %arrayidx16.i, align 2
  %arrayidx18.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 22, i32 7
  %130 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 47, ptr %arrayidx18.i, align 1
  %arrayidx19.i = getelementptr i8, ptr %114, i32 83
  %131 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx19.i, align 1
  %arrayidx21.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 22, i32 8
  %133 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %132, ptr %arrayidx21.i, align 4
  %arrayidx22.i = getelementptr i8, ptr %114, i32 84
  %134 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %arrayidx22.i, align 1
  %arrayidx24.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 22, i32 9
  %136 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %arrayidx24.i, align 1
  %arrayidx26.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 22, i32 10
  %137 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 32, ptr %arrayidx26.i, align 2
  %arrayidx27.i = getelementptr i8, ptr %114, i32 89
  %138 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %arrayidx27.i, align 1
  %arrayidx29.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 22, i32 11
  %140 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %arrayidx29.i, align 1
  %arrayidx30.i = getelementptr i8, ptr %114, i32 90
  %141 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx30.i, align 1
  %arrayidx32.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 22, i32 12
  %143 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %142, ptr %arrayidx32.i, align 8
  %arrayidx33.i = getelementptr i8, ptr %114, i32 91
  %144 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %arrayidx33.i, align 1
  %arrayidx35.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 22, i32 13
  %146 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %145, ptr %arrayidx35.i, align 1
  %arrayidx36.i = getelementptr i8, ptr %114, i32 92
  %147 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %arrayidx36.i, align 1
  %arrayidx38.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 22, i32 14
  %149 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %148, ptr %arrayidx38.i, align 2
  %arrayidx39.i188 = getelementptr i8, ptr %114, i32 93
  %150 = ptrtoint ptr %arrayidx39.i188 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx39.i188, align 1
  %arrayidx41.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 22, i32 15
  %152 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 %151, ptr %arrayidx41.i, align 1
  %arrayidx43.i = getelementptr %struct.atom_context, ptr %call7.i.i, i32 0, i32 22, i32 16
  %153 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %arrayidx43.i, align 4
  br label %for.cond2.preheader.i.i192

for.cond2.preheader.i.i192:                       ; preds = %for.inc22.i.i220.for.cond2.preheader.i.i192_crit_edge, %atom_get_vbios_pn.exit
  %start.addr.07.i.i189 = phi i32 [ 3, %atom_get_vbios_pn.exit ], [ %inc23.i.i218, %for.inc22.i.i220.for.cond2.preheader.i.i192_crit_edge ]
  %add.ptr.i.i190 = getelementptr i8, ptr %114, i32 %start.addr.07.i.i189
  %154 = ptrtoint ptr %add.ptr.i.i190 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %add.ptr.i.i190, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %155)
  %cmp10.not.i.i191 = icmp eq i8 %155, 65
  br i1 %cmp10.not.i.i191, label %for.inc.i.i195, label %for.cond2.preheader.i.i192.lor.lhs.false.i.i217_crit_edge

for.cond2.preheader.i.i192.lor.lhs.false.i.i217_crit_edge: ; preds = %for.cond2.preheader.i.i192
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i217

for.inc.i.i195:                                   ; preds = %for.cond2.preheader.i.i192
  %add.ptr8.i.1.i193 = getelementptr i8, ptr %add.ptr.i.i190, i32 1
  %156 = ptrtoint ptr %add.ptr8.i.1.i193 to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %add.ptr8.i.1.i193, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 84, i8 %157)
  %cmp10.not.i.1.i194 = icmp eq i8 %157, 84
  br i1 %cmp10.not.i.1.i194, label %for.inc.i.1.i198, label %for.inc.i.i195.lor.lhs.false.i.i217_crit_edge

for.inc.i.i195.lor.lhs.false.i.i217_crit_edge:    ; preds = %for.inc.i.i195
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i217

for.inc.i.1.i198:                                 ; preds = %for.inc.i.i195
  %add.ptr8.i.2.i196 = getelementptr i8, ptr %add.ptr.i.i190, i32 2
  %158 = ptrtoint ptr %add.ptr8.i.2.i196 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %add.ptr8.i.2.i196, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %159)
  %cmp10.not.i.2.i197 = icmp eq i8 %159, 79
  br i1 %cmp10.not.i.2.i197, label %for.inc.i.2.i201, label %for.inc.i.1.i198.lor.lhs.false.i.i217_crit_edge

for.inc.i.1.i198.lor.lhs.false.i.i217_crit_edge:  ; preds = %for.inc.i.1.i198
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i217

for.inc.i.2.i201:                                 ; preds = %for.inc.i.1.i198
  %add.ptr8.i.3.i199 = getelementptr i8, ptr %add.ptr.i.i190, i32 3
  %160 = ptrtoint ptr %add.ptr8.i.3.i199 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %add.ptr8.i.3.i199, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 77, i8 %161)
  %cmp10.not.i.3.i200 = icmp eq i8 %161, 77
  br i1 %cmp10.not.i.3.i200, label %for.inc.i.3.i204, label %for.inc.i.2.i201.lor.lhs.false.i.i217_crit_edge

for.inc.i.2.i201.lor.lhs.false.i.i217_crit_edge:  ; preds = %for.inc.i.2.i201
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i217

for.inc.i.3.i204:                                 ; preds = %for.inc.i.2.i201
  %add.ptr8.i.4.i202 = getelementptr i8, ptr %add.ptr.i.i190, i32 4
  %162 = ptrtoint ptr %add.ptr8.i.4.i202 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %add.ptr8.i.4.i202, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %163)
  %cmp10.not.i.4.i203 = icmp eq i8 %163, 66
  br i1 %cmp10.not.i.4.i203, label %for.inc.i.4.i207, label %for.inc.i.3.i204.lor.lhs.false.i.i217_crit_edge

for.inc.i.3.i204.lor.lhs.false.i.i217_crit_edge:  ; preds = %for.inc.i.3.i204
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i217

for.inc.i.4.i207:                                 ; preds = %for.inc.i.3.i204
  %add.ptr8.i.5.i205 = getelementptr i8, ptr %add.ptr.i.i190, i32 5
  %164 = ptrtoint ptr %add.ptr8.i.5.i205 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %add.ptr8.i.5.i205, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %165)
  %cmp10.not.i.5.i206 = icmp eq i8 %165, 73
  br i1 %cmp10.not.i.5.i206, label %for.inc.i.5.i210, label %for.inc.i.4.i207.lor.lhs.false.i.i217_crit_edge

for.inc.i.4.i207.lor.lhs.false.i.i217_crit_edge:  ; preds = %for.inc.i.4.i207
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i217

for.inc.i.5.i210:                                 ; preds = %for.inc.i.4.i207
  %add.ptr8.i.6.i208 = getelementptr i8, ptr %add.ptr.i.i190, i32 6
  %166 = ptrtoint ptr %add.ptr8.i.6.i208 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %add.ptr8.i.6.i208, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %167)
  %cmp10.not.i.6.i209 = icmp eq i8 %167, 79
  br i1 %cmp10.not.i.6.i209, label %for.inc.i.6.i213, label %for.inc.i.5.i210.lor.lhs.false.i.i217_crit_edge

for.inc.i.5.i210.lor.lhs.false.i.i217_crit_edge:  ; preds = %for.inc.i.5.i210
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i217

for.inc.i.6.i213:                                 ; preds = %for.inc.i.5.i210
  %add.ptr8.i.7.i211 = getelementptr i8, ptr %add.ptr.i.i190, i32 7
  %168 = ptrtoint ptr %add.ptr8.i.7.i211 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %add.ptr8.i.7.i211, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 83, i8 %169)
  %cmp10.not.i.7.i212 = icmp eq i8 %169, 83
  br i1 %cmp10.not.i.7.i212, label %for.inc.i.7.i, label %for.inc.i.6.i213.lor.lhs.false.i.i217_crit_edge

for.inc.i.6.i213.lor.lhs.false.i.i217_crit_edge:  ; preds = %for.inc.i.6.i213
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i217

for.inc.i.7.i:                                    ; preds = %for.inc.i.6.i213
  %add.ptr8.i.8.i = getelementptr i8, ptr %add.ptr.i.i190, i32 8
  %170 = ptrtoint ptr %add.ptr8.i.8.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %add.ptr8.i.8.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %171)
  %cmp10.not.i.8.i = icmp eq i8 %171, 66
  br i1 %cmp10.not.i.8.i, label %for.inc.i.8.i, label %for.inc.i.7.i.lor.lhs.false.i.i217_crit_edge

for.inc.i.7.i.lor.lhs.false.i.i217_crit_edge:     ; preds = %for.inc.i.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i217

for.inc.i.8.i:                                    ; preds = %for.inc.i.7.i
  %add.ptr8.i.9.i = getelementptr i8, ptr %add.ptr.i.i190, i32 9
  %172 = ptrtoint ptr %add.ptr8.i.9.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %add.ptr8.i.9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 75, i8 %173)
  %cmp10.not.i.9.i = icmp eq i8 %173, 75
  br i1 %cmp10.not.i.9.i, label %for.inc.i.9.i, label %for.inc.i.8.i.lor.lhs.false.i.i217_crit_edge

for.inc.i.8.i.lor.lhs.false.i.i217_crit_edge:     ; preds = %for.inc.i.8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i217

for.inc.i.9.i:                                    ; preds = %for.inc.i.8.i
  %add.ptr8.i.10.i = getelementptr i8, ptr %add.ptr.i.i190, i32 10
  %174 = ptrtoint ptr %add.ptr8.i.10.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %add.ptr8.i.10.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %175)
  %cmp10.not.i.10.i = icmp eq i8 %175, 45
  br i1 %cmp10.not.i.10.i, label %for.inc.i.10.i, label %for.inc.i.9.i.lor.lhs.false.i.i217_crit_edge

for.inc.i.9.i.lor.lhs.false.i.i217_crit_edge:     ; preds = %for.inc.i.9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i217

for.inc.i.10.i:                                   ; preds = %for.inc.i.9.i
  %add.ptr8.i.11.i = getelementptr i8, ptr %add.ptr.i.i190, i32 11
  %176 = ptrtoint ptr %add.ptr8.i.11.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %add.ptr8.i.11.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 65, i8 %177)
  %cmp10.not.i.11.i = icmp eq i8 %177, 65
  br i1 %cmp10.not.i.11.i, label %for.inc.i.11.i, label %for.inc.i.10.i.lor.lhs.false.i.i217_crit_edge

for.inc.i.10.i.lor.lhs.false.i.i217_crit_edge:    ; preds = %for.inc.i.10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i217

for.inc.i.11.i:                                   ; preds = %for.inc.i.10.i
  %add.ptr8.i.12.i = getelementptr i8, ptr %add.ptr.i.i190, i32 12
  %178 = ptrtoint ptr %add.ptr8.i.12.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %add.ptr8.i.12.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 77, i8 %179)
  %cmp10.not.i.12.i = icmp eq i8 %179, 77
  br i1 %cmp10.not.i.12.i, label %for.inc.i.12.i, label %for.inc.i.11.i.lor.lhs.false.i.i217_crit_edge

for.inc.i.11.i.lor.lhs.false.i.i217_crit_edge:    ; preds = %for.inc.i.11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i217

for.inc.i.12.i:                                   ; preds = %for.inc.i.11.i
  %add.ptr8.i.13.i = getelementptr i8, ptr %add.ptr.i.i190, i32 13
  %180 = ptrtoint ptr %add.ptr8.i.13.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %add.ptr8.i.13.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 68, i8 %181)
  %cmp10.not.i.13.i = icmp eq i8 %181, 68
  br i1 %cmp10.not.i.13.i, label %for.inc.i.12.i.atom_find_str_in_rom.exit.i222_crit_edge, label %for.inc.i.12.i.lor.lhs.false.i.i217_crit_edge

for.inc.i.12.i.lor.lhs.false.i.i217_crit_edge:    ; preds = %for.inc.i.12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i.i217

for.inc.i.12.i.atom_find_str_in_rom.exit.i222_crit_edge: ; preds = %for.inc.i.12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %atom_find_str_in_rom.exit.i222

lor.lhs.false.i.i217:                             ; preds = %for.inc.i.12.i.lor.lhs.false.i.i217_crit_edge, %for.inc.i.11.i.lor.lhs.false.i.i217_crit_edge, %for.inc.i.10.i.lor.lhs.false.i.i217_crit_edge, %for.inc.i.9.i.lor.lhs.false.i.i217_crit_edge, %for.inc.i.8.i.lor.lhs.false.i.i217_crit_edge, %for.inc.i.7.i.lor.lhs.false.i.i217_crit_edge, %for.inc.i.6.i213.lor.lhs.false.i.i217_crit_edge, %for.inc.i.5.i210.lor.lhs.false.i.i217_crit_edge, %for.inc.i.4.i207.lor.lhs.false.i.i217_crit_edge, %for.inc.i.3.i204.lor.lhs.false.i.i217_crit_edge, %for.inc.i.2.i201.lor.lhs.false.i.i217_crit_edge, %for.inc.i.1.i198.lor.lhs.false.i.i217_crit_edge, %for.inc.i.i195.lor.lhs.false.i.i217_crit_edge, %for.cond2.preheader.i.i192.lor.lhs.false.i.i217_crit_edge
  %str_off.03.i.lcssa.i214 = phi i32 [ 0, %for.cond2.preheader.i.i192.lor.lhs.false.i.i217_crit_edge ], [ 1, %for.inc.i.i195.lor.lhs.false.i.i217_crit_edge ], [ 2, %for.inc.i.1.i198.lor.lhs.false.i.i217_crit_edge ], [ 3, %for.inc.i.2.i201.lor.lhs.false.i.i217_crit_edge ], [ 4, %for.inc.i.3.i204.lor.lhs.false.i.i217_crit_edge ], [ 5, %for.inc.i.4.i207.lor.lhs.false.i.i217_crit_edge ], [ 6, %for.inc.i.5.i210.lor.lhs.false.i.i217_crit_edge ], [ 7, %for.inc.i.6.i213.lor.lhs.false.i.i217_crit_edge ], [ 8, %for.inc.i.7.i.lor.lhs.false.i.i217_crit_edge ], [ 9, %for.inc.i.8.i.lor.lhs.false.i.i217_crit_edge ], [ 10, %for.inc.i.9.i.lor.lhs.false.i.i217_crit_edge ], [ 11, %for.inc.i.10.i.lor.lhs.false.i.i217_crit_edge ], [ 12, %for.inc.i.11.i.lor.lhs.false.i.i217_crit_edge ], [ 13, %for.inc.i.12.i.lor.lhs.false.i.i217_crit_edge ]
  %arrayidx15.i.i215 = getelementptr i8, ptr @.str.629, i32 %str_off.03.i.lcssa.i214
  %182 = ptrtoint ptr %arrayidx15.i.i215 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %arrayidx15.i.i215, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %cmp17.i.i216 = icmp eq i8 %183, 0
  br i1 %cmp17.i.i216, label %lor.lhs.false.i.i217.atom_find_str_in_rom.exit.i222_crit_edge, label %for.inc22.i.i220

lor.lhs.false.i.i217.atom_find_str_in_rom.exit.i222_crit_edge: ; preds = %lor.lhs.false.i.i217
  call void @__sanitizer_cov_trace_pc() #14
  br label %atom_find_str_in_rom.exit.i222

for.inc22.i.i220:                                 ; preds = %lor.lhs.false.i.i217
  %inc23.i.i218 = add nuw nsw i32 %start.addr.07.i.i189, 1
  %exitcond9.not.i.i219 = icmp eq i32 %inc23.i.i218, 1025
  br i1 %exitcond9.not.i.i219, label %for.inc22.i.i220.if.else.i225_crit_edge, label %for.inc22.i.i220.for.cond2.preheader.i.i192_crit_edge

for.inc22.i.i220.for.cond2.preheader.i.i192_crit_edge: ; preds = %for.inc22.i.i220
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond2.preheader.i.i192

for.inc22.i.i220.if.else.i225_crit_edge:          ; preds = %for.inc22.i.i220
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i225

atom_find_str_in_rom.exit.i222:                   ; preds = %lor.lhs.false.i.i217.atom_find_str_in_rom.exit.i222_crit_edge, %for.inc.i.12.i.atom_find_str_in_rom.exit.i222_crit_edge
  %cmp.not.i221 = icmp eq ptr %add.ptr.i.i190, null
  br i1 %cmp.not.i221, label %atom_find_str_in_rom.exit.i222.if.else.i225_crit_edge, label %if.then.i224

atom_find_str_in_rom.exit.i222.if.else.i225_crit_edge: ; preds = %atom_find_str_in_rom.exit.i222
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i225

if.then.i224:                                     ; preds = %atom_find_str_in_rom.exit.i222
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i223 = getelementptr i8, ptr %add.ptr.i.i190, i32 18
  %vbios_ver_str.i = getelementptr inbounds %struct.atom_context, ptr %call7.i.i, i32 0, i32 21
  %184 = call ptr @memcpy(ptr %vbios_ver_str.i, ptr %add.ptr.i223, i32 32)
  br label %cleanup

if.else.i225:                                     ; preds = %atom_find_str_in_rom.exit.i222.if.else.i225_crit_edge, %for.inc22.i.i220.if.else.i225_crit_edge
  %vbios_ver_str1.i = getelementptr inbounds %struct.atom_context, ptr %call7.i.i, i32 0, i32 21
  %185 = ptrtoint ptr %vbios_ver_str1.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 0, ptr %vbios_ver_str1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else.i225, %if.then.i224, %if.then48, %do.end29, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end15 ], [ null, %do.end29 ], [ null, %if.then48 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.then.i224 ], [ %call7.i.i, %if.else.i225 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @amdgpu_atom_destroy(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iio = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %iio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iio, align 4
  tail call void @kfree(ptr noundef %1) #12
  tail call void @kfree(ptr noundef %ctx) #12
  ret void
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @amdgpu_atom_asic_init(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  %ps = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bios = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios, align 4
  %data_table = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %data_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_table, align 4
  %add = add i32 %3, 12
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 %add
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %5 to i32
  %add.i = add i32 %3, 13
  %arrayidx.i7.i = getelementptr i8, ptr %1, i32 %add.i
  %6 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %or.i = or i32 %shl.i, %conv.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %ps) #12
  %8 = getelementptr inbounds i8, ptr %ps, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 56)
  %add2 = add nuw nsw i32 %or.i, 8
  %arrayidx.i.i.i = getelementptr i8, ptr %1, i32 %add2
  %10 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i = zext i8 %11 to i32
  %add.i.i = add nuw nsw i32 %or.i, 9
  %arrayidx.i7.i.i = getelementptr i8, ptr %1, i32 %add.i.i
  %12 = ptrtoint ptr %arrayidx.i7.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i7.i.i, align 1
  %conv3.i.i = zext i8 %13 to i32
  %shl.i.i = shl nuw nsw i32 %conv3.i.i, 8
  %add.i35 = add nuw nsw i32 %or.i, 10
  %arrayidx.i.i5.i = getelementptr i8, ptr %1, i32 %add.i35
  %14 = ptrtoint ptr %arrayidx.i.i5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.i5.i, align 1
  %conv.i6.i = zext i8 %15 to i32
  %add.i7.i = add nuw nsw i32 %or.i, 11
  %arrayidx.i7.i8.i = getelementptr i8, ptr %1, i32 %add.i7.i
  %16 = ptrtoint ptr %arrayidx.i7.i8.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i7.i8.i, align 1
  %conv3.i9.i = zext i8 %17 to i32
  %18 = shl nuw i32 %conv3.i9.i, 24
  %19 = shl nuw nsw i32 %conv.i6.i, 16
  %shl.i36 = or i32 %shl.i.i, %conv.i.i
  %or.i.i = or i32 %shl.i36, %19
  %or.i37 = or i32 %or.i.i, %18
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i37)
  %21 = ptrtoint ptr %ps to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ps, align 4
  %add5 = add nuw nsw i32 %or.i, 12
  %arrayidx.i.i.i38 = getelementptr i8, ptr %1, i32 %add5
  %22 = ptrtoint ptr %arrayidx.i.i.i38 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i.i.i38, align 1
  %conv.i.i39 = zext i8 %23 to i32
  %add.i.i40 = add nuw nsw i32 %or.i, 13
  %arrayidx.i7.i.i41 = getelementptr i8, ptr %1, i32 %add.i.i40
  %24 = ptrtoint ptr %arrayidx.i7.i.i41 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i7.i.i41, align 1
  %conv3.i.i42 = zext i8 %25 to i32
  %shl.i.i43 = shl nuw nsw i32 %conv3.i.i42, 8
  %add.i44 = add nuw nsw i32 %or.i, 14
  %arrayidx.i.i5.i45 = getelementptr i8, ptr %1, i32 %add.i44
  %26 = ptrtoint ptr %arrayidx.i.i5.i45 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i5.i45, align 1
  %conv.i6.i46 = zext i8 %27 to i32
  %add.i7.i47 = add nuw nsw i32 %or.i, 15
  %arrayidx.i7.i8.i48 = getelementptr i8, ptr %1, i32 %add.i7.i47
  %28 = ptrtoint ptr %arrayidx.i7.i8.i48 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i7.i8.i48, align 1
  %conv3.i9.i49 = zext i8 %29 to i32
  %30 = shl nuw i32 %conv3.i9.i49, 24
  %31 = shl nuw nsw i32 %conv.i6.i46, 16
  %shl.i50 = or i32 %shl.i.i43, %conv.i.i39
  %or.i.i51 = or i32 %shl.i50, %31
  %or.i52 = or i32 %or.i.i51, %30
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i52)
  %arrayidx7 = getelementptr inbounds [16 x i32], ptr %ps, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i37)
  %tobool.not = icmp eq i32 %or.i37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i52)
  %tobool10.not = icmp eq i32 %or.i52, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_table = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 3
  %34 = ptrtoint ptr %cmd_table to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cmd_table, align 4
  %add12 = add i32 %35, 4
  %arrayidx.i.i53 = getelementptr i8, ptr %1, i32 %add12
  %36 = ptrtoint ptr %arrayidx.i.i53 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.i53, align 1
  %conv.i54 = zext i8 %37 to i16
  %add.i55 = add i32 %35, 5
  %arrayidx.i7.i56 = getelementptr i8, ptr %1, i32 %add.i55
  %38 = ptrtoint ptr %arrayidx.i7.i56 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx.i7.i56, align 1
  %conv3.i57 = zext i8 %39 to i16
  %shl.i58 = shl nuw i16 %conv3.i57, 8
  %or.i59 = or i16 %shl.i58, %conv.i54
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i59)
  %tobool15.not = icmp eq i16 %or.i59, 0
  br i1 %tobool15.not, label %if.end.cleanup_crit_edge, label %if.end17

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %mutex.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #12
  %data_block.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 6
  %40 = ptrtoint ptr %data_block.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 0, ptr %data_block.i, align 4
  %reg_block.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 10
  %41 = ptrtoint ptr %reg_block.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 0, ptr %reg_block.i, align 2
  %fb_base.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 7
  %42 = ptrtoint ptr %fb_base.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %fb_base.i, align 4
  %io_mode.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 14
  %43 = ptrtoint ptr %io_mode.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %io_mode.i, align 4
  %divmul.i = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 8
  %44 = ptrtoint ptr %divmul.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %divmul.i, align 4
  %arrayidx2.i = getelementptr %struct.atom_context, ptr %ctx, i32 0, i32 8, i32 1
  %45 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx2.i, align 4
  %call.i = call fastcc i32 @amdgpu_atom_execute_table_locked(ptr noundef %ctx, i32 noundef 0, ptr noundef nonnull %ps) #12
  call void @mutex_unlock(ptr noundef %mutex.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ %call.i, %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %ps) #12
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_atom_parse_data_header(ptr nocapture noundef readonly %ctx, i32 noundef %index, ptr noundef writeonly %size, ptr noundef writeonly %frev, ptr noundef writeonly %crev, ptr nocapture noundef writeonly %data_start) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %index, 1
  %add = add i32 %mul, 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios, align 4
  %data_table = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 4
  %2 = ptrtoint ptr %data_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_table, align 4
  %add1 = add i32 %add, %3
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 %add1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %5 to i16
  %add.i = add i32 %add1, 1
  %arrayidx.i7.i = getelementptr i8, ptr %1, i32 %add.i
  %6 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %7 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  %conv = zext i16 %or.i to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 4
  %arrayidx = getelementptr i16, ptr %add.ptr4, i32 %index
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %size, null
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i38 = getelementptr i8, ptr %1, i32 %conv
  %10 = ptrtoint ptr %arrayidx.i.i38 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i38, align 1
  %conv.i39 = zext i8 %11 to i16
  %add.i40 = add nuw nsw i32 %conv, 1
  %arrayidx.i7.i41 = getelementptr i8, ptr %1, i32 %add.i40
  %12 = ptrtoint ptr %arrayidx.i7.i41 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i7.i41, align 1
  %conv3.i42 = zext i8 %13 to i16
  %shl.i43 = shl nuw i16 %conv3.i42, 8
  %or.i44 = or i16 %shl.i43, %conv.i39
  %14 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %or.i44, ptr %size, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %tobool10.not = icmp eq ptr %frev, null
  br i1 %tobool10.not, label %if.end9.if.end15_crit_edge, label %if.then11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bios, align 4
  %add13 = add nuw nsw i32 %conv, 2
  %arrayidx.i = getelementptr i8, ptr %16, i32 %add13
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %19 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %frev, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9.if.end15_crit_edge
  %tobool16.not = icmp eq ptr %crev, null
  br i1 %tobool16.not, label %if.end15.if.end21_crit_edge, label %if.then17

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bios, align 4
  %add19 = add nuw nsw i32 %conv, 3
  %arrayidx.i45 = getelementptr i8, ptr %21, i32 %add19
  %22 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i45, align 1
  %24 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %crev, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end15.if.end21_crit_edge
  %25 = ptrtoint ptr %data_start to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %or.i, ptr %data_start, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %entry.cleanup_crit_edge
  %26 = xor i1 %tobool.not, true
  ret i1 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @amdgpu_atom_parse_cmd_header(ptr nocapture noundef readonly %ctx, i32 noundef %index, ptr noundef writeonly %frev, ptr noundef writeonly %crev) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %index, 1
  %add = add i32 %mul, 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios, align 4
  %cmd_table = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %cmd_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_table, align 4
  %add1 = add i32 %add, %3
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 %add1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %5 to i32
  %add.i = add i32 %add1, 1
  %arrayidx.i7.i = getelementptr i8, ptr %1, i32 %add.i
  %6 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 4
  %arrayidx = getelementptr i16, ptr %add.ptr4, i32 %index
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.not = icmp eq i16 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool5.not = icmp eq ptr %frev, null
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add8 = add nuw nsw i32 %or.i, 2
  %arrayidx.i = getelementptr i8, ptr %1, i32 %add8
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %12 = ptrtoint ptr %frev to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %frev, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %crev, null
  br i1 %tobool11.not, label %if.end10.cleanup_crit_edge, label %if.then12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bios, align 4
  %add14 = add nuw nsw i32 %or.i, 3
  %arrayidx.i28 = getelementptr i8, ptr %14, i32 %add14
  %15 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i28, align 1
  %17 = ptrtoint ptr %crev to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %crev, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %18 = xor i1 %tobool.not, true
  ret i1 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_move(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #12
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1073
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #12
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = and i8 %7, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.not = icmp eq i8 %10, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i = zext i8 %7 to i32
  %11 = lshr i32 %conv.i, 3
  %and.i = and i32 %11, 7
  %12 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %12
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %14, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 0) #12
  br label %do.body

if.else:                                          ; preds = %entry
  %and2.i.i = and i32 %arg, 7
  %15 = zext i32 %and2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and2.i.i, label %entry.unreachabledefault.i.i [
    i32 0, label %if.else.atom_skip_dst.exit_crit_edge
    i32 4, label %if.else.atom_skip_dst.exit_crit_edge60
    i32 6, label %if.else.sw.bb3.i.i_crit_edge
    i32 7, label %if.else.sw.bb3.i.i_crit_edge61
    i32 1, label %if.else.sw.bb3.i.i_crit_edge62
    i32 2, label %if.else.sw.bb3.i.i_crit_edge63
    i32 3, label %if.else.sw.bb3.i.i_crit_edge64
    i32 5, label %sw.bb4.i.i
  ]

if.else.sw.bb3.i.i_crit_edge64:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i.i

if.else.sw.bb3.i.i_crit_edge63:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i.i

if.else.sw.bb3.i.i_crit_edge62:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i.i

if.else.sw.bb3.i.i_crit_edge61:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i.i

if.else.sw.bb3.i.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3.i.i

if.else.atom_skip_dst.exit_crit_edge60:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %atom_skip_dst.exit

if.else.atom_skip_dst.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %atom_skip_dst.exit

sw.bb3.i.i:                                       ; preds = %if.else.sw.bb3.i.i_crit_edge, %if.else.sw.bb3.i.i_crit_edge61, %if.else.sw.bb3.i.i_crit_edge62, %if.else.sw.bb3.i.i_crit_edge63, %if.else.sw.bb3.i.i_crit_edge64
  br label %atom_skip_dst.exit

sw.bb4.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i46 = zext i8 %7 to i32
  %16 = lshr i32 %conv.i46, 3
  %and.i47 = and i32 %16, 7
  %17 = lshr i32 %conv.i46, 6
  %arrayidx4.i48 = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i47, i32 %17
  %18 = ptrtoint ptr %arrayidx4.i48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i48, align 4
  %shl.i49 = shl i32 %19, 3
  %or.i50 = or i32 %shl.i49, %arg
  %conv.i.i = lshr i32 %or.i50, 3
  %and.i.i = and i32 %conv.i.i, 7
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.atom_op_move, i32 0, i32 %and.i.i
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %atom_skip_dst.exit

entry.unreachabledefault.i.i:                     ; preds = %if.else
  unreachable

atom_skip_dst.exit:                               ; preds = %sw.bb4.i.i, %sw.bb3.i.i, %if.else.atom_skip_dst.exit_crit_edge, %if.else.atom_skip_dst.exit_crit_edge60
  %.sink1.i.i = phi i32 [ 1, %sw.bb3.i.i ], [ 2, %if.else.atom_skip_dst.exit_crit_edge ], [ 2, %if.else.atom_skip_dst.exit_crit_edge60 ], [ %switch.load, %sw.bb4.i.i ]
  %add.i.i = add i32 %.sink1.i.i, %inc
  %21 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add.i.i, ptr %ptr, align 4
  %22 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -842150451, ptr %saved, align 4
  br label %do.body

do.body:                                          ; preds = %atom_skip_dst.exit, %if.then
  %23 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %do.body.do.end14_crit_edge, label %do.end

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

do.end:                                           ; preds = %do.body
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %24 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not1.i = icmp eq i32 %24, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %24, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #15
  br label %do.end14

do.end14:                                         ; preds = %debug_print_spaces.exit, %do.body.do.end14_crit_edge
  %call.i52 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %25 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool17.not = icmp eq i32 %25, 0
  br i1 %tobool17.not, label %do.end14.do.end31_crit_edge, label %do.end21

do.end14.do.end31_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

do.end21:                                         ; preds = %do.end14
  %call23 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %26 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not1.i53 = icmp eq i32 %26, 0
  br i1 %tobool.not1.i53, label %do.end21.debug_print_spaces.exit59_crit_edge, label %do.end21.do.end.i58_crit_edge

do.end21.do.end.i58_crit_edge:                    ; preds = %do.end21
  br label %do.end.i58

do.end21.debug_print_spaces.exit59_crit_edge:     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit59

do.end.i58:                                       ; preds = %do.end.i58.do.end.i58_crit_edge, %do.end21.do.end.i58_crit_edge
  %n.addr.02.i54 = phi i32 [ %dec.i55, %do.end.i58.do.end.i58_crit_edge ], [ %26, %do.end21.do.end.i58_crit_edge ]
  %dec.i55 = add i32 %n.addr.02.i54, -1
  %call.i56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i57 = icmp eq i32 %dec.i55, 0
  br i1 %tobool.not.i57, label %do.end.i58.debug_print_spaces.exit59_crit_edge, label %do.end.i58.do.end.i58_crit_edge

do.end.i58.do.end.i58_crit_edge:                  ; preds = %do.end.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i58

do.end.i58.debug_print_spaces.exit59_crit_edge:   ; preds = %do.end.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit59

debug_print_spaces.exit59:                        ; preds = %do.end.i58.debug_print_spaces.exit59_crit_edge, %do.end21.debug_print_spaces.exit59_crit_edge
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end31

do.end31:                                         ; preds = %debug_print_spaces.exit59, %do.end14.do.end31_crit_edge
  %27 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %call.i52, i32 noundef %28)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_and(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #12
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1073
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #12
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %11 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not1.i = icmp eq i32 %11, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %11, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %12 = lshr i32 %conv.i, 3
  %and.i = and i32 %12, 7
  %13 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %13
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %15, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i55 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #12
  %16 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %17 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not1.i56 = icmp eq i32 %17, 0
  br i1 %tobool.not1.i56, label %do.end17.debug_print_spaces.exit62_crit_edge, label %do.end17.do.end.i61_crit_edge

do.end17.do.end.i61_crit_edge:                    ; preds = %do.end17
  br label %do.end.i61

do.end17.debug_print_spaces.exit62_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit62

do.end.i61:                                       ; preds = %do.end.i61.do.end.i61_crit_edge, %do.end17.do.end.i61_crit_edge
  %n.addr.02.i57 = phi i32 [ %dec.i58, %do.end.i61.do.end.i61_crit_edge ], [ %17, %do.end17.do.end.i61_crit_edge ]
  %dec.i58 = add i32 %n.addr.02.i57, -1
  %call.i59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i60 = icmp eq i32 %dec.i58, 0
  br i1 %tobool.not.i60, label %do.end.i61.debug_print_spaces.exit62_crit_edge, label %do.end.i61.do.end.i61_crit_edge

do.end.i61.do.end.i61_crit_edge:                  ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i61

do.end.i61.debug_print_spaces.exit62_crit_edge:   ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit62

debug_print_spaces.exit62:                        ; preds = %do.end.i61.debug_print_spaces.exit62_crit_edge, %do.end17.debug_print_spaces.exit62_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #15
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit62, %do.end10.do.end27_crit_edge
  %call.i63 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %18 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %do.end27.do.end44_crit_edge, label %do.end34

do.end27.do.end44_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44

do.end34:                                         ; preds = %do.end27
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %19 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not1.i64 = icmp eq i32 %19, 0
  br i1 %tobool.not1.i64, label %do.end34.debug_print_spaces.exit70_crit_edge, label %do.end34.do.end.i69_crit_edge

do.end34.do.end.i69_crit_edge:                    ; preds = %do.end34
  br label %do.end.i69

do.end34.debug_print_spaces.exit70_crit_edge:     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit70

do.end.i69:                                       ; preds = %do.end.i69.do.end.i69_crit_edge, %do.end34.do.end.i69_crit_edge
  %n.addr.02.i65 = phi i32 [ %dec.i66, %do.end.i69.do.end.i69_crit_edge ], [ %19, %do.end34.do.end.i69_crit_edge ]
  %dec.i66 = add i32 %n.addr.02.i65, -1
  %call.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i68 = icmp eq i32 %dec.i66, 0
  br i1 %tobool.not.i68, label %do.end.i69.debug_print_spaces.exit70_crit_edge, label %do.end.i69.do.end.i69_crit_edge

do.end.i69.do.end.i69_crit_edge:                  ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i69

do.end.i69.debug_print_spaces.exit70_crit_edge:   ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit70

debug_print_spaces.exit70:                        ; preds = %do.end.i69.debug_print_spaces.exit70_crit_edge, %do.end34.debug_print_spaces.exit70_crit_edge
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end44

do.end44:                                         ; preds = %debug_print_spaces.exit70, %do.end27.do.end44_crit_edge
  %and = and i32 %call.i63, %call.i55
  %20 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %and, i32 noundef %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_or(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #12
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1073
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #12
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %11 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not1.i = icmp eq i32 %11, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %11, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %12 = lshr i32 %conv.i, 3
  %and.i = and i32 %12, 7
  %13 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %13
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %15, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i55 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #12
  %16 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %17 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not1.i56 = icmp eq i32 %17, 0
  br i1 %tobool.not1.i56, label %do.end17.debug_print_spaces.exit62_crit_edge, label %do.end17.do.end.i61_crit_edge

do.end17.do.end.i61_crit_edge:                    ; preds = %do.end17
  br label %do.end.i61

do.end17.debug_print_spaces.exit62_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit62

do.end.i61:                                       ; preds = %do.end.i61.do.end.i61_crit_edge, %do.end17.do.end.i61_crit_edge
  %n.addr.02.i57 = phi i32 [ %dec.i58, %do.end.i61.do.end.i61_crit_edge ], [ %17, %do.end17.do.end.i61_crit_edge ]
  %dec.i58 = add i32 %n.addr.02.i57, -1
  %call.i59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i60 = icmp eq i32 %dec.i58, 0
  br i1 %tobool.not.i60, label %do.end.i61.debug_print_spaces.exit62_crit_edge, label %do.end.i61.do.end.i61_crit_edge

do.end.i61.do.end.i61_crit_edge:                  ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i61

do.end.i61.debug_print_spaces.exit62_crit_edge:   ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit62

debug_print_spaces.exit62:                        ; preds = %do.end.i61.debug_print_spaces.exit62_crit_edge, %do.end17.debug_print_spaces.exit62_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #15
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit62, %do.end10.do.end27_crit_edge
  %call.i63 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %18 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %do.end27.do.end44_crit_edge, label %do.end34

do.end27.do.end44_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44

do.end34:                                         ; preds = %do.end27
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %19 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not1.i64 = icmp eq i32 %19, 0
  br i1 %tobool.not1.i64, label %do.end34.debug_print_spaces.exit70_crit_edge, label %do.end34.do.end.i69_crit_edge

do.end34.do.end.i69_crit_edge:                    ; preds = %do.end34
  br label %do.end.i69

do.end34.debug_print_spaces.exit70_crit_edge:     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit70

do.end.i69:                                       ; preds = %do.end.i69.do.end.i69_crit_edge, %do.end34.do.end.i69_crit_edge
  %n.addr.02.i65 = phi i32 [ %dec.i66, %do.end.i69.do.end.i69_crit_edge ], [ %19, %do.end34.do.end.i69_crit_edge ]
  %dec.i66 = add i32 %n.addr.02.i65, -1
  %call.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i68 = icmp eq i32 %dec.i66, 0
  br i1 %tobool.not.i68, label %do.end.i69.debug_print_spaces.exit70_crit_edge, label %do.end.i69.do.end.i69_crit_edge

do.end.i69.do.end.i69_crit_edge:                  ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i69

do.end.i69.debug_print_spaces.exit70_crit_edge:   ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit70

debug_print_spaces.exit70:                        ; preds = %do.end.i69.debug_print_spaces.exit70_crit_edge, %do.end34.debug_print_spaces.exit70_crit_edge
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end44

do.end44:                                         ; preds = %debug_print_spaces.exit70, %do.end27.do.end44_crit_edge
  %or = or i32 %call.i63, %call.i55
  %20 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %or, i32 noundef %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_shift_left(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #12
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1073
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #12
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = and i8 %7, 56
  %11 = lshr exact i8 %10, 3
  %12 = zext i8 %11 to i32
  %arrayidx = getelementptr [8 x i32], ptr @atom_def_dst, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %.tr = trunc i32 %14 to i8
  %15 = shl i8 %.tr, 6
  %conv5 = or i8 %15, %10
  %16 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.end

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

do.end:                                           ; preds = %entry
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %17 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not1.i = icmp eq i32 %17, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %17, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end14

do.end14:                                         ; preds = %debug_print_spaces.exit, %entry.do.end14_crit_edge
  %conv.i = zext i8 %conv5 to i32
  %18 = lshr exact i32 %conv.i, 3
  %and.i = and i32 %18, 7
  %19 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %19
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %21, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i66 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #12
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 4
  %bios10.i = getelementptr inbounds %struct.atom_context, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %bios10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bios10.i, align 4
  %26 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i, align 1
  %conv12.i = zext i8 %29 to i32
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %ptr, align 4
  %30 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool19.not = icmp eq i32 %30, 0
  br i1 %tobool19.not, label %do.end14.do.end52_crit_edge, label %do.end23

do.end14.do.end52_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end52

do.end23:                                         ; preds = %do.end14
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %31 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not1.i67 = icmp eq i32 %31, 0
  br i1 %tobool.not1.i67, label %do.end23.do.end34_crit_edge, label %do.end23.do.end.i72_crit_edge

do.end23.do.end.i72_crit_edge:                    ; preds = %do.end23
  br label %do.end.i72

do.end23.do.end34_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

do.end.i72:                                       ; preds = %do.end.i72.do.end.i72_crit_edge, %do.end23.do.end.i72_crit_edge
  %n.addr.02.i68 = phi i32 [ %dec.i69, %do.end.i72.do.end.i72_crit_edge ], [ %31, %do.end23.do.end.i72_crit_edge ]
  %dec.i69 = add i32 %n.addr.02.i68, -1
  %call.i70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i71 = icmp eq i32 %dec.i69, 0
  br i1 %tobool.not.i71, label %do.end.i72.do.end34_crit_edge, label %do.end.i72.do.end.i72_crit_edge

do.end.i72.do.end.i72_crit_edge:                  ; preds = %do.end.i72
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i72

do.end.i72.do.end34_crit_edge:                    ; preds = %do.end.i72
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

do.end34:                                         ; preds = %do.end.i72.do.end34_crit_edge, %do.end23.do.end34_crit_edge
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.314, i32 noundef %conv12.i) #15
  %.pr = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool38.not = icmp eq i32 %.pr, 0
  br i1 %tobool38.not, label %do.end34.do.end52_crit_edge, label %do.end42

do.end34.do.end52_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end52

do.end42:                                         ; preds = %do.end34
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %32 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not1.i74 = icmp eq i32 %32, 0
  br i1 %tobool.not1.i74, label %do.end42.debug_print_spaces.exit80_crit_edge, label %do.end42.do.end.i79_crit_edge

do.end42.do.end.i79_crit_edge:                    ; preds = %do.end42
  br label %do.end.i79

do.end42.debug_print_spaces.exit80_crit_edge:     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit80

do.end.i79:                                       ; preds = %do.end.i79.do.end.i79_crit_edge, %do.end42.do.end.i79_crit_edge
  %n.addr.02.i75 = phi i32 [ %dec.i76, %do.end.i79.do.end.i79_crit_edge ], [ %32, %do.end42.do.end.i79_crit_edge ]
  %dec.i76 = add i32 %n.addr.02.i75, -1
  %call.i77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i78 = icmp eq i32 %dec.i76, 0
  br i1 %tobool.not.i78, label %do.end.i79.debug_print_spaces.exit80_crit_edge, label %do.end.i79.do.end.i79_crit_edge

do.end.i79.do.end.i79_crit_edge:                  ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i79

do.end.i79.debug_print_spaces.exit80_crit_edge:   ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit80

debug_print_spaces.exit80:                        ; preds = %do.end.i79.debug_print_spaces.exit80_crit_edge, %do.end42.debug_print_spaces.exit80_crit_edge
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end52

do.end52:                                         ; preds = %debug_print_spaces.exit80, %do.end34.do.end52_crit_edge, %do.end14.do.end52_crit_edge
  %shl36 = shl i32 %call.i66, %conv12.i
  %33 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %conv5, ptr noundef nonnull %dptr, i32 noundef %shl36, i32 noundef %34)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_shift_right(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #12
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1073
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #12
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = and i8 %7, 56
  %11 = lshr exact i8 %10, 3
  %12 = zext i8 %11 to i32
  %arrayidx = getelementptr [8 x i32], ptr @atom_def_dst, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %.tr = trunc i32 %14 to i8
  %15 = shl i8 %.tr, 6
  %conv5 = or i8 %15, %10
  %16 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.end

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

do.end:                                           ; preds = %entry
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %17 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not1.i = icmp eq i32 %17, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %17, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end14

do.end14:                                         ; preds = %debug_print_spaces.exit, %entry.do.end14_crit_edge
  %conv.i = zext i8 %conv5 to i32
  %18 = lshr exact i32 %conv.i, 3
  %and.i = and i32 %18, 7
  %19 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %19
  %20 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %21, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i66 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #12
  %22 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ctx, align 4
  %bios10.i = getelementptr inbounds %struct.atom_context, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %bios10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bios10.i, align 4
  %26 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i, align 1
  %conv12.i = zext i8 %29 to i32
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %ptr, align 4
  %30 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool19.not = icmp eq i32 %30, 0
  br i1 %tobool19.not, label %do.end14.do.end52_crit_edge, label %do.end23

do.end14.do.end52_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end52

do.end23:                                         ; preds = %do.end14
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %31 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not1.i67 = icmp eq i32 %31, 0
  br i1 %tobool.not1.i67, label %do.end23.do.end34_crit_edge, label %do.end23.do.end.i72_crit_edge

do.end23.do.end.i72_crit_edge:                    ; preds = %do.end23
  br label %do.end.i72

do.end23.do.end34_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

do.end.i72:                                       ; preds = %do.end.i72.do.end.i72_crit_edge, %do.end23.do.end.i72_crit_edge
  %n.addr.02.i68 = phi i32 [ %dec.i69, %do.end.i72.do.end.i72_crit_edge ], [ %31, %do.end23.do.end.i72_crit_edge ]
  %dec.i69 = add i32 %n.addr.02.i68, -1
  %call.i70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i71 = icmp eq i32 %dec.i69, 0
  br i1 %tobool.not.i71, label %do.end.i72.do.end34_crit_edge, label %do.end.i72.do.end.i72_crit_edge

do.end.i72.do.end.i72_crit_edge:                  ; preds = %do.end.i72
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i72

do.end.i72.do.end34_crit_edge:                    ; preds = %do.end.i72
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

do.end34:                                         ; preds = %do.end.i72.do.end34_crit_edge, %do.end23.do.end34_crit_edge
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.314, i32 noundef %conv12.i) #15
  %.pr = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool38.not = icmp eq i32 %.pr, 0
  br i1 %tobool38.not, label %do.end34.do.end52_crit_edge, label %do.end42

do.end34.do.end52_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end52

do.end42:                                         ; preds = %do.end34
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %32 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not1.i74 = icmp eq i32 %32, 0
  br i1 %tobool.not1.i74, label %do.end42.debug_print_spaces.exit80_crit_edge, label %do.end42.do.end.i79_crit_edge

do.end42.do.end.i79_crit_edge:                    ; preds = %do.end42
  br label %do.end.i79

do.end42.debug_print_spaces.exit80_crit_edge:     ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit80

do.end.i79:                                       ; preds = %do.end.i79.do.end.i79_crit_edge, %do.end42.do.end.i79_crit_edge
  %n.addr.02.i75 = phi i32 [ %dec.i76, %do.end.i79.do.end.i79_crit_edge ], [ %32, %do.end42.do.end.i79_crit_edge ]
  %dec.i76 = add i32 %n.addr.02.i75, -1
  %call.i77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i78 = icmp eq i32 %dec.i76, 0
  br i1 %tobool.not.i78, label %do.end.i79.debug_print_spaces.exit80_crit_edge, label %do.end.i79.do.end.i79_crit_edge

do.end.i79.do.end.i79_crit_edge:                  ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i79

do.end.i79.debug_print_spaces.exit80_crit_edge:   ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit80

debug_print_spaces.exit80:                        ; preds = %do.end.i79.debug_print_spaces.exit80_crit_edge, %do.end42.debug_print_spaces.exit80_crit_edge
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end52

do.end52:                                         ; preds = %debug_print_spaces.exit80, %do.end34.do.end52_crit_edge, %do.end14.do.end52_crit_edge
  %shr36 = lshr i32 %call.i66, %conv12.i
  %33 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %conv5, ptr noundef nonnull %dptr, i32 noundef %shr36, i32 noundef %34)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_mul(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.333) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %10 = lshr i32 %conv.i, 3
  %and.i = and i32 %10, 7
  %11 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %11
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %13, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i36 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %14 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %15 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i37 = icmp eq i32 %15, 0
  br i1 %tobool.not1.i37, label %do.end17.debug_print_spaces.exit43_crit_edge, label %do.end17.do.end.i42_crit_edge

do.end17.do.end.i42_crit_edge:                    ; preds = %do.end17
  br label %do.end.i42

do.end17.debug_print_spaces.exit43_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit43

do.end.i42:                                       ; preds = %do.end.i42.do.end.i42_crit_edge, %do.end17.do.end.i42_crit_edge
  %n.addr.02.i38 = phi i32 [ %dec.i39, %do.end.i42.do.end.i42_crit_edge ], [ %15, %do.end17.do.end.i42_crit_edge ]
  %dec.i39 = add i32 %n.addr.02.i38, -1
  %call.i40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i41 = icmp eq i32 %dec.i39, 0
  br i1 %tobool.not.i41, label %do.end.i42.debug_print_spaces.exit43_crit_edge, label %do.end.i42.do.end.i42_crit_edge

do.end.i42.do.end.i42_crit_edge:                  ; preds = %do.end.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i42

do.end.i42.debug_print_spaces.exit43_crit_edge:   ; preds = %do.end.i42
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit43

debug_print_spaces.exit43:                        ; preds = %do.end.i42.debug_print_spaces.exit43_crit_edge, %do.end17.debug_print_spaces.exit43_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.338) #15
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit43, %do.end10.do.end27_crit_edge
  %call.i44 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %mul = mul i32 %call.i44, %call.i36
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %divmul = getelementptr inbounds %struct.atom_context, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %divmul to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %divmul, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_div(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.333) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %10 = lshr i32 %conv.i, 3
  %and.i = and i32 %10, 7
  %11 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %11
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %13, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i53 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %14 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %15 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i54 = icmp eq i32 %15, 0
  br i1 %tobool.not1.i54, label %do.end17.debug_print_spaces.exit60_crit_edge, label %do.end17.do.end.i59_crit_edge

do.end17.do.end.i59_crit_edge:                    ; preds = %do.end17
  br label %do.end.i59

do.end17.debug_print_spaces.exit60_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit60

do.end.i59:                                       ; preds = %do.end.i59.do.end.i59_crit_edge, %do.end17.do.end.i59_crit_edge
  %n.addr.02.i55 = phi i32 [ %dec.i56, %do.end.i59.do.end.i59_crit_edge ], [ %15, %do.end17.do.end.i59_crit_edge ]
  %dec.i56 = add i32 %n.addr.02.i55, -1
  %call.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i58 = icmp eq i32 %dec.i56, 0
  br i1 %tobool.not.i58, label %do.end.i59.debug_print_spaces.exit60_crit_edge, label %do.end.i59.do.end.i59_crit_edge

do.end.i59.do.end.i59_crit_edge:                  ; preds = %do.end.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i59

do.end.i59.debug_print_spaces.exit60_crit_edge:   ; preds = %do.end.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit60

debug_print_spaces.exit60:                        ; preds = %do.end.i59.debug_print_spaces.exit60_crit_edge, %do.end17.debug_print_spaces.exit60_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.338) #15
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit60, %do.end10.do.end27_crit_edge
  %call.i61 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp.not = icmp eq i32 %call.i61, 0
  br i1 %cmp.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  %call.i53.frozen = freeze i32 %call.i53
  %call.i61.frozen = freeze i32 %call.i61
  %div = udiv i32 %call.i53.frozen, %call.i61.frozen
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %divmul = getelementptr inbounds %struct.atom_context, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %divmul to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div, ptr %divmul, align 4
  %19 = mul i32 %div, %call.i61.frozen
  %rem.decomposed = sub i32 %call.i53.frozen, %19
  br label %if.end40

if.else:                                          ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctx, align 4
  %divmul35 = getelementptr inbounds %struct.atom_context, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %divmul35 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %divmul35, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then29
  %.sink = phi i32 [ 0, %if.else ], [ %rem.decomposed, %if.then29 ]
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 4
  %arrayidx39 = getelementptr %struct.atom_context, ptr %24, i32 0, i32 8, i32 1
  %25 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %arrayidx39, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_add(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #12
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1073
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #12
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %11 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not1.i = icmp eq i32 %11, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %11, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %12 = lshr i32 %conv.i, 3
  %and.i = and i32 %12, 7
  %13 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %13
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %15, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i55 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #12
  %16 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %17 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not1.i56 = icmp eq i32 %17, 0
  br i1 %tobool.not1.i56, label %do.end17.debug_print_spaces.exit62_crit_edge, label %do.end17.do.end.i61_crit_edge

do.end17.do.end.i61_crit_edge:                    ; preds = %do.end17
  br label %do.end.i61

do.end17.debug_print_spaces.exit62_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit62

do.end.i61:                                       ; preds = %do.end.i61.do.end.i61_crit_edge, %do.end17.do.end.i61_crit_edge
  %n.addr.02.i57 = phi i32 [ %dec.i58, %do.end.i61.do.end.i61_crit_edge ], [ %17, %do.end17.do.end.i61_crit_edge ]
  %dec.i58 = add i32 %n.addr.02.i57, -1
  %call.i59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i60 = icmp eq i32 %dec.i58, 0
  br i1 %tobool.not.i60, label %do.end.i61.debug_print_spaces.exit62_crit_edge, label %do.end.i61.do.end.i61_crit_edge

do.end.i61.do.end.i61_crit_edge:                  ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i61

do.end.i61.debug_print_spaces.exit62_crit_edge:   ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit62

debug_print_spaces.exit62:                        ; preds = %do.end.i61.debug_print_spaces.exit62_crit_edge, %do.end17.debug_print_spaces.exit62_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #15
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit62, %do.end10.do.end27_crit_edge
  %call.i63 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %18 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %do.end27.do.end44_crit_edge, label %do.end34

do.end27.do.end44_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44

do.end34:                                         ; preds = %do.end27
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %19 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not1.i64 = icmp eq i32 %19, 0
  br i1 %tobool.not1.i64, label %do.end34.debug_print_spaces.exit70_crit_edge, label %do.end34.do.end.i69_crit_edge

do.end34.do.end.i69_crit_edge:                    ; preds = %do.end34
  br label %do.end.i69

do.end34.debug_print_spaces.exit70_crit_edge:     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit70

do.end.i69:                                       ; preds = %do.end.i69.do.end.i69_crit_edge, %do.end34.do.end.i69_crit_edge
  %n.addr.02.i65 = phi i32 [ %dec.i66, %do.end.i69.do.end.i69_crit_edge ], [ %19, %do.end34.do.end.i69_crit_edge ]
  %dec.i66 = add i32 %n.addr.02.i65, -1
  %call.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i68 = icmp eq i32 %dec.i66, 0
  br i1 %tobool.not.i68, label %do.end.i69.debug_print_spaces.exit70_crit_edge, label %do.end.i69.do.end.i69_crit_edge

do.end.i69.do.end.i69_crit_edge:                  ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i69

do.end.i69.debug_print_spaces.exit70_crit_edge:   ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit70

debug_print_spaces.exit70:                        ; preds = %do.end.i69.debug_print_spaces.exit70_crit_edge, %do.end34.debug_print_spaces.exit70_crit_edge
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end44

do.end44:                                         ; preds = %debug_print_spaces.exit70, %do.end27.do.end44_crit_edge
  %add = add i32 %call.i63, %call.i55
  %20 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %add, i32 noundef %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_sub(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #12
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1073
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #12
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %11 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not1.i = icmp eq i32 %11, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %11, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %12 = lshr i32 %conv.i, 3
  %and.i = and i32 %12, 7
  %13 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %13
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %15, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i55 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #12
  %16 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %17 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not1.i56 = icmp eq i32 %17, 0
  br i1 %tobool.not1.i56, label %do.end17.debug_print_spaces.exit62_crit_edge, label %do.end17.do.end.i61_crit_edge

do.end17.do.end.i61_crit_edge:                    ; preds = %do.end17
  br label %do.end.i61

do.end17.debug_print_spaces.exit62_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit62

do.end.i61:                                       ; preds = %do.end.i61.do.end.i61_crit_edge, %do.end17.do.end.i61_crit_edge
  %n.addr.02.i57 = phi i32 [ %dec.i58, %do.end.i61.do.end.i61_crit_edge ], [ %17, %do.end17.do.end.i61_crit_edge ]
  %dec.i58 = add i32 %n.addr.02.i57, -1
  %call.i59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i60 = icmp eq i32 %dec.i58, 0
  br i1 %tobool.not.i60, label %do.end.i61.debug_print_spaces.exit62_crit_edge, label %do.end.i61.do.end.i61_crit_edge

do.end.i61.do.end.i61_crit_edge:                  ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i61

do.end.i61.debug_print_spaces.exit62_crit_edge:   ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit62

debug_print_spaces.exit62:                        ; preds = %do.end.i61.debug_print_spaces.exit62_crit_edge, %do.end17.debug_print_spaces.exit62_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #15
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit62, %do.end10.do.end27_crit_edge
  %call.i63 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %18 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %do.end27.do.end44_crit_edge, label %do.end34

do.end27.do.end44_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44

do.end34:                                         ; preds = %do.end27
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %19 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not1.i64 = icmp eq i32 %19, 0
  br i1 %tobool.not1.i64, label %do.end34.debug_print_spaces.exit70_crit_edge, label %do.end34.do.end.i69_crit_edge

do.end34.do.end.i69_crit_edge:                    ; preds = %do.end34
  br label %do.end.i69

do.end34.debug_print_spaces.exit70_crit_edge:     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit70

do.end.i69:                                       ; preds = %do.end.i69.do.end.i69_crit_edge, %do.end34.do.end.i69_crit_edge
  %n.addr.02.i65 = phi i32 [ %dec.i66, %do.end.i69.do.end.i69_crit_edge ], [ %19, %do.end34.do.end.i69_crit_edge ]
  %dec.i66 = add i32 %n.addr.02.i65, -1
  %call.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i68 = icmp eq i32 %dec.i66, 0
  br i1 %tobool.not.i68, label %do.end.i69.debug_print_spaces.exit70_crit_edge, label %do.end.i69.do.end.i69_crit_edge

do.end.i69.do.end.i69_crit_edge:                  ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i69

do.end.i69.debug_print_spaces.exit70_crit_edge:   ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit70

debug_print_spaces.exit70:                        ; preds = %do.end.i69.debug_print_spaces.exit70_crit_edge, %do.end34.debug_print_spaces.exit70_crit_edge
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end44

do.end44:                                         ; preds = %debug_print_spaces.exit70, %do.end27.do.end44_crit_edge
  %sub = sub i32 %call.i55, %call.i63
  %20 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %sub, i32 noundef %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_setport(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.630)
  switch i32 %arg, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.epilog.sink.split_crit_edge
    i32 2, label %sw.bb40
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bios, align 4
  %5 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %4, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %8 to i16
  %add.i = add i32 %6, 1
  %arrayidx.i7.i = getelementptr i8, ptr %4, i32 %add.i
  %9 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %10 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  %conv = zext i16 %or.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %or.i)
  %cmp = icmp ult i16 %or.i, 5
  %11 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %cmp, label %do.body, label %do.body13

do.body:                                          ; preds = %sw.bb
  br i1 %tobool.not, label %do.body.if.end29_crit_edge, label %do.end

do.body.if.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

do.end:                                           ; preds = %do.body
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %12 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not1.i = icmp eq i32 %12, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %12, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %arrayidx = getelementptr [5 x ptr], ptr @atom_io_names, i32 0, i32 %conv
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.371, i32 noundef %conv, ptr noundef %14) #15
  br label %if.end29

do.body13:                                        ; preds = %sw.bb
  br i1 %tobool.not, label %do.body13.if.else33_crit_edge, label %do.end18

do.body13.if.else33_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else33

do.end18:                                         ; preds = %do.body13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %15 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i56 = icmp eq i32 %15, 0
  br i1 %tobool.not1.i56, label %do.end18.debug_print_spaces.exit62_crit_edge, label %do.end18.do.end.i61_crit_edge

do.end18.do.end.i61_crit_edge:                    ; preds = %do.end18
  br label %do.end.i61

do.end18.debug_print_spaces.exit62_crit_edge:     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit62

do.end.i61:                                       ; preds = %do.end.i61.do.end.i61_crit_edge, %do.end18.do.end.i61_crit_edge
  %n.addr.02.i57 = phi i32 [ %dec.i58, %do.end.i61.do.end.i61_crit_edge ], [ %15, %do.end18.do.end.i61_crit_edge ]
  %dec.i58 = add i32 %n.addr.02.i57, -1
  %call.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i60 = icmp eq i32 %dec.i58, 0
  br i1 %tobool.not.i60, label %do.end.i61.debug_print_spaces.exit62_crit_edge, label %do.end.i61.do.end.i61_crit_edge

do.end.i61.do.end.i61_crit_edge:                  ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i61

do.end.i61.debug_print_spaces.exit62_crit_edge:   ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit62

debug_print_spaces.exit62:                        ; preds = %do.end.i61.debug_print_spaces.exit62_crit_edge, %do.end18.debug_print_spaces.exit62_crit_edge
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.376, i32 noundef %conv) #15
  br label %if.end29

if.end29:                                         ; preds = %debug_print_spaces.exit62, %debug_print_spaces.exit, %do.body.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i)
  %tobool30.not = icmp eq i16 %or.i, 0
  br i1 %tobool30.not, label %if.end29.sw.epilog.sink.split_crit_edge, label %if.end29.if.else33_crit_edge

if.end29.if.else33_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else33

if.end29.sw.epilog.sink.split_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

if.else33:                                        ; preds = %if.end29.if.else33_crit_edge, %do.body13.if.else33_crit_edge
  %or = or i32 %conv, 128
  br label %sw.epilog.sink.split

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb40, %if.else33, %if.end29.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 2, %sw.bb40 ], [ %or, %if.else33 ], [ 0, %if.end29.sw.epilog.sink.split_crit_edge ], [ %arg, %entry.sw.epilog.sink.split_crit_edge ]
  %.sink64 = phi i32 [ 1, %sw.bb40 ], [ 2, %if.else33 ], [ 2, %if.end29.sw.epilog.sink.split_crit_edge ], [ %arg, %entry.sw.epilog.sink.split_crit_edge ]
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %io_mode42 = getelementptr inbounds %struct.atom_context, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %io_mode42 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %io_mode42, align 4
  %19 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ptr, align 4
  %inc43 = add i32 %20, %.sink64
  store i32 %inc43, ptr %ptr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_setregblock(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %7 to i16
  %add.i = add i32 %5, 1
  %arrayidx.i7.i = getelementptr i8, ptr %3, i32 %add.i
  %8 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %9 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  %reg_block = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %reg_block to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %or.i, ptr %reg_block, align 2
  %11 = load i32, ptr %ptr, align 4
  %add = add i32 %11, 2
  store i32 %add, ptr %ptr, align 4
  %12 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.do.end11_crit_edge, label %do.end

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

do.end:                                           ; preds = %entry
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %13 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not1.i = icmp eq i32 %13, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %13, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %14 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx, align 4
  %reg_block9 = getelementptr inbounds %struct.atom_context, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %reg_block9 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %reg_block9, align 2
  %conv = zext i16 %17 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.385, i32 noundef %conv) #15
  br label %do.end11

do.end11:                                         ; preds = %debug_print_spaces.exit, %entry.do.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_setfbbase(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.389) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %call.i16 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %fb_base = getelementptr inbounds %struct.atom_context, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i16, ptr %fb_base, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_compare(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.333) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %10 = lshr i32 %conv.i, 3
  %and.i = and i32 %10, 7
  %11 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %11
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %13, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i67 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %14 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %15 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i68 = icmp eq i32 %15, 0
  br i1 %tobool.not1.i68, label %do.end17.debug_print_spaces.exit74_crit_edge, label %do.end17.do.end.i73_crit_edge

do.end17.do.end.i73_crit_edge:                    ; preds = %do.end17
  br label %do.end.i73

do.end17.debug_print_spaces.exit74_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit74

do.end.i73:                                       ; preds = %do.end.i73.do.end.i73_crit_edge, %do.end17.do.end.i73_crit_edge
  %n.addr.02.i69 = phi i32 [ %dec.i70, %do.end.i73.do.end.i73_crit_edge ], [ %15, %do.end17.do.end.i73_crit_edge ]
  %dec.i70 = add i32 %n.addr.02.i69, -1
  %call.i71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i72 = icmp eq i32 %dec.i70, 0
  br i1 %tobool.not.i72, label %do.end.i73.debug_print_spaces.exit74_crit_edge, label %do.end.i73.do.end.i73_crit_edge

do.end.i73.do.end.i73_crit_edge:                  ; preds = %do.end.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i73

do.end.i73.debug_print_spaces.exit74_crit_edge:   ; preds = %do.end.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit74

debug_print_spaces.exit74:                        ; preds = %do.end.i73.debug_print_spaces.exit74_crit_edge, %do.end17.debug_print_spaces.exit74_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.338) #15
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit74, %do.end10.do.end27_crit_edge
  %call.i75 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i67, i32 %call.i75)
  %cmp = icmp eq i32 %call.i67, %call.i75
  %conv = zext i1 %cmp to i32
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %cs_equal = getelementptr inbounds %struct.atom_context, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %cs_equal to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %cs_equal, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i67, i32 %call.i75)
  %cmp30 = icmp ugt i32 %call.i67, %call.i75
  %conv31 = zext i1 %cmp30 to i32
  %19 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx, align 4
  %cs_above = getelementptr inbounds %struct.atom_context, ptr %20, i32 0, i32 13
  %21 = ptrtoint ptr %cs_above to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv31, ptr %cs_above, align 4
  %22 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool34.not = icmp eq i32 %22, 0
  br i1 %tobool34.not, label %do.end27.do.end55_crit_edge, label %do.end38

do.end27.do.end55_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55

do.end38:                                         ; preds = %do.end27
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %23 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not1.i76 = icmp eq i32 %23, 0
  br i1 %tobool.not1.i76, label %do.end38.debug_print_spaces.exit82_crit_edge, label %do.end38.do.end.i81_crit_edge

do.end38.do.end.i81_crit_edge:                    ; preds = %do.end38
  br label %do.end.i81

do.end38.debug_print_spaces.exit82_crit_edge:     ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit82

do.end.i81:                                       ; preds = %do.end.i81.do.end.i81_crit_edge, %do.end38.do.end.i81_crit_edge
  %n.addr.02.i77 = phi i32 [ %dec.i78, %do.end.i81.do.end.i81_crit_edge ], [ %23, %do.end38.do.end.i81_crit_edge ]
  %dec.i78 = add i32 %n.addr.02.i77, -1
  %call.i79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i80 = icmp eq i32 %dec.i78, 0
  br i1 %tobool.not.i80, label %do.end.i81.debug_print_spaces.exit82_crit_edge, label %do.end.i81.do.end.i81_crit_edge

do.end.i81.do.end.i81_crit_edge:                  ; preds = %do.end.i81
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i81

do.end.i81.debug_print_spaces.exit82_crit_edge:   ; preds = %do.end.i81
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit82

debug_print_spaces.exit82:                        ; preds = %do.end.i81.debug_print_spaces.exit82_crit_edge, %do.end38.debug_print_spaces.exit82_crit_edge
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %cs_equal46 = getelementptr inbounds %struct.atom_context, ptr %25, i32 0, i32 12
  %26 = ptrtoint ptr %cs_equal46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cs_equal46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool47.not = icmp eq i32 %27, 0
  %cond = select i1 %tobool47.not, ptr @.str.404, ptr @.str.403
  %cs_above49 = getelementptr inbounds %struct.atom_context, ptr %25, i32 0, i32 13
  %28 = ptrtoint ptr %cs_above49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cs_above49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool50.not = icmp eq i32 %29, 0
  %cond51 = select i1 %tobool50.not, ptr @.str.406, ptr @.str.405
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.401, ptr noundef nonnull %cond, ptr noundef nonnull %cond51) #15
  br label %do.end55

do.end55:                                         ; preds = %debug_print_spaces.exit82, %do.end27.do.end55_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_switch(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.409) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %call.i96 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %10 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctx, align 4
  %bios13124 = getelementptr inbounds %struct.atom_context, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %bios13124 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bios13124, align 4
  %14 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ptr, align 4
  %arrayidx.i.i125 = getelementptr i8, ptr %13, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i125 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i125, align 1
  %conv.i126 = zext i8 %17 to i16
  %add.i127 = add i32 %15, 1
  %arrayidx.i7.i128 = getelementptr i8, ptr %13, i32 %add.i127
  %18 = ptrtoint ptr %arrayidx.i7.i128 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i7.i128, align 1
  %conv3.i129 = zext i8 %19 to i16
  %shl.i130 = shl nuw i16 %conv3.i129, 8
  %or.i131 = or i16 %shl.i130, %conv.i126
  call void @__sanitizer_cov_trace_const_cmp2(i16 23130, i16 %or.i131)
  %cmp.not132 = icmp eq i16 %or.i131, 23130
  br i1 %cmp.not132, label %do.end10.while.end_crit_edge, label %while.body.lr.ph

do.end10.while.end_crit_edge:                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end10
  %20 = and i8 %7, 56
  %21 = or i8 %20, 5
  br label %while.body

while.body:                                       ; preds = %if.end67.while.body_crit_edge, %while.body.lr.ph
  %add.i133 = phi i32 [ %add.i127, %while.body.lr.ph ], [ %add.i, %if.end67.while.body_crit_edge ]
  %22 = phi i8 [ %17, %while.body.lr.ph ], [ %47, %if.end67.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %22)
  %cmp20 = icmp eq i8 %22, 99
  br i1 %cmp20, label %if.then22, label %do.end71

if.then22:                                        ; preds = %while.body
  %23 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add.i133, ptr %ptr, align 4
  %24 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool25.not = icmp eq i32 %24, 0
  br i1 %tobool25.not, label %if.then22.do.end39_crit_edge, label %do.end29

if.then22.do.end39_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end39

do.end29:                                         ; preds = %if.then22
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %25 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not1.i98 = icmp eq i32 %25, 0
  br i1 %tobool.not1.i98, label %do.end29.debug_print_spaces.exit104_crit_edge, label %do.end29.do.end.i103_crit_edge

do.end29.do.end.i103_crit_edge:                   ; preds = %do.end29
  br label %do.end.i103

do.end29.debug_print_spaces.exit104_crit_edge:    ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit104

do.end.i103:                                      ; preds = %do.end.i103.do.end.i103_crit_edge, %do.end29.do.end.i103_crit_edge
  %n.addr.02.i99 = phi i32 [ %dec.i100, %do.end.i103.do.end.i103_crit_edge ], [ %25, %do.end29.do.end.i103_crit_edge ]
  %dec.i100 = add i32 %n.addr.02.i99, -1
  %call.i101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i102 = icmp eq i32 %dec.i100, 0
  br i1 %tobool.not.i102, label %do.end.i103.debug_print_spaces.exit104_crit_edge, label %do.end.i103.do.end.i103_crit_edge

do.end.i103.do.end.i103_crit_edge:                ; preds = %do.end.i103
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i103

do.end.i103.debug_print_spaces.exit104_crit_edge: ; preds = %do.end.i103
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit104

debug_print_spaces.exit104:                       ; preds = %do.end.i103.debug_print_spaces.exit104_crit_edge, %do.end29.debug_print_spaces.exit104_crit_edge
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.414) #15
  br label %do.end39

do.end39:                                         ; preds = %debug_print_spaces.exit104, %if.then22.do.end39_crit_edge
  %call.i105 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %21, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %26 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i105, i32 %call.i96)
  %cmp47 = icmp eq i32 %call.i105, %call.i96
  br i1 %cmp47, label %do.body50, label %if.end67

do.body50:                                        ; preds = %do.end39
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx, align 4
  %bios44 = getelementptr inbounds %struct.atom_context, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %bios44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bios44, align 4
  %add.i108 = add i32 %27, 1
  %arrayidx.i7.i109 = getelementptr i8, ptr %31, i32 %add.i108
  %32 = ptrtoint ptr %arrayidx.i7.i109 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i7.i109, align 1
  %arrayidx.i.i106 = getelementptr i8, ptr %31, i32 %27
  %34 = ptrtoint ptr %arrayidx.i.i106 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i106, align 1
  %conv.i107.le = zext i8 %35 to i32
  %conv3.i110.le = zext i8 %33 to i32
  %shl.i111.le = shl nuw nsw i32 %conv3.i110.le, 8
  %or.i112.le = or i32 %shl.i111.le, %conv.i107.le
  %36 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool51.not = icmp eq i32 %36, 0
  br i1 %tobool51.not, label %do.body50.do.end65_crit_edge, label %do.end55

do.body50.do.end65_crit_edge:                     ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end65

do.end55:                                         ; preds = %do.body50
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %37 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not1.i113 = icmp eq i32 %37, 0
  br i1 %tobool.not1.i113, label %do.end55.debug_print_spaces.exit119_crit_edge, label %do.end55.do.end.i118_crit_edge

do.end55.do.end.i118_crit_edge:                   ; preds = %do.end55
  br label %do.end.i118

do.end55.debug_print_spaces.exit119_crit_edge:    ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit119

do.end.i118:                                      ; preds = %do.end.i118.do.end.i118_crit_edge, %do.end55.do.end.i118_crit_edge
  %n.addr.02.i114 = phi i32 [ %dec.i115, %do.end.i118.do.end.i118_crit_edge ], [ %37, %do.end55.do.end.i118_crit_edge ]
  %dec.i115 = add i32 %n.addr.02.i114, -1
  %call.i116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i117 = icmp eq i32 %dec.i115, 0
  br i1 %tobool.not.i117, label %do.end.i118.debug_print_spaces.exit119_crit_edge, label %do.end.i118.do.end.i118_crit_edge

do.end.i118.do.end.i118_crit_edge:                ; preds = %do.end.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i118

do.end.i118.debug_print_spaces.exit119_crit_edge: ; preds = %do.end.i118
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit119

debug_print_spaces.exit119:                       ; preds = %do.end.i118.debug_print_spaces.exit119_crit_edge, %do.end55.debug_print_spaces.exit119_crit_edge
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.419, i32 noundef %or.i112.le) #15
  br label %do.end65

do.end65:                                         ; preds = %debug_print_spaces.exit119, %do.body50.do.end65_crit_edge
  %start = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 4
  %38 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %start, align 4
  %conv66 = zext i16 %39 to i32
  %add = add nuw nsw i32 %or.i112.le, %conv66
  %40 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %add, ptr %ptr, align 4
  br label %cleanup

if.end67:                                         ; preds = %do.end39
  %add68 = add i32 %27, 2
  %41 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add68, ptr %ptr, align 4
  %42 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctx, align 4
  %bios13 = getelementptr inbounds %struct.atom_context, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %bios13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bios13, align 4
  %arrayidx.i.i = getelementptr i8, ptr %45, i32 %add68
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %47 to i16
  %add.i = add i32 %27, 3
  %arrayidx.i7.i = getelementptr i8, ptr %45, i32 %add.i
  %48 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %49 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  %cmp.not = icmp eq i16 %or.i, 23130
  br i1 %cmp.not, label %if.end67.while.end_crit_edge, label %if.end67.while.body_crit_edge

if.end67.while.body_crit_edge:                    ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end67.while.end_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

do.end71:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.422) #15
  br label %cleanup

while.end:                                        ; preds = %if.end67.while.end_crit_edge, %do.end10.while.end_crit_edge
  %.lcssa = phi i32 [ %15, %do.end10.while.end_crit_edge ], [ %add68, %if.end67.while.end_crit_edge ]
  %add75 = add i32 %.lcssa, 2
  %50 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %add75, ptr %ptr, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end71, %do.end65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_jump(ptr nocapture noundef %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %7 to i32
  %add.i = add i32 %5, 1
  %arrayidx.i7.i = getelementptr i8, ptr %3, i32 %add.i
  %8 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %add = add i32 %5, 2
  store i32 %add, ptr %ptr, align 4
  %10 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.631)
  switch i32 %arg, label %entry.do.body_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %entry.do.body48_crit_edge
    i32 3, label %sw.bb9
    i32 4, label %sw.bb19
    i32 5, label %sw.bb25
    i32 6, label %sw.bb28
  ]

entry.do.body48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body48

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %cs_above = getelementptr inbounds %struct.atom_context, ptr %12, i32 0, i32 13
  %13 = ptrtoint ptr %cs_above to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cs_above, align 4
  br label %do.body

sw.bb3:                                           ; preds = %entry
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  %cs_above5 = getelementptr inbounds %struct.atom_context, ptr %16, i32 0, i32 13
  %17 = ptrtoint ptr %cs_above5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cs_above5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %lor.rhs, label %sw.bb3.do.body_crit_edge

sw.bb3.do.body_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.rhs:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  %cs_equal = getelementptr inbounds %struct.atom_context, ptr %16, i32 0, i32 12
  %19 = ptrtoint ptr %cs_equal to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cs_equal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool7 = icmp ne i32 %20, 0
  %phi.cast121 = zext i1 %tobool7 to i32
  br label %do.body

sw.bb9:                                           ; preds = %entry
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %cs_above11 = getelementptr inbounds %struct.atom_context, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %cs_above11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cs_above11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.not = icmp eq i32 %24, 0
  br i1 %tobool12.not, label %lor.rhs13, label %sw.bb9.do.body_crit_edge

sw.bb9.do.body_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.rhs13:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #14
  %cs_equal15 = getelementptr inbounds %struct.atom_context, ptr %22, i32 0, i32 12
  %25 = ptrtoint ptr %cs_equal15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cs_equal15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool16 = icmp eq i32 %26, 0
  %phi.cast = zext i1 %tobool16 to i32
  br label %do.body

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx, align 4
  %cs_above21 = getelementptr inbounds %struct.atom_context, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %cs_above21 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cs_above21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool22.not = icmp eq i32 %30, 0
  %lnot.ext24 = zext i1 %tobool22.not to i32
  br label %do.body

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 4
  %cs_equal27 = getelementptr inbounds %struct.atom_context, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %cs_equal27 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cs_equal27, align 4
  br label %do.body

sw.bb28:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx, align 4
  %cs_equal30 = getelementptr inbounds %struct.atom_context, ptr %36, i32 0, i32 12
  %37 = ptrtoint ptr %cs_equal30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cs_equal30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool31.not = icmp eq i32 %38, 0
  %lnot.ext33 = zext i1 %tobool31.not to i32
  br label %do.body

do.body:                                          ; preds = %sw.bb28, %sw.bb25, %sw.bb19, %lor.rhs13, %sw.bb9.do.body_crit_edge, %lor.rhs, %sw.bb3.do.body_crit_edge, %sw.bb, %entry.do.body_crit_edge
  %execute.0.ph = phi i32 [ %phi.cast, %lor.rhs13 ], [ 0, %sw.bb9.do.body_crit_edge ], [ %phi.cast121, %lor.rhs ], [ 1, %sw.bb3.do.body_crit_edge ], [ %14, %sw.bb ], [ %lnot.ext24, %sw.bb19 ], [ %34, %sw.bb25 ], [ %lnot.ext33, %sw.bb28 ], [ 0, %entry.do.body_crit_edge ]
  %39 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool35.not = icmp eq i32 %39, 0
  br i1 %tobool35.not, label %do.body.do.end63_crit_edge, label %do.end

do.body.do.end63_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end63

do.end:                                           ; preds = %do.body
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %40 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not1.i = icmp eq i32 %40, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %40, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %execute.0.ph)
  %tobool43.not = icmp eq i32 %execute.0.ph, 0
  %cond = select i1 %tobool43.not, ptr @.str.429, ptr @.str.428
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.426, ptr noundef nonnull %cond) #15
  br label %do.body48

do.body48:                                        ; preds = %debug_print_spaces.exit, %entry.do.body48_crit_edge
  %execute.0132.ph = phi i32 [ 1, %entry.do.body48_crit_edge ], [ %execute.0.ph, %debug_print_spaces.exit ]
  %.pr = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool49.not = icmp eq i32 %.pr, 0
  br i1 %tobool49.not, label %do.body48.do.end63_crit_edge, label %do.end53

do.body48.do.end63_crit_edge:                     ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end63

do.end53:                                         ; preds = %do.body48
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %41 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not1.i122 = icmp eq i32 %41, 0
  br i1 %tobool.not1.i122, label %do.end53.debug_print_spaces.exit128_crit_edge, label %do.end53.do.end.i127_crit_edge

do.end53.do.end.i127_crit_edge:                   ; preds = %do.end53
  br label %do.end.i127

do.end53.debug_print_spaces.exit128_crit_edge:    ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit128

do.end.i127:                                      ; preds = %do.end.i127.do.end.i127_crit_edge, %do.end53.do.end.i127_crit_edge
  %n.addr.02.i123 = phi i32 [ %dec.i124, %do.end.i127.do.end.i127_crit_edge ], [ %41, %do.end53.do.end.i127_crit_edge ]
  %dec.i124 = add i32 %n.addr.02.i123, -1
  %call.i125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i126 = icmp eq i32 %dec.i124, 0
  br i1 %tobool.not.i126, label %do.end.i127.debug_print_spaces.exit128_crit_edge, label %do.end.i127.do.end.i127_crit_edge

do.end.i127.do.end.i127_crit_edge:                ; preds = %do.end.i127
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i127

do.end.i127.debug_print_spaces.exit128_crit_edge: ; preds = %do.end.i127
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit128

debug_print_spaces.exit128:                       ; preds = %do.end.i127.debug_print_spaces.exit128_crit_edge, %do.end53.debug_print_spaces.exit128_crit_edge
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.433, i32 noundef %or.i) #15
  br label %do.end63

do.end63:                                         ; preds = %debug_print_spaces.exit128, %do.body48.do.end63_crit_edge, %do.body.do.end63_crit_edge
  %execute.0132135 = phi i32 [ %execute.0132.ph, %debug_print_spaces.exit128 ], [ %execute.0132.ph, %do.body48.do.end63_crit_edge ], [ %execute.0.ph, %do.body.do.end63_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %execute.0132135)
  %tobool64.not = icmp eq i32 %execute.0132135, 0
  br i1 %tobool64.not, label %do.end63.if.end93_crit_edge, label %if.then65

do.end63.if.end93_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then65:                                        ; preds = %do.end63
  %last_jump = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 5
  %42 = ptrtoint ptr %last_jump to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %last_jump, align 4
  %start = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 4
  %44 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %start, align 4
  %conv66 = zext i16 %45 to i32
  %add67 = add nuw nsw i32 %or.i, %conv66
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %add67)
  %cmp68 = icmp eq i32 %43, %add67
  br i1 %cmp68, label %if.then70, label %if.else83

if.then70:                                        ; preds = %if.then65
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %last_jump_jiffies = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 6
  %47 = ptrtoint ptr %last_jump_jiffies to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %last_jump_jiffies, align 4
  %sub = sub i32 %48, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp71 = icmp slt i32 %sub, 0
  br i1 %cmp71, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.then70
  %sub75 = sub i32 %46, %48
  %call76 = tail call i32 @jiffies_to_msecs(i32 noundef %sub75) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %call76)
  %cmp77 = icmp ugt i32 %call76, 20000
  br i1 %cmp77, label %if.then79, label %if.then73.if.end89_crit_edge

if.then73.if.end89_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then79:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.435, i32 noundef 20) #12
  %abort = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 7
  %49 = ptrtoint ptr %abort to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %abort, align 4
  br label %if.end89

if.else:                                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %51 = ptrtoint ptr %last_jump_jiffies to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %last_jump_jiffies, align 4
  br label %if.end89

if.else83:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #14
  %52 = ptrtoint ptr %last_jump to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add67, ptr %last_jump, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %last_jump_jiffies88 = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 6
  %54 = ptrtoint ptr %last_jump_jiffies88 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %last_jump_jiffies88, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.else83, %if.else, %if.then79, %if.then73.if.end89_crit_edge
  %55 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %start, align 4
  %conv91 = zext i16 %56 to i32
  %add92 = add nuw nsw i32 %or.i, %conv91
  %57 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add92, ptr %ptr, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.end89, %do.end63.if.end93_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_test(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.333) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %10 = lshr i32 %conv.i, 3
  %and.i = and i32 %10, 7
  %11 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %11
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %13, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i56 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %14 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %15 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i57 = icmp eq i32 %15, 0
  br i1 %tobool.not1.i57, label %do.end17.debug_print_spaces.exit63_crit_edge, label %do.end17.do.end.i62_crit_edge

do.end17.do.end.i62_crit_edge:                    ; preds = %do.end17
  br label %do.end.i62

do.end17.debug_print_spaces.exit63_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit63

do.end.i62:                                       ; preds = %do.end.i62.do.end.i62_crit_edge, %do.end17.do.end.i62_crit_edge
  %n.addr.02.i58 = phi i32 [ %dec.i59, %do.end.i62.do.end.i62_crit_edge ], [ %15, %do.end17.do.end.i62_crit_edge ]
  %dec.i59 = add i32 %n.addr.02.i58, -1
  %call.i60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i61 = icmp eq i32 %dec.i59, 0
  br i1 %tobool.not.i61, label %do.end.i62.debug_print_spaces.exit63_crit_edge, label %do.end.i62.do.end.i62_crit_edge

do.end.i62.do.end.i62_crit_edge:                  ; preds = %do.end.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i62

do.end.i62.debug_print_spaces.exit63_crit_edge:   ; preds = %do.end.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit63

debug_print_spaces.exit63:                        ; preds = %do.end.i62.debug_print_spaces.exit63_crit_edge, %do.end17.debug_print_spaces.exit63_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.338) #15
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit63, %do.end10.do.end27_crit_edge
  %call.i64 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %and = and i32 %call.i64, %call.i56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %conv = zext i1 %cmp to i32
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %cs_equal = getelementptr inbounds %struct.atom_context, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %cs_equal to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv, ptr %cs_equal, align 4
  %19 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool31.not = icmp eq i32 %19, 0
  br i1 %tobool31.not, label %do.end27.do.end48_crit_edge, label %do.end35

do.end27.do.end48_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end48

do.end35:                                         ; preds = %do.end27
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %20 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not1.i65 = icmp eq i32 %20, 0
  br i1 %tobool.not1.i65, label %do.end35.debug_print_spaces.exit71_crit_edge, label %do.end35.do.end.i70_crit_edge

do.end35.do.end.i70_crit_edge:                    ; preds = %do.end35
  br label %do.end.i70

do.end35.debug_print_spaces.exit71_crit_edge:     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit71

do.end.i70:                                       ; preds = %do.end.i70.do.end.i70_crit_edge, %do.end35.do.end.i70_crit_edge
  %n.addr.02.i66 = phi i32 [ %dec.i67, %do.end.i70.do.end.i70_crit_edge ], [ %20, %do.end35.do.end.i70_crit_edge ]
  %dec.i67 = add i32 %n.addr.02.i66, -1
  %call.i68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i69 = icmp eq i32 %dec.i67, 0
  br i1 %tobool.not.i69, label %do.end.i70.debug_print_spaces.exit71_crit_edge, label %do.end.i70.do.end.i70_crit_edge

do.end.i70.do.end.i70_crit_edge:                  ; preds = %do.end.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i70

do.end.i70.debug_print_spaces.exit71_crit_edge:   ; preds = %do.end.i70
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit71

debug_print_spaces.exit71:                        ; preds = %do.end.i70.debug_print_spaces.exit71_crit_edge, %do.end35.debug_print_spaces.exit71_crit_edge
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  %cs_equal43 = getelementptr inbounds %struct.atom_context, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %cs_equal43 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cs_equal43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool44.not = icmp eq i32 %24, 0
  %cond = select i1 %tobool44.not, ptr @.str.404, ptr @.str.403
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.446, ptr noundef nonnull %cond) #15
  br label %do.end48

do.end48:                                         ; preds = %debug_print_spaces.exit71, %do.end27.do.end48_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_delay(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.450, i32 noundef %conv) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %cmp = icmp eq i32 %arg, 0
  br i1 %cmp, label %cond.false16, label %if.else

cond.false16:                                     ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %conv) #12
  br label %if.end41

if.else:                                          ; preds = %do.end10
  %11 = tail call i32 @llvm.read_register.i32(metadata !1062) #12
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 0
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.else.while.cond.preheader_crit_edge

if.else.while.cond.preheader_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

lor.lhs.false.i:                                  ; preds = %if.else
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !1074
  %and.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i54 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i54, label %lor.lhs.false.i.drm_can_sleep.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.drm_can_sleep.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drm_can_sleep.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %16 = tail call i32 @llvm.read_register.i32(metadata !1062) #12
  %and.i35.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i35.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @kgdb_active, i32 noundef 4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kgdb_active to i32))
  %20 = load volatile i32, ptr @kgdb_active, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %20)
  %cmp13.i = icmp eq i32 %19, %20
  br i1 %cmp13.i, label %land.lhs.true.i.while.cond.preheader_crit_edge, label %land.lhs.true.i.drm_can_sleep.exit_crit_edge

land.lhs.true.i.drm_can_sleep.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drm_can_sleep.exit

land.lhs.true.i.while.cond.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

drm_can_sleep.exit:                               ; preds = %land.lhs.true.i.drm_can_sleep.exit_crit_edge, %lor.lhs.false.i.drm_can_sleep.exit_crit_edge
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !1074
  %and.i36.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i)
  %tobool34.not.i = icmp eq i32 %and.i36.i, 0
  br i1 %tobool34.not.i, label %if.else39, label %drm_can_sleep.exit.while.cond.preheader_crit_edge

drm_can_sleep.exit.while.cond.preheader_crit_edge: ; preds = %drm_can_sleep.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %drm_can_sleep.exit.while.cond.preheader_crit_edge, %land.lhs.true.i.while.cond.preheader_crit_edge, %if.else.while.cond.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool37.not56 = icmp eq i8 %7, 0
  br i1 %tobool37.not56, label %while.cond.preheader.if.end41_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end41_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %__ms.057 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %conv, %while.cond.preheader.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.057, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #12
  %tobool37.not = icmp eq i32 %dec, 0
  br i1 %tobool37.not, label %while.body.if.end41_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.if.end41_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.else39:                                        ; preds = %drm_can_sleep.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @msleep(i32 noundef %conv) #12
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %while.body.if.end41_crit_edge, %while.cond.preheader.if.end41_crit_edge, %cond.false16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_calltable(ptr nocapture noundef %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 74, i8 %7)
  %cmp = icmp ult i8 %7, 74
  %8 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %cmp, label %do.body, label %do.body13

do.body:                                          ; preds = %entry
  br i1 %tobool.not, label %do.body.if.end29_crit_edge, label %do.end

do.body.if.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

do.end:                                           ; preds = %do.body
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %arrayidx = getelementptr [74 x ptr], ptr @atom_table_names, i32 0, i32 %conv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.454, i32 noundef %conv, ptr noundef %11) #15
  br label %if.end29

do.body13:                                        ; preds = %entry
  br i1 %tobool.not, label %do.body13.if.end29_crit_edge, label %do.end18

do.body13.if.end29_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

do.end18:                                         ; preds = %do.body13
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %12 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not1.i54 = icmp eq i32 %12, 0
  br i1 %tobool.not1.i54, label %do.end18.debug_print_spaces.exit60_crit_edge, label %do.end18.do.end.i59_crit_edge

do.end18.do.end.i59_crit_edge:                    ; preds = %do.end18
  br label %do.end.i59

do.end18.debug_print_spaces.exit60_crit_edge:     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit60

do.end.i59:                                       ; preds = %do.end.i59.do.end.i59_crit_edge, %do.end18.do.end.i59_crit_edge
  %n.addr.02.i55 = phi i32 [ %dec.i56, %do.end.i59.do.end.i59_crit_edge ], [ %12, %do.end18.do.end.i59_crit_edge ]
  %dec.i56 = add i32 %n.addr.02.i55, -1
  %call.i57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i58 = icmp eq i32 %dec.i56, 0
  br i1 %tobool.not.i58, label %do.end.i59.debug_print_spaces.exit60_crit_edge, label %do.end.i59.do.end.i59_crit_edge

do.end.i59.do.end.i59_crit_edge:                  ; preds = %do.end.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i59

do.end.i59.debug_print_spaces.exit60_crit_edge:   ; preds = %do.end.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit60

debug_print_spaces.exit60:                        ; preds = %do.end.i59.debug_print_spaces.exit60_crit_edge, %do.end18.debug_print_spaces.exit60_crit_edge
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.459, i32 noundef %conv) #15
  br label %if.end29

if.end29:                                         ; preds = %debug_print_spaces.exit60, %do.body13.if.end29_crit_edge, %debug_print_spaces.exit, %do.body.if.end29_crit_edge
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 4
  %bios31 = getelementptr inbounds %struct.atom_context, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %bios31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bios31, align 4
  %cmd_table = getelementptr inbounds %struct.atom_context, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %cmd_table to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd_table, align 4
  %mul = shl nuw nsw i32 %conv, 1
  %add = add nuw nsw i32 %mul, 4
  %add33 = add i32 %add, %18
  %arrayidx.i.i = getelementptr i8, ptr %16, i32 %add33
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %20 to i16
  %add.i = add i32 %add33, 1
  %arrayidx.i7.i = getelementptr i8, ptr %16, i32 %add.i
  %21 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %22 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i)
  %tobool35.not = icmp eq i16 %or.i, 0
  br i1 %tobool35.not, label %if.end29.if.end42_crit_edge, label %if.then36

if.end29.if.end42_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then36:                                        ; preds = %if.end29
  %ps = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 1
  %23 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ps, align 4
  %ps_shift = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 3
  %25 = ptrtoint ptr %ps_shift to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ps_shift, align 4
  %add.ptr = getelementptr i32, ptr %24, i32 %26
  %call38 = tail call fastcc i32 @amdgpu_atom_execute_table_locked(ptr noundef %14, i32 noundef %conv, ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %phi.cmp = icmp eq i32 %call38, 0
  br i1 %phi.cmp, label %if.then36.if.end42_crit_edge, label %if.then41

if.then36.if.end42_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42

if.then41:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #14
  %abort = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 7
  %27 = ptrtoint ptr %abort to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %abort, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.then36.if.end42_crit_edge, %if.end29.if.end42_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_repeat(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.535) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_clear(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #12
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1073
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #12
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = and i8 %7, 56
  %11 = lshr exact i8 %10, 3
  %12 = zext i8 %11 to i32
  %arrayidx = getelementptr [8 x i32], ptr @atom_def_dst, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %.tr = trunc i32 %14 to i8
  %15 = shl i8 %.tr, 6
  %conv5 = or i8 %15, %10
  %conv.i = zext i8 %conv5 to i32
  %16 = lshr exact i32 %conv.i, 3
  %and.i = and i32 %16, 7
  %17 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %17
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %19, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 0) #12
  %20 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %do.end

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end15

do.end:                                           ; preds = %entry
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %21 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not1.i = icmp eq i32 %21, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %21, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end15

do.end15:                                         ; preds = %debug_print_spaces.exit, %entry.do.end15_crit_edge
  %22 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %conv5, ptr noundef nonnull %dptr, i32 noundef 0, i32 noundef %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #12
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @atom_op_nop(ptr nocapture noundef %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @atom_op_eot(ptr nocapture noundef %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_mask(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #12
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1073
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #12
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %11 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not1.i = icmp eq i32 %11, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %11, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %12 = lshr i32 %conv.i, 3
  %and.i = and i32 %12, 7
  %13 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %13
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %15, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i79 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #12
  %16 = lshr i8 %7, 3
  %trunc = trunc i8 %16 to i3
  %17 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.632)
  switch i3 %trunc, label %do.end10.unreachabledefault [
    i3 0, label %sw.bb.i
    i3 1, label %do.end10.sw.bb2.i_crit_edge
    i3 2, label %do.end10.sw.bb2.i_crit_edge103
    i3 3, label %do.end10.sw.bb2.i_crit_edge104
    i3 -4, label %do.end10.sw.bb8.i_crit_edge
    i3 -3, label %do.end10.sw.bb8.i_crit_edge105
    i3 -2, label %do.end10.sw.bb8.i_crit_edge106
    i3 -1, label %do.end10.sw.bb8.i_crit_edge107
  ]

do.end10.sw.bb8.i_crit_edge107:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8.i

do.end10.sw.bb8.i_crit_edge106:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8.i

do.end10.sw.bb8.i_crit_edge105:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8.i

do.end10.sw.bb8.i_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb8.i

do.end10.sw.bb2.i_crit_edge104:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

do.end10.sw.bb2.i_crit_edge103:                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

do.end10.sw.bb2.i_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb2.i

sw.bb.i:                                          ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctx, align 4
  %bios.i = getelementptr inbounds %struct.atom_context, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %bios.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bios.i, align 4
  %22 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ptr, align 4
  %arrayidx.i.i.i.i = getelementptr i8, ptr %21, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i = zext i8 %25 to i32
  %add.i.i.i = add i32 %23, 1
  %arrayidx.i7.i.i.i = getelementptr i8, ptr %21, i32 %add.i.i.i
  %26 = ptrtoint ptr %arrayidx.i7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i7.i.i.i, align 1
  %conv3.i.i.i = zext i8 %27 to i32
  %shl.i.i.i = shl nuw nsw i32 %conv3.i.i.i, 8
  %add.i.i = add i32 %23, 2
  %arrayidx.i.i5.i.i = getelementptr i8, ptr %21, i32 %add.i.i
  %28 = ptrtoint ptr %arrayidx.i.i5.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i.i5.i.i, align 1
  %conv.i6.i.i = zext i8 %29 to i32
  %add.i7.i.i = add i32 %23, 3
  %arrayidx.i7.i8.i.i = getelementptr i8, ptr %21, i32 %add.i7.i.i
  %30 = ptrtoint ptr %arrayidx.i7.i8.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i7.i8.i.i, align 1
  %conv3.i9.i.i = zext i8 %31 to i32
  %32 = shl nuw i32 %conv3.i9.i.i, 24
  %33 = shl nuw nsw i32 %conv.i6.i.i, 16
  %shl.i.i = or i32 %shl.i.i.i, %conv.i.i.i
  %or.i.i.i = or i32 %shl.i.i, %33
  %or.i.i = or i32 %or.i.i.i, %32
  %add.i = add i32 %23, 4
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %do.end10.sw.bb2.i_crit_edge, %do.end10.sw.bb2.i_crit_edge103, %do.end10.sw.bb2.i_crit_edge104
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 4
  %bios4.i = getelementptr inbounds %struct.atom_context, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %bios4.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bios4.i, align 4
  %38 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ptr, align 4
  %arrayidx.i.i.i = getelementptr i8, ptr %37, i32 %39
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i = zext i8 %41 to i32
  %add.i20.i = add i32 %39, 1
  %arrayidx.i7.i.i = getelementptr i8, ptr %37, i32 %add.i20.i
  %42 = ptrtoint ptr %arrayidx.i7.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i7.i.i, align 1
  %conv3.i.i = zext i8 %43 to i32
  %shl.i21.i = shl nuw nsw i32 %conv3.i.i, 8
  %or.i22.i = or i32 %shl.i21.i, %conv.i.i
  %add7.i = add i32 %39, 2
  br label %sw.epilog.sink.split.i

sw.bb8.i:                                         ; preds = %do.end10.sw.bb8.i_crit_edge, %do.end10.sw.bb8.i_crit_edge105, %do.end10.sw.bb8.i_crit_edge106, %do.end10.sw.bb8.i_crit_edge107
  %44 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctx, align 4
  %bios10.i = getelementptr inbounds %struct.atom_context, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %bios10.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %bios10.i, align 4
  %48 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %47, i32 %49
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx.i.i, align 1
  %conv12.i = zext i8 %51 to i32
  %inc.i = add i32 %49, 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb8.i, %sw.bb2.i, %sw.bb.i
  %inc.sink.i = phi i32 [ %inc.i, %sw.bb8.i ], [ %add7.i, %sw.bb2.i ], [ %add.i, %sw.bb.i ]
  %val.0.ph.i = phi i32 [ %conv12.i, %sw.bb8.i ], [ %or.i22.i, %sw.bb2.i ], [ %or.i.i, %sw.bb.i ]
  %52 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %inc.sink.i, ptr %ptr, align 4
  %53 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool15.not = icmp eq i32 %53, 0
  br i1 %tobool15.not, label %sw.epilog.sink.split.i.do.end45_crit_edge, label %do.end19

sw.epilog.sink.split.i.do.end45_crit_edge:        ; preds = %sw.epilog.sink.split.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

do.end10.unreachabledefault:                      ; preds = %do.end10
  unreachable

do.end19:                                         ; preds = %sw.epilog.sink.split.i
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %54 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not1.i80 = icmp eq i32 %54, 0
  br i1 %tobool.not1.i80, label %do.end19.do.body30_crit_edge, label %do.end19.do.end.i85_crit_edge

do.end19.do.end.i85_crit_edge:                    ; preds = %do.end19
  br label %do.end.i85

do.end19.do.body30_crit_edge:                     ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body30

do.end.i85:                                       ; preds = %do.end.i85.do.end.i85_crit_edge, %do.end19.do.end.i85_crit_edge
  %n.addr.02.i81 = phi i32 [ %dec.i82, %do.end.i85.do.end.i85_crit_edge ], [ %54, %do.end19.do.end.i85_crit_edge ]
  %dec.i82 = add i32 %n.addr.02.i81, -1
  %call.i83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i84 = icmp eq i32 %dec.i82, 0
  br i1 %tobool.not.i84, label %do.end.i85.do.body30_crit_edge, label %do.end.i85.do.end.i85_crit_edge

do.end.i85.do.end.i85_crit_edge:                  ; preds = %do.end.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i85

do.end.i85.do.body30_crit_edge:                   ; preds = %do.end.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body30

do.body30:                                        ; preds = %do.end.i85.do.body30_crit_edge, %do.end19.do.body30_crit_edge
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.546, i32 noundef %val.0.ph.i) #15
  %.pr = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool31.not = icmp eq i32 %.pr, 0
  br i1 %tobool31.not, label %do.body30.do.end45_crit_edge, label %do.end35

do.body30.do.end45_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

do.end35:                                         ; preds = %do.body30
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %55 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not1.i87 = icmp eq i32 %55, 0
  br i1 %tobool.not1.i87, label %do.end35.debug_print_spaces.exit93_crit_edge, label %do.end35.do.end.i92_crit_edge

do.end35.do.end.i92_crit_edge:                    ; preds = %do.end35
  br label %do.end.i92

do.end35.debug_print_spaces.exit93_crit_edge:     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit93

do.end.i92:                                       ; preds = %do.end.i92.do.end.i92_crit_edge, %do.end35.do.end.i92_crit_edge
  %n.addr.02.i88 = phi i32 [ %dec.i89, %do.end.i92.do.end.i92_crit_edge ], [ %55, %do.end35.do.end.i92_crit_edge ]
  %dec.i89 = add i32 %n.addr.02.i88, -1
  %call.i90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i91 = icmp eq i32 %dec.i89, 0
  br i1 %tobool.not.i91, label %do.end.i92.debug_print_spaces.exit93_crit_edge, label %do.end.i92.do.end.i92_crit_edge

do.end.i92.do.end.i92_crit_edge:                  ; preds = %do.end.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i92

do.end.i92.debug_print_spaces.exit93_crit_edge:   ; preds = %do.end.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit93

debug_print_spaces.exit93:                        ; preds = %do.end.i92.debug_print_spaces.exit93_crit_edge, %do.end35.debug_print_spaces.exit93_crit_edge
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #15
  br label %do.end45

do.end45:                                         ; preds = %debug_print_spaces.exit93, %do.body30.do.end45_crit_edge, %sw.epilog.sink.split.i.do.end45_crit_edge
  %call.i94 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %56 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool49.not = icmp eq i32 %56, 0
  br i1 %tobool49.not, label %do.end45.do.end63_crit_edge, label %do.end53

do.end45.do.end63_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end63

do.end53:                                         ; preds = %do.end45
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %57 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not1.i95 = icmp eq i32 %57, 0
  br i1 %tobool.not1.i95, label %do.end53.debug_print_spaces.exit101_crit_edge, label %do.end53.do.end.i100_crit_edge

do.end53.do.end.i100_crit_edge:                   ; preds = %do.end53
  br label %do.end.i100

do.end53.debug_print_spaces.exit101_crit_edge:    ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit101

do.end.i100:                                      ; preds = %do.end.i100.do.end.i100_crit_edge, %do.end53.do.end.i100_crit_edge
  %n.addr.02.i96 = phi i32 [ %dec.i97, %do.end.i100.do.end.i100_crit_edge ], [ %57, %do.end53.do.end.i100_crit_edge ]
  %dec.i97 = add i32 %n.addr.02.i96, -1
  %call.i98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i99 = icmp eq i32 %dec.i97, 0
  br i1 %tobool.not.i99, label %do.end.i100.debug_print_spaces.exit101_crit_edge, label %do.end.i100.do.end.i100_crit_edge

do.end.i100.do.end.i100_crit_edge:                ; preds = %do.end.i100
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i100

do.end.i100.debug_print_spaces.exit101_crit_edge: ; preds = %do.end.i100
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit101

debug_print_spaces.exit101:                       ; preds = %do.end.i100.debug_print_spaces.exit101_crit_edge, %do.end53.debug_print_spaces.exit101_crit_edge
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end63

do.end63:                                         ; preds = %debug_print_spaces.exit101, %do.end45.do.end63_crit_edge
  %and47 = and i32 %val.0.ph.i, %call.i79
  %or = or i32 %call.i94, %and47
  %58 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %or, i32 noundef %59)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_postcard(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %conv = zext i8 %7 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.558, i32 noundef %conv) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_beep(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.560) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_savereg(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.535) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_restorereg(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readnone %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.535) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_setdatablock(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv = zext i8 %7 to i32
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %8 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.566, i32 noundef %conv) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %10 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.633)
  switch i8 %7, label %if.else18 [
    i8 0, label %if.then12
    i8 -1, label %if.then15
  ]

if.then12:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  br label %do.body28

if.then15:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %start = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 4
  %13 = ptrtoint ptr %start to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %start, align 4
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  br label %do.body28

if.else18:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %bios20 = getelementptr inbounds %struct.atom_context, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bios20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bios20, align 4
  %data_table = getelementptr inbounds %struct.atom_context, ptr %18, i32 0, i32 4
  %21 = ptrtoint ptr %data_table to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_table, align 4
  %mul = shl nuw nsw i32 %conv, 1
  %add = add nuw nsw i32 %mul, 4
  %add22 = add i32 %add, %22
  %arrayidx.i.i = getelementptr i8, ptr %20, i32 %add22
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %24 to i16
  %add.i = add i32 %add22, 1
  %arrayidx.i7.i = getelementptr i8, ptr %20, i32 %add.i
  %25 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %26 to i16
  %shl.i = shl nuw i16 %conv3.i, 8
  %or.i = or i16 %shl.i, %conv.i
  br label %do.body28

do.body28:                                        ; preds = %if.else18, %if.then15, %if.then12
  %.sink65 = phi ptr [ %12, %if.then12 ], [ %18, %if.else18 ], [ %16, %if.then15 ]
  %.sink = phi i16 [ 0, %if.then12 ], [ %or.i, %if.else18 ], [ %14, %if.then15 ]
  %data_block = getelementptr inbounds %struct.atom_context, ptr %.sink65, i32 0, i32 6
  %27 = ptrtoint ptr %data_block to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %.sink, ptr %data_block, align 4
  %28 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool29.not = icmp eq i32 %28, 0
  br i1 %tobool29.not, label %do.body28.do.end46_crit_edge, label %do.end33

do.body28.do.end46_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end46

do.end33:                                         ; preds = %do.body28
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %29 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not1.i58 = icmp eq i32 %29, 0
  br i1 %tobool.not1.i58, label %do.end33.debug_print_spaces.exit64_crit_edge, label %do.end33.do.end.i63_crit_edge

do.end33.do.end.i63_crit_edge:                    ; preds = %do.end33
  br label %do.end.i63

do.end33.debug_print_spaces.exit64_crit_edge:     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit64

do.end.i63:                                       ; preds = %do.end.i63.do.end.i63_crit_edge, %do.end33.do.end.i63_crit_edge
  %n.addr.02.i59 = phi i32 [ %dec.i60, %do.end.i63.do.end.i63_crit_edge ], [ %29, %do.end33.do.end.i63_crit_edge ]
  %dec.i60 = add i32 %n.addr.02.i59, -1
  %call.i61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i62 = icmp eq i32 %dec.i60, 0
  br i1 %tobool.not.i62, label %do.end.i63.debug_print_spaces.exit64_crit_edge, label %do.end.i63.do.end.i63_crit_edge

do.end.i63.do.end.i63_crit_edge:                  ; preds = %do.end.i63
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i63

do.end.i63.debug_print_spaces.exit64_crit_edge:   ; preds = %do.end.i63
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit64

debug_print_spaces.exit64:                        ; preds = %do.end.i63.debug_print_spaces.exit64_crit_edge, %do.end33.debug_print_spaces.exit64_crit_edge
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx, align 4
  %data_block41 = getelementptr inbounds %struct.atom_context, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %data_block41 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %data_block41, align 4
  %conv42 = zext i16 %33 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.385, i32 noundef %conv42) #15
  br label %do.end46

do.end46:                                         ; preds = %debug_print_spaces.exit64, %do.body28.do.end46_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_xor(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #12
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1073
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #12
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %10 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %11 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not1.i = icmp eq i32 %11, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %11, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %12 = lshr i32 %conv.i, 3
  %and.i = and i32 %12, 7
  %13 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %13
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %15, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i55 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #12
  %16 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %17 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not1.i56 = icmp eq i32 %17, 0
  br i1 %tobool.not1.i56, label %do.end17.debug_print_spaces.exit62_crit_edge, label %do.end17.do.end.i61_crit_edge

do.end17.do.end.i61_crit_edge:                    ; preds = %do.end17
  br label %do.end.i61

do.end17.debug_print_spaces.exit62_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit62

do.end.i61:                                       ; preds = %do.end.i61.do.end.i61_crit_edge, %do.end17.do.end.i61_crit_edge
  %n.addr.02.i57 = phi i32 [ %dec.i58, %do.end.i61.do.end.i61_crit_edge ], [ %17, %do.end17.do.end.i61_crit_edge ]
  %dec.i58 = add i32 %n.addr.02.i57, -1
  %call.i59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i60 = icmp eq i32 %dec.i58, 0
  br i1 %tobool.not.i60, label %do.end.i61.debug_print_spaces.exit62_crit_edge, label %do.end.i61.do.end.i61_crit_edge

do.end.i61.do.end.i61_crit_edge:                  ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i61

do.end.i61.debug_print_spaces.exit62_crit_edge:   ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit62

debug_print_spaces.exit62:                        ; preds = %do.end.i61.debug_print_spaces.exit62_crit_edge, %do.end17.debug_print_spaces.exit62_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162) #15
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit62, %do.end10.do.end27_crit_edge
  %call.i63 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %18 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool30.not = icmp eq i32 %18, 0
  br i1 %tobool30.not, label %do.end27.do.end44_crit_edge, label %do.end34

do.end27.do.end44_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end44

do.end34:                                         ; preds = %do.end27
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %19 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not1.i64 = icmp eq i32 %19, 0
  br i1 %tobool.not1.i64, label %do.end34.debug_print_spaces.exit70_crit_edge, label %do.end34.do.end.i69_crit_edge

do.end34.do.end.i69_crit_edge:                    ; preds = %do.end34
  br label %do.end.i69

do.end34.debug_print_spaces.exit70_crit_edge:     ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit70

do.end.i69:                                       ; preds = %do.end.i69.do.end.i69_crit_edge, %do.end34.do.end.i69_crit_edge
  %n.addr.02.i65 = phi i32 [ %dec.i66, %do.end.i69.do.end.i69_crit_edge ], [ %19, %do.end34.do.end.i69_crit_edge ]
  %dec.i66 = add i32 %n.addr.02.i65, -1
  %call.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i68 = icmp eq i32 %dec.i66, 0
  br i1 %tobool.not.i68, label %do.end.i69.debug_print_spaces.exit70_crit_edge, label %do.end.i69.do.end.i69_crit_edge

do.end.i69.do.end.i69_crit_edge:                  ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i69

do.end.i69.debug_print_spaces.exit70_crit_edge:   ; preds = %do.end.i69
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit70

debug_print_spaces.exit70:                        ; preds = %do.end.i69.debug_print_spaces.exit70_crit_edge, %do.end34.debug_print_spaces.exit70_crit_edge
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end44

do.end44:                                         ; preds = %debug_print_spaces.exit70, %do.end27.do.end44_crit_edge
  %xor = xor i32 %call.i63, %call.i55
  %20 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %xor, i32 noundef %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_shl(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #12
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1073
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #12
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %conv = zext i8 %7 to i32
  %10 = lshr i32 %conv, 3
  %and = and i32 %10, 7
  %11 = lshr i32 %conv, 6
  %arrayidx5 = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and, i32 %11
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5, align 4
  %14 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.end

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

do.end:                                           ; preds = %entry
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %15 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i = icmp eq i32 %15, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %15, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end14

do.end14:                                         ; preds = %debug_print_spaces.exit, %entry.do.end14_crit_edge
  %shl.i = shl i32 %13, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i72 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #12
  %16 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saved, align 4
  %call.i73 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %18 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  br i1 %tobool19.not, label %do.end34.thread, label %do.end23

do.end34.thread:                                  ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx3688 = getelementptr [8 x i32], ptr @atom_arg_mask, i32 0, i32 %13
  %19 = ptrtoint ptr %arrayidx3688 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx3688, align 4
  %arrayidx3889 = getelementptr [8 x i32], ptr @atom_arg_shift, i32 0, i32 %13
  %21 = ptrtoint ptr %arrayidx3889 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx3889, align 4
  %.pre = and i32 %call.i73, 255
  br label %do.end55

do.end23:                                         ; preds = %do.end14
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %23 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not1.i74 = icmp eq i32 %23, 0
  br i1 %tobool.not1.i74, label %do.end23.do.end34_crit_edge, label %do.end23.do.end.i79_crit_edge

do.end23.do.end.i79_crit_edge:                    ; preds = %do.end23
  br label %do.end.i79

do.end23.do.end34_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

do.end.i79:                                       ; preds = %do.end.i79.do.end.i79_crit_edge, %do.end23.do.end.i79_crit_edge
  %n.addr.02.i75 = phi i32 [ %dec.i76, %do.end.i79.do.end.i79_crit_edge ], [ %23, %do.end23.do.end.i79_crit_edge ]
  %dec.i76 = add i32 %n.addr.02.i75, -1
  %call.i77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i78 = icmp eq i32 %dec.i76, 0
  br i1 %tobool.not.i78, label %do.end.i79.do.end34_crit_edge, label %do.end.i79.do.end.i79_crit_edge

do.end.i79.do.end.i79_crit_edge:                  ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i79

do.end.i79.do.end34_crit_edge:                    ; preds = %do.end.i79
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

do.end34:                                         ; preds = %do.end.i79.do.end34_crit_edge, %do.end23.do.end34_crit_edge
  %conv30 = and i32 %call.i73, 255
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.314, i32 noundef %conv30) #15
  %.pr = load i32, ptr @amdgpu_atom_debug, align 4
  %arrayidx36 = getelementptr [8 x i32], ptr @atom_arg_mask, i32 0, i32 %13
  %24 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx36, align 4
  %arrayidx38 = getelementptr [8 x i32], ptr @atom_arg_shift, i32 0, i32 %13
  %26 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool41.not = icmp eq i32 %.pr, 0
  br i1 %tobool41.not, label %do.end34.do.end55_crit_edge, label %do.end45

do.end34.do.end55_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55

do.end45:                                         ; preds = %do.end34
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %28 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not1.i81 = icmp eq i32 %28, 0
  br i1 %tobool.not1.i81, label %do.end45.debug_print_spaces.exit87_crit_edge, label %do.end45.do.end.i86_crit_edge

do.end45.do.end.i86_crit_edge:                    ; preds = %do.end45
  br label %do.end.i86

do.end45.debug_print_spaces.exit87_crit_edge:     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit87

do.end.i86:                                       ; preds = %do.end.i86.do.end.i86_crit_edge, %do.end45.do.end.i86_crit_edge
  %n.addr.02.i82 = phi i32 [ %dec.i83, %do.end.i86.do.end.i86_crit_edge ], [ %28, %do.end45.do.end.i86_crit_edge ]
  %dec.i83 = add i32 %n.addr.02.i82, -1
  %call.i84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i85 = icmp eq i32 %dec.i83, 0
  br i1 %tobool.not.i85, label %do.end.i86.debug_print_spaces.exit87_crit_edge, label %do.end.i86.do.end.i86_crit_edge

do.end.i86.do.end.i86_crit_edge:                  ; preds = %do.end.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i86

do.end.i86.debug_print_spaces.exit87_crit_edge:   ; preds = %do.end.i86
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit87

debug_print_spaces.exit87:                        ; preds = %do.end.i86.debug_print_spaces.exit87_crit_edge, %do.end45.debug_print_spaces.exit87_crit_edge
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end55

do.end55:                                         ; preds = %debug_print_spaces.exit87, %do.end34.do.end55_crit_edge, %do.end34.thread
  %conv35.pre-phi = phi i32 [ %.pre, %do.end34.thread ], [ %conv30, %debug_print_spaces.exit87 ], [ %conv30, %do.end34.do.end55_crit_edge ]
  %29 = phi i32 [ %22, %do.end34.thread ], [ %27, %debug_print_spaces.exit87 ], [ %27, %do.end34.do.end55_crit_edge ]
  %30 = phi i32 [ %20, %do.end34.thread ], [ %25, %debug_print_spaces.exit87 ], [ %25, %do.end34.do.end55_crit_edge ]
  %shl = shl i32 %17, %conv35.pre-phi
  %and37 = and i32 %30, %shl
  %shr39 = lshr i32 %and37, %29
  %31 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %shr39, i32 noundef %32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_shr(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  %saved = alloca i32, align 4
  %dptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %saved) #12
  %8 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %saved, align 4, !annotation !1073
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dptr) #12
  %9 = ptrtoint ptr %dptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %inc, ptr %dptr, align 4
  %conv = zext i8 %7 to i32
  %10 = lshr i32 %conv, 3
  %and = and i32 %10, 7
  %11 = lshr i32 %conv, 6
  %arrayidx5 = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and, i32 %11
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5, align 4
  %14 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.end

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

do.end:                                           ; preds = %entry
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %15 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i = icmp eq i32 %15, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %15, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end14

do.end14:                                         ; preds = %debug_print_spaces.exit, %entry.do.end14_crit_edge
  %shl.i = shl i32 %13, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i73 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef nonnull %saved, i32 noundef 1) #12
  %16 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saved, align 4
  %call.i74 = call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %18 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool19.not = icmp eq i32 %18, 0
  br i1 %tobool19.not, label %do.end34.thread, label %do.end23

do.end34.thread:                                  ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx3789 = getelementptr [8 x i32], ptr @atom_arg_mask, i32 0, i32 %13
  %19 = ptrtoint ptr %arrayidx3789 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx3789, align 4
  %arrayidx3990 = getelementptr [8 x i32], ptr @atom_arg_shift, i32 0, i32 %13
  %21 = ptrtoint ptr %arrayidx3990 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx3990, align 4
  %.pre = and i32 %call.i74, 255
  br label %do.end56

do.end23:                                         ; preds = %do.end14
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %23 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not1.i75 = icmp eq i32 %23, 0
  br i1 %tobool.not1.i75, label %do.end23.do.end34_crit_edge, label %do.end23.do.end.i80_crit_edge

do.end23.do.end.i80_crit_edge:                    ; preds = %do.end23
  br label %do.end.i80

do.end23.do.end34_crit_edge:                      ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

do.end.i80:                                       ; preds = %do.end.i80.do.end.i80_crit_edge, %do.end23.do.end.i80_crit_edge
  %n.addr.02.i76 = phi i32 [ %dec.i77, %do.end.i80.do.end.i80_crit_edge ], [ %23, %do.end23.do.end.i80_crit_edge ]
  %dec.i77 = add i32 %n.addr.02.i76, -1
  %call.i78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i79 = icmp eq i32 %dec.i77, 0
  br i1 %tobool.not.i79, label %do.end.i80.do.end34_crit_edge, label %do.end.i80.do.end.i80_crit_edge

do.end.i80.do.end.i80_crit_edge:                  ; preds = %do.end.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i80

do.end.i80.do.end34_crit_edge:                    ; preds = %do.end.i80
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

do.end34:                                         ; preds = %do.end.i80.do.end34_crit_edge, %do.end23.do.end34_crit_edge
  %conv30 = and i32 %call.i74, 255
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.314, i32 noundef %conv30) #15
  %.pr = load i32, ptr @amdgpu_atom_debug, align 4
  %arrayidx37 = getelementptr [8 x i32], ptr @atom_arg_mask, i32 0, i32 %13
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx37, align 4
  %arrayidx39 = getelementptr [8 x i32], ptr @atom_arg_shift, i32 0, i32 %13
  %26 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool42.not = icmp eq i32 %.pr, 0
  br i1 %tobool42.not, label %do.end34.do.end56_crit_edge, label %do.end46

do.end34.do.end56_crit_edge:                      ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end56

do.end46:                                         ; preds = %do.end34
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %28 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not1.i82 = icmp eq i32 %28, 0
  br i1 %tobool.not1.i82, label %do.end46.debug_print_spaces.exit88_crit_edge, label %do.end46.do.end.i87_crit_edge

do.end46.do.end.i87_crit_edge:                    ; preds = %do.end46
  br label %do.end.i87

do.end46.debug_print_spaces.exit88_crit_edge:     ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit88

do.end.i87:                                       ; preds = %do.end.i87.do.end.i87_crit_edge, %do.end46.do.end.i87_crit_edge
  %n.addr.02.i83 = phi i32 [ %dec.i84, %do.end.i87.do.end.i87_crit_edge ], [ %28, %do.end46.do.end.i87_crit_edge ]
  %dec.i84 = add i32 %n.addr.02.i83, -1
  %call.i85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i86 = icmp eq i32 %dec.i84, 0
  br i1 %tobool.not.i86, label %do.end.i87.debug_print_spaces.exit88_crit_edge, label %do.end.i87.do.end.i87_crit_edge

do.end.i87.do.end.i87_crit_edge:                  ; preds = %do.end.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i87

do.end.i87.debug_print_spaces.exit88_crit_edge:   ; preds = %do.end.i87
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit88

debug_print_spaces.exit88:                        ; preds = %do.end.i87.debug_print_spaces.exit88_crit_edge, %do.end46.debug_print_spaces.exit88_crit_edge
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167) #15
  br label %do.end56

do.end56:                                         ; preds = %debug_print_spaces.exit88, %do.end34.do.end56_crit_edge, %do.end34.thread
  %conv35.pre-phi = phi i32 [ %.pre, %do.end34.thread ], [ %conv30, %debug_print_spaces.exit88 ], [ %conv30, %do.end34.do.end56_crit_edge ]
  %29 = phi i32 [ %22, %do.end34.thread ], [ %27, %debug_print_spaces.exit88 ], [ %27, %do.end34.do.end56_crit_edge ]
  %30 = phi i32 [ %20, %do.end34.thread ], [ %25, %debug_print_spaces.exit88 ], [ %25, %do.end34.do.end56_crit_edge ]
  %shr36 = lshr i32 %17, %conv35.pre-phi
  %and38 = and i32 %30, %shr36
  %shr40 = lshr i32 %and38, %29
  %31 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %saved, align 4
  call fastcc void @atom_put_dst(ptr noundef %ctx, i32 noundef %arg, i8 noundef zeroext %7, ptr noundef nonnull %dptr, i32 noundef %shr40, i32 noundef %32)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dptr) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %saved) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_debug(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %conv = zext i8 %7 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.607, i32 noundef %conv) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_processds(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %7 to i32
  %add.i = add i32 %5, 1
  %arrayidx.i7.i = getelementptr i8, ptr %3, i32 %add.i
  %8 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %9 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %add = add i32 %5, 2
  %add2 = add i32 %add, %or.i
  store i32 %add2, ptr %ptr, align 4
  %10 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

do.end:                                           ; preds = %entry
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %11 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not1.i = icmp eq i32 %11, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %11, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.611, i32 noundef %or.i) #15
  br label %do.end12

do.end12:                                         ; preds = %debug_print_spaces.exit, %entry.do.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_mul32(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.333) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %10 = lshr i32 %conv.i, 3
  %and.i = and i32 %10, 7
  %11 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %11
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %13, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i45 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %14 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %15 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i46 = icmp eq i32 %15, 0
  br i1 %tobool.not1.i46, label %do.end17.debug_print_spaces.exit52_crit_edge, label %do.end17.do.end.i51_crit_edge

do.end17.do.end.i51_crit_edge:                    ; preds = %do.end17
  br label %do.end.i51

do.end17.debug_print_spaces.exit52_crit_edge:     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit52

do.end.i51:                                       ; preds = %do.end.i51.do.end.i51_crit_edge, %do.end17.do.end.i51_crit_edge
  %n.addr.02.i47 = phi i32 [ %dec.i48, %do.end.i51.do.end.i51_crit_edge ], [ %15, %do.end17.do.end.i51_crit_edge ]
  %dec.i48 = add i32 %n.addr.02.i47, -1
  %call.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i50 = icmp eq i32 %dec.i48, 0
  br i1 %tobool.not.i50, label %do.end.i51.debug_print_spaces.exit52_crit_edge, label %do.end.i51.do.end.i51_crit_edge

do.end.i51.do.end.i51_crit_edge:                  ; preds = %do.end.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i51

do.end.i51.debug_print_spaces.exit52_crit_edge:   ; preds = %do.end.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit52

debug_print_spaces.exit52:                        ; preds = %do.end.i51.debug_print_spaces.exit52_crit_edge, %do.end17.debug_print_spaces.exit52_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.338) #15
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit52, %do.end10.do.end27_crit_edge
  %call.i53 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %conv = zext i32 %call.i45 to i64
  %conv29 = zext i32 %call.i53 to i64
  %mul = mul nuw i64 %conv29, %conv
  %conv30 = trunc i64 %mul to i32
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %divmul = getelementptr inbounds %struct.atom_context, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %divmul to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv30, ptr %divmul, align 4
  %shr = lshr i64 %mul, 32
  %conv33 = trunc i64 %shr to i32
  %19 = load ptr, ptr %ctx, align 4
  %arrayidx36 = getelementptr %struct.atom_context, ptr %19, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv33, ptr %arrayidx36, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atom_op_div32(ptr nocapture noundef readonly %ctx, ptr noundef %ptr, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bios, align 4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %8 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.end:                                           ; preds = %entry
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %9 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not1.i = icmp eq i32 %9, 0
  br i1 %tobool.not1.i, label %do.end.debug_print_spaces.exit_crit_edge, label %do.end.do.end.i_crit_edge

do.end.do.end.i_crit_edge:                        ; preds = %do.end
  br label %do.end.i

do.end.debug_print_spaces.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %do.end.do.end.i_crit_edge
  %n.addr.02.i = phi i32 [ %dec.i, %do.end.i.do.end.i_crit_edge ], [ %9, %do.end.do.end.i_crit_edge ]
  %dec.i = add i32 %n.addr.02.i, -1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %do.end.i.debug_print_spaces.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i.debug_print_spaces.exit_crit_edge:       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit

debug_print_spaces.exit:                          ; preds = %do.end.i.debug_print_spaces.exit_crit_edge, %do.end.debug_print_spaces.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.333) #15
  br label %do.end10

do.end10:                                         ; preds = %debug_print_spaces.exit, %entry.do.end10_crit_edge
  %conv.i = zext i8 %7 to i32
  %10 = lshr i32 %conv.i, 3
  %and.i = and i32 %10, 7
  %11 = lshr i32 %conv.i, 6
  %arrayidx4.i = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and.i, i32 %11
  %12 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i, align 4
  %shl.i = shl i32 %13, 3
  %or.i = or i32 %shl.i, %arg
  %conv5.i = trunc i32 %or.i to i8
  %call.i331 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %conv5.i, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  %14 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool13.not = icmp eq i32 %14, 0
  br i1 %tobool13.not, label %do.end10.do.end27_crit_edge, label %do.end17

do.end10.do.end27_crit_edge:                      ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end27

do.end17:                                         ; preds = %do.end10
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  %15 = load i32, ptr @debug_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not1.i332 = icmp eq i32 %15, 0
  br i1 %tobool.not1.i332, label %do.end17.debug_print_spaces.exit338_crit_edge, label %do.end17.do.end.i337_crit_edge

do.end17.do.end.i337_crit_edge:                   ; preds = %do.end17
  br label %do.end.i337

do.end17.debug_print_spaces.exit338_crit_edge:    ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit338

do.end.i337:                                      ; preds = %do.end.i337.do.end.i337_crit_edge, %do.end17.do.end.i337_crit_edge
  %n.addr.02.i333 = phi i32 [ %dec.i334, %do.end.i337.do.end.i337_crit_edge ], [ %15, %do.end17.do.end.i337_crit_edge ]
  %dec.i334 = add i32 %n.addr.02.i333, -1
  %call.i335 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #15
  %tobool.not.i336 = icmp eq i32 %dec.i334, 0
  br i1 %tobool.not.i336, label %do.end.i337.debug_print_spaces.exit338_crit_edge, label %do.end.i337.do.end.i337_crit_edge

do.end.i337.do.end.i337_crit_edge:                ; preds = %do.end.i337
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i337

do.end.i337.debug_print_spaces.exit338_crit_edge: ; preds = %do.end.i337
  call void @__sanitizer_cov_trace_pc() #14
  br label %debug_print_spaces.exit338

debug_print_spaces.exit338:                       ; preds = %do.end.i337.debug_print_spaces.exit338_crit_edge, %do.end17.debug_print_spaces.exit338_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.338) #15
  br label %do.end27

do.end27:                                         ; preds = %debug_print_spaces.exit338, %do.end10.do.end27_crit_edge
  %call.i339 = tail call fastcc i32 @atom_get_src_int(ptr noundef %ctx, i8 noundef zeroext %7, ptr noundef %ptr, ptr noundef null, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i339)
  %cmp.not = icmp eq i32 %call.i339, 0
  br i1 %cmp.not, label %if.else232, label %if.then29

if.then29:                                        ; preds = %do.end27
  %conv = zext i32 %call.i331 to i64
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  %arrayidx = getelementptr %struct.atom_context, ptr %17, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %conv31 = zext i32 %19 to i64
  %shl = shl nuw i64 %conv31, 32
  %or = or i64 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %or)
  %cmp205 = icmp ult i64 %or, 4294967296
  br i1 %cmp205, label %if.then209, label %if.else215, !prof !1075

if.then209:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %div213 = udiv i32 %call.i331, %call.i339
  br label %if.end239

if.else215:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #14
  %20 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %call.i339, i64 %or) #19, !srcloc !1076
  %asmresult1.i = extractvalue { i64, i64 } %20, 1
  %extract.t366 = trunc i64 %asmresult1.i to i32
  %extract372 = lshr i64 %asmresult1.i, 32
  %extract.t373 = trunc i64 %extract372 to i32
  br label %if.end239

if.else232:                                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.else232, %if.else215, %if.then209
  %.sink376 = phi ptr [ %22, %if.else232 ], [ %17, %if.else215 ], [ %17, %if.then209 ]
  %.sink375 = phi i32 [ 0, %if.else232 ], [ %extract.t366, %if.else215 ], [ %div213, %if.then209 ]
  %.sink = phi i32 [ 0, %if.else232 ], [ %extract.t373, %if.else215 ], [ 0, %if.then209 ]
  %divmul234 = getelementptr inbounds %struct.atom_context, ptr %.sink376, i32 0, i32 8
  %23 = ptrtoint ptr %divmul234 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink375, ptr %divmul234, align 4
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %arrayidx238 = getelementptr %struct.atom_context, ptr %25, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %arrayidx238, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atom_put_dst(ptr nocapture noundef readonly %ctx, i32 noundef %arg, i8 noundef zeroext %attr, ptr nocapture noundef %ptr, i32 noundef %val, i32 noundef %saved) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %attr to i32
  %0 = lshr i32 %conv, 3
  %and = and i32 %0, 7
  %1 = lshr i32 %conv, 6
  %arrayidx4 = getelementptr [8 x [4 x i32]], ptr @atom_dst_to_src, i32 0, i32 %and, i32 %1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx4, align 4
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %arrayidx6 = getelementptr [8 x i32], ptr @atom_arg_mask, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr [8 x i32], ptr @atom_arg_shift, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7, align 4
  %shr8 = lshr i32 %7, %9
  %and9 = and i32 %shr8, %val
  %shl = shl i32 %val, %9
  %and12 = and i32 %shl, %7
  %neg = xor i32 %7, -1
  %and14 = and i32 %neg, %saved
  %or = or i32 %and12, %and14
  %10 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.634)
  switch i32 %arg, label %entry.sw.epilog195_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb73
    i32 2, label %sw.bb90
    i32 3, label %sw.bb126
    i32 6, label %sw.bb157
    i32 7, label %sw.bb176
  ]

entry.sw.epilog195_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog195

sw.bb:                                            ; preds = %entry
  %bios = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bios, align 4
  %13 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %16 to i32
  %add.i = add i32 %14, 1
  %arrayidx.i7.i = getelementptr i8, ptr %12, i32 %add.i
  %17 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %18 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %add = add i32 %14, 2
  store i32 %add, ptr %ptr, align 4
  %19 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %sw.bb.do.end20_crit_edge, label %do.end

sw.bb.do.end20_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end20

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %or.i) #15
  br label %do.end20

do.end20:                                         ; preds = %do.end, %sw.bb.do.end20_crit_edge
  %reg_block = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 10
  %20 = ptrtoint ptr %reg_block to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %reg_block, align 2
  %conv21 = zext i16 %21 to i32
  %add22 = add nuw nsw i32 %or.i, %conv21
  %io_mode = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 14
  %22 = ptrtoint ptr %io_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %io_mode, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.635)
  switch i32 %23, label %sw.default [
    i32 0, label %sw.bb23
    i32 1, label %do.end35
    i32 2, label %do.end41
  ]

sw.bb23:                                          ; preds = %do.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add22)
  %cmp = icmp eq i32 %add22, 0
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  %reg_write = getelementptr inbounds %struct.card_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_write, align 4
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #14
  %shl27 = shl i32 %or, 2
  tail call void %28(ptr noundef %26, i32 noundef 0, i32 noundef %shl27) #12
  br label %sw.epilog195

if.else:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %28(ptr noundef %26, i32 noundef %add22, i32 noundef %or) #12
  br label %sw.epilog195

do.end35:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172) #15
  br label %cleanup

do.end41:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #15
  br label %cleanup

sw.default:                                       ; preds = %do.end20
  %and45 = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.end50, label %if.end53

do.end50:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #15
  br label %cleanup

if.end53:                                         ; preds = %sw.default
  %iio = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 5
  %29 = ptrtoint ptr %iio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iio, align 4
  %and55 = and i32 %23, 255
  %arrayidx56 = getelementptr i16, ptr %30, i32 %and55
  %31 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx56, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool57.not = icmp eq i16 %32, 0
  br i1 %tobool57.not, label %do.end61, label %if.end66

do.end61:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %and64 = and i32 %23, 127
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.248, i32 noundef %and64) #15
  br label %cleanup

if.end66:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  %conv71 = zext i16 %32 to i32
  %call72 = tail call fastcc i32 @atom_iio_execute(ptr noundef %5, i32 noundef %conv71, i32 noundef %add22, i32 noundef %or)
  br label %sw.epilog195

sw.bb73:                                          ; preds = %entry
  %bios75 = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 2
  %33 = ptrtoint ptr %bios75 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bios75, align 4
  %35 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %34, i32 %36
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i, align 1
  %conv77 = zext i8 %38 to i32
  %inc = add i32 %36, 1
  store i32 %inc, ptr %ptr, align 4
  %39 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool79.not = icmp eq i32 %39, 0
  br i1 %tobool79.not, label %sw.bb73.do.end88_crit_edge, label %do.end83

sw.bb73.do.end88_crit_edge:                       ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88

do.end83:                                         ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #14
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.251, i32 noundef %conv77) #15
  br label %do.end88

do.end88:                                         ; preds = %do.end83, %sw.bb73.do.end88_crit_edge
  %40 = tail call i32 @llvm.bswap.i32(i32 %or)
  %ps = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 1
  %41 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ps, align 4
  %arrayidx89 = getelementptr i32, ptr %42, i32 %conv77
  %43 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %arrayidx89, align 4
  br label %sw.epilog195

sw.bb90:                                          ; preds = %entry
  %bios92 = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 2
  %44 = ptrtoint ptr %bios92 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bios92, align 4
  %46 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ptr, align 4
  %arrayidx.i397 = getelementptr i8, ptr %45, i32 %47
  %48 = ptrtoint ptr %arrayidx.i397 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx.i397, align 1
  %conv94 = zext i8 %49 to i32
  %inc95 = add i32 %47, 1
  store i32 %inc95, ptr %ptr, align 4
  %50 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool97.not = icmp eq i32 %50, 0
  br i1 %tobool97.not, label %sw.bb90.do.end106_crit_edge, label %do.end101

sw.bb90.do.end106_crit_edge:                      ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end106

do.end101:                                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #14
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i32 noundef %conv94) #15
  br label %do.end106

do.end106:                                        ; preds = %do.end101, %sw.bb90.do.end106_crit_edge
  %51 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.636)
  switch i8 %49, label %sw.default123 [
    i8 64, label %sw.bb107
    i8 65, label %sw.bb109
    i8 66, label %sw.bb112
    i8 67, label %sw.bb114
    i8 68, label %do.end106.sw.epilog195_crit_edge
    i8 69, label %do.end106.sw.epilog195_crit_edge401
    i8 70, label %sw.bb117
    i8 71, label %sw.bb118
    i8 72, label %sw.bb120
  ]

do.end106.sw.epilog195_crit_edge401:              ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog195

do.end106.sw.epilog195_crit_edge:                 ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog195

sw.bb107:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #14
  %divmul = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 8
  %52 = ptrtoint ptr %divmul to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or, ptr %divmul, align 4
  br label %sw.epilog195

sw.bb109:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx111 = getelementptr %struct.atom_context, ptr %5, i32 0, i32 8, i32 1
  %53 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %or, ptr %arrayidx111, align 4
  br label %sw.epilog195

sw.bb112:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #14
  %conv113 = trunc i32 %or to i16
  %data_block = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 6
  %54 = ptrtoint ptr %data_block to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv113, ptr %data_block, align 4
  br label %sw.epilog195

sw.bb114:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #14
  %conv115 = trunc i32 %or to i8
  %shift = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 11
  %55 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv115, ptr %shift, align 4
  br label %sw.epilog195

sw.bb117:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #14
  %fb_base = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 7
  %56 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or, ptr %fb_base, align 4
  br label %sw.epilog195

sw.bb118:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #14
  %conv119 = trunc i32 %or to i16
  %io_attr = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 9
  %57 = ptrtoint ptr %io_attr to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv119, ptr %io_attr, align 4
  br label %sw.epilog195

sw.bb120:                                         ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #14
  %conv121 = trunc i32 %or to i16
  %reg_block122 = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 10
  %58 = ptrtoint ptr %reg_block122 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv121, ptr %reg_block122, align 2
  br label %sw.epilog195

sw.default123:                                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #14
  %ws = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 2
  %59 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ws, align 4
  %arrayidx124 = getelementptr i32, ptr %60, i32 %conv94
  %61 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or, ptr %arrayidx124, align 4
  br label %sw.epilog195

sw.bb126:                                         ; preds = %entry
  %bios128 = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 2
  %62 = ptrtoint ptr %bios128 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bios128, align 4
  %64 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ptr, align 4
  %arrayidx.i398 = getelementptr i8, ptr %63, i32 %65
  %66 = ptrtoint ptr %arrayidx.i398 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx.i398, align 1
  %conv130 = zext i8 %67 to i32
  %inc131 = add i32 %65, 1
  store i32 %inc131, ptr %ptr, align 4
  %fb_base132 = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 7
  %68 = ptrtoint ptr %fb_base132 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fb_base132, align 4
  %mul = shl nuw nsw i32 %conv130, 2
  %add133 = add i32 %69, %mul
  %scratch_size_bytes = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 16
  %70 = ptrtoint ptr %scratch_size_bytes to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %scratch_size_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add133, i32 %71)
  %cmp134 = icmp ugt i32 %add133, %71
  br i1 %cmp134, label %if.then136, label %if.else141

if.then136:                                       ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.255, i32 noundef %add133, i32 noundef %71) #12
  br label %do.body146

if.else141:                                       ; preds = %sw.bb126
  call void @__sanitizer_cov_trace_pc() #14
  %scratch = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 15
  %72 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %scratch, align 4
  %div396 = lshr i32 %69, 2
  %add143 = add nuw nsw i32 %div396, %conv130
  %arrayidx144 = getelementptr i32, ptr %73, i32 %add143
  %74 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or, ptr %arrayidx144, align 4
  br label %do.body146

do.body146:                                       ; preds = %if.else141, %if.then136
  %75 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool147.not = icmp eq i32 %75, 0
  br i1 %tobool147.not, label %do.body146.sw.epilog195_crit_edge, label %do.end151

do.body146.sw.epilog195_crit_edge:                ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog195

do.end151:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #14
  %call153 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, i32 noundef %conv130) #15
  br label %sw.epilog195

sw.bb157:                                         ; preds = %entry
  %bios159 = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 2
  %76 = ptrtoint ptr %bios159 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %bios159, align 4
  %78 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ptr, align 4
  %arrayidx.i399 = getelementptr i8, ptr %77, i32 %79
  %80 = ptrtoint ptr %arrayidx.i399 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx.i399, align 1
  %conv161 = zext i8 %81 to i32
  %inc162 = add i32 %79, 1
  store i32 %inc162, ptr %ptr, align 4
  %82 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool164.not = icmp eq i32 %82, 0
  br i1 %tobool164.not, label %sw.bb157.do.end173_crit_edge, label %do.end168

sw.bb157.do.end173_crit_edge:                     ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end173

do.end168:                                        ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #14
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, i32 noundef %conv161) #15
  br label %do.end173

do.end173:                                        ; preds = %do.end168, %sw.bb157.do.end173_crit_edge
  %83 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %5, align 4
  %pll_write = getelementptr inbounds %struct.card_info, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %pll_write to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pll_write, align 4
  tail call void %86(ptr noundef %84, i32 noundef %conv161, i32 noundef %or) #12
  br label %sw.epilog195

sw.bb176:                                         ; preds = %entry
  %bios178 = getelementptr inbounds %struct.atom_context, ptr %5, i32 0, i32 2
  %87 = ptrtoint ptr %bios178 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %bios178, align 4
  %89 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ptr, align 4
  %arrayidx.i400 = getelementptr i8, ptr %88, i32 %90
  %91 = ptrtoint ptr %arrayidx.i400 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i400, align 1
  %conv180 = zext i8 %92 to i32
  %inc181 = add i32 %90, 1
  store i32 %inc181, ptr %ptr, align 4
  %93 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool183.not = icmp eq i32 %93, 0
  br i1 %tobool183.not, label %sw.bb176.do.end192_crit_edge, label %do.end187

sw.bb176.do.end192_crit_edge:                     ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end192

do.end187:                                        ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #14
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, i32 noundef %conv180) #15
  br label %do.end192

do.end192:                                        ; preds = %do.end187, %sw.bb176.do.end192_crit_edge
  %94 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %5, align 4
  %mc_write = getelementptr inbounds %struct.card_info, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %mc_write to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mc_write, align 4
  tail call void %97(ptr noundef %95, i32 noundef %conv180, i32 noundef %or) #12
  br label %cleanup

sw.epilog195:                                     ; preds = %do.end173, %do.end151, %do.body146.sw.epilog195_crit_edge, %sw.default123, %sw.bb120, %sw.bb118, %sw.bb117, %sw.bb114, %sw.bb112, %sw.bb109, %sw.bb107, %do.end106.sw.epilog195_crit_edge, %do.end106.sw.epilog195_crit_edge401, %do.end88, %if.end66, %if.else, %if.then25, %entry.sw.epilog195_crit_edge
  %98 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.637)
  switch i32 %3, label %sw.epilog195.cleanup_crit_edge [
    i32 0, label %do.body197
    i32 1, label %do.body209
    i32 2, label %do.body221
    i32 3, label %do.body233
    i32 4, label %do.body245
    i32 5, label %do.body257
    i32 6, label %do.body269
    i32 7, label %do.body281
  ]

sw.epilog195.cleanup_crit_edge:                   ; preds = %sw.epilog195
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body197:                                       ; preds = %sw.epilog195
  %99 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool198.not = icmp eq i32 %99, 0
  br i1 %tobool198.not, label %do.body197.cleanup_crit_edge, label %do.end202

do.body197.cleanup_crit_edge:                     ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end202:                                        ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #14
  %call204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.263, i32 noundef %and9) #15
  br label %cleanup

do.body209:                                       ; preds = %sw.epilog195
  %100 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool210.not = icmp eq i32 %100, 0
  br i1 %tobool210.not, label %do.body209.cleanup_crit_edge, label %do.end214

do.body209.cleanup_crit_edge:                     ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end214:                                        ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #14
  %call216 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.266, i32 noundef %and9) #15
  br label %cleanup

do.body221:                                       ; preds = %sw.epilog195
  %101 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool222.not = icmp eq i32 %101, 0
  br i1 %tobool222.not, label %do.body221.cleanup_crit_edge, label %do.end226

do.body221.cleanup_crit_edge:                     ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end226:                                        ; preds = %do.body221
  call void @__sanitizer_cov_trace_pc() #14
  %call228 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.269, i32 noundef %and9) #15
  br label %cleanup

do.body233:                                       ; preds = %sw.epilog195
  %102 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool234.not = icmp eq i32 %102, 0
  br i1 %tobool234.not, label %do.body233.cleanup_crit_edge, label %do.end238

do.body233.cleanup_crit_edge:                     ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end238:                                        ; preds = %do.body233
  call void @__sanitizer_cov_trace_pc() #14
  %call240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272, i32 noundef %and9) #15
  br label %cleanup

do.body245:                                       ; preds = %sw.epilog195
  %103 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool246.not = icmp eq i32 %103, 0
  br i1 %tobool246.not, label %do.body245.cleanup_crit_edge, label %do.end250

do.body245.cleanup_crit_edge:                     ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end250:                                        ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #14
  %call252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.275, i32 noundef %and9) #15
  br label %cleanup

do.body257:                                       ; preds = %sw.epilog195
  %104 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool258.not = icmp eq i32 %104, 0
  br i1 %tobool258.not, label %do.body257.cleanup_crit_edge, label %do.end262

do.body257.cleanup_crit_edge:                     ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end262:                                        ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #14
  %call264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.278, i32 noundef %and9) #15
  br label %cleanup

do.body269:                                       ; preds = %sw.epilog195
  %105 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool270.not = icmp eq i32 %105, 0
  br i1 %tobool270.not, label %do.body269.cleanup_crit_edge, label %do.end274

do.body269.cleanup_crit_edge:                     ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end274:                                        ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #14
  %call276 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.281, i32 noundef %and9) #15
  br label %cleanup

do.body281:                                       ; preds = %sw.epilog195
  %106 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool282.not = icmp eq i32 %106, 0
  br i1 %tobool282.not, label %do.body281.cleanup_crit_edge, label %do.end286

do.body281.cleanup_crit_edge:                     ; preds = %do.body281
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end286:                                        ; preds = %do.body281
  call void @__sanitizer_cov_trace_pc() #14
  %call288 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.284, i32 noundef %and9) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end286, %do.body281.cleanup_crit_edge, %do.end274, %do.body269.cleanup_crit_edge, %do.end262, %do.body257.cleanup_crit_edge, %do.end250, %do.body245.cleanup_crit_edge, %do.end238, %do.body233.cleanup_crit_edge, %do.end226, %do.body221.cleanup_crit_edge, %do.end214, %do.body209.cleanup_crit_edge, %do.end202, %do.body197.cleanup_crit_edge, %sw.epilog195.cleanup_crit_edge, %do.end192, %do.end61, %do.end50, %do.end41, %do.end35
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atom_get_src_int(ptr nocapture noundef readonly %ctx, i8 noundef zeroext %attr, ptr noundef %ptr, ptr noundef writeonly %saved, i32 noundef %print) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %conv = zext i8 %attr to i32
  %and = and i32 %conv, 7
  %2 = lshr i32 %conv, 3
  %and3 = and i32 %2, 7
  %3 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.638)
  switch i32 %and, label %entry.unreachabledefault [
    i32 0, label %sw.bb
    i32 1, label %sw.bb58
    i32 2, label %sw.bb79
    i32 4, label %sw.bb124
    i32 3, label %sw.bb167
    i32 5, label %sw.bb200
    i32 6, label %sw.bb261
    i32 7, label %sw.bb284
  ]

sw.bb:                                            ; preds = %entry
  %bios = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bios, align 4
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ptr, align 4
  %arrayidx.i.i = getelementptr i8, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %9 to i32
  %add.i = add i32 %7, 1
  %arrayidx.i7.i = getelementptr i8, ptr %5, i32 %add.i
  %10 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %add = add i32 %7, 2
  store i32 %add, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool.not = icmp eq i32 %print, 0
  br i1 %tobool.not, label %sw.bb.if.end12_crit_edge, label %do.body

sw.bb.if.end12_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.body:                                          ; preds = %sw.bb
  %12 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not = icmp eq i32 %12, 0
  br i1 %tobool6.not, label %do.body.if.end12_crit_edge, label %do.end

do.body.if.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %or.i) #15
  br label %if.end12

if.end12:                                         ; preds = %do.end, %do.body.if.end12_crit_edge, %sw.bb.if.end12_crit_edge
  %reg_block = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %reg_block to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %reg_block, align 2
  %conv13 = zext i16 %14 to i32
  %add14 = add nuw nsw i32 %or.i, %conv13
  %io_mode = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %io_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %io_mode, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.639)
  switch i32 %16, label %sw.default [
    i32 0, label %sw.bb15
    i32 1, label %do.end21
    i32 2, label %do.end27
  ]

sw.bb15:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %reg_read = getelementptr inbounds %struct.card_info, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_read, align 4
  %call17 = tail call i32 %21(ptr noundef %19, i32 noundef %add14) #12
  br label %sw.epilog307

do.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172) #15
  br label %cleanup

do.end27:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #15
  br label %cleanup

sw.default:                                       ; preds = %if.end12
  %and31 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.end36, label %if.end39

do.end36:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #14
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #15
  br label %cleanup

if.end39:                                         ; preds = %sw.default
  %iio = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %iio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iio, align 4
  %and41 = and i32 %16, 127
  %arrayidx = getelementptr i16, ptr %23, i32 %and41
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool42.not = icmp eq i16 %25, 0
  br i1 %tobool42.not, label %do.end46, label %if.end51

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, i32 noundef %and41) #15
  br label %cleanup

if.end51:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %conv56 = zext i16 %25 to i32
  %call57 = tail call fastcc i32 @atom_iio_execute(ptr noundef %1, i32 noundef %conv56, i32 noundef %add14, i32 noundef 0)
  br label %sw.epilog307

sw.bb58:                                          ; preds = %entry
  %bios60 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %bios60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bios60, align 4
  %28 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ptr, align 4
  %arrayidx.i = getelementptr i8, ptr %27, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %conv62 = zext i8 %31 to i32
  %inc = add i32 %29, 1
  store i32 %inc, ptr %ptr, align 4
  %ps = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 1
  %32 = ptrtoint ptr %ps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ps, align 4
  %arrayidx63 = getelementptr i32, ptr %33, i32 %conv62
  %34 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %arrayidx63, align 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool65.not = icmp eq i32 %print, 0
  br i1 %tobool65.not, label %sw.bb58.sw.epilog307_crit_edge, label %do.body67

sw.bb58.sw.epilog307_crit_edge:                   ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog307

do.body67:                                        ; preds = %sw.bb58
  %37 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool68.not = icmp eq i32 %37, 0
  br i1 %tobool68.not, label %do.body67.sw.epilog307_crit_edge, label %do.end72

do.body67.sw.epilog307_crit_edge:                 ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog307

do.end72:                                         ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #14
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184, i32 noundef %conv62, i32 noundef %36) #15
  br label %sw.epilog307

sw.bb79:                                          ; preds = %entry
  %bios81 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %bios81 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bios81, align 4
  %40 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ptr, align 4
  %arrayidx.i538 = getelementptr i8, ptr %39, i32 %41
  %42 = ptrtoint ptr %arrayidx.i538 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i538, align 1
  %conv83 = zext i8 %43 to i32
  %inc84 = add i32 %41, 1
  store i32 %inc84, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool85.not = icmp eq i32 %print, 0
  br i1 %tobool85.not, label %sw.bb79.if.end98_crit_edge, label %do.body87

sw.bb79.if.end98_crit_edge:                       ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

do.body87:                                        ; preds = %sw.bb79
  %44 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool88.not = icmp eq i32 %44, 0
  br i1 %tobool88.not, label %do.body87.if.end98_crit_edge, label %do.end92

do.body87.if.end98_crit_edge:                     ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end98

do.end92:                                         ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #14
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187, i32 noundef %conv83) #15
  br label %if.end98

if.end98:                                         ; preds = %do.end92, %do.body87.if.end98_crit_edge, %sw.bb79.if.end98_crit_edge
  %45 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.640)
  switch i8 %43, label %sw.default121 [
    i8 64, label %sw.bb99
    i8 65, label %sw.bb101
    i8 66, label %sw.bb104
    i8 67, label %sw.bb106
    i8 68, label %sw.bb108
    i8 69, label %sw.bb111
    i8 70, label %sw.bb115
    i8 71, label %sw.bb116
    i8 72, label %sw.bb118
  ]

sw.bb99:                                          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  %divmul = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 8
  %46 = ptrtoint ptr %divmul to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %divmul, align 4
  br label %sw.epilog307

sw.bb101:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx103 = getelementptr %struct.atom_context, ptr %1, i32 0, i32 8, i32 1
  %48 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx103, align 4
  br label %sw.epilog307

sw.bb104:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  %data_block = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 6
  %50 = ptrtoint ptr %data_block to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %data_block, align 4
  %conv105 = zext i16 %51 to i32
  br label %sw.epilog307

sw.bb106:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  %shift = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 11
  %52 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %shift, align 4
  %conv107 = zext i8 %53 to i32
  br label %sw.epilog307

sw.bb108:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  %shift109 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 11
  %54 = ptrtoint ptr %shift109 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %shift109, align 4
  %conv110 = zext i8 %55 to i32
  %shl = shl nuw i32 1, %conv110
  br label %sw.epilog307

sw.bb111:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  %shift112 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 11
  %56 = ptrtoint ptr %shift112 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %shift112, align 4
  %conv113 = zext i8 %57 to i32
  %shl114 = shl nuw i32 1, %conv113
  %neg = xor i32 %shl114, -1
  br label %sw.epilog307

sw.bb115:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  %fb_base = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 7
  %58 = ptrtoint ptr %fb_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fb_base, align 4
  br label %sw.epilog307

sw.bb116:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  %io_attr = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 9
  %60 = ptrtoint ptr %io_attr to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %io_attr, align 4
  %conv117 = zext i16 %61 to i32
  br label %sw.epilog307

sw.bb118:                                         ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  %reg_block119 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 10
  %62 = ptrtoint ptr %reg_block119 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %reg_block119, align 2
  %conv120 = zext i16 %63 to i32
  br label %sw.epilog307

sw.default121:                                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #14
  %ws = getelementptr inbounds %struct.atom_exec_context, ptr %ctx, i32 0, i32 2
  %64 = ptrtoint ptr %ws to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ws, align 4
  %arrayidx122 = getelementptr i32, ptr %65, i32 %conv83
  %66 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx122, align 4
  br label %sw.epilog307

sw.bb124:                                         ; preds = %entry
  %bios126 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %bios126 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %bios126, align 4
  %70 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ptr, align 4
  %arrayidx.i.i539 = getelementptr i8, ptr %69, i32 %71
  %72 = ptrtoint ptr %arrayidx.i.i539 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx.i.i539, align 1
  %conv.i540 = zext i8 %73 to i32
  %add.i541 = add i32 %71, 1
  %arrayidx.i7.i542 = getelementptr i8, ptr %69, i32 %add.i541
  %74 = ptrtoint ptr %arrayidx.i7.i542 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx.i7.i542, align 1
  %conv3.i543 = zext i8 %75 to i32
  %shl.i544 = shl nuw nsw i32 %conv3.i543, 8
  %or.i545 = or i32 %shl.i544, %conv.i540
  %add129 = add i32 %71, 2
  store i32 %add129, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool130.not = icmp eq i32 %print, 0
  br i1 %tobool130.not, label %sw.bb124.if.end160_crit_edge, label %if.then131

sw.bb124.if.end160_crit_edge:                     ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

if.then131:                                       ; preds = %sw.bb124
  %data_block132 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 6
  %76 = ptrtoint ptr %data_block132 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %data_block132, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool133.not = icmp eq i16 %77, 0
  %78 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool149.not = icmp eq i32 %78, 0
  br i1 %tobool133.not, label %do.body148, label %do.body135

do.body135:                                       ; preds = %if.then131
  br i1 %tobool149.not, label %do.body135.if.end160_crit_edge, label %do.end140

do.body135.if.end160_crit_edge:                   ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

do.end140:                                        ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #14
  %conv143 = zext i16 %77 to i32
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190, i32 noundef %or.i545, i32 noundef %conv143) #15
  br label %if.end160

do.body148:                                       ; preds = %if.then131
  br i1 %tobool149.not, label %do.body148.if.end160_crit_edge, label %do.end153

do.body148.if.end160_crit_edge:                   ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end160

do.end153:                                        ; preds = %do.body148
  call void @__sanitizer_cov_trace_pc() #14
  %call155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193, i32 noundef %or.i545) #15
  br label %if.end160

if.end160:                                        ; preds = %do.end153, %do.body148.if.end160_crit_edge, %do.end140, %do.body135.if.end160_crit_edge, %sw.bb124.if.end160_crit_edge
  %79 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ctx, align 4
  %bios162 = getelementptr inbounds %struct.atom_context, ptr %80, i32 0, i32 2
  %81 = ptrtoint ptr %bios162 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %bios162, align 4
  %data_block163 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 6
  %83 = ptrtoint ptr %data_block163 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %data_block163, align 4
  %conv164 = zext i16 %84 to i32
  %add165 = add nuw nsw i32 %or.i545, %conv164
  %arrayidx.i.i.i = getelementptr i8, ptr %82, i32 %add165
  %85 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i = zext i8 %86 to i32
  %add.i.i = add nuw nsw i32 %add165, 1
  %arrayidx.i7.i.i = getelementptr i8, ptr %82, i32 %add.i.i
  %87 = ptrtoint ptr %arrayidx.i7.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx.i7.i.i, align 1
  %conv3.i.i = zext i8 %88 to i32
  %shl.i.i = shl nuw nsw i32 %conv3.i.i, 8
  %add.i546 = add nuw nsw i32 %add165, 2
  %arrayidx.i.i5.i = getelementptr i8, ptr %82, i32 %add.i546
  %89 = ptrtoint ptr %arrayidx.i.i5.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i.i5.i, align 1
  %conv.i6.i = zext i8 %90 to i32
  %add.i7.i = add nuw nsw i32 %add165, 3
  %arrayidx.i7.i8.i = getelementptr i8, ptr %82, i32 %add.i7.i
  %91 = ptrtoint ptr %arrayidx.i7.i8.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i7.i8.i, align 1
  %conv3.i9.i = zext i8 %92 to i32
  %93 = shl nuw i32 %conv3.i9.i, 24
  %94 = shl nuw nsw i32 %conv.i6.i, 16
  %shl.i547 = or i32 %shl.i.i, %conv.i.i
  %or.i.i = or i32 %shl.i547, %94
  %or.i548 = or i32 %or.i.i, %93
  br label %sw.epilog307

sw.bb167:                                         ; preds = %entry
  %bios169 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %95 = ptrtoint ptr %bios169 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %bios169, align 4
  %97 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ptr, align 4
  %arrayidx.i549 = getelementptr i8, ptr %96, i32 %98
  %99 = ptrtoint ptr %arrayidx.i549 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.i549, align 1
  %conv171 = zext i8 %100 to i32
  %inc172 = add i32 %98, 1
  store i32 %inc172, ptr %ptr, align 4
  %fb_base173 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 7
  %101 = ptrtoint ptr %fb_base173 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fb_base173, align 4
  %mul = shl nuw nsw i32 %conv171, 2
  %add174 = add i32 %102, %mul
  %scratch_size_bytes = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 16
  %103 = ptrtoint ptr %scratch_size_bytes to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %scratch_size_bytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add174, i32 %104)
  %cmp = icmp ugt i32 %add174, %104
  br i1 %cmp, label %if.then176, label %if.else181

if.then176:                                       ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.195, i32 noundef %add174, i32 noundef %104) #12
  br label %if.end185

if.else181:                                       ; preds = %sw.bb167
  call void @__sanitizer_cov_trace_pc() #14
  %scratch = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 15
  %105 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %scratch, align 4
  %div537 = lshr i32 %102, 2
  %add183 = add nuw nsw i32 %div537, %conv171
  %arrayidx184 = getelementptr i32, ptr %106, i32 %add183
  %107 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx184, align 4
  br label %if.end185

if.end185:                                        ; preds = %if.else181, %if.then176
  %val.0 = phi i32 [ 0, %if.then176 ], [ %108, %if.else181 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool186.not = icmp eq i32 %print, 0
  br i1 %tobool186.not, label %if.end185.sw.epilog307_crit_edge, label %do.body188

if.end185.sw.epilog307_crit_edge:                 ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog307

do.body188:                                       ; preds = %if.end185
  %109 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool189.not = icmp eq i32 %109, 0
  br i1 %tobool189.not, label %do.body188.sw.epilog307_crit_edge, label %do.end193

do.body188.sw.epilog307_crit_edge:                ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog307

do.end193:                                        ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #14
  %call195 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, i32 noundef %conv171) #15
  br label %sw.epilog307

sw.bb200:                                         ; preds = %entry
  %110 = zext i32 %and3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.641)
  switch i32 %and3, label %sw.bb200.unreachabledefault [
    i32 0, label %sw.bb201
    i32 1, label %sw.bb200.sw.bb220_crit_edge
    i32 2, label %sw.bb200.sw.bb220_crit_edge575
    i32 3, label %sw.bb200.sw.bb220_crit_edge576
    i32 4, label %sw.bb200.sw.bb240_crit_edge
    i32 5, label %sw.bb200.sw.bb240_crit_edge577
    i32 6, label %sw.bb200.sw.bb240_crit_edge578
    i32 7, label %sw.bb200.sw.bb240_crit_edge579
  ]

sw.bb200.sw.bb240_crit_edge579:                   ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb240

sw.bb200.sw.bb240_crit_edge578:                   ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb240

sw.bb200.sw.bb240_crit_edge577:                   ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb240

sw.bb200.sw.bb240_crit_edge:                      ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb240

sw.bb200.sw.bb220_crit_edge576:                   ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb220

sw.bb200.sw.bb220_crit_edge575:                   ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb220

sw.bb200.sw.bb220_crit_edge:                      ; preds = %sw.bb200
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb220

sw.bb201:                                         ; preds = %sw.bb200
  %bios203 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %111 = ptrtoint ptr %bios203 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %bios203, align 4
  %113 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ptr, align 4
  %arrayidx.i.i.i550 = getelementptr i8, ptr %112, i32 %114
  %115 = ptrtoint ptr %arrayidx.i.i.i550 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.i.i.i550, align 1
  %conv.i.i551 = zext i8 %116 to i32
  %add.i.i552 = add i32 %114, 1
  %arrayidx.i7.i.i553 = getelementptr i8, ptr %112, i32 %add.i.i552
  %117 = ptrtoint ptr %arrayidx.i7.i.i553 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx.i7.i.i553, align 1
  %conv3.i.i554 = zext i8 %118 to i32
  %shl.i.i555 = shl nuw nsw i32 %conv3.i.i554, 8
  %add.i556 = add i32 %114, 2
  %arrayidx.i.i5.i557 = getelementptr i8, ptr %112, i32 %add.i556
  %119 = ptrtoint ptr %arrayidx.i.i5.i557 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx.i.i5.i557, align 1
  %conv.i6.i558 = zext i8 %120 to i32
  %add.i7.i559 = add i32 %114, 3
  %arrayidx.i7.i8.i560 = getelementptr i8, ptr %112, i32 %add.i7.i559
  %121 = ptrtoint ptr %arrayidx.i7.i8.i560 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx.i7.i8.i560, align 1
  %conv3.i9.i561 = zext i8 %122 to i32
  %123 = shl nuw i32 %conv3.i9.i561, 24
  %124 = shl nuw nsw i32 %conv.i6.i558, 16
  %shl.i562 = or i32 %shl.i.i555, %conv.i.i551
  %or.i.i563 = or i32 %shl.i562, %124
  %or.i564 = or i32 %or.i.i563, %123
  %add205 = add i32 %114, 4
  store i32 %add205, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool206.not = icmp eq i32 %print, 0
  br i1 %tobool206.not, label %sw.bb201.cleanup_crit_edge, label %do.body208

sw.bb201.cleanup_crit_edge:                       ; preds = %sw.bb201
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body208:                                       ; preds = %sw.bb201
  %125 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool209.not = icmp eq i32 %125, 0
  br i1 %tobool209.not, label %do.body208.cleanup_crit_edge, label %do.end213

do.body208.cleanup_crit_edge:                     ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end213:                                        ; preds = %do.body208
  call void @__sanitizer_cov_trace_pc() #14
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, i32 noundef %or.i564) #15
  br label %cleanup

sw.bb220:                                         ; preds = %sw.bb200.sw.bb220_crit_edge, %sw.bb200.sw.bb220_crit_edge575, %sw.bb200.sw.bb220_crit_edge576
  %bios222 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %126 = ptrtoint ptr %bios222 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %bios222, align 4
  %128 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ptr, align 4
  %arrayidx.i.i565 = getelementptr i8, ptr %127, i32 %129
  %130 = ptrtoint ptr %arrayidx.i.i565 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %arrayidx.i.i565, align 1
  %conv.i566 = zext i8 %131 to i32
  %add.i567 = add i32 %129, 1
  %arrayidx.i7.i568 = getelementptr i8, ptr %127, i32 %add.i567
  %132 = ptrtoint ptr %arrayidx.i7.i568 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx.i7.i568, align 1
  %conv3.i569 = zext i8 %133 to i32
  %shl.i570 = shl nuw nsw i32 %conv3.i569, 8
  %or.i571 = or i32 %shl.i570, %conv.i566
  %add225 = add i32 %129, 2
  store i32 %add225, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool226.not = icmp eq i32 %print, 0
  br i1 %tobool226.not, label %sw.bb220.cleanup_crit_edge, label %do.body228

sw.bb220.cleanup_crit_edge:                       ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body228:                                       ; preds = %sw.bb220
  %134 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool229.not = icmp eq i32 %134, 0
  br i1 %tobool229.not, label %do.body228.cleanup_crit_edge, label %do.end233

do.body228.cleanup_crit_edge:                     ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end233:                                        ; preds = %do.body228
  call void @__sanitizer_cov_trace_pc() #14
  %call235 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, i32 noundef %or.i571) #15
  br label %cleanup

sw.bb240:                                         ; preds = %sw.bb200.sw.bb240_crit_edge, %sw.bb200.sw.bb240_crit_edge577, %sw.bb200.sw.bb240_crit_edge578, %sw.bb200.sw.bb240_crit_edge579
  %bios242 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %135 = ptrtoint ptr %bios242 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bios242, align 4
  %137 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %ptr, align 4
  %arrayidx.i572 = getelementptr i8, ptr %136, i32 %138
  %139 = ptrtoint ptr %arrayidx.i572 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %arrayidx.i572, align 1
  %conv244 = zext i8 %140 to i32
  %inc245 = add i32 %138, 1
  store i32 %inc245, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool246.not = icmp eq i32 %print, 0
  br i1 %tobool246.not, label %sw.bb240.cleanup_crit_edge, label %do.body248

sw.bb240.cleanup_crit_edge:                       ; preds = %sw.bb240
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body248:                                       ; preds = %sw.bb240
  %141 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool249.not = icmp eq i32 %141, 0
  br i1 %tobool249.not, label %do.body248.cleanup_crit_edge, label %do.end253

do.body248.cleanup_crit_edge:                     ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end253:                                        ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #14
  %call255 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, i32 noundef %conv244) #15
  br label %cleanup

sw.bb200.unreachabledefault:                      ; preds = %sw.bb200
  unreachable

sw.bb261:                                         ; preds = %entry
  %bios263 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %142 = ptrtoint ptr %bios263 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %bios263, align 4
  %144 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ptr, align 4
  %arrayidx.i573 = getelementptr i8, ptr %143, i32 %145
  %146 = ptrtoint ptr %arrayidx.i573 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.i573, align 1
  %conv265 = zext i8 %147 to i32
  %inc266 = add i32 %145, 1
  store i32 %inc266, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool267.not = icmp eq i32 %print, 0
  br i1 %tobool267.not, label %sw.bb261.if.end280_crit_edge, label %do.body269

sw.bb261.if.end280_crit_edge:                     ; preds = %sw.bb261
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end280

do.body269:                                       ; preds = %sw.bb261
  %148 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool270.not = icmp eq i32 %148, 0
  br i1 %tobool270.not, label %do.body269.if.end280_crit_edge, label %do.end274

do.body269.if.end280_crit_edge:                   ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end280

do.end274:                                        ; preds = %do.body269
  call void @__sanitizer_cov_trace_pc() #14
  %call276 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, i32 noundef %conv265) #15
  br label %if.end280

if.end280:                                        ; preds = %do.end274, %do.body269.if.end280_crit_edge, %sw.bb261.if.end280_crit_edge
  %149 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %1, align 4
  %pll_read = getelementptr inbounds %struct.card_info, ptr %150, i32 0, i32 6
  %151 = ptrtoint ptr %pll_read to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pll_read, align 4
  %call283 = tail call i32 %152(ptr noundef %150, i32 noundef %conv265) #12
  br label %sw.epilog307

sw.bb284:                                         ; preds = %entry
  %bios286 = getelementptr inbounds %struct.atom_context, ptr %1, i32 0, i32 2
  %153 = ptrtoint ptr %bios286 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %bios286, align 4
  %155 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %ptr, align 4
  %arrayidx.i574 = getelementptr i8, ptr %154, i32 %156
  %157 = ptrtoint ptr %arrayidx.i574 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %arrayidx.i574, align 1
  %conv288 = zext i8 %158 to i32
  %inc289 = add i32 %156, 1
  store i32 %inc289, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool290.not = icmp eq i32 %print, 0
  br i1 %tobool290.not, label %sw.bb284.if.end303_crit_edge, label %do.body292

sw.bb284.if.end303_crit_edge:                     ; preds = %sw.bb284
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end303

do.body292:                                       ; preds = %sw.bb284
  %159 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool293.not = icmp eq i32 %159, 0
  br i1 %tobool293.not, label %do.body292.if.end303_crit_edge, label %do.end297

do.body292.if.end303_crit_edge:                   ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end303

do.end297:                                        ; preds = %do.body292
  call void @__sanitizer_cov_trace_pc() #14
  %call299 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, i32 noundef %conv288) #15
  br label %if.end303

if.end303:                                        ; preds = %do.end297, %do.body292.if.end303_crit_edge, %sw.bb284.if.end303_crit_edge
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %1, align 4
  %mc_read = getelementptr inbounds %struct.card_info, ptr %161, i32 0, i32 4
  %162 = ptrtoint ptr %mc_read to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mc_read, align 4
  %call306 = tail call i32 %163(ptr noundef %161, i32 noundef %conv288) #12
  br label %sw.epilog307

entry.unreachabledefault:                         ; preds = %entry
  unreachable

sw.epilog307:                                     ; preds = %if.end303, %if.end280, %do.end193, %do.body188.sw.epilog307_crit_edge, %if.end185.sw.epilog307_crit_edge, %if.end160, %sw.default121, %sw.bb118, %sw.bb116, %sw.bb115, %sw.bb111, %sw.bb108, %sw.bb106, %sw.bb104, %sw.bb101, %sw.bb99, %do.end72, %do.body67.sw.epilog307_crit_edge, %sw.bb58.sw.epilog307_crit_edge, %if.end51, %sw.bb15
  %val.1 = phi i32 [ %call306, %if.end303 ], [ %call283, %if.end280 ], [ %val.0, %do.end193 ], [ %val.0, %do.body188.sw.epilog307_crit_edge ], [ %val.0, %if.end185.sw.epilog307_crit_edge ], [ %or.i548, %if.end160 ], [ %67, %sw.default121 ], [ %conv120, %sw.bb118 ], [ %conv117, %sw.bb116 ], [ %59, %sw.bb115 ], [ %neg, %sw.bb111 ], [ %shl, %sw.bb108 ], [ %conv107, %sw.bb106 ], [ %conv105, %sw.bb104 ], [ %49, %sw.bb101 ], [ %47, %sw.bb99 ], [ %36, %do.end72 ], [ %36, %do.body67.sw.epilog307_crit_edge ], [ %36, %sw.bb58.sw.epilog307_crit_edge ], [ %call57, %if.end51 ], [ %call17, %sw.bb15 ]
  %tobool308.not = icmp eq ptr %saved, null
  br i1 %tobool308.not, label %sw.epilog307.if.end310_crit_edge, label %if.then309

sw.epilog307.if.end310_crit_edge:                 ; preds = %sw.epilog307
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end310

if.then309:                                       ; preds = %sw.epilog307
  call void @__sanitizer_cov_trace_pc() #14
  %164 = ptrtoint ptr %saved to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %val.1, ptr %saved, align 4
  br label %if.end310

if.end310:                                        ; preds = %if.then309, %sw.epilog307.if.end310_crit_edge
  %arrayidx311 = getelementptr [8 x i32], ptr @atom_arg_mask, i32 0, i32 %and3
  %165 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx311, align 4
  %and312 = and i32 %166, %val.1
  %arrayidx313 = getelementptr [8 x i32], ptr @atom_arg_shift, i32 0, i32 %and3
  %167 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx313, align 4
  %shr314 = lshr i32 %and312, %168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %print)
  %tobool315.not = icmp eq i32 %print, 0
  br i1 %tobool315.not, label %if.end310.cleanup_crit_edge, label %if.then316

if.end310.cleanup_crit_edge:                      ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then316:                                       ; preds = %if.end310
  %169 = zext i32 %and3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %169, ptr @__sancov_gen_cov_switch_values.642)
  switch i32 %and3, label %if.then316.unreachabledefault [
    i32 0, label %do.body318
    i32 1, label %do.body330
    i32 2, label %do.body342
    i32 3, label %do.body354
    i32 4, label %do.body366
    i32 5, label %do.body378
    i32 6, label %do.body390
    i32 7, label %do.body402
  ]

do.body318:                                       ; preds = %if.then316
  %170 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %tobool319.not = icmp eq i32 %170, 0
  br i1 %tobool319.not, label %do.body318.cleanup_crit_edge, label %do.end323

do.body318.cleanup_crit_edge:                     ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end323:                                        ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #14
  %call325 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, i32 noundef %shr314) #15
  br label %cleanup

do.body330:                                       ; preds = %if.then316
  %171 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool331.not = icmp eq i32 %171, 0
  br i1 %tobool331.not, label %do.body330.cleanup_crit_edge, label %do.end335

do.body330.cleanup_crit_edge:                     ; preds = %do.body330
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end335:                                        ; preds = %do.body330
  call void @__sanitizer_cov_trace_pc() #14
  %call337 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.218, i32 noundef %shr314) #15
  br label %cleanup

do.body342:                                       ; preds = %if.then316
  %172 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool343.not = icmp eq i32 %172, 0
  br i1 %tobool343.not, label %do.body342.cleanup_crit_edge, label %do.end347

do.body342.cleanup_crit_edge:                     ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end347:                                        ; preds = %do.body342
  call void @__sanitizer_cov_trace_pc() #14
  %call349 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, i32 noundef %shr314) #15
  br label %cleanup

do.body354:                                       ; preds = %if.then316
  %173 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool355.not = icmp eq i32 %173, 0
  br i1 %tobool355.not, label %do.body354.cleanup_crit_edge, label %do.end359

do.body354.cleanup_crit_edge:                     ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end359:                                        ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #14
  %call361 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, i32 noundef %shr314) #15
  br label %cleanup

do.body366:                                       ; preds = %if.then316
  %174 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool367.not = icmp eq i32 %174, 0
  br i1 %tobool367.not, label %do.body366.cleanup_crit_edge, label %do.end371

do.body366.cleanup_crit_edge:                     ; preds = %do.body366
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end371:                                        ; preds = %do.body366
  call void @__sanitizer_cov_trace_pc() #14
  %call373 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, i32 noundef %shr314) #15
  br label %cleanup

do.body378:                                       ; preds = %if.then316
  %175 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %175)
  %tobool379.not = icmp eq i32 %175, 0
  br i1 %tobool379.not, label %do.body378.cleanup_crit_edge, label %do.end383

do.body378.cleanup_crit_edge:                     ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end383:                                        ; preds = %do.body378
  call void @__sanitizer_cov_trace_pc() #14
  %call385 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, i32 noundef %shr314) #15
  br label %cleanup

do.body390:                                       ; preds = %if.then316
  %176 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool391.not = icmp eq i32 %176, 0
  br i1 %tobool391.not, label %do.body390.cleanup_crit_edge, label %do.end395

do.body390.cleanup_crit_edge:                     ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end395:                                        ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #14
  %call397 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, i32 noundef %shr314) #15
  br label %cleanup

do.body402:                                       ; preds = %if.then316
  %177 = load i32, ptr @amdgpu_atom_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %tobool403.not = icmp eq i32 %177, 0
  br i1 %tobool403.not, label %do.body402.cleanup_crit_edge, label %do.end407

do.body402.cleanup_crit_edge:                     ; preds = %do.body402
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end407:                                        ; preds = %do.body402
  call void @__sanitizer_cov_trace_pc() #14
  %call409 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, i32 noundef %shr314) #15
  br label %cleanup

if.then316.unreachabledefault:                    ; preds = %if.then316
  unreachable

cleanup:                                          ; preds = %do.end407, %do.body402.cleanup_crit_edge, %do.end395, %do.body390.cleanup_crit_edge, %do.end383, %do.body378.cleanup_crit_edge, %do.end371, %do.body366.cleanup_crit_edge, %do.end359, %do.body354.cleanup_crit_edge, %do.end347, %do.body342.cleanup_crit_edge, %do.end335, %do.body330.cleanup_crit_edge, %do.end323, %do.body318.cleanup_crit_edge, %if.end310.cleanup_crit_edge, %do.end253, %do.body248.cleanup_crit_edge, %sw.bb240.cleanup_crit_edge, %do.end233, %do.body228.cleanup_crit_edge, %sw.bb220.cleanup_crit_edge, %do.end213, %do.body208.cleanup_crit_edge, %sw.bb201.cleanup_crit_edge, %do.end46, %do.end36, %do.end27, %do.end21
  %retval.0 = phi i32 [ 0, %do.end46 ], [ 0, %do.end36 ], [ 0, %do.end27 ], [ 0, %do.end21 ], [ %or.i564, %do.body208.cleanup_crit_edge ], [ %or.i564, %do.end213 ], [ %or.i564, %sw.bb201.cleanup_crit_edge ], [ %or.i571, %do.body228.cleanup_crit_edge ], [ %or.i571, %do.end233 ], [ %or.i571, %sw.bb220.cleanup_crit_edge ], [ %conv244, %do.body248.cleanup_crit_edge ], [ %conv244, %do.end253 ], [ %conv244, %sw.bb240.cleanup_crit_edge ], [ %shr314, %do.end323 ], [ %shr314, %do.body318.cleanup_crit_edge ], [ %shr314, %do.end335 ], [ %shr314, %do.body330.cleanup_crit_edge ], [ %shr314, %do.end347 ], [ %shr314, %do.body342.cleanup_crit_edge ], [ %shr314, %do.end359 ], [ %shr314, %do.body354.cleanup_crit_edge ], [ %shr314, %do.end371 ], [ %shr314, %do.body366.cleanup_crit_edge ], [ %shr314, %do.end383 ], [ %shr314, %do.body378.cleanup_crit_edge ], [ %shr314, %do.end395 ], [ %shr314, %do.body390.cleanup_crit_edge ], [ %shr314, %do.end407 ], [ %shr314, %do.body402.cleanup_crit_edge ], [ %shr314, %if.end310.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atom_iio_execute(ptr noundef readonly %ctx, i32 noundef %base, i32 noundef %index, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %bios = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 2
  %io_attr = getelementptr inbounds %struct.atom_context, ptr %ctx, i32 0, i32 9
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %base.addr.0 = phi i32 [ %base, %entry ], [ %add138, %sw.epilog ]
  %temp.0 = phi i32 [ -842150451, %entry ], [ %temp.1, %sw.epilog ]
  %0 = ptrtoint ptr %bios to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bios, align 4
  %arrayidx.i = getelementptr i8, ptr %1, i32 %base.addr.0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.643)
  switch i8 %3, label %do.end [
    i8 0, label %while.cond.sw.epilog_crit_edge
    i8 2, label %sw.bb1
    i8 3, label %sw.bb8
    i8 4, label %sw.bb16
    i8 5, label %sw.bb26
    i8 6, label %sw.bb39
    i8 8, label %sw.bb72
    i8 7, label %sw.bb105
    i8 9, label %while.cond.cleanup_crit_edge
  ]

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond.sw.epilog_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb1:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  %reg_read = getelementptr inbounds %struct.card_info, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %reg_read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_read, align 4
  %add = add i32 %base.addr.0, 1
  %arrayidx.i.i = getelementptr i8, ptr %1, i32 %add
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i = zext i8 %10 to i32
  %add.i = add i32 %base.addr.0, 2
  %arrayidx.i7.i = getelementptr i8, ptr %1, i32 %add.i
  %11 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i7.i, align 1
  %conv3.i = zext i8 %12 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %call6 = tail call i32 %8(ptr noundef %6, i32 noundef %or.i) #12
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 4
  %reg_write = getelementptr inbounds %struct.card_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %reg_write to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_write, align 4
  %add12 = add i32 %base.addr.0, 1
  %arrayidx.i.i205 = getelementptr i8, ptr %1, i32 %add12
  %17 = ptrtoint ptr %arrayidx.i.i205 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i205, align 1
  %conv.i206 = zext i8 %18 to i32
  %add.i207 = add i32 %base.addr.0, 2
  %arrayidx.i7.i208 = getelementptr i8, ptr %1, i32 %add.i207
  %19 = ptrtoint ptr %arrayidx.i7.i208 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i7.i208, align 1
  %conv3.i209 = zext i8 %20 to i32
  %shl.i210 = shl nuw nsw i32 %conv3.i209, 8
  %or.i211 = or i32 %shl.i210, %conv.i206
  tail call void %16(ptr noundef %14, i32 noundef %or.i211, i32 noundef %temp.0) #12
  br label %sw.epilog

sw.bb16:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %add18 = add i32 %base.addr.0, 1
  %arrayidx.i212 = getelementptr i8, ptr %1, i32 %add18
  %21 = ptrtoint ptr %arrayidx.i212 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i212, align 1
  %conv20 = zext i8 %22 to i32
  %sub = sub nsw i32 32, %conv20
  %shr = lshr i32 -1, %sub
  %add22 = add i32 %base.addr.0, 2
  %arrayidx.i213 = getelementptr i8, ptr %1, i32 %add22
  %23 = ptrtoint ptr %arrayidx.i213 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i213, align 1
  %conv24 = zext i8 %24 to i32
  %shl = shl i32 %shr, %conv24
  %neg = xor i32 %shl, -1
  %and = and i32 %temp.0, %neg
  br label %sw.epilog

sw.bb26:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %add28 = add i32 %base.addr.0, 1
  %arrayidx.i214 = getelementptr i8, ptr %1, i32 %add28
  %25 = ptrtoint ptr %arrayidx.i214 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i214, align 1
  %conv30 = zext i8 %26 to i32
  %sub31 = sub nsw i32 32, %conv30
  %shr32 = lshr i32 -1, %sub31
  %add34 = add i32 %base.addr.0, 2
  %arrayidx.i215 = getelementptr i8, ptr %1, i32 %add34
  %27 = ptrtoint ptr %arrayidx.i215 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.i215, align 1
  %conv36 = zext i8 %28 to i32
  %shl37 = shl i32 %shr32, %conv36
  %or = or i32 %shl37, %temp.0
  br label %sw.epilog

sw.bb39:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %add41 = add i32 %base.addr.0, 1
  %arrayidx.i216 = getelementptr i8, ptr %1, i32 %add41
  %29 = ptrtoint ptr %arrayidx.i216 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i216, align 1
  %conv43 = zext i8 %30 to i32
  %sub44 = sub nsw i32 32, %conv43
  %shr45 = lshr i32 -1, %sub44
  %add47 = add i32 %base.addr.0, 3
  %arrayidx.i217 = getelementptr i8, ptr %1, i32 %add47
  %31 = ptrtoint ptr %arrayidx.i217 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i217, align 1
  %conv49 = zext i8 %32 to i32
  %shl50 = shl i32 %shr45, %conv49
  %neg51 = xor i32 %shl50, -1
  %and52 = and i32 %temp.0, %neg51
  %add54 = add i32 %base.addr.0, 2
  %arrayidx.i218 = getelementptr i8, ptr %1, i32 %add54
  %33 = ptrtoint ptr %arrayidx.i218 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i218, align 1
  %conv56 = zext i8 %34 to i32
  %shr57 = lshr i32 %index, %conv56
  %and64 = and i32 %shr57, %shr45
  %shl69 = shl i32 %and64, %conv49
  %or70 = or i32 %shl69, %and52
  br label %sw.epilog

sw.bb72:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %add74 = add i32 %base.addr.0, 1
  %arrayidx.i221 = getelementptr i8, ptr %1, i32 %add74
  %35 = ptrtoint ptr %arrayidx.i221 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i221, align 1
  %conv76 = zext i8 %36 to i32
  %sub77 = sub nsw i32 32, %conv76
  %shr78 = lshr i32 -1, %sub77
  %add80 = add i32 %base.addr.0, 3
  %arrayidx.i222 = getelementptr i8, ptr %1, i32 %add80
  %37 = ptrtoint ptr %arrayidx.i222 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i222, align 1
  %conv82 = zext i8 %38 to i32
  %shl83 = shl i32 %shr78, %conv82
  %neg84 = xor i32 %shl83, -1
  %and85 = and i32 %temp.0, %neg84
  %add87 = add i32 %base.addr.0, 2
  %arrayidx.i223 = getelementptr i8, ptr %1, i32 %add87
  %39 = ptrtoint ptr %arrayidx.i223 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i223, align 1
  %conv89 = zext i8 %40 to i32
  %shr90 = lshr i32 %data, %conv89
  %and97 = and i32 %shr90, %shr78
  %shl102 = shl i32 %and97, %conv82
  %or103 = or i32 %shl102, %and85
  br label %sw.epilog

sw.bb105:                                         ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %add107 = add i32 %base.addr.0, 1
  %arrayidx.i226 = getelementptr i8, ptr %1, i32 %add107
  %41 = ptrtoint ptr %arrayidx.i226 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i226, align 1
  %conv109 = zext i8 %42 to i32
  %sub110 = sub nsw i32 32, %conv109
  %shr111 = lshr i32 -1, %sub110
  %add113 = add i32 %base.addr.0, 3
  %arrayidx.i227 = getelementptr i8, ptr %1, i32 %add113
  %43 = ptrtoint ptr %arrayidx.i227 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i227, align 1
  %conv115 = zext i8 %44 to i32
  %shl116 = shl i32 %shr111, %conv115
  %neg117 = xor i32 %shl116, -1
  %and118 = and i32 %temp.0, %neg117
  %45 = ptrtoint ptr %io_attr to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %io_attr, align 4
  %conv119 = zext i16 %46 to i32
  %add121 = add i32 %base.addr.0, 2
  %arrayidx.i228 = getelementptr i8, ptr %1, i32 %add121
  %47 = ptrtoint ptr %arrayidx.i228 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i228, align 1
  %conv123 = zext i8 %48 to i32
  %shr124 = lshr i32 %conv119, %conv123
  %and131 = and i32 %shr124, %shr111
  %shl136 = shl i32 %and131, %conv115
  %or137 = or i32 %shl136, %and118
  br label %sw.epilog

do.end:                                           ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  %call140 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238) #15
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb105, %sw.bb72, %sw.bb39, %sw.bb26, %sw.bb16, %sw.bb8, %sw.bb1, %while.cond.sw.epilog_crit_edge
  %.sink = phi i32 [ 4, %sw.bb105 ], [ 4, %sw.bb72 ], [ 4, %sw.bb39 ], [ 3, %sw.bb26 ], [ 3, %sw.bb16 ], [ 3, %sw.bb8 ], [ 3, %sw.bb1 ], [ 1, %while.cond.sw.epilog_crit_edge ]
  %temp.1 = phi i32 [ %or137, %sw.bb105 ], [ %or103, %sw.bb72 ], [ %or70, %sw.bb39 ], [ %or, %sw.bb26 ], [ %and, %sw.bb16 ], [ %temp.0, %sw.bb8 ], [ %call6, %sw.bb1 ], [ %temp.0, %while.cond.sw.epilog_crit_edge ]
  %add138 = add i32 %base.addr.0, %.sink
  br label %while.cond

cleanup:                                          ; preds = %do.end, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %temp.0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 530)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 530)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !46, !48, !49, !50, !51, !52, !54, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !312, !313, !314, !315, !316, !318, !319, !320, !321, !322, !324, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !363, !364, !365, !367, !368, !369, !371, !372, !373, !375, !376, !377, !379, !380, !381, !383, !384, !385, !387, !388, !389, !391, !392, !393, !395, !396, !397, !399, !400, !401, !403, !404, !405, !407, !408, !409, !411, !412, !413, !415, !416, !417, !419, !420, !421, !422, !424, !426, !428, !430, !431, !432, !434, !435, !437, !438, !440, !441, !443, !444, !445, !447, !448, !449, !451, !452, !454, !456, !457, !459, !460, !462, !463, !465, !466, !467, !469, !470, !471, !473, !474, !475, !477, !478, !479, !481, !482, !483, !485, !486, !487, !489, !490, !491, !493, !494, !495, !497, !498, !499, !500, !501, !503, !504, !505, !506, !508, !509, !510, !511, !513, !514, !515, !516, !517, !519, !520, !521, !522, !524, !525, !526, !527, !529, !530, !531, !532, !533, !535, !536, !537, !538, !539, !541, !542, !543, !544, !546, !548, !549, !550, !551, !552, !554, !555, !556, !557, !559, !560, !561, !562, !564, !565, !566, !567, !568, !569, !571, !572, !573, !574, !575, !577, !578, !579, !580, !581, !583, !584, !585, !586, !588, !589, !590, !591, !592, !594, !595, !596, !597, !599, !600, !601, !602, !604, !605, !606, !607, !608, !610, !611, !612, !613, !615, !616, !617, !618, !620, !621, !622, !623, !624, !625, !627, !628, !629, !630, !631, !633, !635, !637, !639, !641, !643, !645, !646, !647, !648, !649, !650, !652, !653, !654, !655, !656, !657, !659, !660, !661, !662, !663, !665, !666, !667, !668, !670, !671, !672, !673, !674, !675, !676, !677, !678, !680, !681, !682, !683, !684, !685, !687, !688, !689, !690, !691, !693, !694, !695, !696, !697, !699, !700, !701, !703, !704, !705, !706, !707, !708, !709, !710, !712, !713, !714, !715, !716, !718, !720, !721, !722, !723, !724, !726, !727, !728, !729, !731, !732, !733, !734, !735, !737, !738, !739, !740, !741, !742, !744, !745, !746, !747, !748, !749, !751, !752, !753, !754, !755, !757, !759, !761, !763, !765, !767, !769, !771, !773, !775, !777, !779, !781, !783, !785, !787, !789, !791, !793, !795, !797, !799, !801, !803, !805, !807, !809, !811, !813, !815, !817, !819, !821, !823, !825, !827, !829, !831, !833, !835, !837, !839, !841, !843, !845, !847, !849, !851, !853, !855, !857, !859, !861, !863, !865, !867, !869, !871, !873, !875, !877, !879, !881, !883, !885, !887, !889, !891, !893, !895, !897, !899, !901, !903, !905, !907, !908, !909, !910, !912, !913, !914, !915, !916, !918, !919, !920, !921, !922, !924, !925, !926, !927, !928, !930, !931, !932, !933, !935, !936, !937, !938, !940, !941, !942, !943, !944, !945, !947, !948, !949, !950, !952, !953, !954, !956, !957, !958, !960, !961, !962, !963, !964, !965, !967, !968, !969, !970, !972, !973, !974, !975, !976, !978, !979, !980, !981, !983, !984, !985, !986, !988, !989, !990, !991, !992, !994, !995, !996, !997, !999, !1000, !1001, !1002, !1004, !1005, !1006, !1007, !1008, !1010, !1011, !1012, !1013, !1015, !1016, !1017, !1018, !1020, !1021, !1022, !1023, !1024, !1025, !1027, !1028, !1029, !1030, !1031, !1032, !1034, !1035, !1036, !1037, !1038, !1040, !1041, !1042, !1043, !1045, !1046, !1047, !1048, !1049, !1051, !1052, !1053, !1054, !1056, !1058, !1060}
!llvm.named.register.sp = !{!1062}
!llvm.module.flags = !{!1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070}
!llvm.ident = !{!1071}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1474, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @amdgpu_atom_parse._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @amdgpu_atom_parse._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1479, i32 33}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1481, i32 3}
!10 = !{ptr @amdgpu_atom_parse._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @amdgpu_atom_parse._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1488, i32 40}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1490, i32 3}
!16 = !{ptr @amdgpu_atom_parse._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @amdgpu_atom_parse._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1509, i32 3}
!20 = !{ptr @amdgpu_atom_parse._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @amdgpu_atom_parse._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @amdgpu_atom_debug, !23, !"amdgpu_atom_debug", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 70, i32 5}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1221, i32 2}
!26 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @amdgpu_atom_execute_table_locked._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @amdgpu_atom_execute_table_locked._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @amdgpu_atom_execute_table_locked._entry.16, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @amdgpu_atom_execute_table_locked._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @amdgpu_atom_execute_table_locked._entry.19, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1238, i32 4}
!34 = !{ptr @amdgpu_atom_execute_table_locked._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @amdgpu_atom_execute_table_locked._entry.21, !33, !"_entry", i1 false, i1 false}
!37 = !{ptr @amdgpu_atom_execute_table_locked._entry_ptr.23, !33, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @amdgpu_atom_execute_table_locked._entry.24, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1240, i32 4}
!40 = !{ptr @amdgpu_atom_execute_table_locked._entry_ptr.25, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.27, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @amdgpu_atom_execute_table_locked._entry.26, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @amdgpu_atom_execute_table_locked._entry_ptr.28, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1242, i32 4}
!46 = !{ptr @amdgpu_atom_execute_table_locked._entry.30, !47, !"_entry", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1258, i32 2}
!48 = !{ptr @amdgpu_atom_execute_table_locked._entry_ptr.31, !47, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.33, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @amdgpu_atom_execute_table_locked._entry.32, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @amdgpu_atom_execute_table_locked._entry_ptr.34, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.35, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 97, i32 3}
!54 = !{ptr @.str.36, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @debug_print_spaces._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @debug_print_spaces._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @debug_depth, !58, !"debug_depth", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 92, i32 12}
!59 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 34, i32 1}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 34, i32 13}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 34, i32 25}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 34, i32 36}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 34, i32 47}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 34, i32 58}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 35, i32 1}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 35, i32 12}
!75 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 35, i32 23}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 35, i32 33}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 35, i32 43}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 35, i32 53}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 35, i32 64}
!85 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 36, i32 1}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 36, i32 11}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 36, i32 20}
!91 = !{ptr @.str.53, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 36, i32 29}
!93 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 36, i32 38}
!95 = !{ptr @.str.55, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 36, i32 48}
!97 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 36, i32 57}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 37, i32 1}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 37, i32 18}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 37, i32 35}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 37, i32 52}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 38, i32 1}
!109 = !{ptr @.str.62, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 38, i32 18}
!111 = !{ptr @.str.63, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 38, i32 37}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 38, i32 55}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 39, i32 1}
!117 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 39, i32 19}
!119 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 39, i32 38}
!121 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 39, i32 56}
!123 = !{ptr @.str.69, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 40, i32 1}
!125 = !{ptr @.str.70, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 40, i32 11}
!127 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 40, i32 21}
!129 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 40, i32 31}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 40, i32 42}
!133 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 40, i32 52}
!135 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 40, i32 63}
!137 = !{ptr @.str.76, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 41, i32 1}
!139 = !{ptr @.str.77, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 41, i32 11}
!141 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 41, i32 21}
!143 = !{ptr @.str.79, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 41, i32 32}
!145 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 41, i32 42}
!147 = !{ptr @.str.81, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 41, i32 53}
!149 = !{ptr @.str.82, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 41, i32 63}
!151 = !{ptr @.str.83, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 42, i32 1}
!153 = !{ptr @.str.84, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 42, i32 11}
!155 = !{ptr @.str.85, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 42, i32 22}
!157 = !{ptr @.str.86, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 42, i32 32}
!159 = !{ptr @.str.87, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 42, i32 43}
!161 = !{ptr @.str.88, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 42, i32 53}
!163 = !{ptr @.str.89, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 42, i32 63}
!165 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 43, i32 1}
!167 = !{ptr @.str.91, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 43, i32 12}
!169 = !{ptr @.str.92, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 43, i32 22}
!171 = !{ptr @.str.93, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 43, i32 38}
!173 = !{ptr @.str.94, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 43, i32 54}
!175 = !{ptr @.str.95, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 44, i32 1}
!177 = !{ptr @.str.96, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 44, i32 18}
!179 = !{ptr @.str.97, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 44, i32 33}
!181 = !{ptr @.str.98, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 44, i32 48}
!183 = !{ptr @.str.99, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 45, i32 1}
!185 = !{ptr @.str.100, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 45, i32 15}
!187 = !{ptr @.str.101, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 45, i32 29}
!189 = !{ptr @.str.102, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 45, i32 44}
!191 = !{ptr @.str.103, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 45, i32 58}
!193 = !{ptr @.str.104, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 46, i32 1}
!195 = !{ptr @.str.105, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 46, i32 9}
!197 = !{ptr @.str.106, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 46, i32 23}
!199 = !{ptr @.str.107, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 46, i32 37}
!201 = !{ptr @.str.108, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 46, i32 51}
!203 = !{ptr @.str.109, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 47, i32 1}
!205 = !{ptr @.str.110, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 47, i32 24}
!207 = !{ptr @.str.111, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 47, i32 42}
!209 = !{ptr @.str.112, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 47, i32 54}
!211 = !{ptr @.str.113, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 47, i32 65}
!213 = !{ptr @.str.114, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 48, i32 1}
!215 = !{ptr @.str.115, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 48, i32 12}
!217 = !{ptr @.str.116, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 48, i32 24}
!219 = !{ptr @.str.117, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 48, i32 35}
!221 = !{ptr @.str.118, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 48, i32 53}
!223 = !{ptr @.str.119, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 49, i32 1}
!225 = !{ptr @.str.120, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 49, i32 15}
!227 = !{ptr @.str.121, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 49, i32 25}
!229 = !{ptr @.str.122, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 49, i32 38}
!231 = !{ptr @.str.123, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 49, i32 50}
!233 = !{ptr @.str.124, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 49, i32 62}
!235 = !{ptr @.str.125, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 50, i32 1}
!237 = !{ptr @.str.126, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 50, i32 14}
!239 = !{ptr @.str.127, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 50, i32 26}
!241 = !{ptr @.str.128, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 50, i32 33}
!243 = !{ptr @.str.129, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 50, i32 40}
!245 = !{ptr @.str.130, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 50, i32 52}
!247 = !{ptr @.str.131, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 50, i32 63}
!249 = !{ptr @.str.132, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 51, i32 1}
!251 = !{ptr @.str.133, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 51, i32 12}
!253 = !{ptr @.str.134, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 51, i32 24}
!255 = !{ptr @.str.135, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 51, i32 35}
!257 = !{ptr @.str.136, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 51, i32 48}
!259 = !{ptr @.str.137, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 51, i32 56}
!261 = !{ptr @.str.138, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 52, i32 1}
!263 = !{ptr @.str.139, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 52, i32 16}
!265 = !{ptr @.str.140, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 52, i32 34}
!267 = !{ptr @.str.141, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 52, i32 45}
!269 = !{ptr @.str.142, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 52, i32 55}
!271 = !{ptr @.str.143, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 52, i32 65}
!273 = !{ptr @.str.144, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 53, i32 1}
!275 = !{ptr @.str.145, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 53, i32 12}
!277 = !{ptr @.str.146, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 53, i32 22}
!279 = !{ptr @.str.147, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 53, i32 33}
!281 = !{ptr @.str.148, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 53, i32 43}
!283 = !{ptr @.str.149, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 53, i32 53}
!285 = !{ptr @.str.150, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 53, i32 63}
!287 = !{ptr @.str.151, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 54, i32 1}
!289 = !{ptr @.str.152, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 54, i32 11}
!291 = !{ptr @.str.153, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 54, i32 22}
!293 = !{ptr @.str.154, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 54, i32 32}
!295 = !{ptr @.str.155, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 54, i32 42}
!297 = !{ptr @.str.156, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 54, i32 52}
!299 = !{ptr @.str.157, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 54, i32 63}
!301 = !{ptr @.str.158, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 55, i32 1}
!303 = !{ptr @.str.159, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 55, i32 10}
!305 = !{ptr @atom_op_names, !306, !"atom_op_names", i1 false, i1 false}
!306 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 33, i32 14}
!307 = !{ptr @opcode_table, !308, !"opcode_table", i1 false, i1 false}
!308 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1074, i32 3}
!309 = !{ptr @.str.160, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 795, i32 2}
!311 = !{ptr @atom_op_move._entry, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @atom_op_move._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.162, !310, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @atom_op_move._entry.161, !310, !"_entry", i1 false, i1 false}
!315 = !{ptr @atom_op_move._entry_ptr.163, !310, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @atom_op_move._entry.164, !317, !"_entry", i1 false, i1 false}
!317 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 797, i32 2}
!318 = !{ptr @atom_op_move._entry_ptr.165, !317, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.167, !317, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @atom_op_move._entry.166, !317, !"_entry", i1 false, i1 false}
!321 = !{ptr @atom_op_move._entry_ptr.168, !317, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.169, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 191, i32 4}
!324 = !{ptr @.str.170, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @atom_get_src_int._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @atom_get_src_int._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.172, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 198, i32 4}
!329 = !{ptr @atom_get_src_int._entry.171, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @atom_get_src_int._entry_ptr.173, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.175, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 201, i32 4}
!333 = !{ptr @atom_get_src_int._entry.174, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @atom_get_src_int._entry_ptr.176, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.178, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 205, i32 5}
!337 = !{ptr @atom_get_src_int._entry.177, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @atom_get_src_int._entry_ptr.179, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.181, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 209, i32 5}
!341 = !{ptr @atom_get_src_int._entry.180, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @atom_get_src_int._entry_ptr.182, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.184, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 226, i32 4}
!345 = !{ptr @atom_get_src_int._entry.183, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @atom_get_src_int._entry_ptr.185, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.187, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 232, i32 4}
!349 = !{ptr @atom_get_src_int._entry.186, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @atom_get_src_int._entry_ptr.188, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.190, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 270, i32 5}
!353 = !{ptr @atom_get_src_int._entry.189, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @atom_get_src_int._entry_ptr.191, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.193, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 272, i32 5}
!357 = !{ptr @atom_get_src_int._entry.192, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @atom_get_src_int._entry_ptr.194, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.195, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 280, i32 4}
!361 = !{ptr @.str.197, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 286, i32 4}
!363 = !{ptr @atom_get_src_int._entry.196, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @atom_get_src_int._entry_ptr.198, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.200, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 294, i32 5}
!367 = !{ptr @atom_get_src_int._entry.199, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @atom_get_src_int._entry_ptr.201, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.203, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 302, i32 5}
!371 = !{ptr @atom_get_src_int._entry.202, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @atom_get_src_int._entry_ptr.204, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{ptr @.str.206, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 311, i32 5}
!375 = !{ptr @atom_get_src_int._entry.205, !374, !"_entry", i1 false, i1 false}
!376 = !{ptr @atom_get_src_int._entry_ptr.207, !374, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.209, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 319, i32 4}
!379 = !{ptr @atom_get_src_int._entry.208, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @atom_get_src_int._entry_ptr.210, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.212, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 326, i32 4}
!383 = !{ptr @atom_get_src_int._entry.211, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @atom_get_src_int._entry_ptr.213, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.215, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 337, i32 4}
!387 = !{ptr @atom_get_src_int._entry.214, !386, !"_entry", i1 false, i1 false}
!388 = !{ptr @atom_get_src_int._entry_ptr.216, !386, !"_entry_ptr", i1 false, i1 false}
!389 = !{ptr @.str.218, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 340, i32 4}
!391 = !{ptr @atom_get_src_int._entry.217, !390, !"_entry", i1 false, i1 false}
!392 = !{ptr @atom_get_src_int._entry_ptr.219, !390, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.221, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 343, i32 4}
!395 = !{ptr @atom_get_src_int._entry.220, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @atom_get_src_int._entry_ptr.222, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.224, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 346, i32 4}
!399 = !{ptr @atom_get_src_int._entry.223, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @atom_get_src_int._entry_ptr.225, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.227, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 349, i32 4}
!403 = !{ptr @atom_get_src_int._entry.226, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @atom_get_src_int._entry_ptr.228, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.230, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 352, i32 4}
!407 = !{ptr @atom_get_src_int._entry.229, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @atom_get_src_int._entry_ptr.231, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.233, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 355, i32 4}
!411 = !{ptr @atom_get_src_int._entry.232, !410, !"_entry", i1 false, i1 false}
!412 = !{ptr @atom_get_src_int._entry_ptr.234, !410, !"_entry_ptr", i1 false, i1 false}
!413 = !{ptr @.str.236, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 358, i32 4}
!415 = !{ptr @atom_get_src_int._entry.235, !414, !"_entry", i1 false, i1 false}
!416 = !{ptr @atom_get_src_int._entry_ptr.237, !414, !"_entry_ptr", i1 false, i1 false}
!417 = !{ptr @.str.238, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 174, i32 4}
!419 = !{ptr @.str.239, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @atom_iio_execute._entry, !418, !"_entry", i1 false, i1 false}
!421 = !{ptr @atom_iio_execute._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @atom_arg_mask, !423, !"atom_arg_mask", i1 false, i1 false}
!423 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 74, i32 17}
!424 = !{ptr @atom_arg_shift, !425, !"atom_arg_shift", i1 false, i1 false}
!425 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 77, i32 12}
!426 = !{ptr @atom_dst_to_src, !427, !"atom_dst_to_src", i1 false, i1 false}
!427 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 79, i32 12}
!428 = !{ptr @.str.240, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 463, i32 3}
!430 = !{ptr @atom_put_dst._entry, !429, !"_entry", i1 false, i1 false}
!431 = !{ptr @atom_put_dst._entry_ptr, !429, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @atom_put_dst._entry.241, !433, !"_entry", i1 false, i1 false}
!433 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 474, i32 4}
!434 = !{ptr @atom_put_dst._entry_ptr.242, !433, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @atom_put_dst._entry.243, !436, !"_entry", i1 false, i1 false}
!436 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 477, i32 4}
!437 = !{ptr @atom_put_dst._entry_ptr.244, !436, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @atom_put_dst._entry.245, !439, !"_entry", i1 false, i1 false}
!439 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 481, i32 5}
!440 = !{ptr @atom_put_dst._entry_ptr.246, !439, !"_entry_ptr", i1 false, i1 false}
!441 = !{ptr @.str.248, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 485, i32 5}
!443 = !{ptr @atom_put_dst._entry.247, !442, !"_entry", i1 false, i1 false}
!444 = !{ptr @atom_put_dst._entry_ptr.249, !442, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.251, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 496, i32 3}
!447 = !{ptr @atom_put_dst._entry.250, !446, !"_entry", i1 false, i1 false}
!448 = !{ptr @atom_put_dst._entry_ptr.252, !446, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @atom_put_dst._entry.253, !450, !"_entry", i1 false, i1 false}
!450 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 502, i32 3}
!451 = !{ptr @atom_put_dst._entry_ptr.254, !450, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.255, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 536, i32 4}
!454 = !{ptr @atom_put_dst._entry.256, !455, !"_entry", i1 false, i1 false}
!455 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 540, i32 3}
!456 = !{ptr @atom_put_dst._entry_ptr.257, !455, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @atom_put_dst._entry.258, !458, !"_entry", i1 false, i1 false}
!458 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 545, i32 3}
!459 = !{ptr @atom_put_dst._entry_ptr.259, !458, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @atom_put_dst._entry.260, !461, !"_entry", i1 false, i1 false}
!461 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 551, i32 3}
!462 = !{ptr @atom_put_dst._entry_ptr.261, !461, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.263, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 557, i32 3}
!465 = !{ptr @atom_put_dst._entry.262, !464, !"_entry", i1 false, i1 false}
!466 = !{ptr @atom_put_dst._entry_ptr.264, !464, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.266, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 560, i32 3}
!469 = !{ptr @atom_put_dst._entry.265, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @atom_put_dst._entry_ptr.267, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @.str.269, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 563, i32 3}
!473 = !{ptr @atom_put_dst._entry.268, !472, !"_entry", i1 false, i1 false}
!474 = !{ptr @atom_put_dst._entry_ptr.270, !472, !"_entry_ptr", i1 false, i1 false}
!475 = !{ptr @.str.272, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 566, i32 3}
!477 = !{ptr @atom_put_dst._entry.271, !476, !"_entry", i1 false, i1 false}
!478 = !{ptr @atom_put_dst._entry_ptr.273, !476, !"_entry_ptr", i1 false, i1 false}
!479 = !{ptr @.str.275, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 569, i32 3}
!481 = !{ptr @atom_put_dst._entry.274, !480, !"_entry", i1 false, i1 false}
!482 = !{ptr @atom_put_dst._entry_ptr.276, !480, !"_entry_ptr", i1 false, i1 false}
!483 = !{ptr @.str.278, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 572, i32 3}
!485 = !{ptr @atom_put_dst._entry.277, !484, !"_entry", i1 false, i1 false}
!486 = !{ptr @atom_put_dst._entry_ptr.279, !484, !"_entry_ptr", i1 false, i1 false}
!487 = !{ptr @.str.281, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 575, i32 3}
!489 = !{ptr @atom_put_dst._entry.280, !488, !"_entry", i1 false, i1 false}
!490 = !{ptr @atom_put_dst._entry_ptr.282, !488, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.284, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 578, i32 3}
!493 = !{ptr @atom_put_dst._entry.283, !492, !"_entry", i1 false, i1 false}
!494 = !{ptr @atom_put_dst._entry_ptr.285, !492, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.286, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 602, i32 2}
!497 = !{ptr @atom_op_and._entry, !496, !"_entry", i1 false, i1 false}
!498 = !{ptr @atom_op_and._entry_ptr, !496, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @atom_op_and._entry.287, !496, !"_entry", i1 false, i1 false}
!500 = !{ptr @atom_op_and._entry_ptr.288, !496, !"_entry_ptr", i1 false, i1 false}
!501 = !{ptr @atom_op_and._entry.289, !502, !"_entry", i1 false, i1 false}
!502 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 604, i32 2}
!503 = !{ptr @atom_op_and._entry_ptr.290, !502, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @atom_op_and._entry.291, !502, !"_entry", i1 false, i1 false}
!505 = !{ptr @atom_op_and._entry_ptr.292, !502, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @atom_op_and._entry.293, !507, !"_entry", i1 false, i1 false}
!507 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 607, i32 2}
!508 = !{ptr @atom_op_and._entry_ptr.294, !507, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @atom_op_and._entry.295, !507, !"_entry", i1 false, i1 false}
!510 = !{ptr @atom_op_and._entry_ptr.296, !507, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.297, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 836, i32 2}
!513 = !{ptr @atom_op_or._entry, !512, !"_entry", i1 false, i1 false}
!514 = !{ptr @atom_op_or._entry_ptr, !512, !"_entry_ptr", i1 false, i1 false}
!515 = !{ptr @atom_op_or._entry.298, !512, !"_entry", i1 false, i1 false}
!516 = !{ptr @atom_op_or._entry_ptr.299, !512, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @atom_op_or._entry.300, !518, !"_entry", i1 false, i1 false}
!518 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 838, i32 2}
!519 = !{ptr @atom_op_or._entry_ptr.301, !518, !"_entry_ptr", i1 false, i1 false}
!520 = !{ptr @atom_op_or._entry.302, !518, !"_entry", i1 false, i1 false}
!521 = !{ptr @atom_op_or._entry_ptr.303, !518, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @atom_op_or._entry.304, !523, !"_entry", i1 false, i1 false}
!523 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 841, i32 2}
!524 = !{ptr @atom_op_or._entry_ptr.305, !523, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @atom_op_or._entry.306, !523, !"_entry", i1 false, i1 false}
!526 = !{ptr @atom_op_or._entry_ptr.307, !523, !"_entry_ptr", i1 false, i1 false}
!527 = !{ptr @.str.308, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 928, i32 2}
!529 = !{ptr @atom_op_shift_left._entry, !528, !"_entry", i1 false, i1 false}
!530 = !{ptr @atom_op_shift_left._entry_ptr, !528, !"_entry_ptr", i1 false, i1 false}
!531 = !{ptr @atom_op_shift_left._entry.309, !528, !"_entry", i1 false, i1 false}
!532 = !{ptr @atom_op_shift_left._entry_ptr.310, !528, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @atom_op_shift_left._entry.311, !534, !"_entry", i1 false, i1 false}
!534 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 931, i32 2}
!535 = !{ptr @atom_op_shift_left._entry_ptr.312, !534, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.314, !534, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @atom_op_shift_left._entry.313, !534, !"_entry", i1 false, i1 false}
!538 = !{ptr @atom_op_shift_left._entry_ptr.315, !534, !"_entry_ptr", i1 false, i1 false}
!539 = !{ptr @atom_op_shift_left._entry.316, !540, !"_entry", i1 false, i1 false}
!540 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 933, i32 2}
!541 = !{ptr @atom_op_shift_left._entry_ptr.317, !540, !"_entry_ptr", i1 false, i1 false}
!542 = !{ptr @atom_op_shift_left._entry.318, !540, !"_entry", i1 false, i1 false}
!543 = !{ptr @atom_op_shift_left._entry_ptr.319, !540, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @atom_def_dst, !545, !"atom_def_dst", i1 false, i1 false}
!545 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 90, i32 12}
!546 = !{ptr @.str.320, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 944, i32 2}
!548 = !{ptr @atom_op_shift_right._entry, !547, !"_entry", i1 false, i1 false}
!549 = !{ptr @atom_op_shift_right._entry_ptr, !547, !"_entry_ptr", i1 false, i1 false}
!550 = !{ptr @atom_op_shift_right._entry.321, !547, !"_entry", i1 false, i1 false}
!551 = !{ptr @atom_op_shift_right._entry_ptr.322, !547, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @atom_op_shift_right._entry.323, !553, !"_entry", i1 false, i1 false}
!553 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 947, i32 2}
!554 = !{ptr @atom_op_shift_right._entry_ptr.324, !553, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @atom_op_shift_right._entry.325, !553, !"_entry", i1 false, i1 false}
!556 = !{ptr @atom_op_shift_right._entry_ptr.326, !553, !"_entry_ptr", i1 false, i1 false}
!557 = !{ptr @atom_op_shift_right._entry.327, !558, !"_entry", i1 false, i1 false}
!558 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 949, i32 2}
!559 = !{ptr @atom_op_shift_right._entry_ptr.328, !558, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @atom_op_shift_right._entry.329, !558, !"_entry", i1 false, i1 false}
!561 = !{ptr @atom_op_shift_right._entry_ptr.330, !558, !"_entry_ptr", i1 false, i1 false}
!562 = !{ptr @.str.331, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 805, i32 2}
!564 = !{ptr @atom_op_mul._entry, !563, !"_entry", i1 false, i1 false}
!565 = !{ptr @atom_op_mul._entry_ptr, !563, !"_entry_ptr", i1 false, i1 false}
!566 = !{ptr @.str.333, !563, !"<string literal>", i1 false, i1 false}
!567 = !{ptr @atom_op_mul._entry.332, !563, !"_entry", i1 false, i1 false}
!568 = !{ptr @atom_op_mul._entry_ptr.334, !563, !"_entry_ptr", i1 false, i1 false}
!569 = !{ptr @atom_op_mul._entry.335, !570, !"_entry", i1 false, i1 false}
!570 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 807, i32 2}
!571 = !{ptr @atom_op_mul._entry_ptr.336, !570, !"_entry_ptr", i1 false, i1 false}
!572 = !{ptr @.str.338, !570, !"<string literal>", i1 false, i1 false}
!573 = !{ptr @atom_op_mul._entry.337, !570, !"_entry", i1 false, i1 false}
!574 = !{ptr @atom_op_mul._entry_ptr.339, !570, !"_entry_ptr", i1 false, i1 false}
!575 = !{ptr @.str.340, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 674, i32 2}
!577 = !{ptr @atom_op_div._entry, !576, !"_entry", i1 false, i1 false}
!578 = !{ptr @atom_op_div._entry_ptr, !576, !"_entry_ptr", i1 false, i1 false}
!579 = !{ptr @atom_op_div._entry.341, !576, !"_entry", i1 false, i1 false}
!580 = !{ptr @atom_op_div._entry_ptr.342, !576, !"_entry_ptr", i1 false, i1 false}
!581 = !{ptr @atom_op_div._entry.343, !582, !"_entry", i1 false, i1 false}
!582 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 676, i32 2}
!583 = !{ptr @atom_op_div._entry_ptr.344, !582, !"_entry_ptr", i1 false, i1 false}
!584 = !{ptr @atom_op_div._entry.345, !582, !"_entry", i1 false, i1 false}
!585 = !{ptr @atom_op_div._entry_ptr.346, !582, !"_entry_ptr", i1 false, i1 false}
!586 = !{ptr @.str.347, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 588, i32 2}
!588 = !{ptr @atom_op_add._entry, !587, !"_entry", i1 false, i1 false}
!589 = !{ptr @atom_op_add._entry_ptr, !587, !"_entry_ptr", i1 false, i1 false}
!590 = !{ptr @atom_op_add._entry.348, !587, !"_entry", i1 false, i1 false}
!591 = !{ptr @atom_op_add._entry_ptr.349, !587, !"_entry_ptr", i1 false, i1 false}
!592 = !{ptr @atom_op_add._entry.350, !593, !"_entry", i1 false, i1 false}
!593 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 590, i32 2}
!594 = !{ptr @atom_op_add._entry_ptr.351, !593, !"_entry_ptr", i1 false, i1 false}
!595 = !{ptr @atom_op_add._entry.352, !593, !"_entry", i1 false, i1 false}
!596 = !{ptr @atom_op_add._entry_ptr.353, !593, !"_entry_ptr", i1 false, i1 false}
!597 = !{ptr @atom_op_add._entry.354, !598, !"_entry", i1 false, i1 false}
!598 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 593, i32 2}
!599 = !{ptr @atom_op_add._entry_ptr.355, !598, !"_entry_ptr", i1 false, i1 false}
!600 = !{ptr @atom_op_add._entry.356, !598, !"_entry", i1 false, i1 false}
!601 = !{ptr @atom_op_add._entry_ptr.357, !598, !"_entry_ptr", i1 false, i1 false}
!602 = !{ptr @.str.358, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 996, i32 2}
!604 = !{ptr @atom_op_sub._entry, !603, !"_entry", i1 false, i1 false}
!605 = !{ptr @atom_op_sub._entry_ptr, !603, !"_entry_ptr", i1 false, i1 false}
!606 = !{ptr @atom_op_sub._entry.359, !603, !"_entry", i1 false, i1 false}
!607 = !{ptr @atom_op_sub._entry_ptr.360, !603, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @atom_op_sub._entry.361, !609, !"_entry", i1 false, i1 false}
!609 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 998, i32 2}
!610 = !{ptr @atom_op_sub._entry_ptr.362, !609, !"_entry_ptr", i1 false, i1 false}
!611 = !{ptr @atom_op_sub._entry.363, !609, !"_entry", i1 false, i1 false}
!612 = !{ptr @atom_op_sub._entry_ptr.364, !609, !"_entry_ptr", i1 false, i1 false}
!613 = !{ptr @atom_op_sub._entry.365, !614, !"_entry", i1 false, i1 false}
!614 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1001, i32 2}
!615 = !{ptr @atom_op_sub._entry_ptr.366, !614, !"_entry_ptr", i1 false, i1 false}
!616 = !{ptr @atom_op_sub._entry.367, !614, !"_entry", i1 false, i1 false}
!617 = !{ptr @atom_op_sub._entry_ptr.368, !614, !"_entry_ptr", i1 false, i1 false}
!618 = !{ptr @.str.369, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 894, i32 4}
!620 = !{ptr @atom_op_setport._entry, !619, !"_entry", i1 false, i1 false}
!621 = !{ptr @atom_op_setport._entry_ptr, !619, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @.str.371, !619, !"<string literal>", i1 false, i1 false}
!623 = !{ptr @atom_op_setport._entry.370, !619, !"_entry", i1 false, i1 false}
!624 = !{ptr @atom_op_setport._entry_ptr.372, !619, !"_entry_ptr", i1 false, i1 false}
!625 = !{ptr @atom_op_setport._entry.373, !626, !"_entry", i1 false, i1 false}
!626 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 896, i32 4}
!627 = !{ptr @atom_op_setport._entry_ptr.374, !626, !"_entry_ptr", i1 false, i1 false}
!628 = !{ptr @.str.376, !626, !"<string literal>", i1 false, i1 false}
!629 = !{ptr @atom_op_setport._entry.375, !626, !"_entry", i1 false, i1 false}
!630 = !{ptr @atom_op_setport._entry_ptr.377, !626, !"_entry_ptr", i1 false, i1 false}
!631 = !{ptr @.str.378, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 89, i32 1}
!633 = !{ptr @.str.379, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 89, i32 7}
!635 = !{ptr @.str.380, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 89, i32 14}
!637 = !{ptr @.str.381, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 89, i32 20}
!639 = !{ptr @.str.382, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 89, i32 28}
!641 = !{ptr @atom_io_names, !642, !"atom_io_names", i1 false, i1 false}
!642 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 88, i32 14}
!643 = !{ptr @.str.383, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 918, i32 2}
!645 = !{ptr @atom_op_setregblock._entry, !644, !"_entry", i1 false, i1 false}
!646 = !{ptr @atom_op_setregblock._entry_ptr, !644, !"_entry_ptr", i1 false, i1 false}
!647 = !{ptr @.str.385, !644, !"<string literal>", i1 false, i1 false}
!648 = !{ptr @atom_op_setregblock._entry.384, !644, !"_entry", i1 false, i1 false}
!649 = !{ptr @atom_op_setregblock._entry_ptr.386, !644, !"_entry_ptr", i1 false, i1 false}
!650 = !{ptr @.str.387, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 883, i32 2}
!652 = !{ptr @atom_op_setfbbase._entry, !651, !"_entry", i1 false, i1 false}
!653 = !{ptr @atom_op_setfbbase._entry_ptr, !651, !"_entry_ptr", i1 false, i1 false}
!654 = !{ptr @.str.389, !651, !"<string literal>", i1 false, i1 false}
!655 = !{ptr @atom_op_setfbbase._entry.388, !651, !"_entry", i1 false, i1 false}
!656 = !{ptr @atom_op_setfbbase._entry_ptr.390, !651, !"_entry_ptr", i1 false, i1 false}
!657 = !{ptr @.str.391, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 648, i32 2}
!659 = !{ptr @atom_op_compare._entry, !658, !"_entry", i1 false, i1 false}
!660 = !{ptr @atom_op_compare._entry_ptr, !658, !"_entry_ptr", i1 false, i1 false}
!661 = !{ptr @atom_op_compare._entry.392, !658, !"_entry", i1 false, i1 false}
!662 = !{ptr @atom_op_compare._entry_ptr.393, !658, !"_entry_ptr", i1 false, i1 false}
!663 = !{ptr @atom_op_compare._entry.394, !664, !"_entry", i1 false, i1 false}
!664 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 650, i32 2}
!665 = !{ptr @atom_op_compare._entry_ptr.395, !664, !"_entry_ptr", i1 false, i1 false}
!666 = !{ptr @atom_op_compare._entry.396, !664, !"_entry", i1 false, i1 false}
!667 = !{ptr @atom_op_compare._entry_ptr.397, !664, !"_entry_ptr", i1 false, i1 false}
!668 = !{ptr @atom_op_compare._entry.398, !669, !"_entry", i1 false, i1 false}
!669 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 654, i32 2}
!670 = !{ptr @atom_op_compare._entry_ptr.399, !669, !"_entry_ptr", i1 false, i1 false}
!671 = !{ptr @.str.401, !669, !"<string literal>", i1 false, i1 false}
!672 = !{ptr @atom_op_compare._entry.400, !669, !"_entry", i1 false, i1 false}
!673 = !{ptr @atom_op_compare._entry_ptr.402, !669, !"_entry_ptr", i1 false, i1 false}
!674 = !{ptr @.str.403, !669, !"<string literal>", i1 false, i1 false}
!675 = !{ptr @.str.404, !669, !"<string literal>", i1 false, i1 false}
!676 = !{ptr @.str.405, !669, !"<string literal>", i1 false, i1 false}
!677 = !{ptr @.str.406, !669, !"<string literal>", i1 false, i1 false}
!678 = !{ptr @.str.407, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1009, i32 2}
!680 = !{ptr @atom_op_switch._entry, !679, !"_entry", i1 false, i1 false}
!681 = !{ptr @atom_op_switch._entry_ptr, !679, !"_entry_ptr", i1 false, i1 false}
!682 = !{ptr @.str.409, !679, !"<string literal>", i1 false, i1 false}
!683 = !{ptr @atom_op_switch._entry.408, !679, !"_entry", i1 false, i1 false}
!684 = !{ptr @atom_op_switch._entry_ptr.410, !679, !"_entry_ptr", i1 false, i1 false}
!685 = !{ptr @atom_op_switch._entry.411, !686, !"_entry", i1 false, i1 false}
!686 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1014, i32 4}
!687 = !{ptr @atom_op_switch._entry_ptr.412, !686, !"_entry_ptr", i1 false, i1 false}
!688 = !{ptr @.str.414, !686, !"<string literal>", i1 false, i1 false}
!689 = !{ptr @atom_op_switch._entry.413, !686, !"_entry", i1 false, i1 false}
!690 = !{ptr @atom_op_switch._entry_ptr.415, !686, !"_entry_ptr", i1 false, i1 false}
!691 = !{ptr @atom_op_switch._entry.416, !692, !"_entry", i1 false, i1 false}
!692 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1020, i32 5}
!693 = !{ptr @atom_op_switch._entry_ptr.417, !692, !"_entry_ptr", i1 false, i1 false}
!694 = !{ptr @.str.419, !692, !"<string literal>", i1 false, i1 false}
!695 = !{ptr @atom_op_switch._entry.418, !692, !"_entry", i1 false, i1 false}
!696 = !{ptr @atom_op_switch._entry_ptr.420, !692, !"_entry_ptr", i1 false, i1 false}
!697 = !{ptr @.str.422, !698, !"<string literal>", i1 false, i1 false}
!698 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1026, i32 4}
!699 = !{ptr @atom_op_switch._entry.421, !698, !"_entry", i1 false, i1 false}
!700 = !{ptr @atom_op_switch._entry_ptr.423, !698, !"_entry_ptr", i1 false, i1 false}
!701 = !{ptr @.str.424, !702, !"<string literal>", i1 false, i1 false}
!702 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 743, i32 3}
!703 = !{ptr @atom_op_jump._entry, !702, !"_entry", i1 false, i1 false}
!704 = !{ptr @atom_op_jump._entry_ptr, !702, !"_entry_ptr", i1 false, i1 false}
!705 = !{ptr @.str.426, !702, !"<string literal>", i1 false, i1 false}
!706 = !{ptr @atom_op_jump._entry.425, !702, !"_entry", i1 false, i1 false}
!707 = !{ptr @atom_op_jump._entry_ptr.427, !702, !"_entry_ptr", i1 false, i1 false}
!708 = !{ptr @.str.428, !702, !"<string literal>", i1 false, i1 false}
!709 = !{ptr @.str.429, !702, !"<string literal>", i1 false, i1 false}
!710 = !{ptr @atom_op_jump._entry.430, !711, !"_entry", i1 false, i1 false}
!711 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 744, i32 2}
!712 = !{ptr @atom_op_jump._entry_ptr.431, !711, !"_entry_ptr", i1 false, i1 false}
!713 = !{ptr @.str.433, !711, !"<string literal>", i1 false, i1 false}
!714 = !{ptr @atom_op_jump._entry.432, !711, !"_entry", i1 false, i1 false}
!715 = !{ptr @atom_op_jump._entry_ptr.434, !711, !"_entry_ptr", i1 false, i1 false}
!716 = !{ptr @.str.435, !717, !"<string literal>", i1 false, i1 false}
!717 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 751, i32 6}
!718 = !{ptr @.str.436, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1036, i32 2}
!720 = !{ptr @atom_op_test._entry, !719, !"_entry", i1 false, i1 false}
!721 = !{ptr @atom_op_test._entry_ptr, !719, !"_entry_ptr", i1 false, i1 false}
!722 = !{ptr @atom_op_test._entry.437, !719, !"_entry", i1 false, i1 false}
!723 = !{ptr @atom_op_test._entry_ptr.438, !719, !"_entry_ptr", i1 false, i1 false}
!724 = !{ptr @atom_op_test._entry.439, !725, !"_entry", i1 false, i1 false}
!725 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1038, i32 2}
!726 = !{ptr @atom_op_test._entry_ptr.440, !725, !"_entry_ptr", i1 false, i1 false}
!727 = !{ptr @atom_op_test._entry.441, !725, !"_entry", i1 false, i1 false}
!728 = !{ptr @atom_op_test._entry_ptr.442, !725, !"_entry_ptr", i1 false, i1 false}
!729 = !{ptr @atom_op_test._entry.443, !730, !"_entry", i1 false, i1 false}
!730 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1041, i32 2}
!731 = !{ptr @atom_op_test._entry_ptr.444, !730, !"_entry_ptr", i1 false, i1 false}
!732 = !{ptr @.str.446, !730, !"<string literal>", i1 false, i1 false}
!733 = !{ptr @atom_op_test._entry.445, !730, !"_entry", i1 false, i1 false}
!734 = !{ptr @atom_op_test._entry_ptr.447, !730, !"_entry_ptr", i1 false, i1 false}
!735 = !{ptr @.str.448, !736, !"<string literal>", i1 false, i1 false}
!736 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 661, i32 2}
!737 = !{ptr @atom_op_delay._entry, !736, !"_entry", i1 false, i1 false}
!738 = !{ptr @atom_op_delay._entry_ptr, !736, !"_entry_ptr", i1 false, i1 false}
!739 = !{ptr @.str.450, !736, !"<string literal>", i1 false, i1 false}
!740 = !{ptr @atom_op_delay._entry.449, !736, !"_entry", i1 false, i1 false}
!741 = !{ptr @atom_op_delay._entry_ptr.451, !736, !"_entry_ptr", i1 false, i1 false}
!742 = !{ptr @.str.452, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 622, i32 3}
!744 = !{ptr @atom_op_calltable._entry, !743, !"_entry", i1 false, i1 false}
!745 = !{ptr @atom_op_calltable._entry_ptr, !743, !"_entry_ptr", i1 false, i1 false}
!746 = !{ptr @.str.454, !743, !"<string literal>", i1 false, i1 false}
!747 = !{ptr @atom_op_calltable._entry.453, !743, !"_entry", i1 false, i1 false}
!748 = !{ptr @atom_op_calltable._entry_ptr.455, !743, !"_entry_ptr", i1 false, i1 false}
!749 = !{ptr @atom_op_calltable._entry.456, !750, !"_entry", i1 false, i1 false}
!750 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 624, i32 3}
!751 = !{ptr @atom_op_calltable._entry_ptr.457, !750, !"_entry_ptr", i1 false, i1 false}
!752 = !{ptr @.str.459, !750, !"<string literal>", i1 false, i1 false}
!753 = !{ptr @atom_op_calltable._entry.458, !750, !"_entry", i1 false, i1 false}
!754 = !{ptr @atom_op_calltable._entry_ptr.460, !750, !"_entry_ptr", i1 false, i1 false}
!755 = !{ptr @.str.461, !756, !"<string literal>", i1 false, i1 false}
!756 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 60, i32 1}
!757 = !{ptr @.str.462, !758, !"<string literal>", i1 false, i1 false}
!758 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 60, i32 14}
!759 = !{ptr @.str.463, !760, !"<string literal>", i1 false, i1 false}
!760 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 60, i32 39}
!761 = !{ptr @.str.464, !762, !"<string literal>", i1 false, i1 false}
!762 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 61, i32 1}
!763 = !{ptr @.str.465, !764, !"<string literal>", i1 false, i1 false}
!764 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 61, i32 30}
!765 = !{ptr @.str.466, !766, !"<string literal>", i1 false, i1 false}
!766 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 61, i32 48}
!767 = !{ptr @.str.467, !768, !"<string literal>", i1 false, i1 false}
!768 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 62, i32 1}
!769 = !{ptr @.str.468, !770, !"<string literal>", i1 false, i1 false}
!770 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 62, i32 17}
!771 = !{ptr @.str.469, !772, !"<string literal>", i1 false, i1 false}
!772 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 62, i32 38}
!773 = !{ptr @.str.470, !774, !"<string literal>", i1 false, i1 false}
!774 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 63, i32 1}
!775 = !{ptr @.str.471, !776, !"<string literal>", i1 false, i1 false}
!776 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 63, i32 19}
!777 = !{ptr @.str.472, !778, !"<string literal>", i1 false, i1 false}
!778 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 63, i32 37}
!779 = !{ptr @.str.473, !780, !"<string literal>", i1 false, i1 false}
!780 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 63, i32 55}
!781 = !{ptr @.str.474, !782, !"<string literal>", i1 false, i1 false}
!782 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 64, i32 1}
!783 = !{ptr @.str.475, !784, !"<string literal>", i1 false, i1 false}
!784 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 64, i32 23}
!785 = !{ptr @.str.476, !786, !"<string literal>", i1 false, i1 false}
!786 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 64, i32 41}
!787 = !{ptr @.str.477, !788, !"<string literal>", i1 false, i1 false}
!788 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 65, i32 1}
!789 = !{ptr @.str.478, !790, !"<string literal>", i1 false, i1 false}
!790 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 65, i32 18}
!791 = !{ptr @.str.479, !792, !"<string literal>", i1 false, i1 false}
!792 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 65, i32 45}
!793 = !{ptr @.str.480, !794, !"<string literal>", i1 false, i1 false}
!794 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 66, i32 1}
!795 = !{ptr @.str.481, !796, !"<string literal>", i1 false, i1 false}
!796 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 66, i32 28}
!797 = !{ptr @.str.482, !798, !"<string literal>", i1 false, i1 false}
!798 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 67, i32 1}
!799 = !{ptr @.str.483, !800, !"<string literal>", i1 false, i1 false}
!800 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 67, i32 22}
!801 = !{ptr @.str.484, !802, !"<string literal>", i1 false, i1 false}
!802 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 67, i32 45}
!803 = !{ptr @.str.485, !804, !"<string literal>", i1 false, i1 false}
!804 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 68, i32 1}
!805 = !{ptr @.str.486, !806, !"<string literal>", i1 false, i1 false}
!806 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 68, i32 23}
!807 = !{ptr @.str.487, !808, !"<string literal>", i1 false, i1 false}
!808 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 68, i32 45}
!809 = !{ptr @.str.488, !810, !"<string literal>", i1 false, i1 false}
!810 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 69, i32 1}
!811 = !{ptr @.str.489, !812, !"<string literal>", i1 false, i1 false}
!812 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 69, i32 21}
!813 = !{ptr @.str.490, !814, !"<string literal>", i1 false, i1 false}
!814 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 69, i32 42}
!815 = !{ptr @.str.491, !816, !"<string literal>", i1 false, i1 false}
!816 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 70, i32 1}
!817 = !{ptr @.str.492, !818, !"<string literal>", i1 false, i1 false}
!818 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 70, i32 24}
!819 = !{ptr @.str.493, !820, !"<string literal>", i1 false, i1 false}
!820 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 70, i32 46}
!821 = !{ptr @.str.494, !822, !"<string literal>", i1 false, i1 false}
!822 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 71, i32 1}
!823 = !{ptr @.str.495, !824, !"<string literal>", i1 false, i1 false}
!824 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 71, i32 17}
!825 = !{ptr @.str.496, !826, !"<string literal>", i1 false, i1 false}
!826 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 71, i32 30}
!827 = !{ptr @.str.497, !828, !"<string literal>", i1 false, i1 false}
!828 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 71, i32 44}
!829 = !{ptr @.str.498, !830, !"<string literal>", i1 false, i1 false}
!830 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 72, i32 1}
!831 = !{ptr @.str.499, !832, !"<string literal>", i1 false, i1 false}
!832 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 72, i32 21}
!833 = !{ptr @.str.500, !834, !"<string literal>", i1 false, i1 false}
!834 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 72, i32 41}
!835 = !{ptr @.str.501, !836, !"<string literal>", i1 false, i1 false}
!836 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 73, i32 1}
!837 = !{ptr @.str.502, !838, !"<string literal>", i1 false, i1 false}
!838 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 73, i32 21}
!839 = !{ptr @.str.503, !840, !"<string literal>", i1 false, i1 false}
!840 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 73, i32 44}
!841 = !{ptr @.str.504, !842, !"<string literal>", i1 false, i1 false}
!842 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 74, i32 1}
!843 = !{ptr @.str.505, !844, !"<string literal>", i1 false, i1 false}
!844 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 74, i32 24}
!845 = !{ptr @.str.506, !846, !"<string literal>", i1 false, i1 false}
!846 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 75, i32 1}
!847 = !{ptr @.str.507, !848, !"<string literal>", i1 false, i1 false}
!848 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 75, i32 17}
!849 = !{ptr @.str.508, !850, !"<string literal>", i1 false, i1 false}
!850 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 75, i32 40}
!851 = !{ptr @.str.509, !852, !"<string literal>", i1 false, i1 false}
!852 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 76, i32 1}
!853 = !{ptr @.str.510, !854, !"<string literal>", i1 false, i1 false}
!854 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 76, i32 19}
!855 = !{ptr @.str.511, !856, !"<string literal>", i1 false, i1 false}
!856 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 76, i32 45}
!857 = !{ptr @.str.512, !858, !"<string literal>", i1 false, i1 false}
!858 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 77, i32 1}
!859 = !{ptr @.str.513, !860, !"<string literal>", i1 false, i1 false}
!860 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 77, i32 22}
!861 = !{ptr @.str.514, !862, !"<string literal>", i1 false, i1 false}
!862 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 77, i32 52}
!863 = !{ptr @.str.515, !864, !"<string literal>", i1 false, i1 false}
!864 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 78, i32 1}
!865 = !{ptr @.str.516, !866, !"<string literal>", i1 false, i1 false}
!866 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 78, i32 30}
!867 = !{ptr @.str.517, !868, !"<string literal>", i1 false, i1 false}
!868 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 79, i32 1}
!869 = !{ptr @.str.518, !870, !"<string literal>", i1 false, i1 false}
!870 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 79, i32 28}
!871 = !{ptr @.str.519, !872, !"<string literal>", i1 false, i1 false}
!872 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 79, i32 47}
!873 = !{ptr @.str.520, !874, !"<string literal>", i1 false, i1 false}
!874 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 80, i32 1}
!875 = !{ptr @.str.521, !876, !"<string literal>", i1 false, i1 false}
!876 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 80, i32 23}
!877 = !{ptr @.str.522, !878, !"<string literal>", i1 false, i1 false}
!878 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 80, i32 49}
!879 = !{ptr @.str.523, !880, !"<string literal>", i1 false, i1 false}
!880 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 81, i32 1}
!881 = !{ptr @.str.524, !882, !"<string literal>", i1 false, i1 false}
!882 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 81, i32 29}
!883 = !{ptr @.str.525, !884, !"<string literal>", i1 false, i1 false}
!884 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 81, i32 54}
!885 = !{ptr @.str.526, !886, !"<string literal>", i1 false, i1 false}
!886 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 82, i32 1}
!887 = !{ptr @.str.527, !888, !"<string literal>", i1 false, i1 false}
!888 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 82, i32 18}
!889 = !{ptr @.str.528, !890, !"<string literal>", i1 false, i1 false}
!890 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 82, i32 39}
!891 = !{ptr @.str.529, !892, !"<string literal>", i1 false, i1 false}
!892 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 82, i32 53}
!893 = !{ptr @.str.530, !894, !"<string literal>", i1 false, i1 false}
!894 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 83, i32 1}
!895 = !{ptr @.str.531, !896, !"<string literal>", i1 false, i1 false}
!896 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 83, i32 22}
!897 = !{ptr @.str.532, !898, !"<string literal>", i1 false, i1 false}
!898 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 83, i32 50}
!899 = !{ptr @.str.533, !900, !"<string literal>", i1 false, i1 false}
!900 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 84, i32 1}
!901 = !{ptr @.str.534, !902, !"<string literal>", i1 false, i1 false}
!902 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 84, i32 21}
!903 = !{ptr @atom_table_names, !904, !"atom_table_names", i1 false, i1 false}
!904 = !{!"../drivers/gpu/drm/amd/amdgpu/../include/atom-names.h", i32 59, i32 14}
!905 = !{ptr @.str.535, !906, !"<string literal>", i1 false, i1 false}
!906 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 853, i32 2}
!907 = !{ptr @.str.536, !906, !"<string literal>", i1 false, i1 false}
!908 = !{ptr @atom_op_repeat._entry, !906, !"_entry", i1 false, i1 false}
!909 = !{ptr @atom_op_repeat._entry_ptr, !906, !"_entry_ptr", i1 false, i1 false}
!910 = !{ptr @.str.537, !911, !"<string literal>", i1 false, i1 false}
!911 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 640, i32 2}
!912 = !{ptr @atom_op_clear._entry, !911, !"_entry", i1 false, i1 false}
!913 = !{ptr @atom_op_clear._entry_ptr, !911, !"_entry_ptr", i1 false, i1 false}
!914 = !{ptr @atom_op_clear._entry.538, !911, !"_entry", i1 false, i1 false}
!915 = !{ptr @atom_op_clear._entry_ptr.539, !911, !"_entry_ptr", i1 false, i1 false}
!916 = !{ptr @.str.540, !917, !"<string literal>", i1 false, i1 false}
!917 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 772, i32 2}
!918 = !{ptr @atom_op_mask._entry, !917, !"_entry", i1 false, i1 false}
!919 = !{ptr @atom_op_mask._entry_ptr, !917, !"_entry_ptr", i1 false, i1 false}
!920 = !{ptr @atom_op_mask._entry.541, !917, !"_entry", i1 false, i1 false}
!921 = !{ptr @atom_op_mask._entry_ptr.542, !917, !"_entry_ptr", i1 false, i1 false}
!922 = !{ptr @atom_op_mask._entry.543, !923, !"_entry", i1 false, i1 false}
!923 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 775, i32 2}
!924 = !{ptr @atom_op_mask._entry_ptr.544, !923, !"_entry_ptr", i1 false, i1 false}
!925 = !{ptr @.str.546, !923, !"<string literal>", i1 false, i1 false}
!926 = !{ptr @atom_op_mask._entry.545, !923, !"_entry", i1 false, i1 false}
!927 = !{ptr @atom_op_mask._entry_ptr.547, !923, !"_entry_ptr", i1 false, i1 false}
!928 = !{ptr @atom_op_mask._entry.548, !929, !"_entry", i1 false, i1 false}
!929 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 776, i32 2}
!930 = !{ptr @atom_op_mask._entry_ptr.549, !929, !"_entry_ptr", i1 false, i1 false}
!931 = !{ptr @atom_op_mask._entry.550, !929, !"_entry", i1 false, i1 false}
!932 = !{ptr @atom_op_mask._entry_ptr.551, !929, !"_entry_ptr", i1 false, i1 false}
!933 = !{ptr @atom_op_mask._entry.552, !934, !"_entry", i1 false, i1 false}
!934 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 780, i32 2}
!935 = !{ptr @atom_op_mask._entry_ptr.553, !934, !"_entry_ptr", i1 false, i1 false}
!936 = !{ptr @atom_op_mask._entry.554, !934, !"_entry", i1 false, i1 false}
!937 = !{ptr @atom_op_mask._entry_ptr.555, !934, !"_entry_ptr", i1 false, i1 false}
!938 = !{ptr @.str.556, !939, !"<string literal>", i1 false, i1 false}
!939 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 848, i32 2}
!940 = !{ptr @atom_op_postcard._entry, !939, !"_entry", i1 false, i1 false}
!941 = !{ptr @atom_op_postcard._entry_ptr, !939, !"_entry_ptr", i1 false, i1 false}
!942 = !{ptr @.str.558, !939, !"<string literal>", i1 false, i1 false}
!943 = !{ptr @atom_op_postcard._entry.557, !939, !"_entry", i1 false, i1 false}
!944 = !{ptr @atom_op_postcard._entry_ptr.559, !939, !"_entry_ptr", i1 false, i1 false}
!945 = !{ptr @.str.560, !946, !"<string literal>", i1 false, i1 false}
!946 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 613, i32 2}
!947 = !{ptr @.str.561, !946, !"<string literal>", i1 false, i1 false}
!948 = !{ptr @atom_op_beep._entry, !946, !"_entry", i1 false, i1 false}
!949 = !{ptr @atom_op_beep._entry_ptr, !946, !"_entry_ptr", i1 false, i1 false}
!950 = !{ptr @.str.562, !951, !"<string literal>", i1 false, i1 false}
!951 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 863, i32 2}
!952 = !{ptr @atom_op_savereg._entry, !951, !"_entry", i1 false, i1 false}
!953 = !{ptr @atom_op_savereg._entry_ptr, !951, !"_entry_ptr", i1 false, i1 false}
!954 = !{ptr @.str.563, !955, !"<string literal>", i1 false, i1 false}
!955 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 858, i32 2}
!956 = !{ptr @atom_op_restorereg._entry, !955, !"_entry", i1 false, i1 false}
!957 = !{ptr @atom_op_restorereg._entry_ptr, !955, !"_entry_ptr", i1 false, i1 false}
!958 = !{ptr @.str.564, !959, !"<string literal>", i1 false, i1 false}
!959 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 870, i32 2}
!960 = !{ptr @atom_op_setdatablock._entry, !959, !"_entry", i1 false, i1 false}
!961 = !{ptr @atom_op_setdatablock._entry_ptr, !959, !"_entry_ptr", i1 false, i1 false}
!962 = !{ptr @.str.566, !959, !"<string literal>", i1 false, i1 false}
!963 = !{ptr @atom_op_setdatablock._entry.565, !959, !"_entry", i1 false, i1 false}
!964 = !{ptr @atom_op_setdatablock._entry_ptr.567, !959, !"_entry_ptr", i1 false, i1 false}
!965 = !{ptr @atom_op_setdatablock._entry.568, !966, !"_entry", i1 false, i1 false}
!966 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 877, i32 2}
!967 = !{ptr @atom_op_setdatablock._entry_ptr.569, !966, !"_entry_ptr", i1 false, i1 false}
!968 = !{ptr @atom_op_setdatablock._entry.570, !966, !"_entry", i1 false, i1 false}
!969 = !{ptr @atom_op_setdatablock._entry_ptr.571, !966, !"_entry_ptr", i1 false, i1 false}
!970 = !{ptr @.str.572, !971, !"<string literal>", i1 false, i1 false}
!971 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1049, i32 2}
!972 = !{ptr @atom_op_xor._entry, !971, !"_entry", i1 false, i1 false}
!973 = !{ptr @atom_op_xor._entry_ptr, !971, !"_entry_ptr", i1 false, i1 false}
!974 = !{ptr @atom_op_xor._entry.573, !971, !"_entry", i1 false, i1 false}
!975 = !{ptr @atom_op_xor._entry_ptr.574, !971, !"_entry_ptr", i1 false, i1 false}
!976 = !{ptr @atom_op_xor._entry.575, !977, !"_entry", i1 false, i1 false}
!977 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1051, i32 2}
!978 = !{ptr @atom_op_xor._entry_ptr.576, !977, !"_entry_ptr", i1 false, i1 false}
!979 = !{ptr @atom_op_xor._entry.577, !977, !"_entry", i1 false, i1 false}
!980 = !{ptr @atom_op_xor._entry_ptr.578, !977, !"_entry_ptr", i1 false, i1 false}
!981 = !{ptr @atom_op_xor._entry.579, !982, !"_entry", i1 false, i1 false}
!982 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1054, i32 2}
!983 = !{ptr @atom_op_xor._entry_ptr.580, !982, !"_entry_ptr", i1 false, i1 false}
!984 = !{ptr @atom_op_xor._entry.581, !982, !"_entry", i1 false, i1 false}
!985 = !{ptr @atom_op_xor._entry_ptr.582, !982, !"_entry_ptr", i1 false, i1 false}
!986 = !{ptr @.str.583, !987, !"<string literal>", i1 false, i1 false}
!987 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 959, i32 2}
!988 = !{ptr @atom_op_shl._entry, !987, !"_entry", i1 false, i1 false}
!989 = !{ptr @atom_op_shl._entry_ptr, !987, !"_entry_ptr", i1 false, i1 false}
!990 = !{ptr @atom_op_shl._entry.584, !987, !"_entry", i1 false, i1 false}
!991 = !{ptr @atom_op_shl._entry_ptr.585, !987, !"_entry_ptr", i1 false, i1 false}
!992 = !{ptr @atom_op_shl._entry.586, !993, !"_entry", i1 false, i1 false}
!993 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 964, i32 2}
!994 = !{ptr @atom_op_shl._entry_ptr.587, !993, !"_entry_ptr", i1 false, i1 false}
!995 = !{ptr @atom_op_shl._entry.588, !993, !"_entry", i1 false, i1 false}
!996 = !{ptr @atom_op_shl._entry_ptr.589, !993, !"_entry_ptr", i1 false, i1 false}
!997 = !{ptr @atom_op_shl._entry.590, !998, !"_entry", i1 false, i1 false}
!998 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 968, i32 2}
!999 = !{ptr @atom_op_shl._entry_ptr.591, !998, !"_entry_ptr", i1 false, i1 false}
!1000 = !{ptr @atom_op_shl._entry.592, !998, !"_entry", i1 false, i1 false}
!1001 = !{ptr @atom_op_shl._entry_ptr.593, !998, !"_entry_ptr", i1 false, i1 false}
!1002 = !{ptr @.str.594, !1003, !"<string literal>", i1 false, i1 false}
!1003 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 978, i32 2}
!1004 = !{ptr @atom_op_shr._entry, !1003, !"_entry", i1 false, i1 false}
!1005 = !{ptr @atom_op_shr._entry_ptr, !1003, !"_entry_ptr", i1 false, i1 false}
!1006 = !{ptr @atom_op_shr._entry.595, !1003, !"_entry", i1 false, i1 false}
!1007 = !{ptr @atom_op_shr._entry_ptr.596, !1003, !"_entry_ptr", i1 false, i1 false}
!1008 = !{ptr @atom_op_shr._entry.597, !1009, !"_entry", i1 false, i1 false}
!1009 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 983, i32 2}
!1010 = !{ptr @atom_op_shr._entry_ptr.598, !1009, !"_entry_ptr", i1 false, i1 false}
!1011 = !{ptr @atom_op_shr._entry.599, !1009, !"_entry", i1 false, i1 false}
!1012 = !{ptr @atom_op_shr._entry_ptr.600, !1009, !"_entry_ptr", i1 false, i1 false}
!1013 = !{ptr @atom_op_shr._entry.601, !1014, !"_entry", i1 false, i1 false}
!1014 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 987, i32 2}
!1015 = !{ptr @atom_op_shr._entry_ptr.602, !1014, !"_entry_ptr", i1 false, i1 false}
!1016 = !{ptr @atom_op_shr._entry.603, !1014, !"_entry", i1 false, i1 false}
!1017 = !{ptr @atom_op_shr._entry_ptr.604, !1014, !"_entry_ptr", i1 false, i1 false}
!1018 = !{ptr @.str.605, !1019, !"<string literal>", i1 false, i1 false}
!1019 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1061, i32 2}
!1020 = !{ptr @atom_op_debug._entry, !1019, !"_entry", i1 false, i1 false}
!1021 = !{ptr @atom_op_debug._entry_ptr, !1019, !"_entry_ptr", i1 false, i1 false}
!1022 = !{ptr @.str.607, !1019, !"<string literal>", i1 false, i1 false}
!1023 = !{ptr @atom_op_debug._entry.606, !1019, !"_entry", i1 false, i1 false}
!1024 = !{ptr @atom_op_debug._entry_ptr.608, !1019, !"_entry_ptr", i1 false, i1 false}
!1025 = !{ptr @.str.609, !1026, !"<string literal>", i1 false, i1 false}
!1026 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1068, i32 2}
!1027 = !{ptr @atom_op_processds._entry, !1026, !"_entry", i1 false, i1 false}
!1028 = !{ptr @atom_op_processds._entry_ptr, !1026, !"_entry_ptr", i1 false, i1 false}
!1029 = !{ptr @.str.611, !1026, !"<string literal>", i1 false, i1 false}
!1030 = !{ptr @atom_op_processds._entry.610, !1026, !"_entry", i1 false, i1 false}
!1031 = !{ptr @atom_op_processds._entry_ptr.612, !1026, !"_entry_ptr", i1 false, i1 false}
!1032 = !{ptr @.str.613, !1033, !"<string literal>", i1 false, i1 false}
!1033 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 817, i32 2}
!1034 = !{ptr @atom_op_mul32._entry, !1033, !"_entry", i1 false, i1 false}
!1035 = !{ptr @atom_op_mul32._entry_ptr, !1033, !"_entry_ptr", i1 false, i1 false}
!1036 = !{ptr @atom_op_mul32._entry.614, !1033, !"_entry", i1 false, i1 false}
!1037 = !{ptr @atom_op_mul32._entry_ptr.615, !1033, !"_entry_ptr", i1 false, i1 false}
!1038 = !{ptr @atom_op_mul32._entry.616, !1039, !"_entry", i1 false, i1 false}
!1039 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 819, i32 2}
!1040 = !{ptr @atom_op_mul32._entry_ptr.617, !1039, !"_entry_ptr", i1 false, i1 false}
!1041 = !{ptr @atom_op_mul32._entry.618, !1039, !"_entry", i1 false, i1 false}
!1042 = !{ptr @atom_op_mul32._entry_ptr.619, !1039, !"_entry_ptr", i1 false, i1 false}
!1043 = !{ptr @.str.620, !1044, !"<string literal>", i1 false, i1 false}
!1044 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 692, i32 2}
!1045 = !{ptr @atom_op_div32._entry, !1044, !"_entry", i1 false, i1 false}
!1046 = !{ptr @atom_op_div32._entry_ptr, !1044, !"_entry_ptr", i1 false, i1 false}
!1047 = !{ptr @atom_op_div32._entry.621, !1044, !"_entry", i1 false, i1 false}
!1048 = !{ptr @atom_op_div32._entry_ptr.622, !1044, !"_entry_ptr", i1 false, i1 false}
!1049 = !{ptr @atom_op_div32._entry.623, !1050, !"_entry", i1 false, i1 false}
!1050 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 694, i32 2}
!1051 = !{ptr @atom_op_div32._entry_ptr.624, !1050, !"_entry_ptr", i1 false, i1 false}
!1052 = !{ptr @atom_op_div32._entry.625, !1050, !"_entry", i1 false, i1 false}
!1053 = !{ptr @atom_op_div32._entry_ptr.626, !1050, !"_entry_ptr", i1 false, i1 false}
!1054 = !{ptr @atom_iio_len, !1055, !"atom_iio_len", i1 false, i1 false}
!1055 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1287, i32 12}
!1056 = !{ptr @.str.627, !1057, !"<string literal>", i1 false, i1 false}
!1057 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1312, i32 19}
!1058 = !{ptr @.str.628, !1059, !"<string literal>", i1 false, i1 false}
!1059 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1422, i32 41}
!1060 = !{ptr @.str.629, !1061, !"<string literal>", i1 false, i1 false}
!1061 = !{!"../drivers/gpu/drm/amd/amdgpu/atom.c", i32 1446, i32 40}
!1062 = !{!"sp"}
!1063 = !{i32 1, !"wchar_size", i32 2}
!1064 = !{i32 1, !"min_enum_size", i32 4}
!1065 = !{i32 8, !"branch-target-enforcement", i32 0}
!1066 = !{i32 8, !"sign-return-address", i32 0}
!1067 = !{i32 8, !"sign-return-address-all", i32 0}
!1068 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!1069 = !{i32 7, !"uwtable", i32 1}
!1070 = !{i32 7, !"frame-pointer", i32 2}
!1071 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!1072 = !{i8 0, i8 2}
!1073 = !{!"auto-init"}
!1074 = !{i64 783892}
!1075 = !{!"branch_weights", i32 2000, i32 1}
!1076 = !{i64 2148223884, i64 2148224164, i64 2148224498, i64 2148224832}
