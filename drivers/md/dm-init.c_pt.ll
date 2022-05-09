; ModuleID = '/llk/IR_all_yes/drivers/md/dm-init.c_pt.bc'
source_filename = "../drivers/md/dm-init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.69 }
%union.anon.69 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dm_device = type { %struct.dm_ioctl, [256 x ptr], [256 x ptr], %struct.list_head }
%struct.dm_ioctl = type { [3 x i32], i32, i32, i32, i32, i32, i32, i32, i64, [128 x i8], [129 x i8], [7 x i8] }
%struct.dm_target_spec = type { i64, i64, i32, i32, [16 x i8] }

@__initcall__kmod_dm_mod__269_300_dm_init_init7 = internal global ptr @dm_init_init, section ".initcall7.init", align 4
@__param_str_create = internal constant [14 x i8] c"dm_mod.create\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@create = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_create = internal constant %struct.kernel_param { ptr @__param_str_create, ptr null, ptr @param_ops_charp, i16 0, i8 -1, i8 0, %union.anon.69 { ptr @create } }, section "__param", align 4
@__UNIQUE_ID_createtype270 = internal constant [29 x i8] c"dm_mod.parmtype=create:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_create271 = internal constant [56 x i8] c"dm_mod.parm=create:Create a mapped device in early boot\00", section ".modinfo", align 1
@dm_init_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013device-mapper: init: Argument is too big. Limit is %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dm_init_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/md/dm-init.c\00", [43 x i8] zeroinitializer }, align 32
@dm_init_init._entry_ptr = internal global ptr @dm_init_init._entry, section ".printk_index", align 4
@dm_init_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\016device-mapper: init: waiting for all devices to be available before creating mapped devices\0A\00", [33 x i8] zeroinitializer }, align 32
@dm_init_init._entry_ptr.5 = internal global ptr @dm_init_init._entry.3, section ".printk_index", align 4
@dm_parse_devices.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dm_mod\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dm_parse_devices\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"device-mapper: init: parsing \22%s\22\0A\00", [61 x i8] zeroinitializer }, align 32
@dm_parse_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013device-mapper: init: too many devices %lu > %d\0A\00", [46 x i8] zeroinitializer }, align 32
@dm_parse_devices._entry_ptr = internal global ptr @dm_parse_devices._entry, section ".printk_index", align 4
@dm_parse_devices._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.7, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013device-mapper: init: couldn't parse device\0A\00", [50 x i8] zeroinitializer }, align 32
@dm_parse_devices._entry_ptr.12 = internal global ptr @dm_parse_devices._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ro\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rw\00", [29 x i8] zeroinitializer }, align 32
@dm_parse_table.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dm_parse_table\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"device-mapper: init: parsing table \22%s\22\0A\00", [55 x i8] zeroinitializer }, align 32
@dm_parse_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013device-mapper: init: too many targets %u > %d\0A\00", [47 x i8] zeroinitializer }, align 32
@dm_parse_table._entry_ptr = internal global ptr @dm_parse_table._entry, section ".printk_index", align 4
@dm_parse_table._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013device-mapper: init: couldn't parse table\0A\00", [51 x i8] zeroinitializer }, align 32
@dm_parse_table._entry_ptr.20 = internal global ptr @dm_parse_table._entry.18, section ".printk_index", align 4
@dm_parse_table_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013device-mapper: init: invalid type \22%s\22\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dm_parse_table_entry\00", [43 x i8] zeroinitializer }, align 32
@dm_parse_table_entry._entry_ptr = internal global ptr @dm_parse_table_entry._entry, section ".printk_index", align 4
@dm_allowed_targets = internal unnamed_addr constant [6 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section ".init.rodata", align 4
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"crypt\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"delay\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"linear\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snapshot-origin\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"striped\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"verity\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"create\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 22, i32 14 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 275, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 286, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 238, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 246, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 253, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 215, i32 24 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 217, i32 28 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 162, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 164, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 170, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 139, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 40, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 41, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 42, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 43, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 44, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [24 x i8] c"../drivers/md/dm-init.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 45, i32 2 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_create271, ptr @__UNIQUE_ID_createtype270, ptr @__initcall__kmod_dm_mod__269_300_dm_init_init7, ptr @__param_create, ptr @dm_init_init._entry, ptr @dm_init_init._entry.3, ptr @dm_init_init._entry_ptr, ptr @dm_init_init._entry_ptr.5, ptr @dm_parse_devices._entry, ptr @dm_parse_devices._entry.10, ptr @dm_parse_devices._entry_ptr, ptr @dm_parse_devices._entry_ptr.12, ptr @dm_parse_table._entry, ptr @dm_parse_table._entry.18, ptr @dm_parse_table._entry_ptr, ptr @dm_parse_table._entry_ptr.20, ptr @dm_parse_table_entry._entry, ptr @dm_parse_table_entry._entry_ptr, ptr @create, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_init_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_init_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_parse_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_parse_devices._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_parse_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_parse_table._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dm_parse_table_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dm_init_init() #0 section ".init.text" align 64 {
entry:
  %devices = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %devices) #6
  %0 = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 1
  %1 = ptrtoint ptr %devices to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %devices, ptr %devices, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %devices, ptr %0, align 4
  %3 = load ptr, ptr @create, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @strlen(ptr noundef nonnull %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %call)
  %cmp = icmp ugt i32 %call, 4095
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 4096) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call ptr @kstrndup(ptr noundef nonnull %3, i32 noundef 4096, i32 noundef 3264) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %call8 = call fastcc i32 @dm_parse_devices(ptr noundef nonnull %devices, ptr noundef nonnull %call4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end14, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

do.end14:                                         ; preds = %if.end7
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  call void @wait_for_device_probe() #6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end14
  %.pn.in = phi ptr [ %devices, %do.end14 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp19.not = icmp eq ptr %.pn, %devices
  br i1 %cmp19.not, label %for.cond.out_crit_edge, label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body:                                         ; preds = %for.cond
  %dev.0 = getelementptr i8, ptr %.pn, i32 -2360
  %table = getelementptr i8, ptr %.pn, i32 -2048
  %target_args_array = getelementptr i8, ptr %.pn, i32 -1024
  %call21 = call i32 @dm_early_create(ptr noundef %dev.0, ptr noundef %table, ptr noundef %target_args_array) #10
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.body.for.cond_crit_edge, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

out:                                              ; preds = %for.body.out_crit_edge, %for.cond.out_crit_edge, %if.end7.out_crit_edge
  call void @kfree(ptr noundef nonnull %call4) #6
  call fastcc void @dm_setup_cleanup(ptr noundef nonnull %devices) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call8, %out ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %devices) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dm_parse_devices(ptr noundef %devices, ptr noundef %str) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_parse_devices.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_parse_devices, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_parse_devices.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.8, ptr noundef %str) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %prev.i = getelementptr inbounds %struct.list_head, ptr %devices, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %if.end14.while.cond_crit_edge, %do.end
  %device.0 = phi ptr [ %str, %do.end ], [ %call15, %if.end14.while.cond_crit_edge ]
  %ndev.0 = phi i32 [ 0, %do.end ], [ %inc, %if.end14.while.cond_crit_edge ]
  %tobool3.not = icmp eq ptr %device.0, null
  br i1 %tobool3.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2368) #12
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %while.body.cleanup_crit_edge, label %if.end7

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %while.body
  %list = getelementptr inbounds %struct.dm_device, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %2, ptr noundef %devices) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add_tail.exit_crit_edge

if.end7.list_add_tail.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %devices, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.dm_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end7.list_add_tail.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %ndev.0)
  %exitcond = icmp eq i32 %ndev.0, 256
  br i1 %exitcond, label %do.end11, label %if.end14

do.end11:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 257, i32 noundef 256) #10
  br label %cleanup

if.end14:                                         ; preds = %list_add_tail.exit
  %inc = add nuw nsw i32 %ndev.0, 1
  %call15 = tail call fastcc ptr @dm_parse_device_entry(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %device.0) #11
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end20, label %if.end14.while.cond_crit_edge

if.end14.while.cond_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  %7 = ptrtoint ptr %call15 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.end11, %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end11 ], [ %7, %do.end20 ], [ 0, %while.cond.cleanup_crit_edge ], [ -12, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_device_probe() local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @dm_early_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dm_setup_cleanup(ptr noundef readonly %devices) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devices, align 4
  %cmp.not35 = icmp eq ptr %1, %devices
  br i1 %cmp.not35, label %entry.for.end18_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end18

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in36 = phi ptr [ %.pn39, %for.end.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %dev.038 = getelementptr i8, ptr %.pn.in36, i32 -2360
  %2 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn39 = load ptr, ptr %.pn.in36, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in36) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in36, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in36 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in36, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in36, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %target_count = getelementptr i8, ptr %.pn.in36, i32 -2340
  %11 = ptrtoint ptr %target_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %target_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp931.not = icmp eq i32 %12, 0
  br i1 %cmp931.not, label %list_del.exit.for.end_crit_edge, label %for.body10.lr.ph

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body10.lr.ph:                                 ; preds = %list_del.exit
  %target_args_array = getelementptr i8, ptr %.pn.in36, i32 -1024
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body10.lr.ph
  %i.032 = phi i32 [ 0, %for.body10.lr.ph ], [ %inc, %for.body10.for.body10_crit_edge ]
  %arrayidx = getelementptr %struct.dm_device, ptr %dev.038, i32 0, i32 1, i32 %i.032
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %14) #6
  %arrayidx11 = getelementptr [256 x ptr], ptr %target_args_array, i32 0, i32 %i.032
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx11, align 4
  tail call void @kfree(ptr noundef %16) #6
  %inc = add nuw i32 %i.032, 1
  %17 = ptrtoint ptr %target_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %target_count, align 4
  %cmp9 = icmp ult i32 %inc, %18
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.end_crit_edge

for.body10.for.end_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body10

for.end:                                          ; preds = %for.body10.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  tail call void @kfree(ptr noundef %dev.038) #6
  %cmp.not = icmp eq ptr %.pn39, %devices
  br i1 %cmp.not, label %for.end.for.end18_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.for.end18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end18

for.end18:                                        ; preds = %for.end.for.end18_crit_edge, %entry.for.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dm_parse_device_entry(ptr noundef %dev, ptr noundef %str) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %field = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %field) #6
  %0 = getelementptr inbounds [5 x ptr], ptr %field, i32 0, i32 1
  %1 = getelementptr inbounds [5 x ptr], ptr %field, i32 0, i32 2
  %2 = getelementptr inbounds [5 x ptr], ptr %field, i32 0, i32 3
  %3 = getelementptr inbounds [5 x ptr], ptr %field, i32 0, i32 4
  %4 = getelementptr inbounds i8, ptr %field, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %str, ptr %field, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add, %for.body.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0)
  %exitcond.not = icmp eq i32 %i.0, 4
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx1 = getelementptr [5 x ptr], ptr %field, i32 0, i32 %i.0
  %call = call fastcc ptr @str_field_delimit(ptr noundef %arrayidx1, i8 noundef zeroext 44) #11
  %add = add nuw nsw i32 %i.0, 1
  %arrayidx2 = getelementptr [5 x ptr], ptr %field, i32 0, i32 %add
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call7 = call fastcc ptr @str_field_delimit(ptr noundef %3, i8 noundef zeroext 59) #11
  %name = getelementptr inbounds %struct.dm_ioctl, ptr %dev, i32 0, i32 9
  %8 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %field, align 4
  %call9 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %9, i32 noundef 128) #6
  %uuid = getelementptr inbounds %struct.dm_ioctl, ptr %dev, i32 0, i32 10
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %0, align 4
  %call13 = tail call i32 @strscpy(ptr noundef %uuid, ptr noundef %11, i32 noundef 129) #6
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %char0 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool16.not = icmp eq i8 %char0, 0
  br i1 %tobool16.not, label %for.end.if.end27_crit_edge, label %if.then17

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then17:                                        ; preds = %for.end
  %dev20 = getelementptr inbounds %struct.dm_ioctl, ptr %dev, i32 0, i32 8
  %call21 = tail call i32 @kstrtoull(ptr noundef %13, i32 noundef 0, ptr noundef %dev20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end25, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.dm_ioctl, ptr %dev, i32 0, i32 5
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %or = or i32 %16, 8
  store i32 %or, ptr %flags, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %for.end.if.end27_crit_edge
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %call29 = tail call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(3) @.str.13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %flags33 = getelementptr inbounds %struct.dm_ioctl, ptr %dev, i32 0, i32 5
  %19 = ptrtoint ptr %flags33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags33, align 4
  %or34 = or i32 %20, 1
  store i32 %or34, ptr %flags33, align 4
  br label %if.end41

if.else:                                          ; preds = %if.end27
  %call36 = tail call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(3) @.str.14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.else.if.end41_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end41:                                         ; preds = %if.else.if.end41_crit_edge, %if.then31
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %call43 = tail call fastcc i32 @dm_parse_table(ptr noundef %dev, ptr noundef %22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  %spec.select = select i1 %tobool44.not, ptr %call7, ptr inttoptr (i32 -22 to ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.else.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then17.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.else.cleanup_crit_edge ], [ %spec.select, %if.end41 ], [ inttoptr (i32 -22 to ptr), %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %field) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @str_field_delimit(ptr nocapture noundef %str, i8 noundef zeroext %separator) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %str, align 4
  %call = tail call ptr @skip_spaces(ptr noundef %1) #6
  %2 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %str, align 4
  %conv = zext i8 %separator to i32
  %call1 = tail call ptr @strchr(ptr noundef %call, i32 noundef %conv)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %call1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %str, align 4
  %call2 = tail call ptr @strim(ptr noundef %5) #6
  %6 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %str, align 4
  %incdec.ptr = getelementptr i8, ptr %call1, i32 1
  %spec.select = select i1 %tobool.not, ptr null, ptr %incdec.ptr
  ret ptr %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dm_parse_table(ptr nocapture noundef %dev, ptr noundef %str) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %target_count = getelementptr inbounds %struct.dm_ioctl, ptr %dev, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end12.while.cond_crit_edge, %entry
  %table_entry.0 = phi ptr [ %str, %entry ], [ %call13, %if.end12.while.cond_crit_edge ]
  %tobool.not = icmp eq ptr %table_entry.0, null
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %do.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %while.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dm_parse_table.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dm_parse_table, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dm_parse_table.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.16, ptr noundef %str) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %0 = ptrtoint ptr %target_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target_count, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %target_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc)
  %cmp = icmp ugt i32 %inc, 256
  br i1 %cmp, label %do.end7, label %if.end12

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %inc, i32 noundef 256) #10
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %call13 = tail call fastcc ptr @dm_parse_table_entry(ptr noundef %dev, ptr noundef nonnull %table_entry.0) #11
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end18, label %if.end12.while.cond_crit_edge

if.end12.while.cond_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #10
  %2 = ptrtoint ptr %call13 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %do.end7, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end7 ], [ %2, %do.end18 ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dm_parse_table_entry(ptr nocapture noundef %dev, ptr noundef %str) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %field = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %target_count = getelementptr inbounds %struct.dm_ioctl, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %target_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target_count, align 4
  %sub = add i32 %1, -1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %field) #6
  %2 = getelementptr inbounds [4 x ptr], ptr %field, i32 0, i32 1
  %3 = getelementptr inbounds [4 x ptr], ptr %field, i32 0, i32 2
  %4 = getelementptr inbounds [4 x ptr], ptr %field, i32 0, i32 3
  %5 = getelementptr inbounds i8, ptr %field, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 12)
  %7 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %str, ptr %field, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %add, %for.body.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.0)
  %exitcond.not = icmp eq i32 %i.0, 3
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx1 = getelementptr [4 x ptr], ptr %field, i32 0, i32 %i.0
  %call = call fastcc ptr @str_field_delimit(ptr noundef %arrayidx1, i8 noundef zeroext 32) #11
  %add = add nuw nsw i32 %i.0, 1
  %arrayidx2 = getelementptr [4 x ptr], ptr %field, i32 0, i32 %add
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %call7 = call fastcc ptr @str_field_delimit(ptr noundef %4, i8 noundef zeroext 44) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 40) #12
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %for.end.cleanup_crit_edge, label %if.end12

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %for.end
  %arrayidx13 = getelementptr %struct.dm_device, ptr %dev, i32 0, i32 1, i32 %sub
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %arrayidx13, align 4
  %11 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %field, align 4
  %call15 = tail call i32 @kstrtoull(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %length = getelementptr inbounds %struct.dm_target_spec, ptr %call7.i.i, i32 0, i32 1
  %call21 = tail call i32 @kstrtoull(ptr noundef %14, i32 noundef 0, ptr noundef %length) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %target_type = getelementptr inbounds %struct.dm_target_spec, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %call27 = tail call i32 @strscpy(ptr noundef %target_type, ptr noundef %16, i32 noundef 16) #6
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %do.end, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end25
  %i.03.i = phi i32 [ 0, %if.end25 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [6 x ptr], ptr @dm_allowed_targets, i32 0, i32 %i.03.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %18, ptr noundef %target_type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end37, label %for.cond.i

do.end:                                           ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %target_type) #10
  br label %cleanup

if.end37:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 4
  %call39 = tail call ptr @kstrndup(ptr noundef %20, i32 noundef 4096, i32 noundef 3264) #6
  %arrayidx40 = getelementptr %struct.dm_device, ptr %dev, i32 0, i32 2, i32 %sub
  %21 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call39, ptr %arrayidx40, align 4
  %tobool43.not = icmp eq ptr %call39, null
  %spec.select = select i1 %tobool43.not, ptr inttoptr (i32 -12 to ptr), ptr %call7
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end, %if.end19.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %for.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end12.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end19.cleanup_crit_edge ], [ %spec.select, %if.end37 ], [ inttoptr (i32 -22 to ptr), %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %field) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__initcall__kmod_dm_mod__269_300_dm_init_init7, !1, !"__initcall__kmod_dm_mod__269_300_dm_init_init7", i1 false, i1 false}
!1 = !{!"../drivers/md/dm-init.c", i32 300, i32 1}
!2 = !{ptr @__param_create, !3, !"__param_create", i1 false, i1 false}
!3 = !{!"../drivers/md/dm-init.c", i32 302, i32 1}
!4 = !{ptr @__UNIQUE_ID_createtype270, !3, !"__UNIQUE_ID_createtype270", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_create271, !6, !"__UNIQUE_ID_create271", i1 false, i1 false}
!6 = !{!"../drivers/md/dm-init.c", i32 303, i32 1}
!7 = !{ptr @create, !8, !"create", i1 false, i1 false}
!8 = !{!"../drivers/md/dm-init.c", i32 22, i32 14}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/md/dm-init.c", i32 275, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @dm_init_init._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @dm_init_init._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/md/dm-init.c", i32 286, i32 2}
!17 = !{ptr @dm_init_init._entry.3, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @dm_init_init._entry_ptr.5, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/md/dm-init.c", i32 238, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @dm_parse_devices.__UNIQUE_ID_ddebug268, !20, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/md/dm-init.c", i32 246, i32 4}
!26 = !{ptr @dm_parse_devices._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dm_parse_devices._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/md/dm-init.c", i32 253, i32 4}
!30 = !{ptr @dm_parse_devices._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @dm_parse_devices._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/md/dm-init.c", i32 215, i32 24}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/md/dm-init.c", i32 217, i32 28}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/md/dm-init.c", i32 162, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @dm_parse_table.__UNIQUE_ID_ddebug267, !37, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/md/dm-init.c", i32 164, i32 4}
!42 = !{ptr @dm_parse_table._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @dm_parse_table._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/md/dm-init.c", i32 170, i32 4}
!46 = !{ptr @dm_parse_table._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @dm_parse_table._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/md/dm-init.c", i32 139, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @dm_parse_table_entry._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @dm_parse_table_entry._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/md/dm-init.c", i32 40, i32 2}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/md/dm-init.c", i32 41, i32 2}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/md/dm-init.c", i32 42, i32 2}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/md/dm-init.c", i32 43, i32 2}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/md/dm-init.c", i32 44, i32 2}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/md/dm-init.c", i32 45, i32 2}
!65 = !{ptr @dm_allowed_targets, !66, !"dm_allowed_targets", i1 false, i1 false}
!66 = !{!"../drivers/md/dm-init.c", i32 39, i32 27}
!67 = !{ptr @__param_str_create, !3, !"__param_str_create", i1 false, i1 false}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i64 2148285998, i64 2148286003, i64 2148286016, i64 2148286060, i64 2148286094, i64 2148286115}
