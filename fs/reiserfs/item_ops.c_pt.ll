; ModuleID = '/llk/IR_all_yes/fs/reiserfs/item_ops.c_pt.bc'
source_filename = "../fs/reiserfs/item_ops.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.item_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.in_core_key = type { i32, i32, i64, i8 }
%struct.item_head = type { %struct.reiserfs_key, %union.anon.0, i16, i16, i16 }
%struct.reiserfs_key = type { i32, i32, %union.anon }
%union.anon = type { %struct.offset_v2 }
%struct.offset_v2 = type { i64 }
%union.anon.0 = type { i16 }
%struct.stat_data_v1 = type { i16, i16, i16, i16, i32, i32, i32, i32, %union.anon.1, i32 }
%union.anon.1 = type { i32 }
%struct.stat_data = type <{ i16, i16, i32, i64, i32, i32, i32, i32, i32, i32, %union.anon.2 }>
%union.anon.2 = type { i32 }
%struct.virtual_item = type { i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.reiserfs_de_head = type { i32, i32, i32, i16, i16 }
%struct.virtual_node = type { ptr, i16, i16, i16, i16, i16, ptr, ptr, ptr }
%struct.direntry_uarea = type { i32, i16, [1 x i16] }

@stat_data_ops = internal global { %struct.item_operations, [52 x i8] } { %struct.item_operations { ptr @sd_bytes_number, ptr @sd_decrement_key, ptr @sd_is_left_mergeable, ptr @sd_print_item, ptr @sd_check_item, ptr @sd_create_vi, ptr @sd_check_left, ptr @sd_check_right, ptr @sd_part_size, ptr @sd_unit_num, ptr @sd_print_vi }, [52 x i8] zeroinitializer }, align 32
@indirect_ops = internal global { %struct.item_operations, [52 x i8] } { %struct.item_operations { ptr @indirect_bytes_number, ptr @indirect_decrement_key, ptr @indirect_is_left_mergeable, ptr @indirect_print_item, ptr @indirect_check_item, ptr @indirect_create_vi, ptr @indirect_check_left, ptr @indirect_check_right, ptr @indirect_part_size, ptr @indirect_unit_num, ptr @indirect_print_vi }, [52 x i8] zeroinitializer }, align 32
@direct_ops = internal global { %struct.item_operations, [52 x i8] } { %struct.item_operations { ptr @direct_bytes_number, ptr @direct_decrement_key, ptr @direct_is_left_mergeable, ptr @direct_print_item, ptr @direct_check_item, ptr @direct_create_vi, ptr @direct_check_left, ptr @direct_check_right, ptr @direct_part_size, ptr @direct_unit_num, ptr @direct_print_vi }, [52 x i8] zeroinitializer }, align 32
@direntry_ops = internal global { %struct.item_operations, [52 x i8] } { %struct.item_operations { ptr @direntry_bytes_number, ptr @direntry_decrement_key, ptr @direntry_is_left_mergeable, ptr @direntry_print_item, ptr @direntry_check_item, ptr @direntry_create_vi, ptr @direntry_check_left, ptr @direntry_check_right, ptr @direntry_part_size, ptr @direntry_unit_num, ptr @direntry_print_vi }, [52 x i8] zeroinitializer }, align 32
@errcatch_ops = internal global { %struct.item_operations, [52 x i8] } { %struct.item_operations { ptr @errcatch_bytes_number, ptr @errcatch_decrement_key, ptr @errcatch_is_left_mergeable, ptr @errcatch_print_item, ptr @errcatch_check_item, ptr @errcatch_create_vi, ptr @errcatch_check_left, ptr @errcatch_check_right, ptr @errcatch_part_size, ptr @errcatch_unit_num, ptr @errcatch_print_vi }, [52 x i8] zeroinitializer }, align 32
@item_ops = dso_local global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @stat_data_ops, ptr @indirect_ops, ptr @direct_ops, ptr @direntry_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @errcatch_ops], [32 x i8] zeroinitializer }, align 32
@sd_print_item._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 38, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\09mode | size | nlinks | first direct | mtime\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sd_print_item\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/reiserfs/item_ops.c\00", [41 x i8] zeroinitializer }, align 32
@sd_print_item._entry_ptr = internal global ptr @sd_print_item._entry, section ".printk_index", align 4
@sd_print_item._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\090%-6o | %6u | %2u | %d | %u\0A\00", [34 x i8] zeroinitializer }, align 32
@sd_print_item._entry_ptr.5 = internal global ptr @sd_print_item._entry.3, section ".printk_index", align 4
@sd_print_item._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\090%-6o | %6llu | %2u | %d | %u\0A\00", [32 x i8] zeroinitializer }, align 32
@sd_print_item._entry_ptr.8 = internal global ptr @sd_print_item._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reiserfs-16100\00", [17 x i8] zeroinitializer }, align 32
@__func__.sd_print_vi = private unnamed_addr constant [12 x i8] c"sd_print_vi\00", align 1
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"STATDATA, index %d, type 0x%x, %h\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reiserfs-16102\00", [17 x i8] zeroinitializer }, align 32
@__func__.indirect_print_item = private unnamed_addr constant [20 x i8] c"indirect_print_item\00", align 1
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"invalid item len\00", [47 x i8] zeroinitializer }, align 32
@indirect_print_item._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.indirect_print_item, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%d pointers\0A[ \00", [17 x i8] zeroinitializer }, align 32
@indirect_print_item._entry_ptr = internal global ptr @indirect_print_item._entry, section ".printk_index", align 4
@indirect_print_item._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @__func__.indirect_print_item, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"]\0A\00", [29 x i8] zeroinitializer }, align 32
@indirect_print_item._entry_ptr.16 = internal global ptr @indirect_print_item._entry.14, section ".printk_index", align 4
@print_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %d\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"print_sequence\00", [17 x i8] zeroinitializer }, align 32
@print_sequence._entry_ptr = internal global ptr @print_sequence._entry, section ".printk_index", align 4
@print_sequence._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" %d(%d)\00", [24 x i8] zeroinitializer }, align 32
@print_sequence._entry_ptr.21 = internal global ptr @print_sequence._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reiserfs-16103\00", [17 x i8] zeroinitializer }, align 32
@__func__.indirect_print_vi = private unnamed_addr constant [18 x i8] c"indirect_print_vi\00", align 1
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"INDIRECT, index %d, type 0x%x, %h\00", [62 x i8] zeroinitializer }, align 32
@direct_print_item._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\22\00", [30 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"direct_print_item\00", [46 x i8] zeroinitializer }, align 32
@direct_print_item._entry_ptr = internal global ptr @direct_print_item._entry, section ".printk_index", align 4
@direct_print_item._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%c\00", [29 x i8] zeroinitializer }, align 32
@direct_print_item._entry_ptr.28 = internal global ptr @direct_print_item._entry.26, section ".printk_index", align 4
@direct_print_item._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\22\0A\00", [29 x i8] zeroinitializer }, align 32
@direct_print_item._entry_ptr.31 = internal global ptr @direct_print_item._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reiserfs-16101\00", [17 x i8] zeroinitializer }, align 32
@__func__.direct_print_vi = private unnamed_addr constant [16 x i8] c"direct_print_vi\00", align 1
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DIRECT, index %d, type 0x%x, %h\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vs-16090\00", [23 x i8] zeroinitializer }, align 32
@__func__.direntry_bytes_number = private unnamed_addr constant [22 x i8] c"direntry_bytes_number\00", align 1
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"bytes number is asked for direntry\00", [61 x i8] zeroinitializer }, align 32
@direntry_print_item.namebuf = internal global { [80 x i8], [48 x i8] } zeroinitializer, align 32
@direntry_print_item._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\0A # %-15s%-30s%-15s%-15s%-15s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"direntry_print_item\00", [44 x i8] zeroinitializer }, align 32
@direntry_print_item._entry_ptr = internal global ptr @direntry_print_item._entry, section ".printk_index", align 4
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Name\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Key of pointed object\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Hash\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Gen number\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Status\00", [25 x i8] zeroinitializer }, align 32
@direntry_print_item._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.37, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%d:  %-15s%-15d%-15d%-15lld%-15lld(%s)\0A\00", [56 x i8] zeroinitializer }, align 32
@direntry_print_item._entry_ptr.45 = internal global ptr @direntry_print_item._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HIDDEN\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VISIBLE\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vs-8025\00", [24 x i8] zeroinitializer }, align 32
@__func__.direntry_create_vi = private unnamed_addr constant [19 x i8] c"direntry_create_vi\00", align 1
@.str.49 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"(mode==%c, insert_size==%d), invalid length of directory item\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"assertion failure\00", [46 x i8] zeroinitializer }, align 32
@__func__.old_entry_num = private unnamed_addr constant [14 x i8] c"old_entry_num\00", align 1
@.str.51 = internal constant { [135 x i8], [57 x i8] } { [135 x i8] c"(!(mode != 'p' || virtual_entry_num == 0)) at fs/reiserfs/item_ops.c:%i:%s: vs-8015: old_entry_num: mode must be M_PASTE (mode = '%c'\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"item_ops-1\00", [21 x i8] zeroinitializer }, align 32
@__func__.direntry_check_left = private unnamed_addr constant [20 x i8] c"direntry_check_left\00", align 1
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"free space %d, entry_count %d\00", [34 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reiserfs-16104\00", [17 x i8] zeroinitializer }, align 32
@__func__.direntry_print_vi = private unnamed_addr constant [18 x i8] c"direntry_print_vi\00", align 1
@.str.55 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DIRENTRY, index %d, type 0x%x, %h, flags 0x%x\00", [50 x i8] zeroinitializer }, align 32
@direntry_print_vi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @__func__.direntry_print_vi, ptr @.str.2, i32 614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%d entries: \00", [19 x i8] zeroinitializer }, align 32
@direntry_print_vi._entry_ptr = internal global ptr @direntry_print_vi._entry, section ".printk_index", align 4
@direntry_print_vi._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @__func__.direntry_print_vi, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d \00", [28 x i8] zeroinitializer }, align 32
@direntry_print_vi._entry_ptr.59 = internal global ptr @direntry_print_vi._entry.57, section ".printk_index", align 4
@direntry_print_vi._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @__func__.direntry_print_vi, ptr @.str.2, i32 617, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@direntry_print_vi._entry_ptr.62 = internal global ptr @direntry_print_vi._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"green-16001\00", [20 x i8] zeroinitializer }, align 32
@__func__.errcatch_bytes_number = private unnamed_addr constant [22 x i8] c"errcatch_bytes_number\00", align 1
@.str.64 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid item type observed, run fsck ASAP\00", [54 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"green-16002\00", [20 x i8] zeroinitializer }, align 32
@__func__.errcatch_decrement_key = private unnamed_addr constant [23 x i8] c"errcatch_decrement_key\00", align 1
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"green-16003\00", [20 x i8] zeroinitializer }, align 32
@__func__.errcatch_is_left_mergeable = private unnamed_addr constant [27 x i8] c"errcatch_is_left_mergeable\00", align 1
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"green-16004\00", [20 x i8] zeroinitializer }, align 32
@__func__.errcatch_print_item = private unnamed_addr constant [20 x i8] c"errcatch_print_item\00", align 1
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"green-16005\00", [20 x i8] zeroinitializer }, align 32
@__func__.errcatch_check_item = private unnamed_addr constant [20 x i8] c"errcatch_check_item\00", align 1
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"green-16006\00", [20 x i8] zeroinitializer }, align 32
@__func__.errcatch_create_vi = private unnamed_addr constant [19 x i8] c"errcatch_create_vi\00", align 1
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"green-16007\00", [20 x i8] zeroinitializer }, align 32
@__func__.errcatch_check_left = private unnamed_addr constant [20 x i8] c"errcatch_check_left\00", align 1
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"green-16008\00", [20 x i8] zeroinitializer }, align 32
@__func__.errcatch_check_right = private unnamed_addr constant [21 x i8] c"errcatch_check_right\00", align 1
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"green-16009\00", [20 x i8] zeroinitializer }, align 32
@__func__.errcatch_part_size = private unnamed_addr constant [19 x i8] c"errcatch_part_size\00", align 1
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"green-16010\00", [20 x i8] zeroinitializer }, align 32
@__func__.errcatch_unit_num = private unnamed_addr constant [18 x i8] c"errcatch_unit_num\00", align 1
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"green-16011\00", [20 x i8] zeroinitializer }, align 32
@__func__.errcatch_print_vi = private unnamed_addr constant [18 x i8] c"errcatch_print_vi\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2147483647]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 105]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 99, i64 112]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 105]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 99, i64 112]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 100, i64 105]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 99, i64 112]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 16, i64 99, i64 112]
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"stat_data_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 98, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant [13 x i8] c"indirect_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 333, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant [11 x i8] c"direct_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 189, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"direntry_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 620, i32 31 }
@___asan_gen_.94 = private unnamed_addr constant [13 x i8] c"errcatch_ops\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 718, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant [9 x i8] c"item_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 737, i32 25 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 38, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 42, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 49, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 93, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 270, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 272, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 280, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 255, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 257, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 328, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 139, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 141, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 142, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 184, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 351, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [8 x i8] c"namebuf\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 378, i32 14 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 380, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 403, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 509, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 446, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 542, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 611, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 614, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 616, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 617, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 638, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 645, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 652, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 659, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 665, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 673, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 686, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 693, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 700, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 707, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.317 = private constant [26 x i8] c"../fs/reiserfs/item_ops.c\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.317, i32 714, i32 2 }
@llvm.compiler.used = appending global [94 x ptr] [ptr @direct_print_item._entry, ptr @direct_print_item._entry.26, ptr @direct_print_item._entry.29, ptr @direct_print_item._entry_ptr, ptr @direct_print_item._entry_ptr.28, ptr @direct_print_item._entry_ptr.31, ptr @direntry_print_item._entry, ptr @direntry_print_item._entry.43, ptr @direntry_print_item._entry_ptr, ptr @direntry_print_item._entry_ptr.45, ptr @direntry_print_vi._entry, ptr @direntry_print_vi._entry.57, ptr @direntry_print_vi._entry.60, ptr @direntry_print_vi._entry_ptr, ptr @direntry_print_vi._entry_ptr.59, ptr @direntry_print_vi._entry_ptr.62, ptr @indirect_print_item._entry, ptr @indirect_print_item._entry.14, ptr @indirect_print_item._entry_ptr, ptr @indirect_print_item._entry_ptr.16, ptr @print_sequence._entry, ptr @print_sequence._entry.19, ptr @print_sequence._entry_ptr, ptr @print_sequence._entry_ptr.21, ptr @sd_print_item._entry, ptr @sd_print_item._entry.3, ptr @sd_print_item._entry.6, ptr @sd_print_item._entry_ptr, ptr @sd_print_item._entry_ptr.5, ptr @sd_print_item._entry_ptr.8, ptr @stat_data_ops, ptr @indirect_ops, ptr @direct_ops, ptr @direntry_ops, ptr @errcatch_ops, ptr @item_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @direntry_print_item.namebuf, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stat_data_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @indirect_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direct_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direntry_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @errcatch_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @item_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_print_item._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_print_item._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sd_print_item._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @indirect_print_item._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @indirect_print_item._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_sequence._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direct_print_item._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direct_print_item._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direct_print_item._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direntry_print_item.namebuf to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direntry_print_item._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direntry_print_item._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 135, i32 192, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direntry_print_vi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direntry_print_vi._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @direntry_print_vi._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_bytes_number(ptr nocapture noundef readnone %ih, i32 noundef %block_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sd_decrement_key(ptr nocapture noundef %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %k_objectid = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 1
  %0 = ptrtoint ptr %k_objectid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %k_objectid, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr %k_objectid, align 4
  %k_type.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 3
  %2 = ptrtoint ptr %k_type.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %k_type.i, align 8
  %k_offset.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %3 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 9223372036854775807, ptr %k_offset.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_is_left_mergeable(ptr nocapture noundef readnone %key, i32 noundef %bsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_print_item(ptr nocapture noundef readonly %ih, ptr nocapture noundef readonly %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #18
  %ih_version = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 4
  %0 = ptrtoint ptr %ih_version to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %ih_version, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp = icmp eq i16 %1, 0
  %2 = ptrtoint ptr %item to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %item, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv5 = zext i16 %4 to i32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sd_size = getelementptr inbounds %struct.stat_data_v1, ptr %item, i32 0, i32 4
  %5 = ptrtoint ptr %sd_size to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %sd_size, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %sd_nlink = getelementptr inbounds %struct.stat_data_v1, ptr %item, i32 0, i32 1
  %8 = ptrtoint ptr %sd_nlink to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %sd_nlink, align 1
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  %conv6 = zext i16 %10 to i32
  %sd_first_direct_byte = getelementptr inbounds %struct.stat_data_v1, ptr %item, i32 0, i32 9
  %11 = ptrtoint ptr %sd_first_direct_byte to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %sd_first_direct_byte, align 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %sd_mtime = getelementptr inbounds %struct.stat_data_v1, ptr %item, i32 0, i32 6
  %14 = ptrtoint ptr %sd_mtime to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %sd_mtime, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv5, i32 noundef %7, i32 noundef %conv6, i32 noundef %13, i32 noundef %16) #18
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %sd_size15 = getelementptr inbounds %struct.stat_data, ptr %item, i32 0, i32 3
  %17 = ptrtoint ptr %sd_size15 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %sd_size15, align 1
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  %sd_nlink16 = getelementptr inbounds %struct.stat_data, ptr %item, i32 0, i32 2
  %20 = ptrtoint ptr %sd_nlink16 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %sd_nlink16, align 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %u = getelementptr inbounds %struct.stat_data, ptr %item, i32 0, i32 10
  %23 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %u, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %sd_mtime17 = getelementptr inbounds %struct.stat_data, ptr %item, i32 0, i32 7
  %26 = ptrtoint ptr %sd_mtime17 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %sd_mtime17, align 1
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %conv5, i64 noundef %19, i32 noundef %22, i32 noundef %25, i32 noundef %28) #18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sd_check_item(ptr nocapture noundef %ih, ptr nocapture noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @sd_create_vi(ptr nocapture noundef readnone %vn, ptr nocapture noundef writeonly %vi, i32 noundef %is_affected, i32 noundef %insert_size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vi to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %vi, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_check_left(ptr nocapture noundef readnone %vi, i32 noundef %free, i32 noundef %start_skip, i32 noundef %end_skip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %end_skip, %start_skip
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %do.end7, label %do.body4, !prof !165

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/item_ops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 71, 0\0A.popsection", ""() #15, !srcloc !166
  unreachable

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_check_right(ptr nocapture noundef readnone %vi, i32 noundef %free) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sd_part_size(ptr nocapture noundef readnone %vi, i32 noundef %first, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !165

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/item_ops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 82, 0\0A.popsection", ""() #15, !srcloc !167
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sd_unit_num(ptr nocapture noundef readonly %vi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vi_item_len = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 2
  %0 = ptrtoint ptr %vi_item_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vi_item_len, align 2
  %conv = zext i16 %1 to i32
  %sub = add nsw i32 %conv, -24
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sd_print_vi(ptr nocapture noundef readonly %vi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vi, align 4
  %vi_type = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 1
  %2 = ptrtoint ptr %vi_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vi_type, align 4
  %conv = zext i16 %3 to i32
  %vi_ih = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 3
  %4 = ptrtoint ptr %vi_ih to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vi_ih, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.sd_print_vi, ptr noundef nonnull @.str.10, i32 noundef %1, i32 noundef %conv, ptr noundef %5) #15
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__reiserfs_warning(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @indirect_bytes_number(ptr nocapture noundef readonly %ih, i32 noundef %block_size) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 2
  %0 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %ih_item_len, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %3 = lshr i16 %2, 2
  %div = zext i16 %3 to i32
  %mul = mul i32 %div, %block_size
  ret i32 %mul
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @indirect_decrement_key(ptr nocapture noundef %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %k_offset.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %0 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %k_offset.i, align 8
  %dec.i = add i64 %1, -1
  store i64 %dec.i, ptr %k_offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.i)
  %cmp = icmp eq i64 %dec.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %k_type.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 3
  %2 = ptrtoint ptr %k_type.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %k_type.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @indirect_is_left_mergeable(ptr nocapture noundef readonly %key, i32 noundef %bsize) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %u.i = getelementptr inbounds %struct.reiserfs_key, ptr %key, i32 0, i32 2
  %0 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %u.i, align 1
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 4
  %conv1.i.i = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv1.i.i)
  %cmp.i.i = icmp ugt i32 %conv1.i.i, 3
  %phi.cast.i.i = trunc i32 %conv1.i.i to i16
  %4 = add nsw i16 %phi.cast.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %4)
  %switch9.i = icmp ult i16 %4, -3
  %switch.i = select i1 %cmp.i.i, i1 true, i1 %switch9.i
  br i1 %switch.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %u.i, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #15
  %conv.i = zext i32 %7 to i64
  br label %le_key_k_offset.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = and i64 %1, -241
  %9 = tail call i64 @llvm.bswap.i64(i64 %8) #15
  br label %le_key_k_offset.exit

le_key_k_offset.exit:                             ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %conv.i, %cond.true.i ], [ %9, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cond.i)
  %cmp = icmp ne i64 %cond.i, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @indirect_print_item(ptr nocapture noundef readonly %ih, ptr nocapture noundef readonly %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 2
  %0 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %ih_item_len, align 1
  %2 = and i16 %1, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.indirect_print_item, ptr noundef nonnull @.str.12) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %3 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %ih_item_len, align 1
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %6 = lshr i16 %5, 2
  %div = zext i16 %6 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %div) #18
  %7 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %ih_item_len, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %9)
  %cmp46.not = icmp ult i16 %9, 4
  br i1 %cmp46.not, label %do.end.print_sequence.exit32_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.print_sequence.exit32_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %print_sequence.exit32

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %j.051 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %num.049 = phi i32 [ %num.2, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %prev.047 = phi i32 [ %prev.1, %for.inc.for.body_crit_edge ], [ 2147483647, %do.end.for.body_crit_edge ]
  %add.ptr = getelementptr i32, ptr %item, i32 %j.051
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %add.ptr, align 1
  %12 = zext i32 %prev.047 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %prev.047, label %land.lhs.true6.i [
    i32 2147483647, label %for.body.print_sequence.exit_crit_edge
    i32 0, label %land.lhs.true.i
  ]

for.body.print_sequence.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %print_sequence.exit

land.lhs.true.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2.i = icmp eq i32 %11, 0
  br i1 %cmp2.i, label %land.lhs.true.i.sequence_finished.exit_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

land.lhs.true.i.sequence_finished.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sequence_finished.exit

land.lhs.true6.i:                                 ; preds = %for.body
  %13 = tail call i32 @llvm.bswap.i32(i32 %11) #15
  %add.i = add i32 %num.049, %prev.047
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %13)
  %cmp7.i = icmp eq i32 %add.i, %13
  br i1 %cmp7.i, label %land.lhs.true6.i.sequence_finished.exit_crit_edge, label %if.then10

land.lhs.true6.i.sequence_finished.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sequence_finished.exit

sequence_finished.exit:                           ; preds = %land.lhs.true6.i.sequence_finished.exit_crit_edge, %land.lhs.true.i.sequence_finished.exit_crit_edge
  %inc9.i = add i32 %num.049, 1
  br label %for.inc

if.then10:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %prev.047)
  %cmp.i = icmp eq i32 %prev.047, 2147483647
  br i1 %cmp.i, label %if.then10.print_sequence.exit_crit_edge, label %if.then10.if.end.i_crit_edge

if.then10.if.end.i_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then10.print_sequence.exit_crit_edge:          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %print_sequence.exit

if.end.i:                                         ; preds = %if.then10.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num.049)
  %cmp1.i = icmp eq i32 %num.049, 1
  br i1 %cmp1.i, label %do.end.i, label %do.end4.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %prev.047) #18
  br label %print_sequence.exit

do.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %prev.047, i32 noundef %num.049) #18
  br label %print_sequence.exit

print_sequence.exit:                              ; preds = %do.end4.i, %do.end.i, %if.then10.print_sequence.exit_crit_edge, %for.body.print_sequence.exit_crit_edge
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %add.ptr, align 1
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #15
  br label %for.inc

for.inc:                                          ; preds = %print_sequence.exit, %sequence_finished.exit
  %prev.1 = phi i32 [ %prev.047, %sequence_finished.exit ], [ %16, %print_sequence.exit ]
  %num.2 = phi i32 [ %inc9.i, %sequence_finished.exit ], [ 1, %print_sequence.exit ]
  %inc = add nuw nsw i32 %j.051, 1
  %17 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %ih_item_len, align 1
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  %20 = lshr i16 %19, 2
  %div5 = zext i16 %20 to i32
  %cmp = icmp ult i32 %inc, %div5
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %prev.1)
  %cmp.i25 = icmp eq i32 %prev.1, 2147483647
  br i1 %cmp.i25, label %for.end.print_sequence.exit32_crit_edge, label %if.end.i27

for.end.print_sequence.exit32_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %print_sequence.exit32

if.end.i27:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num.2)
  %cmp1.i26 = icmp eq i32 %num.2, 1
  br i1 %cmp1.i26, label %do.end.i29, label %do.end4.i31

do.end.i29:                                       ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #17
  %call.i28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %prev.1) #18
  br label %print_sequence.exit32

do.end4.i31:                                      ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #17
  %call6.i30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %prev.1, i32 noundef %num.2) #18
  br label %print_sequence.exit32

print_sequence.exit32:                            ; preds = %do.end4.i31, %do.end.i29, %for.end.print_sequence.exit32_crit_edge, %do.end.print_sequence.exit32_crit_edge
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @indirect_check_item(ptr nocapture noundef %ih, ptr nocapture noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @indirect_create_vi(ptr nocapture noundef readnone %vn, ptr nocapture noundef writeonly %vi, i32 noundef %is_affected, i32 noundef %insert_size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vi to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %vi, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @indirect_check_left(ptr nocapture noundef readnone %vi, i32 noundef %free, i32 noundef %start_skip, i32 noundef %end_skip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = and i32 %free, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  %. = select i1 %tobool.not, i32 -1, i32 %sub
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @indirect_check_right(ptr nocapture noundef readnone %vi, i32 noundef %free) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.i = and i32 %free, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, 0
  %..i = select i1 %tobool.not.i, i32 -1, i32 %sub.i
  ret i32 %..i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @indirect_part_size(ptr nocapture noundef readnone %vi, i32 noundef %first, i32 noundef returned %units) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %units
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @indirect_unit_num(ptr nocapture noundef readonly %vi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vi_item_len = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 2
  %0 = ptrtoint ptr %vi_item_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vi_item_len, align 2
  %conv = zext i16 %1 to i32
  %sub = add nsw i32 %conv, -24
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @indirect_print_vi(ptr nocapture noundef readonly %vi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vi, align 4
  %vi_type = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 1
  %2 = ptrtoint ptr %vi_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vi_type, align 4
  %conv = zext i16 %3 to i32
  %vi_ih = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 3
  %4 = ptrtoint ptr %vi_ih to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vi_ih, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.indirect_print_vi, ptr noundef nonnull @.str.23, i32 noundef %1, i32 noundef %conv, ptr noundef %5) #15
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @direct_bytes_number(ptr nocapture noundef readonly %ih, i32 noundef %block_size) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 2
  %0 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %ih_item_len, align 1
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  ret i32 %conv
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @direct_decrement_key(ptr nocapture noundef %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %k_offset.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %0 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %k_offset.i, align 8
  %dec.i = add i64 %1, -1
  store i64 %dec.i, ptr %k_offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.i)
  %cmp = icmp eq i64 %dec.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %k_type.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 3
  %2 = ptrtoint ptr %k_type.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %k_type.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @direct_is_left_mergeable(ptr nocapture noundef readonly %key, i32 noundef %bsize) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %u.i = getelementptr inbounds %struct.reiserfs_key, ptr %key, i32 0, i32 2
  %0 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %u.i, align 1
  %2 = trunc i64 %1 to i32
  %3 = lshr i32 %2, 4
  %conv1.i.i = and i32 %3, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv1.i.i)
  %cmp.i.i = icmp ugt i32 %conv1.i.i, 3
  %phi.cast.i.i = trunc i32 %conv1.i.i to i16
  %4 = add nsw i16 %phi.cast.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3, i16 %4)
  %switch9.i = icmp ult i16 %4, -3
  %switch.i = select i1 %cmp.i.i, i1 true, i1 %switch9.i
  br i1 %switch.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %u.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %u.i, align 1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #15
  %conv.i = zext i32 %7 to i64
  br label %le_key_k_offset.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %8 = and i64 %1, -241
  %9 = tail call i64 @llvm.bswap.i64(i64 %8) #15
  br label %le_key_k_offset.exit

le_key_k_offset.exit:                             ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i64 [ %conv.i, %cond.true.i ], [ %9, %cond.false.i ]
  %sub = add i32 %bsize, -1
  %conv = zext i32 %sub to i64
  %and = and i64 %cond.i, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %and)
  %cmp = icmp ne i64 %and, 1
  %conv2 = zext i1 %cmp to i32
  ret i32 %conv2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @direct_print_item(ptr nocapture noundef readonly %ih, ptr nocapture noundef readonly %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #18
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 2
  %0 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %ih_item_len, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp15.not = icmp eq i16 %1, 0
  br i1 %cmp15.not, label %entry.do.end10_crit_edge, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  br label %do.end4

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

do.end4:                                          ; preds = %do.end4.do.end4_crit_edge, %entry.do.end4_crit_edge
  %j.016 = phi i32 [ %inc, %do.end4.do.end4_crit_edge ], [ 0, %entry.do.end4_crit_edge ]
  %inc = add nuw nsw i32 %j.016, 1
  %arrayidx = getelementptr i8, ptr %item, i32 %j.016
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %3 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv6) #18
  %4 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %ih_item_len, align 1
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %do.end4.do.end4_crit_edge, label %do.end4.do.end10_crit_edge

do.end4.do.end10_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end10

do.end4.do.end4_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end4

do.end10:                                         ; preds = %do.end4.do.end10_crit_edge, %entry.do.end10_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @direct_check_item(ptr nocapture noundef %ih, ptr nocapture noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @direct_create_vi(ptr nocapture noundef readnone %vn, ptr nocapture noundef writeonly %vi, i32 noundef %is_affected, i32 noundef %insert_size) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vi to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %vi, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @direct_check_left(ptr nocapture noundef readnone %vi, i32 noundef %free, i32 noundef %start_skip, i32 noundef %end_skip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = srem i32 %free, 8
  %sub = sub i32 %free, %rem
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %free)
  %tobool.not = icmp eq i32 %rem, %free
  %. = select i1 %tobool.not, i32 -1, i32 %sub
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @direct_check_right(ptr nocapture noundef readnone %vi, i32 noundef %free) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rem.i = srem i32 %free, 8
  %sub.i = sub i32 %free, %rem.i
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %free)
  %tobool.not.i = icmp eq i32 %rem.i, %free
  %..i = select i1 %tobool.not.i, i32 -1, i32 %sub.i
  ret i32 %..i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @direct_part_size(ptr nocapture noundef readnone %vi, i32 noundef %first, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 %count
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @direct_unit_num(ptr nocapture noundef readonly %vi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vi_item_len = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 2
  %0 = ptrtoint ptr %vi_item_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vi_item_len, align 2
  %conv = zext i16 %1 to i32
  %sub = add nsw i32 %conv, -24
  ret i32 %sub
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @direct_print_vi(ptr nocapture noundef readonly %vi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vi, align 4
  %vi_type = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 1
  %2 = ptrtoint ptr %vi_type to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vi_type, align 4
  %conv = zext i16 %3 to i32
  %vi_ih = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 3
  %4 = ptrtoint ptr %vi_ih to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vi_ih, align 4
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.direct_print_vi, ptr noundef nonnull @.str.33, i32 noundef %1, i32 noundef %conv, ptr noundef %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @direntry_bytes_number(ptr nocapture noundef readnone %ih, i32 noundef %block_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.direntry_bytes_number, ptr noundef nonnull @.str.35) #15
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @direntry_decrement_key(ptr nocapture noundef %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %k_offset.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 2
  %0 = ptrtoint ptr %k_offset.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %k_offset.i, align 8
  %dec.i = add i64 %1, -1
  store i64 %dec.i, ptr %k_offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %dec.i)
  %cmp = icmp eq i64 %dec.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %k_type.i = getelementptr inbounds %struct.in_core_key, ptr %key, i32 0, i32 3
  %2 = ptrtoint ptr %k_type.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %k_type.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @direntry_is_left_mergeable(ptr nocapture noundef readonly %key, i32 noundef %bsize) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %u = getelementptr inbounds %struct.reiserfs_key, ptr %key, i32 0, i32 2
  %0 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %u, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %1)
  %cmp = icmp ne i32 %1, 16777216
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @direntry_print_item(ptr nocapture noundef readonly %ih, ptr noundef %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42) #18
  %u = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 1
  %0 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %u, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp55.not = icmp eq i16 %1, 0
  br i1 %cmp55.not, label %entry.for.end_crit_edge, label %cond.end.peel

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cond.end.peel:                                    ; preds = %entry
  %ih_item_len = getelementptr inbounds %struct.item_head, ptr %ih, i32 0, i32 2
  %2 = ptrtoint ptr %ih_item_len to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %ih_item_len, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %phi.cast = zext i16 %4 to i32
  %deh_location4.peel = getelementptr inbounds %struct.reiserfs_de_head, ptr %item, i32 0, i32 3
  %5 = ptrtoint ptr %deh_location4.peel to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %deh_location4.peel, align 1
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  %conv5.peel = zext i16 %7 to i32
  %sub.peel = sub nsw i32 %phi.cast, %conv5.peel
  %add.ptr8.peel = getelementptr i8, ptr %item, i32 %conv5.peel
  %sub9.peel = add nsw i32 %sub.peel, -1
  %arrayidx.peel = getelementptr i8, ptr %add.ptr8.peel, i32 %sub9.peel
  %8 = ptrtoint ptr %arrayidx.peel to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.peel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp11.peel = icmp eq i8 %9, 0
  br i1 %cmp11.peel, label %if.then.peel, label %cond.end.peel.if.end.peel_crit_edge

cond.end.peel.if.end.peel_crit_edge:              ; preds = %cond.end.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.peel

if.then.peel:                                     ; preds = %cond.end.peel
  call void @__sanitizer_cov_trace_pc() #17
  %call13.peel = tail call i32 @strlen(ptr noundef %add.ptr8.peel) #19
  br label %if.end.peel

if.end.peel:                                      ; preds = %if.then.peel, %cond.end.peel.if.end.peel_crit_edge
  %namelen.0.peel = phi i32 [ %call13.peel, %if.then.peel ], [ %sub.peel, %cond.end.peel.if.end.peel_crit_edge ]
  store i8 34, ptr @direntry_print_item.namebuf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 77, i32 %namelen.0.peel)
  %cmp14.peel = icmp ugt i32 %namelen.0.peel, 77
  br i1 %cmp14.peel, label %if.then16.peel, label %if.else.peel

if.else.peel:                                     ; preds = %if.end.peel
  call void @__sanitizer_cov_trace_pc() #17
  %10 = call ptr @memcpy(ptr getelementptr inbounds ([80 x i8], ptr @direntry_print_item.namebuf, i32 0, i32 1), ptr %add.ptr8.peel, i32 %namelen.0.peel)
  %add.peel = add nuw nsw i32 %namelen.0.peel, 1
  %arrayidx18.peel = getelementptr [80 x i8], ptr @direntry_print_item.namebuf, i32 0, i32 %add.peel
  %11 = ptrtoint ptr %arrayidx18.peel to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 34, ptr %arrayidx18.peel, align 1
  %add19.peel = add nuw nsw i32 %namelen.0.peel, 2
  %arrayidx20.peel = getelementptr [80 x i8], ptr @direntry_print_item.namebuf, i32 0, i32 %add19.peel
  br label %do.end24.peel

if.then16.peel:                                   ; preds = %if.end.peel
  call void @__sanitizer_cov_trace_pc() #17
  %call17.peel = tail call ptr @strncpy(ptr noundef getelementptr inbounds ([80 x i8], ptr @direntry_print_item.namebuf, i32 0, i32 1), ptr noundef %add.ptr8.peel, i32 noundef 77)
  store i8 34, ptr getelementptr inbounds ([80 x i8], ptr @direntry_print_item.namebuf, i32 0, i32 78), align 1
  br label %do.end24.peel

do.end24.peel:                                    ; preds = %if.then16.peel, %if.else.peel
  %.sink = phi ptr [ getelementptr inbounds ([80 x i8], ptr @direntry_print_item.namebuf, i32 0, i32 79), %if.then16.peel ], [ %arrayidx20.peel, %if.else.peel ]
  %12 = ptrtoint ptr %.sink to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %.sink, align 1
  %deh_dir_id.peel = getelementptr inbounds %struct.reiserfs_de_head, ptr %item, i32 0, i32 1
  %13 = ptrtoint ptr %deh_dir_id.peel to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %deh_dir_id.peel, align 1
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %deh_objectid.peel = getelementptr inbounds %struct.reiserfs_de_head, ptr %item, i32 0, i32 2
  %16 = ptrtoint ptr %deh_objectid.peel to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %deh_objectid.peel, align 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %item to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %item, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %conv26.peel = zext i32 %21 to i64
  %and.peel = and i64 %conv26.peel, 2147483520
  %and29.peel = and i64 %conv26.peel, 127
  %deh_state.peel = getelementptr inbounds %struct.reiserfs_de_head, ptr %item, i32 0, i32 4
  %22 = ptrtoint ptr %deh_state.peel to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %deh_state.peel, align 4
  %24 = and i32 %23, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool31.not.peel = icmp eq i32 %24, 0
  %cond32.peel = select i1 %tobool31.not.peel, ptr @.str.46, ptr @.str.47
  %call33.peel = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef 0, ptr noundef nonnull @direntry_print_item.namebuf, i32 noundef %15, i32 noundef %18, i64 noundef %and.peel, i64 noundef %and29.peel, ptr noundef nonnull %cond32.peel) #18
  %25 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %u, align 1
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %27)
  %cmp.peel = icmp ugt i16 %27, 1
  br i1 %cmp.peel, label %do.end24.peel.cond.end_crit_edge, label %do.end24.peel.for.end_crit_edge

do.end24.peel.for.end_crit_edge:                  ; preds = %do.end24.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

do.end24.peel.cond.end_crit_edge:                 ; preds = %do.end24.peel
  br label %cond.end

cond.end:                                         ; preds = %do.end24.cond.end_crit_edge, %do.end24.peel.cond.end_crit_edge
  %i.058 = phi i32 [ %inc, %do.end24.cond.end_crit_edge ], [ 1, %do.end24.peel.cond.end_crit_edge ]
  %item.pn = phi ptr [ %deh.056, %do.end24.cond.end_crit_edge ], [ %item, %do.end24.peel.cond.end_crit_edge ]
  %deh.056 = getelementptr %struct.reiserfs_de_head, ptr %item.pn, i32 1
  %deh_location = getelementptr %struct.reiserfs_de_head, ptr %item.pn, i32 0, i32 3
  %28 = ptrtoint ptr %deh_location to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %deh_location, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %cond = zext i16 %30 to i32
  %deh_location4 = getelementptr %struct.reiserfs_de_head, ptr %item.pn, i32 1, i32 3
  %31 = ptrtoint ptr %deh_location4 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %deh_location4, align 1
  %33 = tail call i16 @llvm.bswap.i16(i16 %32)
  %conv5 = zext i16 %33 to i32
  %sub = sub nsw i32 %cond, %conv5
  %add.ptr8 = getelementptr i8, ptr %item, i32 %conv5
  %sub9 = add nsw i32 %sub, -1
  %arrayidx = getelementptr i8, ptr %add.ptr8, i32 %sub9
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp11 = icmp eq i8 %35, 0
  br i1 %cmp11, label %if.then, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %call13 = tail call i32 @strlen(ptr noundef %add.ptr8) #19
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %namelen.0 = phi i32 [ %call13, %if.then ], [ %sub, %cond.end.if.end_crit_edge ]
  store i8 34, ptr @direntry_print_item.namebuf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 77, i32 %namelen.0)
  %cmp14 = icmp ugt i32 %namelen.0, 77
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call17 = tail call ptr @strncpy(ptr noundef getelementptr inbounds ([80 x i8], ptr @direntry_print_item.namebuf, i32 0, i32 1), ptr noundef %add.ptr8, i32 noundef 77)
  store i8 34, ptr getelementptr inbounds ([80 x i8], ptr @direntry_print_item.namebuf, i32 0, i32 78), align 1
  br label %do.end24

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %36 = call ptr @memcpy(ptr getelementptr inbounds ([80 x i8], ptr @direntry_print_item.namebuf, i32 0, i32 1), ptr %add.ptr8, i32 %namelen.0)
  %add = add nuw nsw i32 %namelen.0, 1
  %arrayidx18 = getelementptr [80 x i8], ptr @direntry_print_item.namebuf, i32 0, i32 %add
  %37 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 34, ptr %arrayidx18, align 1
  %add19 = add nuw nsw i32 %namelen.0, 2
  %arrayidx20 = getelementptr [80 x i8], ptr @direntry_print_item.namebuf, i32 0, i32 %add19
  br label %do.end24

do.end24:                                         ; preds = %if.else, %if.then16
  %.sink60 = phi ptr [ getelementptr inbounds ([80 x i8], ptr @direntry_print_item.namebuf, i32 0, i32 79), %if.then16 ], [ %arrayidx20, %if.else ]
  %38 = ptrtoint ptr %.sink60 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %.sink60, align 1
  %deh_dir_id = getelementptr %struct.reiserfs_de_head, ptr %item.pn, i32 1, i32 1
  %39 = ptrtoint ptr %deh_dir_id to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %deh_dir_id, align 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %deh_objectid = getelementptr %struct.reiserfs_de_head, ptr %item.pn, i32 1, i32 2
  %42 = ptrtoint ptr %deh_objectid to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %43 = load i32, ptr %deh_objectid, align 1
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %deh.056 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %deh.056, align 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %46)
  %conv26 = zext i32 %47 to i64
  %and = and i64 %conv26, 2147483520
  %and29 = and i64 %conv26, 127
  %deh_state = getelementptr %struct.reiserfs_de_head, ptr %item.pn, i32 1, i32 4
  %48 = ptrtoint ptr %deh_state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %deh_state, align 4
  %50 = and i32 %49, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool31.not = icmp eq i32 %50, 0
  %cond32 = select i1 %tobool31.not, ptr @.str.46, ptr @.str.47
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %i.058, ptr noundef nonnull @direntry_print_item.namebuf, i32 noundef %41, i32 noundef %44, i64 noundef %and, i64 noundef %and29, ptr noundef nonnull %cond32) #18
  %inc = add nuw nsw i32 %i.058, 1
  %51 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %51, i32 2)
  %52 = load i16, ptr %u, align 1
  %53 = tail call i16 @llvm.bswap.i16(i16 %52)
  %conv = zext i16 %53 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %do.end24.cond.end_crit_edge, label %do.end24.for.end_crit_edge, !llvm.loop !168

do.end24.for.end_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

do.end24.cond.end_crit_edge:                      ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

for.end:                                          ; preds = %do.end24.for.end_crit_edge, %do.end24.peel.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal void @direntry_check_item(ptr nocapture noundef %ih, ptr nocapture noundef %item) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @direntry_create_vi(ptr nocapture noundef readonly %vn, ptr nocapture noundef %vi, i32 noundef %is_affected, i32 noundef %insert_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vi_uarea = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 6
  %0 = ptrtoint ptr %vi_uarea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vi_uarea, align 4
  %2 = ptrtoint ptr %vi to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %vi, align 4
  %vi_ih = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 3
  %3 = ptrtoint ptr %vi_ih to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vi_ih, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.do.body5_crit_edge, label %lor.rhs, !prof !170

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5

lor.rhs:                                          ; preds = %entry
  %vi_item = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 4
  %5 = ptrtoint ptr %vi_item to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vi_item, align 4
  %tobool1.not = icmp eq ptr %6, null
  br i1 %tobool1.not, label %lor.rhs.do.body5_crit_edge, label %do.end10, !prof !170

lor.rhs.do.body5_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body5

do.body5:                                         ; preds = %lor.rhs.do.body5_crit_edge, %entry.do.body5_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/item_ops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 469, 0\0A.popsection", ""() #15, !srcloc !171
  unreachable

do.end10:                                         ; preds = %lor.rhs
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 0, ptr %1, align 1
  %8 = ptrtoint ptr %vi_ih to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vi_ih, align 4
  %ih_version.i = getelementptr inbounds %struct.item_head, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %ih_version.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %ih_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp.i.i = icmp eq i16 %11, 0
  %u.i.i = getelementptr inbounds %struct.reiserfs_key, ptr %9, i32 0, i32 2
  br i1 %cmp.i.i, label %cond.true.i.i, label %cond.false.i.i

cond.true.i.i:                                    ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %u.i.i, align 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #15
  %conv.i.i = zext i32 %14 to i64
  br label %le_ih_k_offset.exit

cond.false.i.i:                                   ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %u.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %16 = load i64, ptr %u.i.i, align 1
  %17 = and i64 %16, -241
  %18 = tail call i64 @llvm.bswap.i64(i64 %17) #15
  br label %le_ih_k_offset.exit

le_ih_k_offset.exit:                              ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i64 [ %conv.i.i, %cond.true.i.i ], [ %18, %cond.false.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cond.i.i)
  %cmp = icmp eq i64 %cond.i.i, 1
  br i1 %cmp, label %if.then12, label %le_ih_k_offset.exit.if.end14_crit_edge

le_ih_k_offset.exit.if.end14_crit_edge:           ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then12:                                        ; preds = %le_ih_k_offset.exit
  call void @__sanitizer_cov_trace_pc() #17
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 4)
  store i32 1, ptr %1, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %le_ih_k_offset.exit.if.end14_crit_edge
  %20 = ptrtoint ptr %vi_item to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vi_item, align 4
  %22 = ptrtoint ptr %vi_ih to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vi_ih, align 4
  %u = getelementptr inbounds %struct.item_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %u to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %u, align 1
  %26 = tail call i16 @llvm.bswap.i16(i16 %25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_affected)
  %tobool17.not = icmp eq i32 %is_affected, 0
  br i1 %tobool17.not, label %if.end14.cond.end28_crit_edge, label %cond.true

if.end14.cond.end28_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end28

cond.true:                                        ; preds = %if.end14
  %vn_mode = getelementptr inbounds %struct.virtual_node, ptr %vn, i32 0, i32 3
  %27 = ptrtoint ptr %vn_mode to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vn_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 99, i16 %28)
  %cmp19 = icmp eq i16 %28, 99
  br i1 %cmp19, label %cond.true.cond.end28_crit_edge, label %cond.false

cond.true.cond.end28_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end28

cond.false:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp2(i16 112, i16 %28)
  %cmp24 = icmp eq i16 %28, 112
  %cond = zext i1 %cmp24 to i16
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false, %cond.true.cond.end28_crit_edge, %if.end14.cond.end28_crit_edge
  %cond29 = phi i16 [ %cond, %cond.false ], [ -1, %cond.true.cond.end28_crit_edge ], [ 0, %if.end14.cond.end28_crit_edge ]
  %add = add i16 %cond29, %26
  %entry_count = getelementptr inbounds %struct.direntry_uarea, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %entry_count to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %add, ptr %entry_count, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %add)
  %cmp33146.not = icmp eq i16 %add, 0
  br i1 %cmp33146.not, label %cond.end28.for.end_crit_edge, label %for.body.lr.ph

cond.end28.for.end_crit_edge:                     ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end28
  %vn_mode36 = getelementptr inbounds %struct.virtual_node, ptr %vn, i32 0, i32 3
  %vn_pos_in_item = getelementptr inbounds %struct.virtual_node, ptr %vn, i32 0, i32 5
  %30 = ptrtoint ptr %vn_mode36 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vn_mode36, align 4
  %conv37.peel = sext i16 %31 to i32
  %32 = zext i32 %conv37.peel to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %conv37.peel, label %if.end.i.peel [
    i32 105, label %for.body.lr.ph.cond.false42.peel_crit_edge
    i32 100, label %for.body.lr.ph.cond.false42.peel_crit_edge189
  ]

for.body.lr.ph.cond.false42.peel_crit_edge189:    ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false42.peel

for.body.lr.ph.cond.false42.peel_crit_edge:       ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false42.peel

if.end.i.peel:                                    ; preds = %for.body.lr.ph
  %33 = ptrtoint ptr %vn_pos_in_item to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vn_pos_in_item, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp4.i.peel = icmp sgt i16 %34, 0
  %or.cond.i.peel = or i1 %tobool17.not, %cmp4.i.peel
  br i1 %or.cond.i.peel, label %if.end.i.peel.cond.false42.peel_crit_edge, label %if.end6.i.peel

if.end.i.peel.cond.false42.peel_crit_edge:        ; preds = %if.end.i.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.false42.peel

if.end6.i.peel:                                   ; preds = %if.end.i.peel
  %35 = zext i32 %conv37.peel to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %conv37.peel, label %if.end6.i.peel.if.then13.i_crit_edge [
    i32 99, label %cond.true40.peel
    i32 112, label %lor.lhs.false11.i.peel
  ]

if.end6.i.peel.if.then13.i_crit_edge:             ; preds = %if.end6.i.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13.i

lor.lhs.false11.i.peel:                           ; preds = %if.end6.i.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13.i

cond.true40.peel:                                 ; preds = %if.end6.i.peel
  call void @__sanitizer_cov_trace_pc() #17
  %deh_location.peel = getelementptr %struct.reiserfs_de_head, ptr %21, i32 0, i32 3
  br label %cond.end45.peel

cond.false42.peel:                                ; preds = %if.end.i.peel.cond.false42.peel_crit_edge, %for.body.lr.ph.cond.false42.peel_crit_edge, %for.body.lr.ph.cond.false42.peel_crit_edge189
  %36 = ptrtoint ptr %vi_ih to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vi_ih, align 4
  %ih_item_len.peel = getelementptr inbounds %struct.item_head, ptr %37, i32 0, i32 2
  br label %cond.end45.peel

cond.end45.peel:                                  ; preds = %cond.false42.peel, %cond.true40.peel
  %ih_item_len.peel.sink = phi ptr [ %ih_item_len.peel, %cond.false42.peel ], [ %deh_location.peel, %cond.true40.peel ]
  %retval.0.i.peel158 = phi i32 [ 0, %cond.false42.peel ], [ 1, %cond.true40.peel ]
  %38 = ptrtoint ptr %ih_item_len.peel.sink to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %ih_item_len.peel.sink, align 1
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %deh_location48.peel = getelementptr %struct.reiserfs_de_head, ptr %21, i32 %retval.0.i.peel158, i32 3
  %41 = ptrtoint ptr %deh_location48.peel to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %deh_location48.peel, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %sub50.peel = add i16 %40, 16
  %add51.peel = sub i16 %sub50.peel, %43
  %arrayidx53.peel = getelementptr %struct.direntry_uarea, ptr %1, i32 0, i32 2, i32 0
  %44 = ptrtoint ptr %arrayidx53.peel to i32
  call void @__asan_storeN_noabort(i32 %44, i32 2)
  store i16 %add51.peel, ptr %arrayidx53.peel, align 1
  %45 = ptrtoint ptr %entry_count to i32
  call void @__asan_loadN_noabort(i32 %45, i32 2)
  %46 = load i16, ptr %entry_count, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %46)
  %cmp33.peel = icmp ugt i16 %46, 1
  br i1 %cmp33.peel, label %for.body.peel, label %cond.end45.peel.for.end_crit_edge

cond.end45.peel.for.end_crit_edge:                ; preds = %cond.end45.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.peel:                                    ; preds = %cond.end45.peel
  %47 = ptrtoint ptr %vn_mode36 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vn_mode36, align 4
  %conv37.peel170 = sext i16 %48 to i32
  %49 = zext i32 %conv37.peel170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %conv37.peel170, label %if.end.i.peel171 [
    i32 105, label %for.body.peel.cond.true40.peel177_crit_edge
    i32 100, label %for.body.peel.cond.true40.peel177_crit_edge190
  ]

for.body.peel.cond.true40.peel177_crit_edge190:   ; preds = %for.body.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true40.peel177

for.body.peel.cond.true40.peel177_crit_edge:      ; preds = %for.body.peel
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true40.peel177

if.end.i.peel171:                                 ; preds = %for.body.peel
  %50 = ptrtoint ptr %vn_pos_in_item to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %vn_pos_in_item, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %51)
  %cmp4.i.peel172 = icmp sgt i16 %51, 1
  %or.cond.i.peel173 = or i1 %tobool17.not, %cmp4.i.peel172
  br i1 %or.cond.i.peel173, label %if.end.i.peel171.cond.true40.peel177_crit_edge, label %if.end6.i.peel174

if.end.i.peel171.cond.true40.peel177_crit_edge:   ; preds = %if.end.i.peel171
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true40.peel177

if.end6.i.peel174:                                ; preds = %if.end.i.peel171
  %52 = zext i32 %conv37.peel170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %conv37.peel170, label %if.end6.i.peel174.if.then13.i.loopexit_crit_edge [
    i32 99, label %if.end6.i.peel174.cond.true40.peel177_crit_edge
    i32 112, label %cond.false42.peel175
  ]

if.end6.i.peel174.cond.true40.peel177_crit_edge:  ; preds = %if.end6.i.peel174
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true40.peel177

if.end6.i.peel174.if.then13.i.loopexit_crit_edge: ; preds = %if.end6.i.peel174
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13.i.loopexit

cond.false42.peel175:                             ; preds = %if.end6.i.peel174
  call void @__sanitizer_cov_trace_pc() #17
  %53 = ptrtoint ptr %vi_ih to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vi_ih, align 4
  %ih_item_len.peel176 = getelementptr inbounds %struct.item_head, ptr %54, i32 0, i32 2
  br label %cond.end45.peel179

cond.true40.peel177:                              ; preds = %if.end6.i.peel174.cond.true40.peel177_crit_edge, %if.end.i.peel171.cond.true40.peel177_crit_edge, %for.body.peel.cond.true40.peel177_crit_edge, %for.body.peel.cond.true40.peel177_crit_edge190
  %retval.0.i162.peel = phi i32 [ 1, %if.end.i.peel171.cond.true40.peel177_crit_edge ], [ 1, %for.body.peel.cond.true40.peel177_crit_edge ], [ 1, %for.body.peel.cond.true40.peel177_crit_edge190 ], [ 2, %if.end6.i.peel174.cond.true40.peel177_crit_edge ]
  %sub.peel = add nsw i32 %retval.0.i162.peel, -1
  %deh_location.peel178 = getelementptr %struct.reiserfs_de_head, ptr %21, i32 %sub.peel, i32 3
  br label %cond.end45.peel179

cond.end45.peel179:                               ; preds = %cond.true40.peel177, %cond.false42.peel175
  %ih_item_len.sink.peel = phi ptr [ %ih_item_len.peel176, %cond.false42.peel175 ], [ %deh_location.peel178, %cond.true40.peel177 ]
  %retval.0.i163.peel = phi i32 [ 0, %cond.false42.peel175 ], [ %retval.0.i162.peel, %cond.true40.peel177 ]
  %55 = ptrtoint ptr %ih_item_len.sink.peel to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %ih_item_len.sink.peel, align 1
  %57 = tail call i16 @llvm.bswap.i16(i16 %56)
  %deh_location48.peel180 = getelementptr %struct.reiserfs_de_head, ptr %21, i32 %retval.0.i163.peel, i32 3
  %58 = ptrtoint ptr %deh_location48.peel180 to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %deh_location48.peel180, align 1
  %60 = tail call i16 @llvm.bswap.i16(i16 %59)
  %sub50.peel181 = add i16 %57, 16
  %add51.peel182 = sub i16 %sub50.peel181, %60
  %arrayidx53.peel183 = getelementptr %struct.direntry_uarea, ptr %1, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %arrayidx53.peel183 to i32
  call void @__asan_storeN_noabort(i32 %61, i32 2)
  store i16 %add51.peel182, ptr %arrayidx53.peel183, align 1
  %62 = ptrtoint ptr %entry_count to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %entry_count, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %63)
  %cmp33.peel184 = icmp ugt i16 %63, 2
  br i1 %cmp33.peel184, label %cond.end45.peel179.for.body_crit_edge, label %cond.end45.peel179.for.end_crit_edge

cond.end45.peel179.for.end_crit_edge:             ; preds = %cond.end45.peel179
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cond.end45.peel179.for.body_crit_edge:            ; preds = %cond.end45.peel179
  br label %for.body

for.body:                                         ; preds = %cond.true40.for.body_crit_edge, %cond.end45.peel179.for.body_crit_edge
  %i.0147 = phi i32 [ %inc, %cond.true40.for.body_crit_edge ], [ 2, %cond.end45.peel179.for.body_crit_edge ]
  %64 = ptrtoint ptr %vn_mode36 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vn_mode36, align 4
  %conv37 = sext i16 %65 to i32
  %66 = zext i32 %conv37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %conv37, label %if.end.i [
    i32 105, label %for.body.cond.true40_crit_edge
    i32 100, label %for.body.cond.true40_crit_edge191
  ]

for.body.cond.true40_crit_edge191:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true40

for.body.cond.true40_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true40

if.end.i:                                         ; preds = %for.body
  %67 = ptrtoint ptr %vn_pos_in_item to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vn_pos_in_item, align 4
  %conv35 = sext i16 %68 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0147, i32 %conv35)
  %cmp4.i = icmp slt i32 %i.0147, %conv35
  %or.cond.i = or i1 %tobool17.not, %cmp4.i
  br i1 %or.cond.i, label %if.end.i.cond.true40_crit_edge, label %if.end6.i

if.end.i.cond.true40_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true40

if.end6.i:                                        ; preds = %if.end.i
  %69 = zext i32 %conv37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %conv37, label %if.end6.i.if.then13.i.loopexit_crit_edge [
    i32 99, label %if.then8.i
    i32 112, label %old_entry_num.exit
  ]

if.end6.i.if.then13.i.loopexit_crit_edge:         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13.i.loopexit

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.i = add nuw nsw i32 %i.0147, 1
  br label %cond.true40

if.then13.i.loopexit:                             ; preds = %if.end6.i.if.then13.i.loopexit_crit_edge, %if.end6.i.peel174.if.then13.i.loopexit_crit_edge
  %.lcssa = phi i16 [ %48, %if.end6.i.peel174.if.then13.i.loopexit_crit_edge ], [ %65, %if.end6.i.if.then13.i.loopexit_crit_edge ]
  %conv37.le = sext i16 %.lcssa to i32
  br label %if.then13.i

if.then13.i:                                      ; preds = %if.then13.i.loopexit, %lor.lhs.false11.i.peel, %if.end6.i.peel.if.then13.i_crit_edge
  %conv37.le.pre-phi = phi i32 [ 112, %lor.lhs.false11.i.peel ], [ %conv37.peel, %if.end6.i.peel.if.then13.i_crit_edge ], [ %conv37.le, %if.then13.i.loopexit ]
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.50, ptr noundef nonnull @__func__.old_entry_num, ptr noundef nonnull @.str.51, i32 noundef 448, ptr noundef nonnull @__func__.old_entry_num, i32 noundef %conv37.le.pre-phi) #20
  unreachable

old_entry_num.exit:                               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  %sub.i = add nsw i32 %i.0147, -1
  br label %cond.true40

cond.true40:                                      ; preds = %old_entry_num.exit, %if.then8.i, %if.end.i.cond.true40_crit_edge, %for.body.cond.true40_crit_edge, %for.body.cond.true40_crit_edge191
  %retval.0.i162 = phi i32 [ %sub.i, %old_entry_num.exit ], [ %i.0147, %if.end.i.cond.true40_crit_edge ], [ %i.0147, %for.body.cond.true40_crit_edge ], [ %i.0147, %for.body.cond.true40_crit_edge191 ], [ %add.i, %if.then8.i ]
  %sub = add i32 %retval.0.i162, -1
  %deh_location = getelementptr %struct.reiserfs_de_head, ptr %21, i32 %sub, i32 3
  %70 = ptrtoint ptr %deh_location to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %deh_location, align 1
  %72 = tail call i16 @llvm.bswap.i16(i16 %71)
  %deh_location48 = getelementptr %struct.reiserfs_de_head, ptr %21, i32 %retval.0.i162, i32 3
  %73 = ptrtoint ptr %deh_location48 to i32
  call void @__asan_loadN_noabort(i32 %73, i32 2)
  %74 = load i16, ptr %deh_location48, align 1
  %75 = tail call i16 @llvm.bswap.i16(i16 %74)
  %sub50 = add i16 %72, 16
  %add51 = sub i16 %sub50, %75
  %arrayidx53 = getelementptr %struct.direntry_uarea, ptr %1, i32 0, i32 2, i32 %i.0147
  %76 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %add51, ptr %arrayidx53, align 1
  %inc = add nuw nsw i32 %i.0147, 1
  %77 = ptrtoint ptr %entry_count to i32
  call void @__asan_loadN_noabort(i32 %77, i32 2)
  %78 = load i16, ptr %entry_count, align 1
  %conv32 = zext i16 %78 to i32
  %cmp33 = icmp ult i32 %inc, %conv32
  br i1 %cmp33, label %cond.true40.for.body_crit_edge, label %cond.true40.for.end_crit_edge, !llvm.loop !172

cond.true40.for.end_crit_edge:                    ; preds = %cond.true40
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cond.true40.for.body_crit_edge:                   ; preds = %cond.true40
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %cond.true40.for.end_crit_edge, %cond.end45.peel179.for.end_crit_edge, %cond.end45.peel.for.end_crit_edge, %cond.end28.for.end_crit_edge
  %.lcssa144 = phi i16 [ 0, %cond.end28.for.end_crit_edge ], [ %46, %cond.end45.peel.for.end_crit_edge ], [ %63, %cond.end45.peel179.for.end_crit_edge ], [ %78, %cond.true40.for.end_crit_edge ]
  br i1 %tobool17.not, label %for.end.if.end67_crit_edge, label %land.lhs.true

for.end.if.end67_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

land.lhs.true:                                    ; preds = %for.end
  %vn_mode58 = getelementptr inbounds %struct.virtual_node, ptr %vn, i32 0, i32 3
  %79 = ptrtoint ptr %vn_mode58 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %vn_mode58, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 112, i16 %80)
  %cmp60 = icmp eq i16 %80, 112
  br i1 %cmp60, label %if.then62, label %land.lhs.true.if.end67_crit_edge

land.lhs.true.if.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end67

if.then62:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %conv63 = trunc i32 %insert_size to i16
  %vn_pos_in_item65 = getelementptr inbounds %struct.virtual_node, ptr %vn, i32 0, i32 5
  %81 = ptrtoint ptr %vn_pos_in_item65 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %vn_pos_in_item65, align 4
  %idxprom = sext i16 %82 to i32
  %arrayidx66 = getelementptr %struct.direntry_uarea, ptr %1, i32 0, i32 2, i32 %idxprom
  %83 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_storeN_noabort(i32 %83, i32 2)
  store i16 %conv63, ptr %arrayidx66, align 1
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %land.lhs.true.if.end67_crit_edge, %for.end.if.end67_crit_edge
  %84 = ptrtoint ptr %entry_count to i32
  call void @__asan_loadN_noabort(i32 %84, i32 2)
  %85 = load i16, ptr %entry_count, align 1
  %conv70 = zext i16 %85 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %cmp71149.not = icmp eq i16 %85, 0
  br i1 %cmp71149.not, label %if.end67.for.end80_crit_edge, label %if.end67.for.body73_crit_edge

if.end67.for.body73_crit_edge:                    ; preds = %if.end67
  br label %for.body73

if.end67.for.end80_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end80

for.body73:                                       ; preds = %for.body73.for.body73_crit_edge, %if.end67.for.body73_crit_edge
  %l.0151 = phi i32 [ %add77, %for.body73.for.body73_crit_edge ], [ 0, %if.end67.for.body73_crit_edge ]
  %k.0150 = phi i32 [ %inc79, %for.body73.for.body73_crit_edge ], [ 0, %if.end67.for.body73_crit_edge ]
  %arrayidx75 = getelementptr %struct.direntry_uarea, ptr %1, i32 0, i32 2, i32 %k.0150
  %86 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %arrayidx75, align 1
  %conv76 = zext i16 %87 to i32
  %add77 = add i32 %l.0151, %conv76
  %inc79 = add nuw nsw i32 %k.0150, 1
  %exitcond.not = icmp eq i32 %inc79, %conv70
  br i1 %exitcond.not, label %for.end80.loopexit, label %for.body73.for.body73_crit_edge

for.body73.for.body73_crit_edge:                  ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body73

for.end80.loopexit:                               ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #17
  %phi.bo = add i32 %add77, 24
  br label %for.end80

for.end80:                                        ; preds = %for.end80.loopexit, %if.end67.for.end80_crit_edge
  %l.0.lcssa = phi i32 [ 24, %if.end67.for.end80_crit_edge ], [ %phi.bo, %for.end80.loopexit ]
  %vi_item_len = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 2
  %88 = ptrtoint ptr %vi_item_len to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vi_item_len, align 2
  %conv82 = zext i16 %89 to i32
  br i1 %tobool17.not, label %for.end80.cond.end95_crit_edge, label %land.lhs.true84

for.end80.cond.end95_crit_edge:                   ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end95

land.lhs.true84:                                  ; preds = %for.end80
  %vn_mode85 = getelementptr inbounds %struct.virtual_node, ptr %vn, i32 0, i32 3
  %90 = ptrtoint ptr %vn_mode85 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %vn_mode85, align 4
  %92 = zext i16 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.81)
  switch i16 %91, label %land.lhs.true84.cond.end95_crit_edge [
    i16 112, label %land.lhs.true84.cond.true93_crit_edge
    i16 99, label %land.lhs.true84.cond.true93_crit_edge192
  ]

land.lhs.true84.cond.true93_crit_edge192:         ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true93

land.lhs.true84.cond.true93_crit_edge:            ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.true93

land.lhs.true84.cond.end95_crit_edge:             ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end95

cond.true93:                                      ; preds = %land.lhs.true84.cond.true93_crit_edge, %land.lhs.true84.cond.true93_crit_edge192
  br label %cond.end95

cond.end95:                                       ; preds = %cond.true93, %land.lhs.true84.cond.end95_crit_edge, %for.end80.cond.end95_crit_edge
  %cond96 = phi i32 [ %insert_size, %cond.true93 ], [ 0, %for.end80.cond.end95_crit_edge ], [ 0, %land.lhs.true84.cond.end95_crit_edge ]
  %add97 = add i32 %cond96, %conv82
  call void @__sanitizer_cov_trace_cmp4(i32 %l.0.lcssa, i32 %add97)
  %cmp98.not = icmp eq i32 %l.0.lcssa, %add97
  br i1 %cmp98.not, label %if.end103, label %if.then100

if.then100:                                       ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #17
  %vn_mode101 = getelementptr inbounds %struct.virtual_node, ptr %vn, i32 0, i32 3
  %93 = ptrtoint ptr %vn_mode101 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %vn_mode101, align 4
  %conv102 = sext i16 %94 to i32
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.direntry_create_vi, ptr noundef nonnull @.str.49, i32 noundef %conv102, i32 noundef %insert_size) #20
  unreachable

if.end103:                                        ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #17
  %conv32.le = zext i16 %.lcssa144 to i32
  %mul = shl nuw nsw i32 %conv32.le, 1
  %add56 = add nuw nsw i32 %mul, 8
  ret i32 %add56
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @direntry_check_left(ptr nocapture noundef readonly %vi, i32 noundef %free, i32 noundef %start_skip, i32 noundef %end_skip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vi_uarea = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 6
  %0 = ptrtoint ptr %vi_uarea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vi_uarea, align 4
  %entry_count = getelementptr inbounds %struct.direntry_uarea, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %entry_count to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %entry_count, align 1
  %conv = zext i16 %3 to i32
  %sub = sub i32 %conv, %end_skip
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %start_skip)
  %cmp40 = icmp sgt i32 %sub, %start_skip
  br i1 %cmp40, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %4 = sub i32 %sub, %start_skip
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %entries.043 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.042 = phi i32 [ %inc9, %if.end.for.body_crit_edge ], [ %start_skip, %for.body.preheader ]
  %free.addr.041 = phi i32 [ %sub8, %if.end.for.body_crit_edge ], [ %free, %for.body.preheader ]
  %arrayidx = getelementptr %struct.direntry_uarea, ptr %1, i32 0, i32 2, i32 %i.042
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %6 = load i16, ptr %arrayidx, align 1
  %conv2 = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %free.addr.041, i32 %conv2)
  %cmp3 = icmp slt i32 %free.addr.041, %conv2
  br i1 %cmp3, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end:                                           ; preds = %for.body
  %sub8 = sub i32 %free.addr.041, %conv2
  %inc = add i32 %entries.043, 1
  %inc9 = add nsw i32 %i.042, 1
  %cmp = icmp slt i32 %inc9, %sub
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %free.addr.0.lcssa = phi i32 [ %free, %entry.for.end_crit_edge ], [ %free.addr.041, %for.body.for.end_crit_edge ], [ %sub8, %if.end.for.end_crit_edge ]
  %entries.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %entries.043, %for.body.for.end_crit_edge ], [ %4, %if.end.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %entries.0.lcssa, i32 %conv)
  %cmp12 = icmp eq i32 %entries.0.lcssa, %conv
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__asan_handle_no_return()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_panic(ptr noundef null, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.direntry_check_left, ptr noundef nonnull @.str.53, i32 noundef %free.addr.0.lcssa, i32 noundef %conv) #20
  unreachable

if.end17:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start_skip)
  %cmp18 = icmp eq i32 %start_skip, 0
  br i1 %cmp18, label %land.lhs.true, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end17
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %1, align 1
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true20

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

land.lhs.true20:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %entries.0.lcssa)
  %cmp21 = icmp slt i32 %entries.0.lcssa, 2
  %spec.store.select = select i1 %cmp21, i32 0, i32 %entries.0.lcssa
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true20, %land.lhs.true.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  %entries.1 = phi i32 [ %spec.store.select, %land.lhs.true20 ], [ %entries.0.lcssa, %land.lhs.true.if.end24_crit_edge ], [ %entries.0.lcssa, %if.end17.if.end24_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entries.1)
  %tobool25.not = icmp eq i32 %entries.1, 0
  %. = select i1 %tobool25.not, i32 -1, i32 %entries.1
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @direntry_check_right(ptr nocapture noundef readonly %vi, i32 noundef %free) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vi_uarea = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 6
  %0 = ptrtoint ptr %vi_uarea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vi_uarea, align 4
  %entry_count = getelementptr inbounds %struct.direntry_uarea, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %entry_count to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %entry_count, align 1
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp48.not = icmp eq i16 %3, 0
  br i1 %cmp48.not, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.051.in = phi i32 [ %i.051, %if.end.for.body_crit_edge ], [ %conv, %entry.for.body_crit_edge ]
  %entries.050 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %free.addr.049 = phi i32 [ %sub8, %if.end.for.body_crit_edge ], [ %free, %entry.for.body_crit_edge ]
  %i.051 = add nsw i32 %i.051.in, -1
  %arrayidx = getelementptr %struct.direntry_uarea, ptr %1, i32 0, i32 2, i32 %i.051
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %arrayidx, align 1
  %conv2 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %free.addr.049, i32 %conv2)
  %cmp3 = icmp slt i32 %free.addr.049, %conv2
  br i1 %cmp3, label %for.body.do.body_crit_edge, label %if.end

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

if.end:                                           ; preds = %for.body
  %sub8 = sub i32 %free.addr.049, %conv2
  %inc = add nuw nsw i32 %entries.050, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %if.end.do.body15_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end.do.body15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body15

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %entries.0.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ %entries.050, %for.body.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %entries.0.lcssa, i32 %conv)
  %cmp11 = icmp eq i32 %entries.0.lcssa, %conv
  br i1 %cmp11, label %do.body.do.body15_crit_edge, label %do.end21, !prof !170

do.body.do.body15_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body15

do.body15:                                        ; preds = %do.body.do.body15_crit_edge, %if.end.do.body15_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/reiserfs/item_ops.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 569, 0\0A.popsection", ""() #15, !srcloc !174
  unreachable

do.end21:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %1, align 1
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %sub25 = add nsw i32 %conv, -2
  %8 = tail call i32 @llvm.smin.i32(i32 %entries.0.lcssa, i32 %sub25)
  %entries.1 = select i1 %tobool22.not, i32 %entries.0.lcssa, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entries.1)
  %tobool33.not = icmp eq i32 %entries.1, 0
  %. = select i1 %tobool33.not, i32 -1, i32 %entries.1
  ret i32 %.
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @direntry_part_size(ptr nocapture noundef readonly %vi, i32 noundef %first, i32 noundef %count) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vi_uarea = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 6
  %0 = ptrtoint ptr %vi_uarea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vi_uarea, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first)
  %cmp = icmp eq i32 %first, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %entry_count = getelementptr inbounds %struct.direntry_uarea, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %entry_count to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %entry_count, align 1
  %conv = zext i16 %3 to i32
  %sub = sub i32 %conv, %count
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %from.0 = phi i32 [ %sub, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %add = add i32 %count, -1
  %sub2 = add i32 %add, %from.0
  call void @__sanitizer_cov_trace_cmp4(i32 %from.0, i32 %sub2)
  %cmp3.not13 = icmp sgt i32 %from.0, %sub2
  br i1 %cmp3.not13, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %retval1.015 = phi i32 [ %add6, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %from.0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.direntry_uarea, ptr %1, i32 0, i32 2, i32 %i.014
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %arrayidx, align 1
  %conv5 = zext i16 %5 to i32
  %add6 = add i32 %retval1.015, %conv5
  %inc = add i32 %i.014, 1
  %cmp3.not = icmp sgt i32 %inc, %sub2
  br i1 %cmp3.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %retval1.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %add6, %for.body.for.end_crit_edge ]
  ret i32 %retval1.0.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @direntry_unit_num(ptr nocapture noundef readonly %vi) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vi_uarea = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 6
  %0 = ptrtoint ptr %vi_uarea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vi_uarea, align 4
  %entry_count = getelementptr inbounds %struct.direntry_uarea, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %entry_count to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %entry_count, align 1
  %conv = zext i16 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @direntry_print_vi(ptr nocapture noundef readonly %vi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vi_uarea = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 6
  %0 = ptrtoint ptr %vi_uarea to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vi_uarea, align 4
  %2 = ptrtoint ptr %vi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vi, align 4
  %vi_type = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 1
  %4 = ptrtoint ptr %vi_type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vi_type, align 4
  %conv = zext i16 %5 to i32
  %vi_ih = getelementptr inbounds %struct.virtual_item, ptr %vi, i32 0, i32 3
  %6 = ptrtoint ptr %vi_ih to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vi_ih, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %1, align 1
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.direntry_print_vi, ptr noundef nonnull @.str.55, i32 noundef %3, i32 noundef %conv, ptr noundef %7, i32 noundef %9) #15
  %entry_count = getelementptr inbounds %struct.direntry_uarea, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %entry_count to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %entry_count, align 1
  %conv1 = zext i16 %11 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %conv1) #18
  %12 = ptrtoint ptr %entry_count to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %entry_count, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp25.not = icmp eq i16 %13, 0
  br i1 %cmp25.not, label %entry.do.end13_crit_edge, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  br label %do.end7

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

do.end7:                                          ; preds = %do.end7.do.end7_crit_edge, %entry.do.end7_crit_edge
  %i.026 = phi i32 [ %inc, %do.end7.do.end7_crit_edge ], [ 0, %entry.do.end7_crit_edge ]
  %arrayidx = getelementptr %struct.direntry_uarea, ptr %1, i32 0, i32 2, i32 %i.026
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %arrayidx, align 1
  %conv9 = zext i16 %15 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %conv9) #18
  %inc = add nuw nsw i32 %i.026, 1
  %16 = ptrtoint ptr %entry_count to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %entry_count, align 1
  %conv3 = zext i16 %17 to i32
  %cmp = icmp ult i32 %inc, %conv3
  br i1 %cmp, label %do.end7.do.end7_crit_edge, label %do.end7.do.end13_crit_edge

do.end7.do.end13_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end13

do.end7.do.end7_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

do.end13:                                         ; preds = %do.end7.do.end13_crit_edge, %entry.do.end13_crit_edge
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #18
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #13

; Function Attrs: noreturn null_pointer_is_valid
declare dso_local void @__reiserfs_panic(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @errcatch_bytes_number(ptr nocapture noundef readnone %ih, i32 noundef %block_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.63, ptr noundef nonnull @__func__.errcatch_bytes_number, ptr noundef nonnull @.str.64) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @errcatch_decrement_key(ptr nocapture noundef readnone %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.errcatch_decrement_key, ptr noundef nonnull @.str.64) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @errcatch_is_left_mergeable(ptr nocapture noundef readnone %key, i32 noundef %bsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.66, ptr noundef nonnull @__func__.errcatch_is_left_mergeable, ptr noundef nonnull @.str.64) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @errcatch_print_item(ptr nocapture noundef readnone %ih, ptr nocapture noundef readnone %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.67, ptr noundef nonnull @__func__.errcatch_print_item, ptr noundef nonnull @.str.64) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @errcatch_check_item(ptr nocapture noundef readnone %ih, ptr nocapture noundef readnone %item) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.errcatch_check_item, ptr noundef nonnull @.str.64) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @errcatch_create_vi(ptr nocapture noundef readnone %vn, ptr nocapture noundef readnone %vi, i32 noundef %is_affected, i32 noundef %insert_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.errcatch_create_vi, ptr noundef nonnull @.str.64) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @errcatch_check_left(ptr nocapture noundef readnone %vi, i32 noundef %free, i32 noundef %start_skip, i32 noundef %end_skip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.errcatch_check_left, ptr noundef nonnull @.str.64) #15
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @errcatch_check_right(ptr nocapture noundef readnone %vi, i32 noundef %free) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.71, ptr noundef nonnull @__func__.errcatch_check_right, ptr noundef nonnull @.str.64) #15
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @errcatch_part_size(ptr nocapture noundef readnone %vi, i32 noundef %first, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.72, ptr noundef nonnull @__func__.errcatch_part_size, ptr noundef nonnull @.str.64) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @errcatch_unit_num(ptr nocapture noundef readnone %vi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.73, ptr noundef nonnull @__func__.errcatch_unit_num, ptr noundef nonnull @.str.64) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @errcatch_print_vi(ptr nocapture noundef readnone %vi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ptr, ptr, ...) @__reiserfs_warning(ptr noundef null, ptr noundef nonnull @.str.74, ptr noundef nonnull @__func__.errcatch_print_vi, ptr noundef nonnull @.str.64) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }
attributes #20 = { noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !76, !78, !79, !80, !81, !82, !83, !84, !85, !86, !88, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !124, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @item_ops, !1, !"item_ops", i1 false, i1 false}
!1 = !{!"../fs/reiserfs/item_ops.c", i32 737, i32 25}
!2 = !{ptr @stat_data_ops, !3, !"stat_data_ops", i1 false, i1 false}
!3 = !{!"../fs/reiserfs/item_ops.c", i32 98, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../fs/reiserfs/item_ops.c", i32 38, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @sd_print_item._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @sd_print_item._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/reiserfs/item_ops.c", i32 42, i32 3}
!12 = !{ptr @sd_print_item._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @sd_print_item._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/reiserfs/item_ops.c", i32 49, i32 3}
!16 = !{ptr @sd_print_item._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @sd_print_item._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../fs/reiserfs/item_ops.c", i32 93, i32 2}
!20 = !{ptr @__func__.sd_print_vi, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @indirect_ops, !23, !"indirect_ops", i1 false, i1 false}
!23 = !{!"../fs/reiserfs/item_ops.c", i32 333, i32 31}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/reiserfs/item_ops.c", i32 270, i32 3}
!26 = !{ptr @__func__.indirect_print_item, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../fs/reiserfs/item_ops.c", i32 272, i32 2}
!30 = !{ptr @indirect_print_item._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @indirect_print_item._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/reiserfs/item_ops.c", i32 280, i32 2}
!34 = !{ptr @indirect_print_item._entry.14, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @indirect_print_item._entry_ptr.16, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/reiserfs/item_ops.c", i32 255, i32 3}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @print_sequence._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @print_sequence._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../fs/reiserfs/item_ops.c", i32 257, i32 3}
!43 = !{ptr @print_sequence._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @print_sequence._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../fs/reiserfs/item_ops.c", i32 328, i32 2}
!47 = !{ptr @__func__.indirect_print_vi, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @direct_ops, !50, !"direct_ops", i1 false, i1 false}
!50 = !{!"../fs/reiserfs/item_ops.c", i32 189, i32 31}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../fs/reiserfs/item_ops.c", i32 139, i32 2}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @direct_print_item._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @direct_print_item._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../fs/reiserfs/item_ops.c", i32 141, i32 3}
!58 = !{ptr @direct_print_item._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @direct_print_item._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/reiserfs/item_ops.c", i32 142, i32 2}
!62 = !{ptr @direct_print_item._entry.29, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @direct_print_item._entry_ptr.31, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/reiserfs/item_ops.c", i32 184, i32 2}
!66 = !{ptr @__func__.direct_print_vi, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @direntry_ops, !69, !"direntry_ops", i1 false, i1 false}
!69 = !{!"../fs/reiserfs/item_ops.c", i32 620, i32 31}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/reiserfs/item_ops.c", i32 351, i32 2}
!72 = !{ptr @__func__.direntry_bytes_number, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @direntry_print_item.namebuf, !75, !"namebuf", i1 false, i1 false}
!75 = !{!"../fs/reiserfs/item_ops.c", i32 378, i32 14}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/reiserfs/item_ops.c", i32 380, i32 2}
!78 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @direntry_print_item._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @direntry_print_item._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../fs/reiserfs/item_ops.c", i32 403, i32 3}
!88 = !{ptr @direntry_print_item._entry.43, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @direntry_print_item._entry_ptr.45, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.46, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../fs/reiserfs/item_ops.c", i32 509, i32 4}
!94 = !{ptr @__func__.direntry_create_vi, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.49, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../fs/reiserfs/item_ops.c", i32 446, i32 2}
!98 = !{ptr @__func__.old_entry_num, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../fs/reiserfs/item_ops.c", i32 542, i32 3}
!102 = !{ptr @__func__.direntry_check_left, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../fs/reiserfs/item_ops.c", i32 611, i32 2}
!106 = !{ptr @__func__.direntry_print_vi, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../fs/reiserfs/item_ops.c", i32 614, i32 2}
!110 = !{ptr @direntry_print_vi._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @direntry_print_vi._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/reiserfs/item_ops.c", i32 616, i32 3}
!114 = !{ptr @direntry_print_vi._entry.57, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @direntry_print_vi._entry_ptr.59, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../fs/reiserfs/item_ops.c", i32 617, i32 2}
!118 = !{ptr @direntry_print_vi._entry.60, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @direntry_print_vi._entry_ptr.62, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @errcatch_ops, !121, !"errcatch_ops", i1 false, i1 false}
!121 = !{!"../fs/reiserfs/item_ops.c", i32 718, i32 31}
!122 = !{ptr @.str.63, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/reiserfs/item_ops.c", i32 638, i32 2}
!124 = !{ptr @__func__.errcatch_bytes_number, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.65, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../fs/reiserfs/item_ops.c", i32 645, i32 2}
!128 = !{ptr @__func__.errcatch_decrement_key, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../fs/reiserfs/item_ops.c", i32 652, i32 2}
!131 = !{ptr @__func__.errcatch_is_left_mergeable, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../fs/reiserfs/item_ops.c", i32 659, i32 2}
!134 = !{ptr @__func__.errcatch_print_item, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../fs/reiserfs/item_ops.c", i32 665, i32 2}
!137 = !{ptr @__func__.errcatch_check_item, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/reiserfs/item_ops.c", i32 673, i32 2}
!140 = !{ptr @__func__.errcatch_create_vi, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../fs/reiserfs/item_ops.c", i32 686, i32 2}
!143 = !{ptr @__func__.errcatch_check_left, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.71, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../fs/reiserfs/item_ops.c", i32 693, i32 2}
!146 = !{ptr @__func__.errcatch_check_right, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.72, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../fs/reiserfs/item_ops.c", i32 700, i32 2}
!149 = !{ptr @__func__.errcatch_part_size, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../fs/reiserfs/item_ops.c", i32 707, i32 2}
!152 = !{ptr @__func__.errcatch_unit_num, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../fs/reiserfs/item_ops.c", i32 714, i32 2}
!155 = !{ptr @__func__.errcatch_print_vi, !154, !"<string literal>", i1 false, i1 false}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{!"branch_weights", i32 2000, i32 1}
!166 = !{i64 2154109069, i64 2154109555, i64 2154109106, i64 2154109162, i64 2154109196, i64 2154109220, i64 2154109261, i64 2154109282, i64 2154109310, i64 2154109344}
!167 = !{i64 2154110641, i64 2154111127, i64 2154110678, i64 2154110734, i64 2154110768, i64 2154110792, i64 2154110833, i64 2154110854, i64 2154110882, i64 2154110916}
!168 = distinct !{!168, !169}
!169 = !{!"llvm.loop.peeled.count", i32 1}
!170 = !{!"branch_weights", i32 1, i32 2000}
!171 = !{i64 2154129901, i64 2154130388, i64 2154129938, i64 2154129994, i64 2154130028, i64 2154130052, i64 2154130093, i64 2154130114, i64 2154130142, i64 2154130176}
!172 = distinct !{!172, !173}
!173 = !{!"llvm.loop.peeled.count", i32 2}
!174 = !{i64 2154132829, i64 2154133316, i64 2154132866, i64 2154132922, i64 2154132956, i64 2154132980, i64 2154133021, i64 2154133042, i64 2154133070, i64 2154133104}
