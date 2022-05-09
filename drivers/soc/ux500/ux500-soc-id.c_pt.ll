; ModuleID = '/llk/IR_all_yes/drivers/soc/ux500/ux500-soc-id.c_pt.bc'
source_filename = "../drivers/soc/ux500/ux500-soc-id.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_ux500_soc_id__228_227_ux500_soc_device_init4 = internal global ptr @ux500_soc_device_init, section ".initcall4.init", align 4
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ste,dbx500-backupram\00", [43 x i8] zeroinitializer }, align 32
@ux500_setup_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Unable to identify SoC\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ux500_setup_id\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/soc/ux500/ux500-soc-id.c\00", [63 x i8] zeroinitializer }, align 32
@ux500_setup_id._entry_ptr = internal global ptr @ux500_setup_id._entry, section ".printk_index", align 4
@dbx500_id.0 = internal global { i16, [30 x i8] } zeroinitializer, align 32
@dbx500_id.1 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@dbx500_id.2 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@ux500_print_soc_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\016DB%4x \00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ux500_print_soc_info\00", [43 x i8] zeroinitializer }, align 32
@ux500_print_soc_info._entry_ptr = internal global ptr @ux500_print_soc_info._entry, section ".printk_index", align 4
@ux500_print_soc_info._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.3, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01cEarly Drop\00", [19 x i8] zeroinitializer }, align 32
@ux500_print_soc_info._entry_ptr.8 = internal global ptr @ux500_print_soc_info._entry.6, section ".printk_index", align 4
@ux500_print_soc_info._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.3, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cv%d.%d\00", [23 x i8] zeroinitializer }, align 32
@ux500_print_soc_info._entry_ptr.11 = internal global ptr @ux500_print_soc_info._entry.9, section ".printk_index", align 4
@ux500_print_soc_info._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.3, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01cUnknown\00", [22 x i8] zeroinitializer }, align 32
@ux500_print_soc_info._entry_ptr.14 = internal global ptr @ux500_print_soc_info._entry.12, section ".printk_index", align 4
@ux500_print_soc_info._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.3, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01c [%#010x]\0A\00", [19 x i8] zeroinitializer }, align 32
@ux500_print_soc_info._entry_ptr.17 = internal global ptr @ux500_print_soc_info._entry.15, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%08x%08x%08x%08x%08x\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DB%4x\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ux500\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ED\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d.%d\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@ux500_soc_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ux500_soc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ux500_soc_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_process, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_process = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @process_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"process\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Standard\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%02xnm\0A\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1091551376, i64 1092599953, i64 1093648529, i64 1094697104]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 16, i64 34048, i64 34080]
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 204, i32 50 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 115, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"dbx500_id.0\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"dbx500_id.1\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"dbx500_id.2\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 55, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 58, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 60, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 62, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 64, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 180, i32 33 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 128, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 133, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 141, i32 32 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 141, i32 38 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 143, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 146, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"ux500_soc_group\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 165, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [16 x i8] c"ux500_soc_attrs\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 160, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"dev_attr_process\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 158, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 153, i32 23 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.117 = private constant [36 x i8] c"../drivers/soc/ux500/ux500-soc-id.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 155, i32 22 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__initcall__kmod_ux500_soc_id__228_227_ux500_soc_device_init4, ptr @ux500_print_soc_info._entry, ptr @ux500_print_soc_info._entry.12, ptr @ux500_print_soc_info._entry.15, ptr @ux500_print_soc_info._entry.6, ptr @ux500_print_soc_info._entry.9, ptr @ux500_print_soc_info._entry_ptr, ptr @ux500_print_soc_info._entry_ptr.11, ptr @ux500_print_soc_info._entry_ptr.14, ptr @ux500_print_soc_info._entry_ptr.17, ptr @ux500_print_soc_info._entry_ptr.8, ptr @ux500_setup_id._entry, ptr @ux500_setup_id._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dbx500_id.0, ptr @dbx500_id.1, ptr @dbx500_id.2, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @ux500_soc_group, ptr @ux500_soc_attrs, ptr @dev_attr_process, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_setup_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbx500_id.0 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbx500_id.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbx500_id.2 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_print_soc_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_print_soc_info._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_print_soc_info._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_print_soc_info._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_print_soc_info._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_soc_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ux500_soc_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_process to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ux500_soc_device_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @ux500_setup_id() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #11
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %call) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  tail call fastcc void @soc_info_populate(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call) #10
  tail call void @of_node_put(ptr noundef nonnull %call) #7
  %call5 = tail call ptr @soc_device_register(ptr noundef nonnull %call7.i.i) #7
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %1 = ptrtoint ptr %call5 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then7 ], [ -12, %if.then3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ux500_setup_id() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm "mrc\09p15, 0, $0, c0, c0, 0", "=r,~{cc}"() #12, !srcloc !68
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %entry.do.end_crit_edge [
    i32 1091551376, label %entry.if.then7_crit_edge
    i32 1092599953, label %entry.if.then7_crit_edge48
    i32 1093648529, label %sw.bb1
    i32 1094697104, label %sw.bb6
  ]

entry.if.then7_crit_edge48:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

entry.if.then7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb1:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @ux500_read_asicid(i32 noundef -1878926348) #10
  %shr.i = lshr i32 %call2, 8
  %trunc = trunc i32 %shr.i to i16
  %2 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.28)
  switch i16 %trunc, label %sw.bb1.if.then7_crit_edge [
    i16 -31488, label %sw.bb1.if.end9_crit_edge
    i16 -31456, label %sw.bb1.if.end9_crit_edge49
  ]

sw.bb1.if.end9_crit_edge49:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

sw.bb1.if.end9_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

sw.bb1.if.then7_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %sw.bb6, %sw.bb1.if.then7_crit_edge, %entry.if.then7_crit_edge, %entry.if.then7_crit_edge48
  %addr.045 = phi i32 [ -9228, %sw.bb6 ], [ -1878917132, %entry.if.then7_crit_edge ], [ -1878917132, %entry.if.then7_crit_edge48 ], [ -1878917132, %sw.bb1.if.then7_crit_edge ]
  %call8 = tail call fastcc i32 @ux500_read_asicid(i32 noundef %addr.045) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %sw.bb1.if.end9_crit_edge, %sw.bb1.if.end9_crit_edge49
  %asicid.1 = phi i32 [ %call8, %if.then7 ], [ %call2, %sw.bb1.if.end9_crit_edge ], [ %call2, %sw.bb1.if.end9_crit_edge49 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asicid.1)
  %tobool10.not = icmp eq i32 %asicid.1, 0
  br i1 %tobool10.not, label %if.end9.do.end_crit_edge, label %if.end19

if.end9.do.end_crit_edge:                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end9.do.end_crit_edge, %entry.do.end_crit_edge
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/soc/ux500/ux500-soc-id.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 116, 0\0A.popsection", ""() #7, !srcloc !69
  unreachable

if.end19:                                         ; preds = %if.end9
  %shr = lshr i32 %asicid.1, 24
  %conv = trunc i32 %shr to i8
  store i8 %conv, ptr @dbx500_id.2, align 2
  %shr.i33 = lshr i32 %asicid.1, 8
  %conv21 = trunc i32 %shr.i33 to i16
  store i16 %conv21, ptr @dbx500_id.0, align 2
  %conv22 = trunc i32 %asicid.1 to i8
  store i8 %conv22, ptr @dbx500_id.1, align 2
  %conv1.i = and i32 %shr.i33, 65535
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv1.i) #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %conv22)
  %cmp.i = icmp eq i8 %conv22, 1
  br i1 %cmp.i, label %do.end5.i, label %if.else.i

do.end5.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  br label %ux500_print_soc_info.exit

if.else.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp1(i8 -97, i8 %conv22)
  %cmp8.i = icmp ugt i8 %conv22, -97
  br i1 %cmp8.i, label %do.end13.i, label %do.end19.i

do.end13.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = lshr i32 %asicid.1, 4
  %shr.i35 = and i32 %conv.i, 15
  %add.i = add nsw i32 %shr.i35, -9
  %and.i36 = and i32 %asicid.1, 15
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %add.i, i32 noundef %and.i36) #13
  br label %ux500_print_soc_info.exit

do.end19.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  br label %ux500_print_soc_info.exit

ux500_print_soc_info.exit:                        ; preds = %do.end19.i, %do.end13.i, %do.end5.i
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %asicid.1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @soc_info_populate(ptr nocapture noundef writeonly %soc_dev_attr, ptr noundef %backupram) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_iomap(ptr noundef %backupram, i32 noundef 0) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.db8500_read_soc_id.exit_crit_edge, label %if.end.i

entry.db8500_read_soc_id.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %db8500_read_soc_id.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 8128
  tail call void @add_device_randomness(ptr noundef %add.ptr.i, i32 noundef 20) #7
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !70
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  %add.ptr6.i = getelementptr i8, ptr %call.i, i32 8132
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !70
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  %add.ptr12.i = getelementptr i8, ptr %call.i, i32 8136
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #7, !srcloc !70
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  %add.ptr18.i = getelementptr i8, ptr %call.i, i32 8140
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #7, !srcloc !70
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %add.ptr24.i = getelementptr i8, ptr %call.i, i32 8144
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #7, !srcloc !70
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %call28.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.18, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #7
  tail call void @iounmap(ptr noundef nonnull %call.i) #7
  br label %db8500_read_soc_id.exit

db8500_read_soc_id.exit:                          ; preds = %if.end.i, %entry.db8500_read_soc_id.exit_crit_edge
  %retval.0.i = phi ptr [ %call28.i, %if.end.i ], [ null, %entry.db8500_read_soc_id.exit_crit_edge ]
  %soc_id = getelementptr inbounds %struct.soc_device_attribute, ptr %soc_dev_attr, i32 0, i32 4
  %10 = ptrtoint ptr %soc_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %soc_id, align 4
  %11 = load i16, ptr @dbx500_id.0, align 2
  %conv.i = zext i16 %11 to i32
  %call.i8 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.19, i32 noundef %conv.i) #7
  %12 = ptrtoint ptr %soc_dev_attr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i8, ptr %soc_dev_attr, align 4
  %call.i9 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.20) #7
  %family = getelementptr inbounds %struct.soc_device_attribute, ptr %soc_dev_attr, i32 0, i32 1
  %13 = ptrtoint ptr %family to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i9, ptr %family, align 4
  %call3 = tail call fastcc ptr @ux500_get_revision() #10
  %revision = getelementptr inbounds %struct.soc_device_attribute, ptr %soc_dev_attr, i32 0, i32 2
  %14 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call3, ptr %revision, align 4
  %custom_attr_group = getelementptr inbounds %struct.soc_device_attribute, ptr %soc_dev_attr, i32 0, i32 6
  %15 = ptrtoint ptr %custom_attr_group to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ux500_soc_group, ptr %custom_attr_group, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ux500_read_asicid(i32 noundef %addr) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef %addr, i32 noundef 4) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call) #7, !srcloc !70
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @iounmap(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc noalias ptr @ux500_get_revision() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @dbx500_id.1, align 2
  %conv = zext i8 %0 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %0)
  %cmp = icmp eq i8 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -97, i8 %0)
  %cmp2 = icmp ugt i8 %0, -97
  br i1 %cmp2, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %conv, 4
  %add = add nsw i32 %shr, -9
  %and = and i32 %conv, 15
  %call5 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.23, i32 noundef %add, i32 noundef %and) #7
  br label %cleanup

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.24) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi ptr [ %call, %if.then ], [ %call5, %if.then4 ], [ %call7, %if.end6 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @process_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @dbx500_id.2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = call ptr @memcpy(ptr %buf, ptr @.str.26, i32 10)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %0 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %conv)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 9, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !54, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_ux500_soc_id__228_227_ux500_soc_device_init4, !1, !"__initcall__kmod_ux500_soc_id__228_227_ux500_soc_device_init4", i1 false, i1 false}
!1 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 227, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 204, i32 50}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 115, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @ux500_setup_id._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @ux500_setup_id._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = distinct !{null, !11, !"dbx500_id", i1 false, i1 false}
!11 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 35, i32 30}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 55, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ux500_print_soc_info._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @ux500_print_soc_info._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 58, i32 3}
!19 = !{ptr @ux500_print_soc_info._entry.6, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @ux500_print_soc_info._entry_ptr.8, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 60, i32 3}
!23 = !{ptr @ux500_print_soc_info._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ux500_print_soc_info._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 62, i32 3}
!27 = !{ptr @ux500_print_soc_info._entry.12, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ux500_print_soc_info._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 64, i32 2}
!31 = !{ptr @ux500_print_soc_info._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ux500_print_soc_info._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 180, i32 33}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 128, i32 31}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 133, i32 31}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 141, i32 32}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 141, i32 38}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 143, i32 32}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 146, i32 37}
!47 = distinct !{null, !48, !"ux500_soc_groups", i1 false, i1 false}
!48 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 165, i32 1}
!49 = !{ptr @ux500_soc_group, !48, !"ux500_soc_group", i1 false, i1 false}
!50 = !{ptr @ux500_soc_attrs, !51, !"ux500_soc_attrs", i1 false, i1 false}
!51 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 160, i32 26}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 158, i32 8}
!54 = !{ptr @dev_attr_process, !53, !"dev_attr_process", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 153, i32 23}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/soc/ux500/ux500-soc-id.c", i32 155, i32 22}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{i64 2152879612}
!69 = !{i64 2153978545, i64 2153979042, i64 2153978582, i64 2153978638, i64 2153978672, i64 2153978696, i64 2153978737, i64 2153978758, i64 2153978786, i64 2153978820}
!70 = !{i64 1249458}
!71 = !{i64 2153982571}
!72 = !{i64 2153983037}
!73 = !{i64 2153983503}
!74 = !{i64 2153983969}
!75 = !{i64 2153984435}
!76 = !{i64 2153969525}
