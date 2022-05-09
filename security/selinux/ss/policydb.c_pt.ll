; ModuleID = '/llk/IR_all_yes/security/selinux/ss/policydb.c_pt.bc'
source_filename = "../security/selinux/ss/policydb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.policydb_compat_info = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.policydb = type { i32, [8 x %struct.symtab], [8 x ptr], ptr, ptr, ptr, ptr, %struct.avtab, %struct.hashtab, %struct.ebitmap, %struct.hashtab, i32, ptr, %struct.avtab, ptr, i32, ptr, [9 x ptr], ptr, %struct.hashtab, ptr, %struct.ebitmap, %struct.ebitmap, i32, i32, i8, i16, i32 }
%struct.symtab = type { %struct.hashtab, i32 }
%struct.avtab = type { ptr, i32, i32, i32 }
%struct.hashtab = type { ptr, i32, i32 }
%struct.ebitmap = type { ptr, i32 }
%struct.filename_trans_key = type { i32, i16, ptr }
%struct.hashtab_node = type { ptr, ptr, ptr }
%struct.range_trans = type { i32, i32, i32 }
%struct.role_trans_key = type { i32, i32, i32 }
%struct.ocontext = type { %union.anon.0, %union.anon.5, [2 x %struct.context], [2 x i32], ptr }
%union.anon.0 = type { %struct.anon.3, [16 x i8] }
%struct.anon.3 = type { i64, i16, i16 }
%union.anon.5 = type { i32 }
%struct.context = type { i32, i32, i32, i32, %struct.mls_range, ptr }
%struct.mls_range = type { [2 x %struct.mls_level] }
%struct.mls_level = type { i32, %struct.ebitmap }
%struct.genfs = type { ptr, ptr, ptr }
%struct.role_allow = type { i32, i32, ptr }
%struct.filename_trans_datum = type { %struct.ebitmap, i32, ptr }
%struct.role_datum = type { i32, i32, %struct.ebitmap, %struct.ebitmap }
%struct.user_datum = type { i32, i32, %struct.ebitmap, %struct.mls_range, %struct.mls_level }
%struct.class_datum = type { i32, ptr, ptr, %struct.symtab, ptr, ptr, i8, i8, i8, i8 }
%struct.common_datum = type { i32, %struct.symtab }
%struct.policy_file = type { ptr, i32 }
%struct.anon = type { i8, i16, i16 }
%struct.anon.1 = type { i32, i32 }
%struct.anon.4 = type { ptr, i8 }
%struct.policy_data = type { ptr, ptr }
%struct.constraint_node = type { i32, ptr, ptr }
%struct.constraint_expr = type { i32, i32, i32, %struct.ebitmap, ptr, ptr }
%struct.type_set = type { %struct.ebitmap, %struct.ebitmap, i32 }
%struct.type_datum = type { i32, i32, i8, i8 }
%struct.level_datum = type { ptr, i8 }
%struct.cat_datum = type { i32, i8 }
%struct.ebitmap_node = type { ptr, [6 x i32], i32 }

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"security/selinux/ss/policydb.c\00", [33 x i8] zeroinitializer }, align 32
@policydb_load_isids._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013SELinux:  out of memory on SID table init\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"policydb_load_isids\00", [44 x i8] zeroinitializer }, align 32
@policydb_load_isids._entry_ptr = internal global ptr @policydb_load_isids._entry, section ".printk_index", align 4
@policydb_load_isids._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.2, ptr @.str, i32 886, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013SELinux:  SID 0 was assigned a context.\0A\00", [53 x i8] zeroinitializer }, align 32
@policydb_load_isids._entry_ptr.5 = internal global ptr @policydb_load_isids._entry.3, section ".printk_index", align 4
@policydb_load_isids._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str, i32 898, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013SELinux:  unable to load initial SID %s.\0A\00", [52 x i8] zeroinitializer }, align 32
@policydb_load_isids._entry_ptr.8 = internal global ptr @policydb_load_isids._entry.6, section ".printk_index", align 4
@policydb_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 2425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013SELinux:  policydb magic number 0x%x does not match expected magic number 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"policydb_read\00", [18 x i8] zeroinitializer }, align 32
@policydb_read._entry_ptr = internal global ptr @policydb_read._entry, section ".printk_index", align 4
@policydb_read._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str, i32 2434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013SELinux:  policydb string length %d does not match expected length %zu\0A\00", [54 x i8] zeroinitializer }, align 32
@policydb_read._entry_ptr.13 = internal global ptr @policydb_read._entry.11, section ".printk_index", align 4
@policydb_read._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str, i32 2442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013SELinux:  unable to allocate memory for policydb string of length %d\0A\00", [56 x i8] zeroinitializer }, align 32
@policydb_read._entry_ptr.16 = internal global ptr @policydb_read._entry.14, section ".printk_index", align 4
@policydb_read._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str, i32 2448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013SELinux:  truncated policydb string identifier\0A\00", [46 x i8] zeroinitializer }, align 32
@policydb_read._entry_ptr.19 = internal global ptr @policydb_read._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SE Linux\00", [23 x i8] zeroinitializer }, align 32
@policydb_read._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.10, ptr @.str, i32 2457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013SELinux:  policydb string %s does not match my string %s\0A\00", [36 x i8] zeroinitializer }, align 32
@policydb_read._entry_ptr.23 = internal global ptr @policydb_read._entry.21, section ".printk_index", align 4
@policydb_read._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.10, ptr @.str, i32 2476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013SELinux:  policydb version %d does not match my version range %d-%d\0A\00", [57 x i8] zeroinitializer }, align 32
@policydb_read._entry_ptr.26 = internal global ptr @policydb_read._entry.24, section ".printk_index", align 4
@policydb_read._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.10, ptr @.str, i32 2487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013SELinux: security policydb version %d (MLS) not backwards compatible\0A\00", [56 x i8] zeroinitializer }, align 32
@policydb_read._entry_ptr.29 = internal global ptr @policydb_read._entry.27, section ".printk_index", align 4
@policydb_read._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.10, ptr @.str, i32 2510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013SELinux:  unable to find policy compat info for version %d\0A\00", [34 x i8] zeroinitializer }, align 32
@policydb_read._entry_ptr.32 = internal global ptr @policydb_read._entry.30, section ".printk_index", align 4
@policydb_read._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.10, ptr @.str, i32 2520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013SELinux:  policydb table sizes (%d,%d) do not match mine (%d,%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@policydb_read._entry_ptr.35 = internal global ptr @policydb_read._entry.33, section ".printk_index", align 4
@read_f = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @common_read, ptr @class_read, ptr @role_read, ptr @type_read, ptr @user_read, ptr @cond_read_bool, ptr @sens_read, ptr @cat_read], [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"process\00", [24 x i8] zeroinitializer }, align 32
@policydb_read._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.10, ptr @.str, i32 2553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013SELinux: process class is required, not defined in policy\0A\00", [35 x i8] zeroinitializer }, align 32
@policydb_read._entry_ptr.39 = internal global ptr @policydb_read._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"transition\00", [21 x i8] zeroinitializer }, align 32
@policydb_read._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.10, ptr @.str, i32 2654, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013SELinux: process transition permission is required, not defined in policy\0A\00", [51 x i8] zeroinitializer }, align 32
@policydb_read._entry_ptr.43 = internal global ptr @policydb_read._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dyntransition\00", [18 x i8] zeroinitializer }, align 32
@policydb_read._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.10, ptr @.str, i32 2660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013SELinux: process dyntransition permission is required, not defined in policy\0A\00", [48 x i8] zeroinitializer }, align 32
@policydb_read._entry_ptr.47 = internal global ptr @policydb_read._entry.45, section ".printk_index", align 4
@policydb_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str, i32 3627, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\013SELinux: refusing to write policy version %d.  Because it is less than version %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"policydb_write\00", [17 x i8] zeroinitializer }, align 32
@policydb_write._entry_ptr = internal global ptr @policydb_write._entry, section ".printk_index", align 4
@policydb_write._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str, i32 3655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013SELinux: compatibility lookup failed for policy version %d\00", [35 x i8] zeroinitializer }, align 32
@policydb_write._entry_ptr.52 = internal global ptr @policydb_write._entry.50, section ".printk_index", align 4
@write_f = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @common_write, ptr @class_write, ptr @role_write, ptr @type_write, ptr @user_write, ptr @cond_write_bool, ptr @sens_write, ptr @cat_write], [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@policydb_compat = internal global { [19 x %struct.policydb_compat_info], [60 x i8] } { [19 x %struct.policydb_compat_info] [%struct.policydb_compat_info { i32 15, i32 5, i32 6 }, %struct.policydb_compat_info { i32 16, i32 6, i32 6 }, %struct.policydb_compat_info { i32 17, i32 6, i32 7 }, %struct.policydb_compat_info { i32 18, i32 6, i32 7 }, %struct.policydb_compat_info { i32 19, i32 8, i32 7 }, %struct.policydb_compat_info { i32 20, i32 8, i32 7 }, %struct.policydb_compat_info { i32 21, i32 8, i32 7 }, %struct.policydb_compat_info { i32 22, i32 8, i32 7 }, %struct.policydb_compat_info { i32 23, i32 8, i32 7 }, %struct.policydb_compat_info { i32 24, i32 8, i32 7 }, %struct.policydb_compat_info { i32 25, i32 8, i32 7 }, %struct.policydb_compat_info { i32 26, i32 8, i32 7 }, %struct.policydb_compat_info { i32 27, i32 8, i32 7 }, %struct.policydb_compat_info { i32 28, i32 8, i32 7 }, %struct.policydb_compat_info { i32 29, i32 8, i32 7 }, %struct.policydb_compat_info { i32 30, i32 8, i32 7 }, %struct.policydb_compat_info { i32 31, i32 8, i32 9 }, %struct.policydb_compat_info { i32 32, i32 8, i32 9 }, %struct.policydb_compat_info { i32 33, i32 8, i32 9 }], [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"object_r\00", [23 x i8] zeroinitializer }, align 32
@class_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013SELinux:  unknown common %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"class_read\00", [21 x i8] zeroinitializer }, align 32
@class_read._entry_ptr = internal global ptr @class_read._entry, section ".printk_index", align 4
@role_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str, i32 1430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013SELinux: Role %s has wrong value %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"role_read\00", [22 x i8] zeroinitializer }, align 32
@role_read._entry_ptr = internal global ptr @role_read._entry, section ".printk_index", align 4
@mls_read_range_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013SELinux: mls:  range overflow\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mls_read_range_helper\00", [42 x i8] zeroinitializer }, align 32
@mls_read_range_helper._entry_ptr = internal global ptr @mls_read_range_helper._entry, section ".printk_index", align 4
@mls_read_range_helper._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013SELinux: mls:  truncated range\0A\00", [62 x i8] zeroinitializer }, align 32
@mls_read_range_helper._entry_ptr.62 = internal global ptr @mls_read_range_helper._entry.60, section ".printk_index", align 4
@mls_read_range_helper._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.59, ptr @.str, i32 1007, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013SELinux: mls:  error reading low categories\0A\00", [49 x i8] zeroinitializer }, align 32
@mls_read_range_helper._entry_ptr.65 = internal global ptr @mls_read_range_helper._entry.63, section ".printk_index", align 4
@mls_read_range_helper._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.59, ptr @.str, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013SELinux: mls:  error reading high categories\0A\00", [48 x i8] zeroinitializer }, align 32
@mls_read_range_helper._entry_ptr.68 = internal global ptr @mls_read_range_helper._entry.66, section ".printk_index", align 4
@mls_read_range_helper._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.59, ptr @.str, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013SELinux: mls:  out of memory\0A\00", [32 x i8] zeroinitializer }, align 32
@mls_read_range_helper._entry_ptr.71 = internal global ptr @mls_read_range_helper._entry.69, section ".printk_index", align 4
@mls_read_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str, i32 1507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013SELinux: mls: truncated level\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mls_read_level\00", [17 x i8] zeroinitializer }, align 32
@mls_read_level._entry_ptr = internal global ptr @mls_read_level._entry, section ".printk_index", align 4
@mls_read_level._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str, i32 1514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013SELinux: mls:  error reading level categories\0A\00", [47 x i8] zeroinitializer }, align 32
@mls_read_level._entry_ptr.76 = internal global ptr @mls_read_level._entry.74, section ".printk_index", align 4
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"security/selinux/ss/hashtab.h\00", [34 x i8] zeroinitializer }, align 32
@filename_trans_read_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str, i32 2002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013SELinux:  Filename transition key with no datum\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"filename_trans_read_helper\00", [37 x i8] zeroinitializer }, align 32
@filename_trans_read_helper._entry_ptr = internal global ptr @filename_trans_read_helper._entry, section ".printk_index", align 4
@filename_trans_read_helper._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str, i32 2043, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013SELinux:  Duplicate filename transition key\0A\00", [49 x i8] zeroinitializer }, align 32
@filename_trans_read_helper._entry_ptr.83 = internal global ptr @filename_trans_read_helper._entry.81, section ".printk_index", align 4
@policydb_index.__UNIQUE_ID_ddebug484 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.84, ptr @.str.85, ptr @.str, ptr @.str.86, i8 0, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"selinux\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"policydb_index\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"SELinux:  %d users, %d roles, %d types, %d bools, %d sens, %d cats\0A\00", [60 x i8] zeroinitializer }, align 32
@policydb_index.__UNIQUE_ID_ddebug485 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.84, ptr @.str.85, ptr @.str, ptr @.str.87, i8 0, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"SELinux:  %d users, %d roles, %d types, %d bools\0A\00", [46 x i8] zeroinitializer }, align 32
@policydb_index.__UNIQUE_ID_ddebug486 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.84, ptr @.str.85, ptr @.str, ptr @.str.88, i8 0, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SELinux:  %d classes, %d rules\0A\00", [32 x i8] zeroinitializer }, align 32
@index_f = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @common_index, ptr @class_index, ptr @role_index, ptr @type_index, ptr @user_index, ptr @cond_index_bool, ptr @sens_index, ptr @cat_index], [32 x i8] zeroinitializer }, align 32
@context_read_and_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013SELinux: context truncated\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"context_read_and_validate\00", [38 x i8] zeroinitializer }, align 32
@context_read_and_validate._entry_ptr = internal global ptr @context_read_and_validate._entry, section ".printk_index", align 4
@context_read_and_validate._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str, i32 1053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013SELinux: error reading MLS range of context\0A\00", [49 x i8] zeroinitializer }, align 32
@context_read_and_validate._entry_ptr.93 = internal global ptr @context_read_and_validate._entry.91, section ".printk_index", align 4
@context_read_and_validate._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str, i32 1060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013SELinux:  invalid security context\0A\00", [58 x i8] zeroinitializer }, align 32
@context_read_and_validate._entry_ptr.96 = internal global ptr @context_read_and_validate._entry.94, section ".printk_index", align 4
@genfs_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str, i32 2138, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013SELinux:  dup genfs fstype %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"genfs_read\00", [21 x i8] zeroinitializer }, align 32
@genfs_read._entry_ptr = internal global ptr @genfs_read._entry, section ".printk_index", align 4
@genfs_read._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str, i32 2188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013SELinux:  dup genfs entry (%s,%s)\0A\00", [59 x i8] zeroinitializer }, align 32
@genfs_read._entry_ptr.101 = internal global ptr @genfs_read._entry.99, section ".printk_index", align 4
@range_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str, i32 1870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014SELinux:  rangetrans:  invalid range\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"range_read\00", [21 x i8] zeroinitializer }, align 32
@range_read._entry_ptr = internal global ptr @range_read._entry, section ".printk_index", align 4
@user_bounds_sanity_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str, i32 1670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013SELinux: user %s: too deep or looped boundary\00", [48 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"user_bounds_sanity_check\00", [39 x i8] zeroinitializer }, align 32
@user_bounds_sanity_check._entry_ptr = internal global ptr @user_bounds_sanity_check._entry, section ".printk_index", align 4
@user_bounds_sanity_check._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str, i32 1683, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013SELinux: boundary violated policy: user=%s role=%s bounds=%s\0A\00", [32 x i8] zeroinitializer }, align 32
@user_bounds_sanity_check._entry_ptr.109 = internal global ptr @user_bounds_sanity_check._entry.107, section ".printk_index", align 4
@role_bounds_sanity_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str, i32 1706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013SELinux: role %s: too deep or looped bounds\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"role_bounds_sanity_check\00", [39 x i8] zeroinitializer }, align 32
@role_bounds_sanity_check._entry_ptr = internal global ptr @role_bounds_sanity_check._entry, section ".printk_index", align 4
@role_bounds_sanity_check._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str, i32 1719, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013SELinux: boundary violated policy: role=%s type=%s bounds=%s\0A\00", [32 x i8] zeroinitializer }, align 32
@role_bounds_sanity_check._entry_ptr.114 = internal global ptr @role_bounds_sanity_check._entry.112, section ".printk_index", align 4
@type_bounds_sanity_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str, i32 1739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013SELinux: type %s: too deep or looped boundary\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"type_bounds_sanity_check\00", [39 x i8] zeroinitializer }, align 32
@type_bounds_sanity_check._entry_ptr = internal global ptr @type_bounds_sanity_check._entry, section ".printk_index", align 4
@type_bounds_sanity_check._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.116, ptr @.str, i32 1750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013SELinux: type %s: bounded by attribute %s\00", [52 x i8] zeroinitializer }, align 32
@type_bounds_sanity_check._entry_ptr.119 = internal global ptr @type_bounds_sanity_check._entry.117, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.121 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.122 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967279]
@__sancov_gen_cov_switch_values.123 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.125 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.129 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.139 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 794, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 876, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 886, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 897, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2423, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2432, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2441, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2448, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2455, i32 27 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2456, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2474, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2485, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2509, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2517, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"read_f\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1644, i32 14 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2551, i32 49 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2553, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2652, i32 48 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2654, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2658, i32 48 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2660, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 3625, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 3654, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant [8 x i8] c"write_f\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 3246, i32 14 }
@___asan_gen_.272 = private unnamed_addr constant [16 x i8] c"policydb_compat\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 66, i32 36 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 399, i32 16 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1336, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1429, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 989, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 995, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1007, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1013, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1019, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1507, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1514, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant [33 x i8] c"../security/selinux/ss/hashtab.h\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.345, i32 67, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2002, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2043, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 723, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 727, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 731, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant [8 x i8] c"index_f\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 675, i32 14 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1044, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1053, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1060, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2137, i32 5 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 2187, i32 6 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1870, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1668, i32 4 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1679, i32 4 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1704, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1715, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1737, i32 4 }
@___asan_gen_.464 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.467 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.468 = private constant [34 x i8] c"../security/selinux/ss/policydb.c\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.468, i32 1747, i32 4 }
@llvm.compiler.used = appending global [150 x ptr] [ptr @class_read._entry, ptr @class_read._entry_ptr, ptr @context_read_and_validate._entry, ptr @context_read_and_validate._entry.91, ptr @context_read_and_validate._entry.94, ptr @context_read_and_validate._entry_ptr, ptr @context_read_and_validate._entry_ptr.93, ptr @context_read_and_validate._entry_ptr.96, ptr @filename_trans_read_helper._entry, ptr @filename_trans_read_helper._entry.81, ptr @filename_trans_read_helper._entry_ptr, ptr @filename_trans_read_helper._entry_ptr.83, ptr @genfs_read._entry, ptr @genfs_read._entry.99, ptr @genfs_read._entry_ptr, ptr @genfs_read._entry_ptr.101, ptr @mls_read_level._entry, ptr @mls_read_level._entry.74, ptr @mls_read_level._entry_ptr, ptr @mls_read_level._entry_ptr.76, ptr @mls_read_range_helper._entry, ptr @mls_read_range_helper._entry.60, ptr @mls_read_range_helper._entry.63, ptr @mls_read_range_helper._entry.66, ptr @mls_read_range_helper._entry.69, ptr @mls_read_range_helper._entry_ptr, ptr @mls_read_range_helper._entry_ptr.62, ptr @mls_read_range_helper._entry_ptr.65, ptr @mls_read_range_helper._entry_ptr.68, ptr @mls_read_range_helper._entry_ptr.71, ptr @policydb_load_isids._entry, ptr @policydb_load_isids._entry.3, ptr @policydb_load_isids._entry.6, ptr @policydb_load_isids._entry_ptr, ptr @policydb_load_isids._entry_ptr.5, ptr @policydb_load_isids._entry_ptr.8, ptr @policydb_read._entry, ptr @policydb_read._entry.11, ptr @policydb_read._entry.14, ptr @policydb_read._entry.17, ptr @policydb_read._entry.21, ptr @policydb_read._entry.24, ptr @policydb_read._entry.27, ptr @policydb_read._entry.30, ptr @policydb_read._entry.33, ptr @policydb_read._entry.37, ptr @policydb_read._entry.41, ptr @policydb_read._entry.45, ptr @policydb_read._entry_ptr, ptr @policydb_read._entry_ptr.13, ptr @policydb_read._entry_ptr.16, ptr @policydb_read._entry_ptr.19, ptr @policydb_read._entry_ptr.23, ptr @policydb_read._entry_ptr.26, ptr @policydb_read._entry_ptr.29, ptr @policydb_read._entry_ptr.32, ptr @policydb_read._entry_ptr.35, ptr @policydb_read._entry_ptr.39, ptr @policydb_read._entry_ptr.43, ptr @policydb_read._entry_ptr.47, ptr @policydb_write._entry, ptr @policydb_write._entry.50, ptr @policydb_write._entry_ptr, ptr @policydb_write._entry_ptr.52, ptr @range_read._entry, ptr @range_read._entry_ptr, ptr @role_bounds_sanity_check._entry, ptr @role_bounds_sanity_check._entry.112, ptr @role_bounds_sanity_check._entry_ptr, ptr @role_bounds_sanity_check._entry_ptr.114, ptr @role_read._entry, ptr @role_read._entry_ptr, ptr @type_bounds_sanity_check._entry, ptr @type_bounds_sanity_check._entry.117, ptr @type_bounds_sanity_check._entry_ptr, ptr @type_bounds_sanity_check._entry_ptr.119, ptr @user_bounds_sanity_check._entry, ptr @user_bounds_sanity_check._entry.107, ptr @user_bounds_sanity_check._entry_ptr, ptr @user_bounds_sanity_check._entry_ptr.109, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @read_f, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @write_f, ptr @policydb_compat, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @index_f, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.118], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_load_isids._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_load_isids._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_load_isids._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_read._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_read._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_read._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_read._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_read._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_read._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_read._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_read._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_f to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_read._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_read._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_read._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_write._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_f to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @policydb_compat to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @class_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @role_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mls_read_range_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mls_read_range_helper._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mls_read_range_helper._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mls_read_range_helper._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mls_read_range_helper._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mls_read_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mls_read_level._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filename_trans_read_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filename_trans_read_helper._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @index_f to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_read_and_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_read_and_validate._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_read_and_validate._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genfs_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genfs_read._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_bounds_sanity_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @user_bounds_sanity_check._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @role_bounds_sanity_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @role_bounds_sanity_check._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type_bounds_sanity_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @type_bounds_sanity_check._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @policydb_filenametr_search(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %filename_trans = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 10
  %size.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 10, i32 1
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.hashtab_search.exit_crit_edge, label %if.end.i

entry.hashtab_search.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %hashtab_search.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key, align 4
  %tclass.i7 = getelementptr inbounds %struct.filename_trans_key, ptr %key, i32 0, i32 1
  %4 = ptrtoint ptr %tclass.i7 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tclass.i7, align 4
  %conv.i8 = zext i16 %5 to i32
  %xor.i = xor i32 %3, %conv.i8
  %name.i9 = getelementptr inbounds %struct.filename_trans_key, ptr %key, i32 0, i32 2
  %6 = ptrtoint ptr %name.i9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name.i9, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not5.i = icmp eq i8 %9, 0
  br i1 %tobool.not5.i, label %if.end.i.filenametr_hash.exit_crit_edge, label %if.end.i.while.body.i12_crit_edge

if.end.i.while.body.i12_crit_edge:                ; preds = %if.end.i
  br label %while.body.i12

if.end.i.filenametr_hash.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %filenametr_hash.exit

while.body.i12:                                   ; preds = %while.body.i12.while.body.i12_crit_edge, %if.end.i.while.body.i12_crit_edge
  %10 = phi i8 [ %12, %while.body.i12.while.body.i12_crit_edge ], [ %9, %if.end.i.while.body.i12_crit_edge ]
  %byte_num.07.i = phi i32 [ %inc.i, %while.body.i12.while.body.i12_crit_edge ], [ 0, %if.end.i.while.body.i12_crit_edge ]
  %hash.06.i = phi i32 [ %mul.i.i, %while.body.i12.while.body.i12_crit_edge ], [ %xor.i, %if.end.i.while.body.i12_crit_edge ]
  %inc.i = add i32 %byte_num.07.i, 1
  %conv1.i = zext i8 %10 to i32
  %shl.i.i = shl nuw nsw i32 %conv1.i, 4
  %add.i.i = add i32 %shl.i.i, %hash.06.i
  %shr.i.i = lshr i32 %conv1.i, 4
  %add1.i.i = add i32 %add.i.i, %shr.i.i
  %mul.i.i = mul i32 %add1.i.i, 11
  %arrayidx.i10 = getelementptr i8, ptr %7, i32 %inc.i
  %11 = ptrtoint ptr %arrayidx.i10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i10, align 1
  %tobool.not.i11 = icmp eq i8 %12, 0
  br i1 %tobool.not.i11, label %while.body.i12.filenametr_hash.exit_crit_edge, label %while.body.i12.while.body.i12_crit_edge

while.body.i12.while.body.i12_crit_edge:          ; preds = %while.body.i12
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i12

while.body.i12.filenametr_hash.exit_crit_edge:    ; preds = %while.body.i12
  call void @__sanitizer_cov_trace_pc() #19
  br label %filenametr_hash.exit

filenametr_hash.exit:                             ; preds = %while.body.i12.filenametr_hash.exit_crit_edge, %if.end.i.filenametr_hash.exit_crit_edge
  %hash.0.lcssa.i = phi i32 [ %xor.i, %if.end.i.filenametr_hash.exit_crit_edge ], [ %mul.i.i, %while.body.i12.filenametr_hash.exit_crit_edge ]
  %sub.i = add i32 %1, -1
  %and.i = and i32 %hash.0.lcssa.i, %sub.i
  %13 = ptrtoint ptr %filename_trans to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %filename_trans, align 4
  %arrayidx.i = getelementptr ptr, ptr %14, i32 %and.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %cur.029.i = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not30.i = icmp eq ptr %cur.029.i, null
  br i1 %tobool2.not30.i, label %filenametr_hash.exit.hashtab_search.exit_crit_edge, label %filenametr_hash.exit.while.body.i_crit_edge

filenametr_hash.exit.while.body.i_crit_edge:      ; preds = %filenametr_hash.exit
  br label %while.body.i

filenametr_hash.exit.hashtab_search.exit_crit_edge: ; preds = %filenametr_hash.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %hashtab_search.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %filenametr_hash.exit.while.body.i_crit_edge
  %cur.031.i = phi ptr [ %cur.0.i, %cleanup.i.while.body.i_crit_edge ], [ %cur.029.i, %filenametr_hash.exit.while.body.i_crit_edge ]
  %16 = ptrtoint ptr %cur.031.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur.031.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %sub.i2 = sub i32 %3, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i2)
  %tobool.not.i3 = icmp eq i32 %sub.i2, 0
  br i1 %tobool.not.i3, label %if.end.i4, label %while.body.i.if.end8.i_crit_edge

while.body.i.if.end8.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

if.end.i4:                                        ; preds = %while.body.i
  %tclass2.i = getelementptr inbounds %struct.filename_trans_key, ptr %17, i32 0, i32 1
  %20 = ptrtoint ptr %tclass2.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %tclass2.i, align 4
  %conv3.i = zext i16 %21 to i32
  %sub4.i = sub nsw i32 %conv.i8, %conv3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4.i)
  %tobool5.not.i = icmp eq i32 %sub4.i, 0
  br i1 %tobool5.not.i, label %filenametr_cmp.exit, label %if.end.i4.if.end8.i_crit_edge

if.end.i4.if.end8.i_crit_edge:                    ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

filenametr_cmp.exit:                              ; preds = %if.end.i4
  %name8.i = getelementptr inbounds %struct.filename_trans_key, ptr %17, i32 0, i32 2
  %22 = ptrtoint ptr %name8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name8.i, align 4
  %call.i5 = tail call i32 @strcmp(ptr noundef %7, ptr noundef %23) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %cmp6.i = icmp eq i32 %call.i5, 0
  br i1 %cmp6.i, label %cleanup.thread.i, label %filenametr_cmp.exit.if.end8.i_crit_edge

filenametr_cmp.exit.if.end8.i_crit_edge:          ; preds = %filenametr_cmp.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

cleanup.thread.i:                                 ; preds = %filenametr_cmp.exit
  call void @__sanitizer_cov_trace_pc() #19
  %datum.i = getelementptr inbounds %struct.hashtab_node, ptr %cur.031.i, i32 0, i32 1
  %24 = ptrtoint ptr %datum.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %datum.i, align 4
  br label %hashtab_search.exit

if.end8.i:                                        ; preds = %filenametr_cmp.exit.if.end8.i_crit_edge, %if.end.i4.if.end8.i_crit_edge, %while.body.i.if.end8.i_crit_edge
  %retval.0.i15 = phi i32 [ %call.i5, %filenametr_cmp.exit.if.end8.i_crit_edge ], [ %sub4.i, %if.end.i4.if.end8.i_crit_edge ], [ %sub.i2, %while.body.i.if.end8.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i15)
  %cmp9.i = icmp slt i32 %retval.0.i15, 0
  br i1 %cmp9.i, label %if.end8.i.hashtab_search.exit_crit_edge, label %cleanup.i

if.end8.i.hashtab_search.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %hashtab_search.exit

cleanup.i:                                        ; preds = %if.end8.i
  %next.i = getelementptr inbounds %struct.hashtab_node, ptr %cur.031.i, i32 0, i32 2
  %26 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %cur.0.i = load ptr, ptr %next.i, align 4
  %tobool2.not.i = icmp eq ptr %cur.0.i, null
  br i1 %tobool2.not.i, label %cleanup.i.hashtab_search.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

cleanup.i.hashtab_search.exit_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %hashtab_search.exit

hashtab_search.exit:                              ; preds = %cleanup.i.hashtab_search.exit_crit_edge, %if.end8.i.hashtab_search.exit_crit_edge, %cleanup.thread.i, %filenametr_hash.exit.hashtab_search.exit_crit_edge, %entry.hashtab_search.exit_crit_edge
  %retval.2.i = phi ptr [ null, %entry.hashtab_search.exit_crit_edge ], [ %25, %cleanup.thread.i ], [ null, %filenametr_hash.exit.hashtab_search.exit_crit_edge ], [ null, %cleanup.i.hashtab_search.exit_crit_edge ], [ null, %if.end8.i.hashtab_search.exit_crit_edge ]
  ret ptr %retval.2.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @policydb_rangetr_search(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %key) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %size.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 19, i32 1
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.hashtab_search.exit_crit_edge, label %if.end.i

entry.hashtab_search.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %hashtab_search.exit

if.end.i:                                         ; preds = %entry
  %range_tr = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 19
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key, align 4
  %target_type.i6 = getelementptr inbounds %struct.range_trans, ptr %key, i32 0, i32 1
  %4 = ptrtoint ptr %target_type.i6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target_type.i6, align 4
  %shl.i = shl i32 %5, 3
  %add.i = add i32 %shl.i, %3
  %target_class.i7 = getelementptr inbounds %struct.range_trans, ptr %key, i32 0, i32 2
  %6 = ptrtoint ptr %target_class.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target_class.i7, align 4
  %shl1.i = shl i32 %7, 5
  %add2.i = add i32 %add.i, %shl1.i
  %sub.i = add i32 %1, -1
  %and.i = and i32 %add2.i, %sub.i
  %8 = ptrtoint ptr %range_tr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %range_tr, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %and.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cur.029.i = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not30.i = icmp eq ptr %cur.029.i, null
  br i1 %tobool2.not30.i, label %if.end.i.hashtab_search.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.hashtab_search.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %hashtab_search.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %cur.031.i = phi ptr [ %cur.0.i, %cleanup.i.while.body.i_crit_edge ], [ %cur.029.i, %if.end.i.while.body.i_crit_edge ]
  %11 = ptrtoint ptr %cur.031.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.031.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %sub.i2 = sub i32 %3, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i2)
  %tobool.not.i3 = icmp eq i32 %sub.i2, 0
  br i1 %tobool.not.i3, label %if.end.i4, label %while.body.i.if.end8.i_crit_edge

while.body.i.if.end8.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

if.end.i4:                                        ; preds = %while.body.i
  %target_type2.i = getelementptr inbounds %struct.range_trans, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %target_type2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %target_type2.i, align 4
  %sub3.i = sub i32 %5, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %tobool4.not.i = icmp eq i32 %sub3.i, 0
  br i1 %tobool4.not.i, label %rangetr_cmp.exit, label %if.end.i4.if.end8.i_crit_edge

if.end.i4.if.end8.i_crit_edge:                    ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

rangetr_cmp.exit:                                 ; preds = %if.end.i4
  %target_class7.i = getelementptr inbounds %struct.range_trans, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %target_class7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %target_class7.i, align 4
  %sub8.i = sub i32 %7, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i)
  %cmp6.i = icmp eq i32 %sub8.i, 0
  br i1 %cmp6.i, label %cleanup.thread.i, label %rangetr_cmp.exit.if.end8.i_crit_edge

rangetr_cmp.exit.if.end8.i_crit_edge:             ; preds = %rangetr_cmp.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

cleanup.thread.i:                                 ; preds = %rangetr_cmp.exit
  call void @__sanitizer_cov_trace_pc() #19
  %datum.i = getelementptr inbounds %struct.hashtab_node, ptr %cur.031.i, i32 0, i32 1
  %19 = ptrtoint ptr %datum.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %datum.i, align 4
  br label %hashtab_search.exit

if.end8.i:                                        ; preds = %rangetr_cmp.exit.if.end8.i_crit_edge, %if.end.i4.if.end8.i_crit_edge, %while.body.i.if.end8.i_crit_edge
  %retval.0.i10 = phi i32 [ %sub8.i, %rangetr_cmp.exit.if.end8.i_crit_edge ], [ %sub3.i, %if.end.i4.if.end8.i_crit_edge ], [ %sub.i2, %while.body.i.if.end8.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i10)
  %cmp9.i = icmp slt i32 %retval.0.i10, 0
  br i1 %cmp9.i, label %if.end8.i.hashtab_search.exit_crit_edge, label %cleanup.i

if.end8.i.hashtab_search.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %hashtab_search.exit

cleanup.i:                                        ; preds = %if.end8.i
  %next.i = getelementptr inbounds %struct.hashtab_node, ptr %cur.031.i, i32 0, i32 2
  %21 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %cur.0.i = load ptr, ptr %next.i, align 4
  %tobool2.not.i = icmp eq ptr %cur.0.i, null
  br i1 %tobool2.not.i, label %cleanup.i.hashtab_search.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

cleanup.i.hashtab_search.exit_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %hashtab_search.exit

hashtab_search.exit:                              ; preds = %cleanup.i.hashtab_search.exit_crit_edge, %if.end8.i.hashtab_search.exit_crit_edge, %cleanup.thread.i, %if.end.i.hashtab_search.exit_crit_edge, %entry.hashtab_search.exit_crit_edge
  %retval.2.i = phi ptr [ null, %entry.hashtab_search.exit_crit_edge ], [ %20, %cleanup.thread.i ], [ null, %if.end.i.hashtab_search.exit_crit_edge ], [ null, %cleanup.i.hashtab_search.exit_crit_edge ], [ null, %if.end8.i.hashtab_search.exit_crit_edge ]
  ret ptr %retval.2.i
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @policydb_roletr_search(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %key) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %size.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.hashtab_search.exit_crit_edge, label %if.end.i

entry.hashtab_search.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %hashtab_search.exit

if.end.i:                                         ; preds = %entry
  %role_tr = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 8
  %2 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key, align 4
  %type.i6 = getelementptr inbounds %struct.role_trans_key, ptr %key, i32 0, i32 1
  %4 = ptrtoint ptr %type.i6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i6, align 4
  %shl.i = shl i32 %5, 3
  %add.i = add i32 %shl.i, %3
  %tclass.i7 = getelementptr inbounds %struct.role_trans_key, ptr %key, i32 0, i32 2
  %6 = ptrtoint ptr %tclass.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tclass.i7, align 4
  %shl1.i = shl i32 %7, 5
  %add2.i = add i32 %add.i, %shl1.i
  %sub.i = add i32 %1, -1
  %and.i = and i32 %add2.i, %sub.i
  %8 = ptrtoint ptr %role_tr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %role_tr, align 4
  %arrayidx.i = getelementptr ptr, ptr %9, i32 %and.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cur.029.i = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not30.i = icmp eq ptr %cur.029.i, null
  br i1 %tobool2.not30.i, label %if.end.i.hashtab_search.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.hashtab_search.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %hashtab_search.exit

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %cur.031.i = phi ptr [ %cur.0.i, %cleanup.i.while.body.i_crit_edge ], [ %cur.029.i, %if.end.i.while.body.i_crit_edge ]
  %11 = ptrtoint ptr %cur.031.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.031.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %sub.i2 = sub i32 %3, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i2)
  %tobool.not.i3 = icmp eq i32 %sub.i2, 0
  br i1 %tobool.not.i3, label %if.end.i4, label %while.body.i.if.end8.i_crit_edge

while.body.i.if.end8.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

if.end.i4:                                        ; preds = %while.body.i
  %type2.i = getelementptr inbounds %struct.role_trans_key, ptr %12, i32 0, i32 1
  %15 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type2.i, align 4
  %sub3.i = sub i32 %5, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %tobool4.not.i = icmp eq i32 %sub3.i, 0
  br i1 %tobool4.not.i, label %role_trans_cmp.exit, label %if.end.i4.if.end8.i_crit_edge

if.end.i4.if.end8.i_crit_edge:                    ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

role_trans_cmp.exit:                              ; preds = %if.end.i4
  %tclass7.i = getelementptr inbounds %struct.role_trans_key, ptr %12, i32 0, i32 2
  %17 = ptrtoint ptr %tclass7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tclass7.i, align 4
  %sub8.i = sub i32 %7, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i)
  %cmp6.i = icmp eq i32 %sub8.i, 0
  br i1 %cmp6.i, label %cleanup.thread.i, label %role_trans_cmp.exit.if.end8.i_crit_edge

role_trans_cmp.exit.if.end8.i_crit_edge:          ; preds = %role_trans_cmp.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

cleanup.thread.i:                                 ; preds = %role_trans_cmp.exit
  call void @__sanitizer_cov_trace_pc() #19
  %datum.i = getelementptr inbounds %struct.hashtab_node, ptr %cur.031.i, i32 0, i32 1
  %19 = ptrtoint ptr %datum.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %datum.i, align 4
  br label %hashtab_search.exit

if.end8.i:                                        ; preds = %role_trans_cmp.exit.if.end8.i_crit_edge, %if.end.i4.if.end8.i_crit_edge, %while.body.i.if.end8.i_crit_edge
  %retval.0.i10 = phi i32 [ %sub8.i, %role_trans_cmp.exit.if.end8.i_crit_edge ], [ %sub3.i, %if.end.i4.if.end8.i_crit_edge ], [ %sub.i2, %while.body.i.if.end8.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i10)
  %cmp9.i = icmp slt i32 %retval.0.i10, 0
  br i1 %cmp9.i, label %if.end8.i.hashtab_search.exit_crit_edge, label %cleanup.i

if.end8.i.hashtab_search.exit_crit_edge:          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %hashtab_search.exit

cleanup.i:                                        ; preds = %if.end8.i
  %next.i = getelementptr inbounds %struct.hashtab_node, ptr %cur.031.i, i32 0, i32 2
  %21 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %cur.0.i = load ptr, ptr %next.i, align 4
  %tobool2.not.i = icmp eq ptr %cur.0.i, null
  br i1 %tobool2.not.i, label %cleanup.i.hashtab_search.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

cleanup.i.hashtab_search.exit_crit_edge:          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %hashtab_search.exit

hashtab_search.exit:                              ; preds = %cleanup.i.hashtab_search.exit_crit_edge, %if.end8.i.hashtab_search.exit_crit_edge, %cleanup.thread.i, %if.end.i.hashtab_search.exit_crit_edge, %entry.hashtab_search.exit_crit_edge
  %retval.2.i = phi ptr [ null, %entry.hashtab_search.exit_crit_edge ], [ %20, %cleanup.thread.i ], [ null, %if.end.i.hashtab_search.exit_crit_edge ], [ null, %cleanup.i.hashtab_search.exit_crit_edge ], [ null, %if.end8.i.hashtab_search.exit_crit_edge ]
  ret ptr %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @policydb_destroy(ptr noundef %p) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 794, i32 noundef 0) #17
  %call.i = tail call i32 @__cond_resched() #17
  %arrayidx = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 0
  %call2 = tail call i32 @hashtab_map(ptr noundef %arrayidx, ptr noundef nonnull @common_destroy, ptr noundef null) #17
  tail call void @hashtab_destroy(ptr noundef %arrayidx) #17
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 794, i32 noundef 0) #17
  %call.i.1 = tail call i32 @__cond_resched() #17
  %arrayidx.1 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 1
  %call2.1 = tail call i32 @hashtab_map(ptr noundef %arrayidx.1, ptr noundef nonnull @cls_destroy, ptr noundef null) #17
  tail call void @hashtab_destroy(ptr noundef %arrayidx.1) #17
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 794, i32 noundef 0) #17
  %call.i.2 = tail call i32 @__cond_resched() #17
  %arrayidx.2 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 2
  %call2.2 = tail call i32 @hashtab_map(ptr noundef %arrayidx.2, ptr noundef nonnull @role_destroy, ptr noundef null) #17
  tail call void @hashtab_destroy(ptr noundef %arrayidx.2) #17
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 794, i32 noundef 0) #17
  %call.i.3 = tail call i32 @__cond_resched() #17
  %arrayidx.3 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 3
  %call2.3 = tail call i32 @hashtab_map(ptr noundef %arrayidx.3, ptr noundef nonnull @type_destroy, ptr noundef null) #17
  tail call void @hashtab_destroy(ptr noundef %arrayidx.3) #17
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 794, i32 noundef 0) #17
  %call.i.4 = tail call i32 @__cond_resched() #17
  %arrayidx.4 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 4
  %call2.4 = tail call i32 @hashtab_map(ptr noundef %arrayidx.4, ptr noundef nonnull @user_destroy, ptr noundef null) #17
  tail call void @hashtab_destroy(ptr noundef %arrayidx.4) #17
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 794, i32 noundef 0) #17
  %call.i.5 = tail call i32 @__cond_resched() #17
  %arrayidx.5 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 5
  %call2.5 = tail call i32 @hashtab_map(ptr noundef %arrayidx.5, ptr noundef nonnull @cond_destroy_bool, ptr noundef null) #17
  tail call void @hashtab_destroy(ptr noundef %arrayidx.5) #17
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 794, i32 noundef 0) #17
  %call.i.6 = tail call i32 @__cond_resched() #17
  %arrayidx.6 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 6
  %call2.6 = tail call i32 @hashtab_map(ptr noundef %arrayidx.6, ptr noundef nonnull @sens_destroy, ptr noundef null) #17
  tail call void @hashtab_destroy(ptr noundef %arrayidx.6) #17
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 794, i32 noundef 0) #17
  %call.i.7 = tail call i32 @__cond_resched() #17
  %arrayidx.7 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 7
  %call2.7 = tail call i32 @hashtab_map(ptr noundef %arrayidx.7, ptr noundef nonnull @cat_destroy, ptr noundef null) #17
  tail call void @hashtab_destroy(ptr noundef %arrayidx.7) #17
  %arrayidx9 = getelementptr %struct.policydb, ptr %p, i32 0, i32 2, i32 0
  %0 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx9, align 4
  tail call void @kvfree(ptr noundef %1) #17
  %arrayidx9.1 = getelementptr %struct.policydb, ptr %p, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx9.1, align 4
  tail call void @kvfree(ptr noundef %3) #17
  %arrayidx9.2 = getelementptr %struct.policydb, ptr %p, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx9.2, align 4
  tail call void @kvfree(ptr noundef %5) #17
  %arrayidx9.3 = getelementptr %struct.policydb, ptr %p, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx9.3, align 4
  tail call void @kvfree(ptr noundef %7) #17
  %arrayidx9.4 = getelementptr %struct.policydb, ptr %p, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %arrayidx9.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9.4, align 4
  tail call void @kvfree(ptr noundef %9) #17
  %arrayidx9.5 = getelementptr %struct.policydb, ptr %p, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %arrayidx9.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9.5, align 4
  tail call void @kvfree(ptr noundef %11) #17
  %arrayidx9.6 = getelementptr %struct.policydb, ptr %p, i32 0, i32 2, i32 6
  %12 = ptrtoint ptr %arrayidx9.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx9.6, align 4
  tail call void @kvfree(ptr noundef %13) #17
  %arrayidx9.7 = getelementptr %struct.policydb, ptr %p, i32 0, i32 2, i32 7
  %14 = ptrtoint ptr %arrayidx9.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9.7, align 4
  tail call void @kvfree(ptr noundef %15) #17
  %class_val_to_struct = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 3
  %16 = ptrtoint ptr %class_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_val_to_struct, align 4
  tail call void @kfree(ptr noundef %17) #17
  %role_val_to_struct = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 4
  %18 = ptrtoint ptr %role_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %role_val_to_struct, align 4
  tail call void @kfree(ptr noundef %19) #17
  %user_val_to_struct = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 5
  %20 = ptrtoint ptr %user_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user_val_to_struct, align 4
  tail call void @kfree(ptr noundef %21) #17
  %type_val_to_struct = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 6
  %22 = ptrtoint ptr %type_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %type_val_to_struct, align 4
  tail call void @kvfree(ptr noundef %23) #17
  %te_avtab = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 7
  tail call void @avtab_destroy(ptr noundef %te_avtab) #17
  br label %for.body15

for.body15:                                       ; preds = %while.end.for.body15_crit_edge, %entry
  %i.2124 = phi i32 [ 0, %entry ], [ %inc22, %while.end.for.body15_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 810, i32 noundef 0) #17
  %call.i117 = tail call i32 @__cond_resched() #17
  %arrayidx18 = getelementptr %struct.policydb, ptr %p, i32 0, i32 17, i32 %i.2124
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx18, align 4
  %tobool.not122 = icmp eq ptr %25, null
  br i1 %tobool.not122, label %for.body15.while.end_crit_edge, label %for.body15.while.body_crit_edge

for.body15.while.body_crit_edge:                  ; preds = %for.body15
  br label %while.body

for.body15.while.end_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body15.while.body_crit_edge
  %c.0123 = phi ptr [ %27, %while.body.while.body_crit_edge ], [ %25, %for.body15.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.ocontext, ptr %c.0123, i32 0, i32 4
  %26 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %next, align 4
  tail call fastcc void @ocontext_destroy(ptr noundef nonnull %c.0123, i32 noundef %i.2124)
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.body15.while.end_crit_edge
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx18, align 4
  %inc22 = add nuw nsw i32 %i.2124, 1
  %exitcond.not = icmp eq i32 %inc22, 9
  br i1 %exitcond.not, label %for.end23, label %while.end.for.body15_crit_edge

while.end.for.body15_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body15

for.end23:                                        ; preds = %while.end
  %genfs = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 18
  %29 = ptrtoint ptr %genfs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %genfs, align 4
  %tobool25.not128 = icmp eq ptr %30, null
  br i1 %tobool25.not128, label %for.end23.while.end35_crit_edge, label %for.end23.while.body26_crit_edge

for.end23.while.body26_crit_edge:                 ; preds = %for.end23
  br label %while.body26

for.end23.while.end35_crit_edge:                  ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end35

while.body26:                                     ; preds = %while.end33.while.body26_crit_edge, %for.end23.while.body26_crit_edge
  %g.0129 = phi ptr [ %56, %while.end33.while.body26_crit_edge ], [ %30, %for.end23.while.body26_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 822, i32 noundef 0) #17
  %call.i118 = tail call i32 @__cond_resched() #17
  %31 = ptrtoint ptr %g.0129 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %g.0129, align 4
  tail call void @kfree(ptr noundef %32) #17
  %head = getelementptr inbounds %struct.genfs, ptr %g.0129, i32 0, i32 1
  %33 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head, align 4
  %tobool30.not126 = icmp eq ptr %34, null
  br i1 %tobool30.not126, label %while.body26.while.end33_crit_edge, label %while.body26.ocontext_destroy.exit_crit_edge

while.body26.ocontext_destroy.exit_crit_edge:     ; preds = %while.body26
  br label %ocontext_destroy.exit

while.body26.while.end33_crit_edge:               ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end33

ocontext_destroy.exit:                            ; preds = %ocontext_destroy.exit.ocontext_destroy.exit_crit_edge, %while.body26.ocontext_destroy.exit_crit_edge
  %c.1127 = phi ptr [ %36, %ocontext_destroy.exit.ocontext_destroy.exit_crit_edge ], [ %34, %while.body26.ocontext_destroy.exit_crit_edge ]
  %next32 = getelementptr inbounds %struct.ocontext, ptr %c.1127, i32 0, i32 4
  %35 = ptrtoint ptr %next32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %next32, align 4
  %context.i = getelementptr inbounds %struct.ocontext, ptr %c.1127, i32 0, i32 2
  %type.i.i = getelementptr inbounds %struct.ocontext, ptr %c.1127, i32 0, i32 2, i32 0, i32 2
  %37 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %type.i.i, align 4
  %role.i.i = getelementptr inbounds %struct.ocontext, ptr %c.1127, i32 0, i32 2, i32 0, i32 1
  %38 = ptrtoint ptr %role.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %role.i.i, align 4
  %39 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %context.i, align 4
  %str.i.i = getelementptr inbounds %struct.ocontext, ptr %c.1127, i32 0, i32 2, i32 0, i32 5
  %40 = ptrtoint ptr %str.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %str.i.i, align 4
  tail call void @kfree(ptr noundef %41) #17
  %42 = ptrtoint ptr %str.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %str.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.ocontext, ptr %c.1127, i32 0, i32 2, i32 0, i32 3
  %43 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %len.i.i, align 4
  %cat.i.i.i = getelementptr inbounds %struct.ocontext, ptr %c.1127, i32 0, i32 2, i32 0, i32 4, i32 0, i32 0, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat.i.i.i) #17
  %cat4.i.i.i = getelementptr %struct.ocontext, ptr %c.1127, i32 0, i32 2, i32 0, i32 4, i32 0, i32 1, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat4.i.i.i) #17
  %range.i.i.i.i = getelementptr inbounds %struct.ocontext, ptr %c.1127, i32 0, i32 2, i32 0, i32 4
  %44 = call ptr @memset(ptr %range.i.i.i.i, i32 0, i32 24)
  %arrayidx2.i = getelementptr %struct.ocontext, ptr %c.1127, i32 0, i32 2, i32 1
  %type.i17.i = getelementptr %struct.ocontext, ptr %c.1127, i32 0, i32 2, i32 1, i32 2
  %45 = ptrtoint ptr %type.i17.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %type.i17.i, align 4
  %role.i18.i = getelementptr %struct.ocontext, ptr %c.1127, i32 0, i32 2, i32 1, i32 1
  %46 = ptrtoint ptr %role.i18.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %role.i18.i, align 4
  %47 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %arrayidx2.i, align 4
  %str.i19.i = getelementptr %struct.ocontext, ptr %c.1127, i32 0, i32 2, i32 1, i32 5
  %48 = ptrtoint ptr %str.i19.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %str.i19.i, align 4
  tail call void @kfree(ptr noundef %49) #17
  %50 = ptrtoint ptr %str.i19.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %str.i19.i, align 4
  %len.i20.i = getelementptr %struct.ocontext, ptr %c.1127, i32 0, i32 2, i32 1, i32 3
  %51 = ptrtoint ptr %len.i20.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %len.i20.i, align 4
  %cat.i.i21.i = getelementptr %struct.ocontext, ptr %c.1127, i32 0, i32 2, i32 1, i32 4, i32 0, i32 0, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat.i.i21.i) #17
  %cat4.i.i22.i = getelementptr %struct.ocontext, ptr %c.1127, i32 0, i32 2, i32 1, i32 4, i32 0, i32 1, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat4.i.i22.i) #17
  %range.i.i.i23.i = getelementptr %struct.ocontext, ptr %c.1127, i32 0, i32 2, i32 1, i32 4
  %52 = call ptr @memset(ptr %range.i.i.i23.i, i32 0, i32 24)
  %53 = ptrtoint ptr %c.1127 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %c.1127, align 8
  tail call void @kfree(ptr noundef %54) #17
  tail call void @kfree(ptr noundef nonnull %c.1127) #17
  %tobool30.not = icmp eq ptr %36, null
  br i1 %tobool30.not, label %ocontext_destroy.exit.while.end33_crit_edge, label %ocontext_destroy.exit.ocontext_destroy.exit_crit_edge

ocontext_destroy.exit.ocontext_destroy.exit_crit_edge: ; preds = %ocontext_destroy.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %ocontext_destroy.exit

ocontext_destroy.exit.while.end33_crit_edge:      ; preds = %ocontext_destroy.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end33

while.end33:                                      ; preds = %ocontext_destroy.exit.while.end33_crit_edge, %while.body26.while.end33_crit_edge
  %next34 = getelementptr inbounds %struct.genfs, ptr %g.0129, i32 0, i32 2
  %55 = ptrtoint ptr %next34 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %next34, align 4
  tail call void @kfree(ptr noundef nonnull %g.0129) #17
  %tobool25.not = icmp eq ptr %56, null
  br i1 %tobool25.not, label %while.end33.while.end35_crit_edge, label %while.end33.while.body26_crit_edge

while.end33.while.body26_crit_edge:               ; preds = %while.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body26

while.end33.while.end35_crit_edge:                ; preds = %while.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end35

while.end35:                                      ; preds = %while.end33.while.end35_crit_edge, %for.end23.while.end35_crit_edge
  %57 = ptrtoint ptr %genfs to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %genfs, align 4
  tail call void @cond_policydb_destroy(ptr noundef %p) #17
  %role_tr = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 8
  %call37 = tail call i32 @hashtab_map(ptr noundef %role_tr, ptr noundef nonnull @role_tr_destroy, ptr noundef null) #17
  tail call void @hashtab_destroy(ptr noundef %role_tr) #17
  %role_allow = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 16
  %58 = ptrtoint ptr %role_allow to i32
  call void @__asan_load4_noabort(i32 %58)
  %ra.0130 = load ptr, ptr %role_allow, align 4
  %tobool40.not131 = icmp eq ptr %ra.0130, null
  br i1 %tobool40.not131, label %while.end35.for.end46_crit_edge, label %while.end35.for.body41_crit_edge

while.end35.for.body41_crit_edge:                 ; preds = %while.end35
  br label %for.body41

while.end35.for.end46_crit_edge:                  ; preds = %while.end35
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end46

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %while.end35.for.body41_crit_edge
  %ra.0133 = phi ptr [ %ra.0, %for.body41.for.body41_crit_edge ], [ %ra.0130, %while.end35.for.body41_crit_edge ]
  %lra.0132 = phi ptr [ %ra.0133, %for.body41.for.body41_crit_edge ], [ null, %while.end35.for.body41_crit_edge ]
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 842, i32 noundef 0) #17
  %call.i119 = tail call i32 @__cond_resched() #17
  tail call void @kfree(ptr noundef %lra.0132) #17
  %next45 = getelementptr inbounds %struct.role_allow, ptr %ra.0133, i32 0, i32 2
  %59 = ptrtoint ptr %next45 to i32
  call void @__asan_load4_noabort(i32 %59)
  %ra.0 = load ptr, ptr %next45, align 4
  %tobool40.not = icmp eq ptr %ra.0, null
  br i1 %tobool40.not, label %for.body41.for.end46_crit_edge, label %for.body41.for.body41_crit_edge

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body41

for.body41.for.end46_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end46

for.end46:                                        ; preds = %for.body41.for.end46_crit_edge, %while.end35.for.end46_crit_edge
  %lra.0.lcssa = phi ptr [ null, %while.end35.for.end46_crit_edge ], [ %ra.0133, %for.body41.for.end46_crit_edge ]
  tail call void @kfree(ptr noundef %lra.0.lcssa) #17
  %filename_trans = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 10
  %call47 = tail call i32 @hashtab_map(ptr noundef %filename_trans, ptr noundef nonnull @filenametr_destroy, ptr noundef null) #17
  tail call void @hashtab_destroy(ptr noundef %filename_trans) #17
  %range_tr = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 19
  %call49 = tail call i32 @hashtab_map(ptr noundef %range_tr, ptr noundef nonnull @range_tr_destroy, ptr noundef null) #17
  tail call void @hashtab_destroy(ptr noundef %range_tr) #17
  %type_attr_map_array = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 20
  %60 = ptrtoint ptr %type_attr_map_array to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %type_attr_map_array, align 4
  %tobool51.not = icmp eq ptr %61, null
  br i1 %tobool51.not, label %for.end46.if.end_crit_edge, label %for.cond52.preheader

for.end46.if.end_crit_edge:                       ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.cond52.preheader:                             ; preds = %for.end46
  %nprim = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 3, i32 1
  %62 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp55134.not = icmp eq i32 %63, 0
  br i1 %cmp55134.not, label %for.cond52.preheader.for.end61_crit_edge, label %for.cond52.preheader.for.body56_crit_edge

for.cond52.preheader.for.body56_crit_edge:        ; preds = %for.cond52.preheader
  br label %for.body56

for.cond52.preheader.for.end61_crit_edge:         ; preds = %for.cond52.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end61

for.body56:                                       ; preds = %for.body56.for.body56_crit_edge, %for.cond52.preheader.for.body56_crit_edge
  %i.3135 = phi i32 [ %inc60, %for.body56.for.body56_crit_edge ], [ 0, %for.cond52.preheader.for.body56_crit_edge ]
  %64 = ptrtoint ptr %type_attr_map_array to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %type_attr_map_array, align 4
  %arrayidx58 = getelementptr %struct.ebitmap, ptr %65, i32 %i.3135
  tail call void @ebitmap_destroy(ptr noundef %arrayidx58) #17
  %inc60 = add nuw i32 %i.3135, 1
  %66 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nprim, align 4
  %cmp55 = icmp ult i32 %inc60, %67
  br i1 %cmp55, label %for.body56.for.body56_crit_edge, label %for.body56.for.end61_crit_edge

for.body56.for.end61_crit_edge:                   ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end61

for.body56.for.body56_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body56

for.end61:                                        ; preds = %for.body56.for.end61_crit_edge, %for.cond52.preheader.for.end61_crit_edge
  %68 = ptrtoint ptr %type_attr_map_array to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %type_attr_map_array, align 4
  tail call void @kvfree(ptr noundef %69) #17
  br label %if.end

if.end:                                           ; preds = %for.end61, %for.end46.if.end_crit_edge
  %filename_trans_ttypes = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 9
  tail call void @ebitmap_destroy(ptr noundef %filename_trans_ttypes) #17
  %policycaps = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 21
  tail call void @ebitmap_destroy(ptr noundef %policycaps) #17
  %permissive_map = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 22
  tail call void @ebitmap_destroy(ptr noundef %permissive_map) #17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hashtab_map(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hashtab_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @avtab_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocontext_destroy(ptr noundef %c, i32 noundef %i) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %c, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %entry
  %context = getelementptr inbounds %struct.ocontext, ptr %c, i32 0, i32 2
  %type.i = getelementptr inbounds %struct.ocontext, ptr %c, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %type.i, align 4
  %role.i = getelementptr inbounds %struct.ocontext, ptr %c, i32 0, i32 2, i32 0, i32 1
  %1 = ptrtoint ptr %role.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %role.i, align 4
  %2 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %context, align 4
  %str.i = getelementptr inbounds %struct.ocontext, ptr %c, i32 0, i32 2, i32 0, i32 5
  %3 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %str.i, align 4
  tail call void @kfree(ptr noundef %4) #17
  %5 = ptrtoint ptr %str.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %str.i, align 4
  %len.i = getelementptr inbounds %struct.ocontext, ptr %c, i32 0, i32 2, i32 0, i32 3
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %len.i, align 4
  %cat.i.i = getelementptr inbounds %struct.ocontext, ptr %c, i32 0, i32 2, i32 0, i32 4, i32 0, i32 0, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat.i.i) #17
  %cat4.i.i = getelementptr %struct.ocontext, ptr %c, i32 0, i32 2, i32 0, i32 4, i32 0, i32 1, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat4.i.i) #17
  %range.i.i.i = getelementptr inbounds %struct.ocontext, ptr %c, i32 0, i32 2, i32 0, i32 4
  %7 = call ptr @memset(ptr %range.i.i.i, i32 0, i32 24)
  %arrayidx2 = getelementptr %struct.ocontext, ptr %c, i32 0, i32 2, i32 1
  %type.i17 = getelementptr %struct.ocontext, ptr %c, i32 0, i32 2, i32 1, i32 2
  %8 = ptrtoint ptr %type.i17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %type.i17, align 4
  %role.i18 = getelementptr %struct.ocontext, ptr %c, i32 0, i32 2, i32 1, i32 1
  %9 = ptrtoint ptr %role.i18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %role.i18, align 4
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx2, align 4
  %str.i19 = getelementptr %struct.ocontext, ptr %c, i32 0, i32 2, i32 1, i32 5
  %11 = ptrtoint ptr %str.i19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %str.i19, align 4
  tail call void @kfree(ptr noundef %12) #17
  %13 = ptrtoint ptr %str.i19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %str.i19, align 4
  %len.i20 = getelementptr %struct.ocontext, ptr %c, i32 0, i32 2, i32 1, i32 3
  %14 = ptrtoint ptr %len.i20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %len.i20, align 4
  %cat.i.i21 = getelementptr %struct.ocontext, ptr %c, i32 0, i32 2, i32 1, i32 4, i32 0, i32 0, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat.i.i21) #17
  %cat4.i.i22 = getelementptr %struct.ocontext, ptr %c, i32 0, i32 2, i32 1, i32 4, i32 0, i32 1, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat4.i.i22) #17
  %range.i.i.i23 = getelementptr %struct.ocontext, ptr %c, i32 0, i32 2, i32 1, i32 4
  %15 = call ptr @memset(ptr %range.i.i.i23, i32 0, i32 24)
  %16 = zext i32 %i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i, label %if.end.if.end9_crit_edge [
    i32 0, label %if.end.if.then8_crit_edge
    i32 1, label %if.end.if.then8_crit_edge24
    i32 3, label %if.end.if.then8_crit_edge25
    i32 5, label %if.end.if.then8_crit_edge26
  ]

if.end.if.then8_crit_edge26:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8

if.end.if.then8_crit_edge25:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8

if.end.if.then8_crit_edge24:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

if.then8:                                         ; preds = %if.end.if.then8_crit_edge, %if.end.if.then8_crit_edge24, %if.end.if.then8_crit_edge25, %if.end.if.then8_crit_edge26
  %17 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %c, align 8
  tail call void @kfree(ptr noundef %18) #17
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  tail call void @kfree(ptr noundef nonnull %c) #17
  br label %return

return:                                           ; preds = %if.end9, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cond_policydb_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @role_tr_destroy(ptr noundef %key, ptr noundef %datum, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %key) #17
  tail call void @kfree(ptr noundef %datum) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filenametr_destroy(ptr noundef %key, ptr noundef %datum, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.filename_trans_key, ptr %key, i32 0, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %1) #17
  tail call void @kfree(ptr noundef %key) #17
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %d.0 = phi ptr [ %datum, %entry ], [ %3, %do.body.do.body_crit_edge ]
  tail call void @ebitmap_destroy(ptr noundef %d.0) #17
  %next1 = getelementptr inbounds %struct.filename_trans_datum, ptr %d.0, i32 0, i32 2
  %2 = ptrtoint ptr %next1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next1, align 4
  tail call void @kfree(ptr noundef %d.0) #17
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %do.body.do.body_crit_edge, !prof !228

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 344, i32 noundef 0) #17
  %call.i = tail call i32 @__cond_resched() #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @range_tr_destroy(ptr noundef %key, ptr noundef %datum, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %key) #17
  %cat = getelementptr inbounds %struct.mls_level, ptr %datum, i32 0, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat) #17
  %cat3 = getelementptr [2 x %struct.mls_level], ptr %datum, i32 0, i32 1, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat3) #17
  tail call void @kfree(ptr noundef %datum) #17
  tail call void @__might_resched(ptr noundef nonnull @.str, i32 noundef 356, i32 noundef 0) #17
  %call.i = tail call i32 @__cond_resched() #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ebitmap_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @policydb_load_isids(ptr nocapture noundef readonly %p, ptr noundef %s) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sidtab_init(ptr noundef %s) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #21
  br label %cleanup27

if.end:                                           ; preds = %entry
  %ocontexts = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 17
  %0 = ptrtoint ptr %ocontexts to i32
  call void @__asan_load4_noabort(i32 %0)
  %c.045 = load ptr, ptr %ocontexts, align 4
  %tobool2.not46 = icmp eq ptr %c.045, null
  br i1 %tobool2.not46, label %if.end.cleanup27_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup27_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup27

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %c.047 = phi ptr [ %c.0, %for.inc.for.body_crit_edge ], [ %c.045, %if.end.for.body_crit_edge ]
  %sid3 = getelementptr inbounds %struct.ocontext, ptr %c.047, i32 0, i32 3
  %1 = ptrtoint ptr %sid3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sid3, align 4
  %call5 = tail call ptr @security_get_initial_sid_context(i32 noundef %2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %do.end9, label %if.end12

do.end9:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #21
  tail call void @sidtab_destroy(ptr noundef %s) #17
  br label %cleanup27

if.end12:                                         ; preds = %for.body
  %tobool13.not = icmp eq ptr %call5, null
  br i1 %tobool13.not, label %if.end12.for.inc_crit_edge, label %if.end15

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end15:                                         ; preds = %if.end12
  %context = getelementptr inbounds %struct.ocontext, ptr %c.047, i32 0, i32 2
  %call17 = tail call i32 @sidtab_set_initial(ptr noundef %s, i32 noundef %2, ptr noundef %context) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end15.for.inc_crit_edge, label %do.end22

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull %call5) #21
  tail call void @sidtab_destroy(ptr noundef %s) #17
  br label %cleanup27

for.inc:                                          ; preds = %if.end15.for.inc_crit_edge, %if.end12.for.inc_crit_edge
  %next = getelementptr inbounds %struct.ocontext, ptr %c.047, i32 0, i32 4
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %c.0 = load ptr, ptr %next, align 4
  %tobool2.not = icmp eq ptr %c.0, null
  br i1 %tobool2.not, label %for.inc.cleanup27_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup27_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup27

cleanup27:                                        ; preds = %for.inc.cleanup27_crit_edge, %do.end22, %do.end9, %if.end.cleanup27_crit_edge, %do.end
  %retval.2 = phi i32 [ %call, %do.end ], [ %call17, %do.end22 ], [ -22, %do.end9 ], [ 0, %if.end.cleanup27_crit_edge ], [ 0, %for.inc.cleanup27_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sidtab_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @security_get_initial_sid_context(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sidtab_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sidtab_set_initial(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @policydb_class_isvalid(ptr nocapture noundef readonly %p, i32 noundef %class) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %class)
  %tobool.not = icmp eq i32 %class, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %nprim = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %class)
  %cmp = icmp uge i32 %1, %class
  %spec.select = zext i1 %cmp to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @policydb_role_isvalid(ptr nocapture noundef readonly %p, i32 noundef %role) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %role)
  %tobool.not = icmp eq i32 %role, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %nprim = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 2, i32 1
  %0 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %role)
  %cmp = icmp uge i32 %1, %role
  %spec.select = zext i1 %cmp to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @policydb_type_isvalid(ptr nocapture noundef readonly %p, i32 noundef %type) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool.not = icmp eq i32 %type, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %nprim = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 3, i32 1
  %0 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %type)
  %cmp = icmp uge i32 %1, %type
  %spec.select = zext i1 %cmp to i32
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @policydb_context_isvalid(ptr noundef %p, ptr noundef %c) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %role1 = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %role1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %role1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nprim = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 2, i32 1
  %2 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %nprim8 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 4, i32 1
  %6 = ptrtoint ptr %nprim8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nprim8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp9 = icmp ugt i32 %5, %7
  br i1 %cmp9, label %lor.lhs.false4.cleanup_crit_edge, label %if.end11

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false4
  %type = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  br i1 %tobool12.not, label %if.end11.cleanup_crit_edge, label %lor.lhs.false13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false13:                                  ; preds = %if.end11
  %nprim17 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 3, i32 1
  %10 = ptrtoint ptr %nprim17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nprim17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp18 = icmp ugt i32 %9, %11
  br i1 %cmp18, label %lor.lhs.false13.cleanup_crit_edge, label %if.end20

lor.lhs.false13.cleanup_crit_edge:                ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp22.not = icmp eq i32 %1, 1
  br i1 %cmp22.not, label %if.end20.if.end45_crit_edge, label %if.then23

if.end20.if.end45_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

if.then23:                                        ; preds = %if.end20
  %role_val_to_struct = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 4
  %12 = ptrtoint ptr %role_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %role_val_to_struct, align 4
  %sub = add i32 %1, -1
  %arrayidx25 = getelementptr ptr, ptr %13, i32 %sub
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %if.then23.cleanup_crit_edge, label %lor.lhs.false27

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false27:                                  ; preds = %if.then23
  %types = getelementptr inbounds %struct.role_datum, ptr %15, i32 0, i32 3
  %sub29 = add i32 %9, -1
  %call = tail call i32 @ebitmap_get_bit(ptr noundef %types, i32 noundef %sub29) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool30.not = icmp eq i32 %call, 0
  br i1 %tobool30.not, label %lor.lhs.false27.cleanup_crit_edge, label %if.end32

lor.lhs.false27.cleanup_crit_edge:                ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false27
  %user_val_to_struct = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 5
  %16 = ptrtoint ptr %user_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %user_val_to_struct, align 4
  %18 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %c, align 4
  %sub34 = add i32 %19, -1
  %arrayidx35 = getelementptr ptr, ptr %17, i32 %sub34
  %20 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx35, align 4
  %tobool36.not = icmp eq ptr %21, null
  br i1 %tobool36.not, label %if.end32.cleanup_crit_edge, label %if.end38

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %roles = getelementptr inbounds %struct.user_datum, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %role1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %role1, align 4
  %sub40 = add i32 %23, -1
  %call41 = tail call i32 @ebitmap_get_bit(ptr noundef %roles, i32 noundef %sub40) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end38.cleanup_crit_edge, label %if.end38.if.end45_crit_edge

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end45:                                         ; preds = %if.end38.if.end45_crit_edge, %if.end20.if.end45_crit_edge
  %call46 = tail call i32 @mls_context_isvalid(ptr noundef %p, ptr noundef %c) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp ne i32 %call46, 0
  %. = zext i1 %tobool47.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end38.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %lor.lhs.false27.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %lor.lhs.false13.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false4.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %lor.lhs.false13.cleanup_crit_edge ], [ 0, %if.end11.cleanup_crit_edge ], [ 0, %lor.lhs.false27.cleanup_crit_edge ], [ 0, %if.then23.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ %., %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebitmap_get_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mls_context_isvalid(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @string_to_security_class(ptr noundef %p, ptr noundef %name) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 1
  %call = tail call ptr @symtab_search(ptr noundef %arrayidx, ptr noundef %name) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %conv = trunc i32 %1 to i16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %conv, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @symtab_search(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @string_to_av_perm(ptr nocapture noundef readonly %p, i16 noundef zeroext %tclass, ptr noundef %name) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %tclass)
  %tobool.not = icmp eq i16 %tclass, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %conv = zext i16 %tclass to i32
  %nprim = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp = icmp ult i32 %1, %conv
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %class_val_to_struct = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %class_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %class_val_to_struct, align 4
  %sub = add nsw i32 %conv, -1
  %arrayidx3 = getelementptr ptr, ptr %3, i32 %sub
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %comdatum4 = getelementptr inbounds %struct.class_datum, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %comdatum4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %comdatum4, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %if.end7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.end7:                                          ; preds = %if.end
  %permissions = getelementptr inbounds %struct.common_datum, ptr %7, i32 0, i32 1
  %call = tail call ptr @symtab_search(ptr noundef %permissions, ptr noundef %name) #17
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.end7.if.end15_crit_edge

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.end12:                                         ; preds = %if.end7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %permissions10 = getelementptr inbounds %struct.class_datum, ptr %5, i32 0, i32 3
  %call11 = tail call ptr @symtab_search(ptr noundef %permissions10, ptr noundef %name) #17
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end12.if.end15_crit_edge

if.end12.if.end15_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end15:                                         ; preds = %if.end12.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %perdatum.131 = phi ptr [ %call11, %if.end12.if.end15_crit_edge ], [ %call, %if.end7.if.end15_crit_edge ]
  %8 = ptrtoint ptr %perdatum.131 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %perdatum.131, align 4
  %sub16 = add i32 %9, -1
  %shl = shl nuw i32 1, %sub16
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %shl, %if.end15 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @policydb_read(ptr noundef %p, ptr noundef %fp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %p, i32 0, i32 352)
  %te_avtab.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 7
  tail call void @avtab_init(ptr noundef %te_avtab.i) #17
  tail call void @cond_policydb_init(ptr noundef %p) #17
  %filename_trans_ttypes.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 9
  %1 = ptrtoint ptr %filename_trans_ttypes.i to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %filename_trans_ttypes.i, align 4
  %policycaps.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 21
  %2 = call ptr @memset(ptr %policycaps.i, i32 0, i32 16)
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp.i = icmp ult i32 %4, 8
  br i1 %cmp.i, label %entry.bad_crit_edge, label %if.end

entry.bad_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fp, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %buf.sroa.0.0.copyload686 = load i32, ptr %6, align 1
  %buf.sroa.20.0..sroa_idx694 = getelementptr inbounds i8, ptr %6, i32 4
  %8 = ptrtoint ptr %buf.sroa.20.0..sroa_idx694 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %buf.sroa.20.0.copyload695 = load i32, ptr %buf.sroa.20.0..sroa_idx694, align 1
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %4, -8
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1929413383, i32 %buf.sroa.0.0.copyload686)
  %cmp.not = icmp eq i32 %buf.sroa.0.0.copyload686, -1929413383
  br i1 %cmp.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %10 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload686)
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %10, i32 noundef -109248628) #21
  br label %bad

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 134217728, i32 %buf.sroa.20.0.copyload695)
  %cmp6.not = icmp eq i32 %buf.sroa.20.0.copyload695, 134217728
  br i1 %cmp6.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  %11 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.20.0.copyload695)
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %11, i32 noundef 8) #21
  br label %bad

if.end13:                                         ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 9) #22
  %tobool15.not = icmp eq ptr %call7.i, null
  br i1 %tobool15.not, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef 8) #21
  br label %bad

if.end22:                                         ; preds = %if.end13
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %cmp.i579 = icmp ult i32 %14, 8
  br i1 %cmp.i579, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #21
  tail call void @kfree(ptr noundef nonnull %call7.i) #17
  br label %bad

if.end31:                                         ; preds = %if.end22
  %15 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fp, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %16, align 1
  %19 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %call7.i, align 8
  %add.ptr.i580 = getelementptr i8, ptr %16, i32 8
  store ptr %add.ptr.i580, ptr %fp, align 4
  %sub.i581 = add i32 %14, -8
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.i581, ptr %len.i, align 4
  %arrayidx32 = getelementptr i8, ptr %call7.i, i32 8
  %21 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx32, align 8
  %call33 = tail call i32 @strcmp(ptr noundef nonnull %call7.i, ptr noundef nonnull dereferenceable(9) @.str.20) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %call7.i, ptr noundef nonnull @.str.20) #21
  tail call void @kfree(ptr noundef nonnull %call7.i) #17
  br label %bad

if.end41:                                         ; preds = %if.end31
  tail call void @kfree(ptr noundef nonnull %call7.i) #17
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %23)
  %cmp.i586 = icmp ult i32 %23, 16
  br i1 %cmp.i586, label %if.end41.bad_crit_edge, label %if.end46

if.end41.bad_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end46:                                         ; preds = %if.end41
  %24 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fp, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %25, align 1
  %buf.sroa.20.0..sroa_idx = getelementptr inbounds i8, ptr %25, i32 4
  %27 = ptrtoint ptr %buf.sroa.20.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %buf.sroa.20.0.copyload = load i32, ptr %buf.sroa.20.0..sroa_idx, align 1
  %buf.sroa.28.0..sroa_idx = getelementptr inbounds i8, ptr %25, i32 8
  %28 = ptrtoint ptr %buf.sroa.28.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %buf.sroa.28.0.copyload = load i32, ptr %buf.sroa.28.0..sroa_idx, align 1
  %buf.sroa.32.0..sroa_idx = getelementptr inbounds i8, ptr %25, i32 12
  %29 = ptrtoint ptr %buf.sroa.32.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %buf.sroa.32.0.copyload = load i32, ptr %buf.sroa.32.0..sroa_idx, align 1
  %add.ptr.i587 = getelementptr i8, ptr %25, i32 16
  store ptr %add.ptr.i587, ptr %fp, align 4
  %sub.i588 = add i32 %23, -16
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.i588, ptr %len.i, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  %policyvers = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 24
  %32 = ptrtoint ptr %policyvers to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %policyvers, align 4
  %33 = add i32 %31, -34
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %33)
  %34 = icmp ult i32 %33, -19
  br i1 %34, label %do.end55, label %if.end59

do.end55:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %31, i32 noundef 15, i32 noundef 33) #21
  br label %bad

if.end59:                                         ; preds = %if.end46
  %35 = and i32 %buf.sroa.20.0.copyload, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool61.not = icmp eq i32 %35, 0
  br i1 %tobool61.not, label %if.end59.if.end73_crit_edge, label %if.then62

if.end59.if.end73_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end73

if.then62:                                        ; preds = %if.end59
  %36 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %31)
  %cmp64 = icmp ult i32 %31, 19
  br i1 %cmp64, label %do.end68, label %if.then62.if.end73_crit_edge

if.then62.if.end73_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end73

do.end68:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #19
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %31) #21
  br label %bad

if.end73:                                         ; preds = %if.then62.if.end73_crit_edge, %if.end59.if.end73_crit_edge
  %reject_unknown = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 25
  %37 = ptrtoint ptr %reject_unknown to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load = load i8, ptr %reject_unknown, align 4
  %sh.diff = lshr i32 %buf.sroa.20.0.copyload, 18
  %tr.sh.diff = trunc i32 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -128
  %bf.clear = and i8 %bf.load, 63
  %sh.diff572 = lshr i32 %buf.sroa.20.0.copyload, 20
  %tr.sh.diff573 = trunc i32 %sh.diff572 to i8
  %bf.shl87 = and i8 %tr.sh.diff573, 64
  %bf.set = or i8 %bf.shl87, %bf.shl
  %bf.set89 = or i8 %bf.set, %bf.clear
  store i8 %bf.set89, ptr %reject_unknown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %31)
  %cmp92 = icmp ugt i32 %31, 21
  br i1 %cmp92, label %if.then93, label %if.end73.if.end98_crit_edge

if.end73.if.end98_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98

if.then93:                                        ; preds = %if.end73
  %call94 = tail call i32 @ebitmap_read(ptr noundef %policycaps.i, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.then93.if.end98_crit_edge, label %if.then93.bad_crit_edge

if.then93.bad_crit_edge:                          ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.then93.if.end98_crit_edge:                     ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end98

if.end98:                                         ; preds = %if.then93.if.end98_crit_edge, %if.end73.if.end98_crit_edge
  %38 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %39)
  %cmp100 = icmp ugt i32 %39, 22
  br i1 %cmp100, label %if.then101, label %if.end98.if.end106_crit_edge

if.end98.if.end106_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end106

if.then101:                                       ; preds = %if.end98
  %permissive_map = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 22
  %call102 = tail call i32 @ebitmap_read(ptr noundef %permissive_map, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.then101.if.end106_crit_edge, label %if.then101.bad_crit_edge

if.then101.bad_crit_edge:                         ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.then101.if.end106_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end106

if.end106:                                        ; preds = %if.then101.if.end106_crit_edge, %if.end98.if.end106_crit_edge
  %40 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %policyvers, align 4
  %call108 = tail call fastcc ptr @policydb_lookup_compat(i32 noundef %41)
  %tobool109.not = icmp eq ptr %call108, null
  br i1 %tobool109.not, label %do.end113, label %if.end117

do.end113:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #19
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %41) #21
  br label %bad

if.end117:                                        ; preds = %if.end106
  %42 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.28.0.copyload)
  %sym_num = getelementptr inbounds %struct.policydb_compat_info, ptr %call108, i32 0, i32 1
  %43 = ptrtoint ptr %sym_num to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sym_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp119.not = icmp eq i32 %42, %44
  %45 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.32.0.copyload)
  br i1 %cmp119.not, label %lor.lhs.false120, label %if.end117.do.end126_crit_edge

if.end117.do.end126_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end126

lor.lhs.false120:                                 ; preds = %if.end117
  %ocon_num = getelementptr inbounds %struct.policydb_compat_info, ptr %call108, i32 0, i32 2
  %46 = ptrtoint ptr %ocon_num to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ocon_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp122.not = icmp eq i32 %45, %47
  br i1 %cmp122.not, label %for.cond.preheader, label %lor.lhs.false120.do.end126_crit_edge

lor.lhs.false120.do.end126_crit_edge:             ; preds = %lor.lhs.false120
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end126

for.cond.preheader:                               ; preds = %lor.lhs.false120
  %48 = ptrtoint ptr %sym_num to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sym_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp135795 = icmp sgt i32 %49, 0
  br i1 %cmp135795, label %for.body.lr.ph, label %for.cond.preheader.for.end170_crit_edge

for.cond.preheader.for.end170_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end170

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %arrayidx.i = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 2
  %nprim.i = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 2, i32 1
  br label %for.body

do.end126:                                        ; preds = %lor.lhs.false120.do.end126_crit_edge, %if.end117.do.end126_crit_edge
  %ocon_num131 = getelementptr inbounds %struct.policydb_compat_info, ptr %call108, i32 0, i32 2
  %50 = ptrtoint ptr %ocon_num131 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ocon_num131, align 4
  %call132 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %42, i32 noundef %45, i32 noundef %44, i32 noundef %51) #21
  br label %bad

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.0796 = phi i32 [ 0, %for.body.lr.ph ], [ %inc169, %for.end.for.body_crit_edge ]
  %52 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %53)
  %cmp.i593 = icmp ult i32 %53, 8
  br i1 %cmp.i593, label %for.body.bad_crit_edge, label %if.end140

for.body.bad_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end140:                                        ; preds = %for.body
  %54 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %fp, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %buf.sroa.0.0.copyload687 = load i32, ptr %55, align 1
  %buf.sroa.20.0..sroa_idx696 = getelementptr inbounds i8, ptr %55, i32 4
  %57 = ptrtoint ptr %buf.sroa.20.0..sroa_idx696 to i32
  call void @__asan_loadN_noabort(i32 %57, i32 4)
  %buf.sroa.20.0.copyload697 = load i32, ptr %buf.sroa.20.0..sroa_idx696, align 1
  %add.ptr.i594 = getelementptr i8, ptr %55, i32 8
  store ptr %add.ptr.i594, ptr %fp, align 4
  %sub.i595 = add i32 %53, -8
  %58 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %sub.i595, ptr %len.i, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload687)
  %60 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.20.0.copyload697)
  %arrayidx143 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 %i.0796
  %call144 = tail call i32 @symtab_init(ptr noundef %arrayidx143, i32 noundef %60) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %if.end140.cleanup388_crit_edge

if.end140.cleanup388_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup388

if.end147:                                        ; preds = %if.end140
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.0796)
  %cmp148 = icmp eq i32 %i.0796, 2
  br i1 %cmp148, label %if.then149, label %if.end147.if.end154_crit_edge

if.end147.if.end154_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end154

if.then149:                                       ; preds = %if.end147
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 24) #22
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then149.cleanup388_crit_edge, label %if.end.i599

if.then149.cleanup388_crit_edge:                  ; preds = %if.then149
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup388

if.end.i599:                                      ; preds = %if.then149
  %62 = ptrtoint ptr %nprim.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nprim.i, align 4
  %inc.i = add i32 %63, 1
  store i32 %inc.i, ptr %nprim.i, align 4
  %64 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %inc.i, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.not.i = icmp eq i32 %63, 0
  br i1 %cmp.not.i, label %if.end3.i, label %if.end.i599.out.i_crit_edge

if.end.i599.out.i_crit_edge:                      ; preds = %if.end.i599
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.end3.i:                                        ; preds = %if.end.i599
  %call4.i = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.53, i32 noundef 3264) #17
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end3.i.out.i_crit_edge, label %if.end7.i

if.end3.i.out.i_crit_edge:                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.end7.i:                                        ; preds = %if.end3.i
  %call10.i = tail call i32 @symtab_insert(ptr noundef %arrayidx.i, ptr noundef nonnull %call4.i, ptr noundef nonnull %call7.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end7.i.if.end154_crit_edge, label %if.end7.i.out.i_crit_edge

if.end7.i.out.i_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.end7.i.if.end154_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end154

out.i:                                            ; preds = %if.end7.i.out.i_crit_edge, %if.end3.i.out.i_crit_edge, %if.end.i599.out.i_crit_edge
  %key.0.i = phi ptr [ null, %if.end.i599.out.i_crit_edge ], [ %call4.i, %if.end7.i.out.i_crit_edge ], [ null, %if.end3.i.out.i_crit_edge ]
  %rc.0.i = phi i32 [ -22, %if.end.i599.out.i_crit_edge ], [ %call10.i, %if.end7.i.out.i_crit_edge ], [ -12, %if.end3.i.out.i_crit_edge ]
  tail call void @kfree(ptr noundef %key.0.i) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #17
  br label %cleanup388

if.end154:                                        ; preds = %if.end7.i.if.end154_crit_edge, %if.end147.if.end154_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.20.0.copyload697)
  %cmp156793.not = icmp eq i32 %buf.sroa.20.0.copyload697, 0
  br i1 %cmp156793.not, label %if.end154.for.end_crit_edge, label %for.body157.lr.ph

if.end154.for.end_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body157.lr.ph:                                ; preds = %if.end154
  %arrayidx158 = getelementptr [8 x ptr], ptr @read_f, i32 0, i32 %i.0796
  %65 = ptrtoint ptr %arrayidx158 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx158, align 4
  %umax = call i32 @llvm.umax.i32(i32 %60, i32 1)
  br label %for.body157

for.cond155:                                      ; preds = %for.body157
  %inc = add nuw i32 %j.0794, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.cond155.for.end_crit_edge, label %for.cond155.for.body157_crit_edge

for.cond155.for.body157_crit_edge:                ; preds = %for.cond155
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body157

for.cond155.for.end_crit_edge:                    ; preds = %for.cond155
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body157:                                      ; preds = %for.cond155.for.body157_crit_edge, %for.body157.lr.ph
  %j.0794 = phi i32 [ 0, %for.body157.lr.ph ], [ %inc, %for.cond155.for.body157_crit_edge ]
  %call161 = tail call i32 %66(ptr noundef %p, ptr noundef %arrayidx143, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %for.cond155, label %for.body157.bad_crit_edge

for.body157.bad_crit_edge:                        ; preds = %for.body157
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

for.end:                                          ; preds = %for.cond155.for.end_crit_edge, %if.end154.for.end_crit_edge
  %nprim167 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 %i.0796, i32 1
  %67 = ptrtoint ptr %nprim167 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %59, ptr %nprim167, align 4
  %inc169 = add nuw nsw i32 %i.0796, 1
  %68 = ptrtoint ptr %sym_num to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sym_num, align 4
  %cmp135 = icmp slt i32 %inc169, %69
  br i1 %cmp135, label %for.end.for.body_crit_edge, label %for.end.for.end170_crit_edge

for.end.for.end170_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end170

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end170:                                       ; preds = %for.end.for.end170_crit_edge, %for.cond.preheader.for.end170_crit_edge
  %arrayidx.i601 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 1
  %call.i = tail call ptr @symtab_search(ptr noundef %arrayidx.i601, ptr noundef nonnull @.str.36) #17
  %tobool.not.i602 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i602, label %string_to_security_class.exit.thread, label %string_to_security_class.exit

string_to_security_class.exit.thread:             ; preds = %for.end170
  call void @__sanitizer_cov_trace_pc() #19
  %process_class739 = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 26
  %70 = ptrtoint ptr %process_class739 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %process_class739, align 2
  br label %do.end177

string_to_security_class.exit:                    ; preds = %for.end170
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %call.i, align 4
  %conv.i = trunc i32 %72 to i16
  %process_class = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 26
  %73 = ptrtoint ptr %process_class to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.i, ptr %process_class, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i)
  %tobool173.not = icmp eq i16 %conv.i, 0
  br i1 %tobool173.not, label %string_to_security_class.exit.do.end177_crit_edge, label %if.end180

string_to_security_class.exit.do.end177_crit_edge: ; preds = %string_to_security_class.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end177

do.end177:                                        ; preds = %string_to_security_class.exit.do.end177_crit_edge, %string_to_security_class.exit.thread
  %call179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #21
  br label %bad

if.end180:                                        ; preds = %string_to_security_class.exit
  %call181 = tail call i32 @avtab_read(ptr noundef %te_avtab.i, ptr noundef %fp, ptr noundef %p) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call181)
  %tobool182.not = icmp eq i32 %call181, 0
  br i1 %tobool182.not, label %if.end184, label %if.end180.bad_crit_edge

if.end180.bad_crit_edge:                          ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end184:                                        ; preds = %if.end180
  %74 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %75)
  %cmp186 = icmp ugt i32 %75, 15
  br i1 %cmp186, label %if.then187, label %if.end184.if.end192_crit_edge

if.end184.if.end192_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end192

if.then187:                                       ; preds = %if.end184
  %call188 = tail call i32 @cond_read_list(ptr noundef %p, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.then187.if.end192_crit_edge, label %if.then187.bad_crit_edge

if.then187.bad_crit_edge:                         ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.then187.if.end192_crit_edge:                   ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end192

if.end192:                                        ; preds = %if.then187.if.end192_crit_edge, %if.end184.if.end192_crit_edge
  %76 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %77)
  %cmp.i606 = icmp ult i32 %77, 4
  br i1 %cmp.i606, label %if.end192.bad_crit_edge, label %if.end197

if.end192.bad_crit_edge:                          ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end197:                                        ; preds = %if.end192
  %78 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fp, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %buf.sroa.0.0.copyload689 = load i32, ptr %79, align 1
  %add.ptr.i607 = getelementptr i8, ptr %79, i32 4
  store ptr %add.ptr.i607, ptr %fp, align 4
  %sub.i608 = add i32 %77, -4
  %81 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub.i608, ptr %len.i, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload689)
  %role_tr = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 8
  %call199 = tail call i32 @hashtab_init(ptr noundef %role_tr, i32 noundef %82) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %for.cond203.preheader, label %if.end197.bad_crit_edge

if.end197.bad_crit_edge:                          ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

for.cond203.preheader:                            ; preds = %if.end197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.0.0.copyload689)
  %cmp204797.not = icmp eq i32 %buf.sroa.0.0.copyload689, 0
  br i1 %cmp204797.not, label %for.cond203.preheader.for.end258_crit_edge, label %for.body205.lr.ph

for.cond203.preheader.for.end258_crit_edge:       ; preds = %for.cond203.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end258

for.body205.lr.ph:                                ; preds = %for.cond203.preheader
  %nprim.i627 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 2, i32 1
  %nprim.i631 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 3, i32 1
  %nprim.i637 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 1, i32 1
  %umax813 = call i32 @llvm.umax.i32(i32 %82, i32 1)
  br label %for.body205

for.cond203:                                      ; preds = %if.end250
  %inc257 = add nuw i32 %i.1798, 1
  %exitcond814.not = icmp eq i32 %inc257, %umax813
  br i1 %exitcond814.not, label %for.cond203.for.end258_crit_edge, label %for.cond203.for.body205_crit_edge

for.cond203.for.body205_crit_edge:                ; preds = %for.cond203
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body205

for.cond203.for.end258_crit_edge:                 ; preds = %for.cond203
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end258

for.body205:                                      ; preds = %for.cond203.for.body205_crit_edge, %for.body205.lr.ph
  %i.1798 = phi i32 [ 0, %for.body205.lr.ph ], [ %inc257, %for.cond203.for.body205_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %83 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i576 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3264, i32 noundef 12) #22
  %tobool207.not = icmp eq ptr %call7.i576, null
  br i1 %tobool207.not, label %for.body205.bad_crit_edge, label %if.end209

for.body205.bad_crit_edge:                        ; preds = %for.body205
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end209:                                        ; preds = %for.body205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %84 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i577 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %84, i32 noundef 3264, i32 noundef 4) #22
  %tobool211.not = icmp eq ptr %call7.i577, null
  br i1 %tobool211.not, label %if.end209.bad_crit_edge, label %if.end213

if.end209.bad_crit_edge:                          ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end213:                                        ; preds = %if.end209
  %85 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %86)
  %cmp.i613 = icmp ult i32 %86, 12
  br i1 %cmp.i613, label %if.end213.bad_crit_edge, label %if.end218

if.end213.bad_crit_edge:                          ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end218:                                        ; preds = %if.end213
  %87 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %fp, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %buf.sroa.0.0.copyload685 = load i32, ptr %88, align 1
  %buf.sroa.20.0..sroa_idx692 = getelementptr inbounds i8, ptr %88, i32 4
  %90 = ptrtoint ptr %buf.sroa.20.0..sroa_idx692 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %buf.sroa.20.0.copyload693 = load i32, ptr %buf.sroa.20.0..sroa_idx692, align 1
  %buf.sroa.28.0..sroa_idx706 = getelementptr inbounds i8, ptr %88, i32 8
  %91 = ptrtoint ptr %buf.sroa.28.0..sroa_idx706 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %buf.sroa.28.0.copyload707 = load i32, ptr %buf.sroa.28.0..sroa_idx706, align 1
  %add.ptr.i614 = getelementptr i8, ptr %88, i32 12
  store ptr %add.ptr.i614, ptr %fp, align 4
  %sub.i615 = add i32 %86, -12
  %92 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %sub.i615, ptr %len.i, align 4
  %93 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload685)
  %94 = ptrtoint ptr %call7.i576 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %call7.i576, align 8
  %95 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.20.0.copyload693)
  %type = getelementptr inbounds %struct.role_trans_key, ptr %call7.i576, i32 0, i32 1
  %96 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %type, align 4
  %97 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.28.0.copyload707)
  %98 = ptrtoint ptr %call7.i577 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %call7.i577, align 8
  %99 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %100)
  %cmp223 = icmp ugt i32 %100, 25
  br i1 %cmp223, label %if.then224, label %if.else

if.then224:                                       ; preds = %if.end218
  %101 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %102)
  %cmp.i620 = icmp ult i32 %102, 4
  br i1 %cmp.i620, label %if.then224.bad_crit_edge, label %if.end229

if.then224.bad_crit_edge:                         ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end229:                                        ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #19
  %103 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %fp, align 4
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %buf.sroa.0.0.copyload690 = load i32, ptr %104, align 1
  %add.ptr.i621 = getelementptr i8, ptr %104, i32 4
  store ptr %add.ptr.i621, ptr %fp, align 4
  %sub.i622 = add i32 %102, -4
  %106 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %sub.i622, ptr %len.i, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload690)
  br label %if.end233

if.else:                                          ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #19
  %108 = ptrtoint ptr %process_class to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %process_class, align 2
  %conv = zext i16 %109 to i32
  br label %if.end233

if.end233:                                        ; preds = %if.else, %if.end229
  %conv.sink = phi i32 [ %conv, %if.else ], [ %107, %if.end229 ]
  %tclass232 = getelementptr inbounds %struct.role_trans_key, ptr %call7.i576, i32 0, i32 2
  %110 = ptrtoint ptr %tclass232 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv.sink, ptr %tclass232, align 8
  %111 = ptrtoint ptr %call7.i576 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %call7.i576, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i626 = icmp eq i32 %112, 0
  br i1 %tobool.not.i626, label %if.end233.bad_crit_edge, label %policydb_role_isvalid.exit

if.end233.bad_crit_edge:                          ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

policydb_role_isvalid.exit:                       ; preds = %if.end233
  %113 = ptrtoint ptr %nprim.i627 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %nprim.i627, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %114, i32 %112)
  %cmp.i628.not = icmp ult i32 %114, %112
  br i1 %cmp.i628.not, label %policydb_role_isvalid.exit.bad_crit_edge, label %lor.lhs.false237

policydb_role_isvalid.exit.bad_crit_edge:         ; preds = %policydb_role_isvalid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

lor.lhs.false237:                                 ; preds = %policydb_role_isvalid.exit
  %115 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool.not.i630 = icmp eq i32 %116, 0
  br i1 %tobool.not.i630, label %lor.lhs.false237.bad_crit_edge, label %policydb_type_isvalid.exit

lor.lhs.false237.bad_crit_edge:                   ; preds = %lor.lhs.false237
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

policydb_type_isvalid.exit:                       ; preds = %lor.lhs.false237
  %117 = ptrtoint ptr %nprim.i631 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nprim.i631, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %118, i32 %116)
  %cmp.i632.not = icmp ult i32 %118, %116
  br i1 %cmp.i632.not, label %policydb_type_isvalid.exit.bad_crit_edge, label %lor.lhs.false241

policydb_type_isvalid.exit.bad_crit_edge:         ; preds = %policydb_type_isvalid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

lor.lhs.false241:                                 ; preds = %policydb_type_isvalid.exit
  %tclass242 = getelementptr inbounds %struct.role_trans_key, ptr %call7.i576, i32 0, i32 2
  %119 = ptrtoint ptr %tclass242 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %tclass242, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i636 = icmp eq i32 %120, 0
  br i1 %tobool.not.i636, label %lor.lhs.false241.bad_crit_edge, label %policydb_class_isvalid.exit

lor.lhs.false241.bad_crit_edge:                   ; preds = %lor.lhs.false241
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

policydb_class_isvalid.exit:                      ; preds = %lor.lhs.false241
  %121 = ptrtoint ptr %nprim.i637 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %nprim.i637, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %122, i32 %120)
  %cmp.i638.not = icmp ult i32 %122, %120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.28.0.copyload707)
  %tobool.not.i642 = icmp eq i32 %buf.sroa.28.0.copyload707, 0
  %or.cond785 = select i1 %cmp.i638.not, i1 true, i1 %tobool.not.i642
  br i1 %or.cond785, label %policydb_class_isvalid.exit.bad_crit_edge, label %policydb_role_isvalid.exit648

policydb_class_isvalid.exit.bad_crit_edge:        ; preds = %policydb_class_isvalid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

policydb_role_isvalid.exit648:                    ; preds = %policydb_class_isvalid.exit
  %123 = ptrtoint ptr %nprim.i627 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %nprim.i627, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %97)
  %cmp.i644.not = icmp ult i32 %124, %97
  br i1 %cmp.i644.not, label %policydb_role_isvalid.exit648.bad_crit_edge, label %if.end250

policydb_role_isvalid.exit648.bad_crit_edge:      ; preds = %policydb_role_isvalid.exit648
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end250:                                        ; preds = %policydb_role_isvalid.exit648
  %call252 = tail call fastcc i32 @hashtab_insert(ptr noundef %role_tr, ptr noundef nonnull %call7.i576, ptr noundef nonnull %call7.i577, [2 x i32] [i32 ptrtoint (ptr @role_trans_hash to i32), i32 ptrtoint (ptr @role_trans_cmp to i32)])
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252)
  %tobool253.not = icmp eq i32 %call252, 0
  br i1 %tobool253.not, label %for.cond203, label %if.end250.bad_crit_edge

if.end250.bad_crit_edge:                          ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

for.end258:                                       ; preds = %for.cond203.for.end258_crit_edge, %for.cond203.preheader.for.end258_crit_edge
  %125 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %126)
  %cmp.i650 = icmp ult i32 %126, 4
  br i1 %cmp.i650, label %for.end258.bad_crit_edge, label %if.end263

for.end258.bad_crit_edge:                         ; preds = %for.end258
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end263:                                        ; preds = %for.end258
  %127 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %fp, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_loadN_noabort(i32 %129, i32 4)
  %buf.sroa.0.0.copyload691 = load i32, ptr %128, align 1
  %add.ptr.i651 = getelementptr i8, ptr %128, i32 4
  store ptr %add.ptr.i651, ptr %fp, align 4
  %sub.i652 = add i32 %126, -4
  %130 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %sub.i652, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.0.0.copyload691)
  %cmp266799.not = icmp eq i32 %buf.sroa.0.0.copyload691, 0
  br i1 %cmp266799.not, label %if.end263.for.end297_crit_edge, label %for.body268.lr.ph

if.end263.for.end297_crit_edge:                   ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end297

for.body268.lr.ph:                                ; preds = %if.end263
  %131 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload691)
  %role_allow = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 16
  %nprim.i664 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 2, i32 1
  %umax815 = call i32 @llvm.umax.i32(i32 %131, i32 1)
  br label %for.body268

for.cond265:                                      ; preds = %policydb_role_isvalid.exit676
  %inc296 = add nuw i32 %i.2800, 1
  %exitcond816.not = icmp eq i32 %inc296, %umax815
  br i1 %exitcond816.not, label %for.cond265.for.end297_crit_edge, label %for.cond265.for.body268_crit_edge

for.cond265.for.body268_crit_edge:                ; preds = %for.cond265
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body268

for.cond265.for.end297_crit_edge:                 ; preds = %for.cond265
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end297

for.body268:                                      ; preds = %for.cond265.for.body268_crit_edge, %for.body268.lr.ph
  %lra.0801 = phi ptr [ null, %for.body268.lr.ph ], [ %call7.i.i, %for.cond265.for.body268_crit_edge ]
  %i.2800 = phi i32 [ 0, %for.body268.lr.ph ], [ %inc296, %for.cond265.for.body268_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %132 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %132, i32 noundef 3520, i32 noundef 12) #22
  %tobool270.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool270.not, label %for.body268.bad_crit_edge, label %if.end272

for.body268.bad_crit_edge:                        ; preds = %for.body268
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end272:                                        ; preds = %for.body268
  %tobool273.not = icmp eq ptr %lra.0801, null
  br i1 %tobool273.not, label %if.else275, label %if.then274

if.then274:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #19
  %next = getelementptr inbounds %struct.role_allow, ptr %lra.0801, i32 0, i32 2
  %133 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %call7.i.i, ptr %next, align 8
  br label %if.end276

if.else275:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #19
  %134 = ptrtoint ptr %role_allow to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call7.i.i, ptr %role_allow, align 4
  br label %if.end276

if.end276:                                        ; preds = %if.else275, %if.then274
  %135 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %136)
  %cmp.i657 = icmp ult i32 %136, 8
  br i1 %cmp.i657, label %if.end276.bad_crit_edge, label %if.end281

if.end276.bad_crit_edge:                          ; preds = %if.end276
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end281:                                        ; preds = %if.end276
  %137 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %fp, align 4
  %139 = ptrtoint ptr %138 to i32
  call void @__asan_loadN_noabort(i32 %139, i32 4)
  %buf.sroa.0.0.copyload688 = load i32, ptr %138, align 1
  %buf.sroa.20.0..sroa_idx698 = getelementptr inbounds i8, ptr %138, i32 4
  %140 = ptrtoint ptr %buf.sroa.20.0..sroa_idx698 to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %buf.sroa.20.0.copyload699 = load i32, ptr %buf.sroa.20.0..sroa_idx698, align 1
  %add.ptr.i658 = getelementptr i8, ptr %138, i32 8
  store ptr %add.ptr.i658, ptr %fp, align 4
  %sub.i659 = add i32 %136, -8
  %141 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %sub.i659, ptr %len.i, align 4
  %142 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload688)
  %143 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %call7.i.i, align 8
  %144 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.20.0.copyload699)
  %new_role285 = getelementptr inbounds %struct.role_allow, ptr %call7.i.i, i32 0, i32 1
  %145 = ptrtoint ptr %new_role285 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %new_role285, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.0.0.copyload688)
  %tobool.not.i663 = icmp eq i32 %buf.sroa.0.0.copyload688, 0
  br i1 %tobool.not.i663, label %if.end281.bad_crit_edge, label %policydb_role_isvalid.exit669

if.end281.bad_crit_edge:                          ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

policydb_role_isvalid.exit669:                    ; preds = %if.end281
  %146 = ptrtoint ptr %nprim.i664 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %nprim.i664, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %142)
  %cmp.i665.not = icmp ult i32 %147, %142
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.20.0.copyload699)
  %tobool.not.i670 = icmp eq i32 %buf.sroa.20.0.copyload699, 0
  %or.cond786 = select i1 %cmp.i665.not, i1 true, i1 %tobool.not.i670
  br i1 %or.cond786, label %policydb_role_isvalid.exit669.bad_crit_edge, label %policydb_role_isvalid.exit676

policydb_role_isvalid.exit669.bad_crit_edge:      ; preds = %policydb_role_isvalid.exit669
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

policydb_role_isvalid.exit676:                    ; preds = %policydb_role_isvalid.exit669
  %148 = ptrtoint ptr %nprim.i664 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %nprim.i664, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %144)
  %cmp.i672.not = icmp ult i32 %149, %144
  br i1 %cmp.i672.not, label %policydb_role_isvalid.exit676.bad_crit_edge, label %for.cond265

policydb_role_isvalid.exit676.bad_crit_edge:      ; preds = %policydb_role_isvalid.exit676
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

for.end297:                                       ; preds = %for.cond265.for.end297_crit_edge, %if.end263.for.end297_crit_edge
  %call298 = tail call fastcc i32 @filename_trans_read(ptr noundef %p, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call298)
  %tobool299.not = icmp eq i32 %call298, 0
  br i1 %tobool299.not, label %if.end301, label %for.end297.bad_crit_edge

for.end297.bad_crit_edge:                         ; preds = %for.end297
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end301:                                        ; preds = %for.end297
  %call302 = tail call fastcc i32 @policydb_index(ptr noundef %p)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call302)
  %tobool303.not = icmp eq i32 %call302, 0
  br i1 %tobool303.not, label %if.end305, label %if.end301.bad_crit_edge

if.end301.bad_crit_edge:                          ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end305:                                        ; preds = %if.end301
  %150 = ptrtoint ptr %process_class to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %process_class, align 2
  %call307 = tail call i32 @string_to_av_perm(ptr noundef %p, i16 noundef zeroext %151, ptr noundef nonnull @.str.40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call307)
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %do.end312, label %if.end315

do.end312:                                        ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #19
  %call314 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #21
  br label %bad

if.end315:                                        ; preds = %if.end305
  %process_trans_perms = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 27
  %152 = ptrtoint ptr %process_trans_perms to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %call307, ptr %process_trans_perms, align 4
  %153 = ptrtoint ptr %process_class to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %process_class, align 2
  %call317 = tail call i32 @string_to_av_perm(ptr noundef %p, i16 noundef zeroext %154, ptr noundef nonnull @.str.44)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call317)
  %tobool318.not = icmp eq i32 %call317, 0
  br i1 %tobool318.not, label %do.end322, label %if.end325

do.end322:                                        ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #19
  %call324 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #21
  br label %bad

if.end325:                                        ; preds = %if.end315
  %155 = ptrtoint ptr %process_trans_perms to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %process_trans_perms, align 4
  %or = or i32 %156, %call317
  store i32 %or, ptr %process_trans_perms, align 4
  %call327 = tail call fastcc i32 @ocontext_read(ptr noundef %p, ptr noundef nonnull %call108, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call327)
  %tobool328.not = icmp eq i32 %call327, 0
  br i1 %tobool328.not, label %if.end330, label %if.end325.bad_crit_edge

if.end325.bad_crit_edge:                          ; preds = %if.end325
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end330:                                        ; preds = %if.end325
  %call331 = tail call fastcc i32 @genfs_read(ptr noundef %p, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call331)
  %tobool332.not = icmp eq i32 %call331, 0
  br i1 %tobool332.not, label %if.end334, label %if.end330.bad_crit_edge

if.end330.bad_crit_edge:                          ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end334:                                        ; preds = %if.end330
  %call335 = tail call fastcc i32 @range_read(ptr noundef %p, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call335)
  %tobool336.not = icmp eq i32 %call335, 0
  br i1 %tobool336.not, label %if.end338, label %if.end334.bad_crit_edge

if.end334.bad_crit_edge:                          ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end338:                                        ; preds = %if.end334
  %nprim341 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 3, i32 1
  %157 = ptrtoint ptr %nprim341 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %nprim341, align 4
  %159 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %158, i32 8) #17
  %160 = extractvalue { i32, i1 } %159, 1
  br i1 %160, label %kvcalloc.exit.thread, label %kvcalloc.exit, !prof !229

kvcalloc.exit.thread:                             ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #19
  %type_attr_map_array780 = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 20
  %161 = ptrtoint ptr %type_attr_map_array780 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %type_attr_map_array780, align 4
  br label %bad

kvcalloc.exit:                                    ; preds = %if.end338
  %162 = extractvalue { i32, i1 } %159, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %162, i32 noundef 3520, i32 noundef -1) #24
  %type_attr_map_array = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 20
  %163 = ptrtoint ptr %type_attr_map_array to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call.i.i.i, ptr %type_attr_map_array, align 4
  %tobool344.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool344.not, label %kvcalloc.exit.bad_crit_edge, label %for.cond347.preheader

kvcalloc.exit.bad_crit_edge:                      ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

for.cond347.preheader:                            ; preds = %kvcalloc.exit
  %164 = ptrtoint ptr %nprim341 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %nprim341, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp351802.not = icmp eq i32 %165, 0
  br i1 %cmp351802.not, label %for.cond347.preheader.for.end383_crit_edge, label %for.cond347.preheader.for.body353_crit_edge

for.cond347.preheader.for.body353_crit_edge:      ; preds = %for.cond347.preheader
  br label %for.body353

for.cond347.preheader.for.end383_crit_edge:       ; preds = %for.cond347.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end383

for.cond359.preheader:                            ; preds = %for.body353
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %170)
  %cmp363804.not = icmp eq i32 %170, 0
  br i1 %cmp363804.not, label %for.cond359.preheader.for.end383_crit_edge, label %for.cond359.preheader.for.body365_crit_edge

for.cond359.preheader.for.body365_crit_edge:      ; preds = %for.cond359.preheader
  br label %for.body365

for.cond359.preheader.for.end383_crit_edge:       ; preds = %for.cond359.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end383

for.body353:                                      ; preds = %for.body353.for.body353_crit_edge, %for.cond347.preheader.for.body353_crit_edge
  %i.3803 = phi i32 [ %inc357, %for.body353.for.body353_crit_edge ], [ 0, %for.cond347.preheader.for.body353_crit_edge ]
  %166 = ptrtoint ptr %type_attr_map_array to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %type_attr_map_array, align 4
  %arrayidx355 = getelementptr %struct.ebitmap, ptr %167, i32 %i.3803
  %168 = ptrtoint ptr %arrayidx355 to i32
  call void @__asan_storeN_noabort(i32 %168, i32 8)
  store i64 0, ptr %arrayidx355, align 4
  %inc357 = add nuw i32 %i.3803, 1
  %169 = ptrtoint ptr %nprim341 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %nprim341, align 4
  %cmp351 = icmp ult i32 %inc357, %170
  br i1 %cmp351, label %for.body353.for.body353_crit_edge, label %for.cond359.preheader

for.body353.for.body353_crit_edge:                ; preds = %for.body353
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body353

for.cond359:                                      ; preds = %if.end376
  %inc382 = add nuw i32 %i.4805, 1
  %171 = ptrtoint ptr %nprim341 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %nprim341, align 4
  %cmp363 = icmp ult i32 %inc382, %172
  br i1 %cmp363, label %for.cond359.for.body365_crit_edge, label %for.cond359.for.end383_crit_edge

for.cond359.for.end383_crit_edge:                 ; preds = %for.cond359
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end383

for.cond359.for.body365_crit_edge:                ; preds = %for.cond359
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body365

for.body365:                                      ; preds = %for.cond359.for.body365_crit_edge, %for.cond359.preheader.for.body365_crit_edge
  %i.4805 = phi i32 [ %inc382, %for.cond359.for.body365_crit_edge ], [ 0, %for.cond359.preheader.for.body365_crit_edge ]
  %173 = ptrtoint ptr %type_attr_map_array to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %type_attr_map_array, align 4
  %arrayidx367 = getelementptr %struct.ebitmap, ptr %174, i32 %i.4805
  %175 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %176)
  %cmp369 = icmp ugt i32 %176, 19
  br i1 %cmp369, label %if.then371, label %for.body365.if.end376_crit_edge

for.body365.if.end376_crit_edge:                  ; preds = %for.body365
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end376

if.then371:                                       ; preds = %for.body365
  %call372 = tail call i32 @ebitmap_read(ptr noundef %arrayidx367, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call372)
  %tobool373.not = icmp eq i32 %call372, 0
  br i1 %tobool373.not, label %if.then371.if.end376_crit_edge, label %if.then371.bad_crit_edge

if.then371.bad_crit_edge:                         ; preds = %if.then371
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.then371.if.end376_crit_edge:                   ; preds = %if.then371
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end376

if.end376:                                        ; preds = %if.then371.if.end376_crit_edge, %for.body365.if.end376_crit_edge
  %call377 = tail call i32 @ebitmap_set_bit(ptr noundef %arrayidx367, i32 noundef %i.4805, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call377)
  %tobool378.not = icmp eq i32 %call377, 0
  br i1 %tobool378.not, label %for.cond359, label %if.end376.bad_crit_edge

if.end376.bad_crit_edge:                          ; preds = %if.end376
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

for.end383:                                       ; preds = %for.cond359.for.end383_crit_edge, %for.cond359.preheader.for.end383_crit_edge, %for.cond347.preheader.for.end383_crit_edge
  %call384 = tail call fastcc i32 @policydb_bounds_sanity_check(ptr noundef %p)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call384)
  %tobool385.not = icmp eq i32 %call384, 0
  br i1 %tobool385.not, label %for.end383.cleanup388_crit_edge, label %for.end383.bad_crit_edge

for.end383.bad_crit_edge:                         ; preds = %for.end383
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

for.end383.cleanup388_crit_edge:                  ; preds = %for.end383
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup388

bad:                                              ; preds = %for.end383.bad_crit_edge, %if.end376.bad_crit_edge, %if.then371.bad_crit_edge, %kvcalloc.exit.bad_crit_edge, %kvcalloc.exit.thread, %if.end334.bad_crit_edge, %if.end330.bad_crit_edge, %if.end325.bad_crit_edge, %do.end322, %do.end312, %if.end301.bad_crit_edge, %for.end297.bad_crit_edge, %policydb_role_isvalid.exit676.bad_crit_edge, %policydb_role_isvalid.exit669.bad_crit_edge, %if.end281.bad_crit_edge, %if.end276.bad_crit_edge, %for.body268.bad_crit_edge, %for.end258.bad_crit_edge, %if.end250.bad_crit_edge, %policydb_role_isvalid.exit648.bad_crit_edge, %policydb_class_isvalid.exit.bad_crit_edge, %lor.lhs.false241.bad_crit_edge, %policydb_type_isvalid.exit.bad_crit_edge, %lor.lhs.false237.bad_crit_edge, %policydb_role_isvalid.exit.bad_crit_edge, %if.end233.bad_crit_edge, %if.then224.bad_crit_edge, %if.end213.bad_crit_edge, %if.end209.bad_crit_edge, %for.body205.bad_crit_edge, %if.end197.bad_crit_edge, %if.end192.bad_crit_edge, %if.then187.bad_crit_edge, %if.end180.bad_crit_edge, %do.end177, %for.body157.bad_crit_edge, %for.body.bad_crit_edge, %do.end126, %do.end113, %if.then101.bad_crit_edge, %if.then93.bad_crit_edge, %do.end68, %do.end55, %if.end41.bad_crit_edge, %do.end38, %do.end28, %do.end19, %do.end10, %do.end, %entry.bad_crit_edge
  %rc.2 = phi i32 [ -22, %do.end ], [ -22, %do.end10 ], [ -22, %do.end28 ], [ -22, %do.end38 ], [ -22, %do.end55 ], [ -22, %do.end68 ], [ %call94, %if.then93.bad_crit_edge ], [ %call102, %if.then101.bad_crit_edge ], [ -22, %do.end126 ], [ %call181, %if.end180.bad_crit_edge ], [ %call188, %if.then187.bad_crit_edge ], [ %call199, %if.end197.bad_crit_edge ], [ %call298, %for.end297.bad_crit_edge ], [ %call302, %if.end301.bad_crit_edge ], [ %call327, %if.end325.bad_crit_edge ], [ %call331, %if.end330.bad_crit_edge ], [ %call335, %if.end334.bad_crit_edge ], [ %call384, %for.end383.bad_crit_edge ], [ -12, %kvcalloc.exit.bad_crit_edge ], [ -22, %do.end322 ], [ -22, %do.end312 ], [ -22, %do.end177 ], [ -22, %do.end113 ], [ -12, %do.end19 ], [ -22, %entry.bad_crit_edge ], [ -22, %if.end41.bad_crit_edge ], [ -22, %if.end192.bad_crit_edge ], [ -22, %for.end258.bad_crit_edge ], [ -12, %kvcalloc.exit.thread ], [ %call372, %if.then371.bad_crit_edge ], [ %call377, %if.end376.bad_crit_edge ], [ -22, %if.end281.bad_crit_edge ], [ -22, %if.end276.bad_crit_edge ], [ -12, %for.body268.bad_crit_edge ], [ -22, %policydb_role_isvalid.exit669.bad_crit_edge ], [ -22, %policydb_role_isvalid.exit676.bad_crit_edge ], [ -22, %lor.lhs.false241.bad_crit_edge ], [ -22, %lor.lhs.false237.bad_crit_edge ], [ -22, %if.end233.bad_crit_edge ], [ -22, %if.then224.bad_crit_edge ], [ -22, %if.end213.bad_crit_edge ], [ -12, %for.body205.bad_crit_edge ], [ -12, %if.end209.bad_crit_edge ], [ -22, %policydb_role_isvalid.exit.bad_crit_edge ], [ -22, %policydb_type_isvalid.exit.bad_crit_edge ], [ -22, %policydb_class_isvalid.exit.bad_crit_edge ], [ -22, %policydb_role_isvalid.exit648.bad_crit_edge ], [ %call252, %if.end250.bad_crit_edge ], [ %call161, %for.body157.bad_crit_edge ], [ -22, %for.body.bad_crit_edge ]
  %rtd.1 = phi ptr [ null, %do.end ], [ null, %do.end10 ], [ null, %do.end28 ], [ null, %do.end38 ], [ null, %do.end55 ], [ null, %do.end68 ], [ null, %if.then93.bad_crit_edge ], [ null, %if.then101.bad_crit_edge ], [ null, %do.end126 ], [ null, %if.end180.bad_crit_edge ], [ null, %if.then187.bad_crit_edge ], [ null, %if.end197.bad_crit_edge ], [ null, %for.end297.bad_crit_edge ], [ null, %if.end301.bad_crit_edge ], [ null, %if.end325.bad_crit_edge ], [ null, %if.end330.bad_crit_edge ], [ null, %if.end334.bad_crit_edge ], [ null, %for.end383.bad_crit_edge ], [ null, %kvcalloc.exit.bad_crit_edge ], [ null, %do.end322 ], [ null, %do.end312 ], [ null, %do.end177 ], [ null, %do.end113 ], [ null, %do.end19 ], [ null, %entry.bad_crit_edge ], [ null, %if.end41.bad_crit_edge ], [ null, %if.end192.bad_crit_edge ], [ null, %for.end258.bad_crit_edge ], [ null, %kvcalloc.exit.thread ], [ null, %if.then371.bad_crit_edge ], [ null, %if.end376.bad_crit_edge ], [ null, %for.body268.bad_crit_edge ], [ null, %policydb_role_isvalid.exit676.bad_crit_edge ], [ null, %policydb_role_isvalid.exit669.bad_crit_edge ], [ null, %if.end276.bad_crit_edge ], [ null, %if.end281.bad_crit_edge ], [ %call7.i577, %lor.lhs.false241.bad_crit_edge ], [ %call7.i577, %lor.lhs.false237.bad_crit_edge ], [ %call7.i577, %if.end233.bad_crit_edge ], [ %call7.i577, %if.then224.bad_crit_edge ], [ %call7.i577, %if.end213.bad_crit_edge ], [ null, %for.body205.bad_crit_edge ], [ null, %if.end209.bad_crit_edge ], [ %call7.i577, %policydb_role_isvalid.exit.bad_crit_edge ], [ %call7.i577, %policydb_type_isvalid.exit.bad_crit_edge ], [ %call7.i577, %policydb_class_isvalid.exit.bad_crit_edge ], [ %call7.i577, %policydb_role_isvalid.exit648.bad_crit_edge ], [ %call7.i577, %if.end250.bad_crit_edge ], [ null, %for.body157.bad_crit_edge ], [ null, %for.body.bad_crit_edge ]
  %rtk.1 = phi ptr [ null, %do.end ], [ null, %do.end10 ], [ null, %do.end28 ], [ null, %do.end38 ], [ null, %do.end55 ], [ null, %do.end68 ], [ null, %if.then93.bad_crit_edge ], [ null, %if.then101.bad_crit_edge ], [ null, %do.end126 ], [ null, %if.end180.bad_crit_edge ], [ null, %if.then187.bad_crit_edge ], [ null, %if.end197.bad_crit_edge ], [ null, %for.end297.bad_crit_edge ], [ null, %if.end301.bad_crit_edge ], [ null, %if.end325.bad_crit_edge ], [ null, %if.end330.bad_crit_edge ], [ null, %if.end334.bad_crit_edge ], [ null, %for.end383.bad_crit_edge ], [ null, %kvcalloc.exit.bad_crit_edge ], [ null, %do.end322 ], [ null, %do.end312 ], [ null, %do.end177 ], [ null, %do.end113 ], [ null, %do.end19 ], [ null, %entry.bad_crit_edge ], [ null, %if.end41.bad_crit_edge ], [ null, %if.end192.bad_crit_edge ], [ null, %for.end258.bad_crit_edge ], [ null, %kvcalloc.exit.thread ], [ null, %if.then371.bad_crit_edge ], [ null, %if.end376.bad_crit_edge ], [ null, %for.body268.bad_crit_edge ], [ null, %policydb_role_isvalid.exit676.bad_crit_edge ], [ null, %policydb_role_isvalid.exit669.bad_crit_edge ], [ null, %if.end276.bad_crit_edge ], [ null, %if.end281.bad_crit_edge ], [ %call7.i576, %lor.lhs.false241.bad_crit_edge ], [ %call7.i576, %lor.lhs.false237.bad_crit_edge ], [ %call7.i576, %if.end233.bad_crit_edge ], [ %call7.i576, %if.then224.bad_crit_edge ], [ %call7.i576, %if.end213.bad_crit_edge ], [ null, %for.body205.bad_crit_edge ], [ %call7.i576, %if.end209.bad_crit_edge ], [ %call7.i576, %policydb_role_isvalid.exit.bad_crit_edge ], [ %call7.i576, %policydb_type_isvalid.exit.bad_crit_edge ], [ %call7.i576, %policydb_class_isvalid.exit.bad_crit_edge ], [ %call7.i576, %policydb_role_isvalid.exit648.bad_crit_edge ], [ %call7.i576, %if.end250.bad_crit_edge ], [ null, %for.body157.bad_crit_edge ], [ null, %for.body.bad_crit_edge ]
  tail call void @kfree(ptr noundef %rtk.1) #17
  tail call void @kfree(ptr noundef %rtd.1) #17
  tail call void @policydb_destroy(ptr noundef %p)
  br label %cleanup388

cleanup388:                                       ; preds = %bad, %for.end383.cleanup388_crit_edge, %out.i, %if.then149.cleanup388_crit_edge, %if.end140.cleanup388_crit_edge
  %rc.1 = phi i32 [ %rc.2, %bad ], [ 0, %for.end383.cleanup388_crit_edge ], [ %rc.0.i, %out.i ], [ -12, %if.then149.cleanup388_crit_edge ], [ %call144, %if.end140.cleanup388_crit_edge ]
  ret i32 %rc.1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebitmap_read(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @policydb_lookup_compat(i32 noundef %version) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @policydb_compat, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %version)
  %cmp2 = icmp eq i32 %0, %version
  br i1 %cmp2, label %entry.for.end_crit_edge, label %for.cond

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond:                                         ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %version)
  %cmp2.1 = icmp eq i32 %1, %version
  br i1 %cmp2.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  %2 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %version)
  %cmp2.2 = icmp eq i32 %2, %version
  br i1 %cmp2.2, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  %3 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %version)
  %cmp2.3 = icmp eq i32 %3, %version
  br i1 %cmp2.3, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  %4 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %version)
  %cmp2.4 = icmp eq i32 %4, %version
  br i1 %cmp2.4, label %for.cond.3.for.end_crit_edge, label %for.cond.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  %5 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %version)
  %cmp2.5 = icmp eq i32 %5, %version
  br i1 %cmp2.5, label %for.cond.4.for.end_crit_edge, label %for.cond.5

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  %6 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %version)
  %cmp2.6 = icmp eq i32 %6, %version
  br i1 %cmp2.6, label %for.cond.5.for.end_crit_edge, label %for.cond.6

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  %7 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %version)
  %cmp2.7 = icmp eq i32 %7, %version
  br i1 %cmp2.7, label %for.cond.6.for.end_crit_edge, label %for.cond.7

for.cond.6.for.end_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.7:                                       ; preds = %for.cond.6
  %8 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %version)
  %cmp2.8 = icmp eq i32 %8, %version
  br i1 %cmp2.8, label %for.cond.7.for.end_crit_edge, label %for.cond.8

for.cond.7.for.end_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.8:                                       ; preds = %for.cond.7
  %9 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %version)
  %cmp2.9 = icmp eq i32 %9, %version
  br i1 %cmp2.9, label %for.cond.8.for.end_crit_edge, label %for.cond.9

for.cond.8.for.end_crit_edge:                     ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.9:                                       ; preds = %for.cond.8
  %10 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %version)
  %cmp2.10 = icmp eq i32 %10, %version
  br i1 %cmp2.10, label %for.cond.9.for.end_crit_edge, label %for.cond.10

for.cond.9.for.end_crit_edge:                     ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.10:                                      ; preds = %for.cond.9
  %11 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %version)
  %cmp2.11 = icmp eq i32 %11, %version
  br i1 %cmp2.11, label %for.cond.10.for.end_crit_edge, label %for.cond.11

for.cond.10.for.end_crit_edge:                    ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.11:                                      ; preds = %for.cond.10
  %12 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %version)
  %cmp2.12 = icmp eq i32 %12, %version
  br i1 %cmp2.12, label %for.cond.11.for.end_crit_edge, label %for.cond.12

for.cond.11.for.end_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.12:                                      ; preds = %for.cond.11
  %13 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %version)
  %cmp2.13 = icmp eq i32 %13, %version
  br i1 %cmp2.13, label %for.cond.12.for.end_crit_edge, label %for.cond.13

for.cond.12.for.end_crit_edge:                    ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.13:                                      ; preds = %for.cond.12
  %14 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %version)
  %cmp2.14 = icmp eq i32 %14, %version
  br i1 %cmp2.14, label %for.cond.13.for.end_crit_edge, label %for.cond.14

for.cond.13.for.end_crit_edge:                    ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.14:                                      ; preds = %for.cond.13
  %15 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %version)
  %cmp2.15 = icmp eq i32 %15, %version
  br i1 %cmp2.15, label %for.cond.14.for.end_crit_edge, label %for.cond.15

for.cond.14.for.end_crit_edge:                    ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.15:                                      ; preds = %for.cond.14
  %16 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 16), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %version)
  %cmp2.16 = icmp eq i32 %16, %version
  br i1 %cmp2.16, label %for.cond.15.for.end_crit_edge, label %for.cond.16

for.cond.15.for.end_crit_edge:                    ; preds = %for.cond.15
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.16:                                      ; preds = %for.cond.15
  %17 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 17), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %version)
  %cmp2.17 = icmp eq i32 %17, %version
  br i1 %cmp2.17, label %for.cond.16.for.end_crit_edge, label %for.cond.17

for.cond.16.for.end_crit_edge:                    ; preds = %for.cond.16
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.cond.17:                                      ; preds = %for.cond.16
  call void @__sanitizer_cov_trace_pc() #19
  %18 = load i32, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 18), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %version)
  %cmp2.18 = icmp eq i32 %18, %version
  %spec.select = select i1 %cmp2.18, ptr getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 18), ptr null
  br label %for.end

for.end:                                          ; preds = %for.cond.17, %for.cond.16.for.end_crit_edge, %for.cond.15.for.end_crit_edge, %for.cond.14.for.end_crit_edge, %for.cond.13.for.end_crit_edge, %for.cond.12.for.end_crit_edge, %for.cond.11.for.end_crit_edge, %for.cond.10.for.end_crit_edge, %for.cond.9.for.end_crit_edge, %for.cond.8.for.end_crit_edge, %for.cond.7.for.end_crit_edge, %for.cond.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %info.0 = phi ptr [ @policydb_compat, %entry.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 1), %for.cond.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 2), %for.cond.1.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 3), %for.cond.2.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 4), %for.cond.3.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 5), %for.cond.4.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 6), %for.cond.5.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 7), %for.cond.6.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 8), %for.cond.7.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 9), %for.cond.8.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 10), %for.cond.9.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 11), %for.cond.10.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 12), %for.cond.11.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 13), %for.cond.12.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 14), %for.cond.13.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 15), %for.cond.14.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 16), %for.cond.15.for.end_crit_edge ], [ getelementptr inbounds ([19 x %struct.policydb_compat_info], ptr @policydb_compat, i32 0, i32 17), %for.cond.16.for.end_crit_edge ], [ %spec.select, %for.cond.17 ]
  ret ptr %info.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @symtab_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avtab_read(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cond_read_list(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hashtab_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hashtab_insert(ptr noundef %h, ptr noundef %key, ptr noundef %datum, [2 x i32] %key_params.coerce) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %key_params.coerce.fca.0.extract = extractvalue [2 x i32] %key_params.coerce, 0
  %0 = inttoptr i32 %key_params.coerce.fca.0.extract to ptr
  %key_params.coerce.fca.1.extract = extractvalue [2 x i32] %key_params.coerce, 1
  %1 = inttoptr i32 %key_params.coerce.fca.1.extract to ptr
  tail call void @__might_resched(ptr noundef nonnull @.str.77, i32 noundef 67, i32 noundef 0) #17
  %call.i = tail call i32 @__cond_resched() #17
  %size = getelementptr inbounds %struct.hashtab, ptr %h, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup19_crit_edge, label %lor.lhs.false

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup19

lor.lhs.false:                                    ; preds = %entry
  %nel = getelementptr inbounds %struct.hashtab, ptr %h, i32 0, i32 2
  %4 = ptrtoint ptr %nel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp = icmp eq i32 %5, -1
  br i1 %cmp, label %lor.lhs.false.cleanup19_crit_edge, label %if.end

lor.lhs.false.cleanup19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup19

if.end:                                           ; preds = %lor.lhs.false
  %call1 = tail call i32 %0(ptr noundef %key) #17
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 4
  %sub = add i32 %7, -1
  %and = and i32 %sub, %call1
  %8 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %h, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %and
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %cur.043 = load ptr, ptr %arrayidx, align 4
  %tobool3.not44 = icmp eq ptr %cur.043, null
  br i1 %tobool3.not44, label %if.end.cond.false_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

while.cond:                                       ; preds = %if.end10
  %next = getelementptr inbounds %struct.hashtab_node, ptr %cur.046, i32 0, i32 2
  %11 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %11)
  %cur.0 = load ptr, ptr %next, align 4
  %tobool3.not = icmp eq ptr %cur.0, null
  br i1 %tobool3.not, label %while.cond.cond.true_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.cond.cond.true_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %if.end.while.body_crit_edge
  %cur.046 = phi ptr [ %cur.0, %while.cond.while.body_crit_edge ], [ %cur.043, %if.end.while.body_crit_edge ]
  %prev.045 = phi ptr [ %cur.046, %while.cond.while.body_crit_edge ], [ null, %if.end.while.body_crit_edge ]
  %12 = ptrtoint ptr %cur.046 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur.046, align 4
  %call7 = tail call i32 %1(ptr noundef %key, ptr noundef %13) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %while.body.cleanup19_crit_edge, label %if.end10

while.body.cleanup19_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup19

if.end10:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp11 = icmp slt i32 %call7, 0
  br i1 %cmp11, label %while.end, label %while.cond

while.end:                                        ; preds = %if.end10
  %tobool14.not = icmp eq ptr %prev.045, null
  br i1 %tobool14.not, label %while.end.cond.false_crit_edge, label %while.end.cond.true_crit_edge

while.end.cond.true_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true

while.end.cond.false_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.false

cond.true:                                        ; preds = %while.end.cond.true_crit_edge, %while.cond.cond.true_crit_edge
  %prev.0.lcssa53 = phi ptr [ %prev.045, %while.end.cond.true_crit_edge ], [ %cur.046, %while.cond.cond.true_crit_edge ]
  %next15 = getelementptr inbounds %struct.hashtab_node, ptr %prev.0.lcssa53, i32 0, i32 2
  br label %cond.end

cond.false:                                       ; preds = %while.end.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %14 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %h, align 4
  %arrayidx17 = getelementptr ptr, ptr %15, i32 %and
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %next15, %cond.true ], [ %arrayidx17, %cond.false ]
  %call18 = tail call i32 @__hashtab_insert(ptr noundef %h, ptr noundef %cond, ptr noundef %key, ptr noundef %datum) #17
  br label %cleanup19

cleanup19:                                        ; preds = %cond.end, %while.body.cleanup19_crit_edge, %lor.lhs.false.cleanup19_crit_edge, %entry.cleanup19_crit_edge
  %retval.2 = phi i32 [ %call18, %cond.end ], [ -22, %lor.lhs.false.cleanup19_crit_edge ], [ -22, %entry.cleanup19_crit_edge ], [ -17, %while.body.cleanup19_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @filename_trans_read(ptr noundef %p, ptr noundef %fp) unnamed_addr #2 align 64 {
entry:
  %first.i = alloca ptr, align 4
  %key.i = alloca %struct.filename_trans_key, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %policyvers = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 24
  %0 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %1)
  %cmp = icmp ult i32 %1, 25
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp ult i32 %3, 4
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fp, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %5, align 1
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %3, -4
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.i, ptr %len.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  %9 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %10)
  %cmp4 = icmp ult i32 %10, 33
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end2
  %compat_filename_trans_count = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 11
  %11 = ptrtoint ptr %compat_filename_trans_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %compat_filename_trans_count, align 4
  %filename_trans = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 10
  %call6 = tail call i32 @hashtab_init(ptr noundef %filename_trans, i32 noundef 2048) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.cond.preheader, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.0.0.copyload)
  %cmp10137.not = icmp eq i32 %buf.sroa.0.0.copyload, 0
  br i1 %cmp10137.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tclass.i = getelementptr inbounds %struct.filename_trans_key, ptr %key.i, i32 0, i32 1
  %name13.i = getelementptr inbounds %struct.filename_trans_key, ptr %key.i, i32 0, i32 2
  %size.i.i.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 10, i32 1
  %filename_trans_ttypes.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 9
  %umax149 = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %for.body

for.cond:                                         ; preds = %filename_trans_read_helper_compat.exit
  %inc = add nuw i32 %i.0138, 1
  %exitcond150.not = icmp eq i32 %inc, %umax149
  br i1 %exitcond150.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %key.i) #17
  %12 = call ptr @memset(ptr %key.i, i32 255, i32 12)
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp.i.i = icmp ult i32 %14, 4
  br i1 %cmp.i.i, label %for.body.filename_trans_read_helper_compat.exit.thread_crit_edge, label %if.end.i59

for.body.filename_trans_read_helper_compat.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %filename_trans_read_helper_compat.exit.thread

if.end.i59:                                       ; preds = %for.body
  %15 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fp, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %17, i32 4)
  %buf.sroa.0.0.copyload121.i = load i32, ptr %16, align 1
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 4
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %sub.i.i = add i32 %14, -4
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i.i, ptr %len.i, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload121.i) #17
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %19, label %if.end8.i.i.i [
    i32 0, label %if.end.i59.filename_trans_read_helper_compat.exit.thread_crit_edge
    i32 -1, label %if.end.i59.filename_trans_read_helper_compat.exit.thread_crit_edge180
  ]

if.end.i59.filename_trans_read_helper_compat.exit.thread_crit_edge180: ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #19
  br label %filename_trans_read_helper_compat.exit.thread

if.end.i59.filename_trans_read_helper_compat.exit.thread_crit_edge: ; preds = %if.end.i59
  call void @__sanitizer_cov_trace_pc() #19
  br label %filename_trans_read_helper_compat.exit.thread

if.end8.i.i.i:                                    ; preds = %if.end.i59
  %add.i.i = add nuw i32 %19, 1
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i, i32 noundef 11456) #24
  %tobool.not.i.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end8.i.i.i.filename_trans_read_helper_compat.exit.thread_crit_edge, label %if.end3.i.i

if.end8.i.i.i.filename_trans_read_helper_compat.exit.thread_crit_edge: ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %filename_trans_read_helper_compat.exit.thread

if.end3.i.i:                                      ; preds = %if.end8.i.i.i
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %19)
  %cmp.i18.i.i = icmp ult i32 %22, %19
  br i1 %cmp.i18.i.i, label %if.then6.i.i, label %if.end4.i

if.then6.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #17
  br label %filename_trans_read_helper_compat.exit.thread

if.end4.i:                                        ; preds = %if.end3.i.i
  %23 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fp, align 4
  %25 = call ptr @memcpy(ptr %call9.i.i.i, ptr %24, i32 %19)
  %add.ptr.i.i.i = getelementptr i8, ptr %24, i32 %19
  store ptr %add.ptr.i.i.i, ptr %fp, align 4
  %sub.i.i.i = sub i32 %22, %19
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.i.i.i, ptr %len.i, align 4
  %arrayidx.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %19
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i.i.i)
  %cmp.i112.i = icmp ult i32 %sub.i.i.i, 16
  br i1 %cmp.i112.i, label %if.end4.i.out.i_crit_edge, label %if.end9.i

if.end4.i.out.i_crit_edge:                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.end9.i:                                        ; preds = %if.end4.i
  %28 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 4)
  %buf.sroa.0.0.copyload.i = load i32, ptr %add.ptr.i.i.i, align 1
  %buf.sroa.7.0..sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 4
  %29 = ptrtoint ptr %buf.sroa.7.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %buf.sroa.7.0.copyload.i = load i32, ptr %buf.sroa.7.0..sroa_idx.i, align 1
  %buf.sroa.9.0..sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 8
  %30 = ptrtoint ptr %buf.sroa.9.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 4)
  %buf.sroa.9.0.copyload.i = load i32, ptr %buf.sroa.9.0..sroa_idx.i, align 1
  %buf.sroa.11.0..sroa_idx.i = getelementptr inbounds i8, ptr %add.ptr.i.i.i, i32 12
  %31 = ptrtoint ptr %buf.sroa.11.0..sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %buf.sroa.11.0.copyload.i = load i32, ptr %buf.sroa.11.0..sroa_idx.i, align 1
  %add.ptr.i113.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 16
  %32 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i113.i, ptr %fp, align 4
  %sub.i114.i = add i32 %sub.i.i.i, -16
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub.i114.i, ptr %len.i, align 4
  %34 = call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload.i) #17
  %35 = call i32 @llvm.bswap.i32(i32 %buf.sroa.7.0.copyload.i) #17
  %36 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %key.i, align 4
  %37 = call i32 @llvm.bswap.i32(i32 %buf.sroa.9.0.copyload.i) #17
  %conv.i = trunc i32 %37 to i16
  %38 = ptrtoint ptr %tclass.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i, ptr %tclass.i, align 4
  %39 = ptrtoint ptr %name13.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call9.i.i.i, ptr %name13.i, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %buf.sroa.11.0.copyload.i) #17
  %41 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i.i, label %if.end9.i.if.then34.critedge.i_crit_edge, label %if.end.i.i.i

if.end9.i.if.then34.critedge.i_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then34.critedge.i

if.end.i.i.i:                                     ; preds = %if.end9.i
  %conv.i8.i.i = and i32 %37, 65535
  %xor.i.i.i = xor i32 %conv.i8.i.i, %35
  %43 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %call9.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not5.i.i.i = icmp eq i8 %44, 0
  br i1 %tobool.not5.i.i.i, label %if.end.i.i.i.filenametr_hash.exit.i.i_crit_edge, label %if.end.i.i.i.while.body.i12.i.i_crit_edge

if.end.i.i.i.while.body.i12.i.i_crit_edge:        ; preds = %if.end.i.i.i
  br label %while.body.i12.i.i

if.end.i.i.i.filenametr_hash.exit.i.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %filenametr_hash.exit.i.i

while.body.i12.i.i:                               ; preds = %while.body.i12.i.i.while.body.i12.i.i_crit_edge, %if.end.i.i.i.while.body.i12.i.i_crit_edge
  %45 = phi i8 [ %47, %while.body.i12.i.i.while.body.i12.i.i_crit_edge ], [ %44, %if.end.i.i.i.while.body.i12.i.i_crit_edge ]
  %byte_num.07.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i12.i.i.while.body.i12.i.i_crit_edge ], [ 0, %if.end.i.i.i.while.body.i12.i.i_crit_edge ]
  %hash.06.i.i.i = phi i32 [ %mul.i.i.i.i, %while.body.i12.i.i.while.body.i12.i.i_crit_edge ], [ %xor.i.i.i, %if.end.i.i.i.while.body.i12.i.i_crit_edge ]
  %inc.i.i.i = add i32 %byte_num.07.i.i.i, 1
  %conv1.i.i.i = zext i8 %45 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv1.i.i.i, 4
  %add.i.i.i.i = add i32 %shl.i.i.i.i, %hash.06.i.i.i
  %shr.i.i.i.i = lshr i32 %conv1.i.i.i, 4
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %shr.i.i.i.i
  %mul.i.i.i.i = mul i32 %add1.i.i.i.i, 11
  %arrayidx.i10.i.i = getelementptr i8, ptr %call9.i.i.i, i32 %inc.i.i.i
  %46 = ptrtoint ptr %arrayidx.i10.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i10.i.i, align 1
  %tobool.not.i11.i.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i11.i.i, label %while.body.i12.i.i.filenametr_hash.exit.i.i_crit_edge, label %while.body.i12.i.i.while.body.i12.i.i_crit_edge

while.body.i12.i.i.while.body.i12.i.i_crit_edge:  ; preds = %while.body.i12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i12.i.i

while.body.i12.i.i.filenametr_hash.exit.i.i_crit_edge: ; preds = %while.body.i12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %filenametr_hash.exit.i.i

filenametr_hash.exit.i.i:                         ; preds = %while.body.i12.i.i.filenametr_hash.exit.i.i_crit_edge, %if.end.i.i.i.filenametr_hash.exit.i.i_crit_edge
  %hash.0.lcssa.i.i.i = phi i32 [ %xor.i.i.i, %if.end.i.i.i.filenametr_hash.exit.i.i_crit_edge ], [ %mul.i.i.i.i, %while.body.i12.i.i.filenametr_hash.exit.i.i_crit_edge ]
  %sub.i.i118.i = add i32 %42, -1
  %and.i.i.i = and i32 %hash.0.lcssa.i.i.i, %sub.i.i118.i
  %48 = ptrtoint ptr %filename_trans to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %filename_trans, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %49, i32 %and.i.i.i
  %50 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %cur.029.i.i.i = load ptr, ptr %arrayidx.i.i.i, align 4
  %tobool2.not30.i.i.i = icmp eq ptr %cur.029.i.i.i, null
  br i1 %tobool2.not30.i.i.i, label %filenametr_hash.exit.i.i.if.then34.critedge.i_crit_edge, label %filenametr_hash.exit.i.i.while.body.i.i.i_crit_edge

filenametr_hash.exit.i.i.while.body.i.i.i_crit_edge: ; preds = %filenametr_hash.exit.i.i
  br label %while.body.i.i.i

filenametr_hash.exit.i.i.if.then34.critedge.i_crit_edge: ; preds = %filenametr_hash.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then34.critedge.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %filenametr_hash.exit.i.i.while.body.i.i.i_crit_edge
  %cur.031.i.i.i = phi ptr [ %cur.0.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ], [ %cur.029.i.i.i, %filenametr_hash.exit.i.i.while.body.i.i.i_crit_edge ]
  %51 = ptrtoint ptr %cur.031.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cur.031.i.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %52, align 4
  %sub.i2.i.i = sub i32 %35, %54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i2.i.i)
  %tobool.not.i3.i.i = icmp eq i32 %sub.i2.i.i, 0
  br i1 %tobool.not.i3.i.i, label %if.end.i4.i.i, label %while.body.i.i.i.if.end8.i.i119.i_crit_edge

while.body.i.i.i.if.end8.i.i119.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i.i119.i

if.end.i4.i.i:                                    ; preds = %while.body.i.i.i
  %tclass2.i.i.i = getelementptr inbounds %struct.filename_trans_key, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %tclass2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %tclass2.i.i.i, align 4
  %conv3.i.i.i = zext i16 %56 to i32
  %sub4.i.i.i = sub nsw i32 %conv.i8.i.i, %conv3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %sub4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %filenametr_cmp.exit.i.i, label %if.end.i4.i.i.if.end8.i.i119.i_crit_edge

if.end.i4.i.i.if.end8.i.i119.i_crit_edge:         ; preds = %if.end.i4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i.i119.i

filenametr_cmp.exit.i.i:                          ; preds = %if.end.i4.i.i
  %name8.i.i.i = getelementptr inbounds %struct.filename_trans_key, ptr %52, i32 0, i32 2
  %57 = ptrtoint ptr %name8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name8.i.i.i, align 4
  %call.i5.i.i = call i32 @strcmp(ptr noundef nonnull %call9.i.i.i, ptr noundef %58) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i.i)
  %cmp6.i.i.i = icmp eq i32 %call.i5.i.i, 0
  br i1 %cmp6.i.i.i, label %policydb_filenametr_search.exit.i, label %filenametr_cmp.exit.i.i.if.end8.i.i119.i_crit_edge

filenametr_cmp.exit.i.i.if.end8.i.i119.i_crit_edge: ; preds = %filenametr_cmp.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i.i119.i

if.end8.i.i119.i:                                 ; preds = %filenametr_cmp.exit.i.i.if.end8.i.i119.i_crit_edge, %if.end.i4.i.i.if.end8.i.i119.i_crit_edge, %while.body.i.i.i.if.end8.i.i119.i_crit_edge
  %retval.0.i15.i.i = phi i32 [ %call.i5.i.i, %filenametr_cmp.exit.i.i.if.end8.i.i119.i_crit_edge ], [ %sub4.i.i.i, %if.end.i4.i.i.if.end8.i.i119.i_crit_edge ], [ %sub.i2.i.i, %while.body.i.i.i.if.end8.i.i119.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i15.i.i)
  %cmp9.i.i.i = icmp slt i32 %retval.0.i15.i.i, 0
  br i1 %cmp9.i.i.i, label %if.end8.i.i119.i.if.then34.critedge.i_crit_edge, label %cleanup.i.i.i

if.end8.i.i119.i.if.then34.critedge.i_crit_edge:  ; preds = %if.end8.i.i119.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then34.critedge.i

cleanup.i.i.i:                                    ; preds = %if.end8.i.i119.i
  %next.i.i.i = getelementptr inbounds %struct.hashtab_node, ptr %cur.031.i.i.i, i32 0, i32 2
  %59 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %cur.0.i.i.i = load ptr, ptr %next.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %cur.0.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %cleanup.i.i.i.if.then34.critedge.i_crit_edge, label %cleanup.i.i.i.while.body.i.i.i_crit_edge

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i.i

cleanup.i.i.i.if.then34.critedge.i_crit_edge:     ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then34.critedge.i

policydb_filenametr_search.exit.i:                ; preds = %filenametr_cmp.exit.i.i
  %datum.i.i.i = getelementptr inbounds %struct.hashtab_node, ptr %cur.031.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %datum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %datum.i.i.i, align 4
  %tobool16.not147.i = icmp eq ptr %61, null
  br i1 %tobool16.not147.i, label %policydb_filenametr_search.exit.i.if.then34.critedge.i_crit_edge, label %while.body.lr.ph.i

policydb_filenametr_search.exit.i.if.then34.critedge.i_crit_edge: ; preds = %policydb_filenametr_search.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then34.critedge.i

while.body.lr.ph.i:                               ; preds = %policydb_filenametr_search.exit.i
  %sub.i60 = add i32 %34, -1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end32.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %datum.0148.i = phi ptr [ %61, %while.body.lr.ph.i ], [ %65, %if.end32.i.while.body.i_crit_edge ]
  %call17.i = call i32 @ebitmap_get_bit(ptr noundef nonnull %datum.0148.i, i32 noundef %sub.i60) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end22.i, label %while.body.i.out.i_crit_edge, !prof !228

while.body.i.out.i_crit_edge:                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.end22.i:                                       ; preds = %while.body.i
  %otype23.i = getelementptr inbounds %struct.filename_trans_datum, ptr %datum.0148.i, i32 0, i32 1
  %62 = ptrtoint ptr %otype23.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %otype23.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %40)
  %cmp.i61 = icmp eq i32 %63, %40
  br i1 %cmp.i61, label %if.end22.i.if.end65.i_crit_edge, label %if.end32.i, !prof !228

if.end22.i.if.end65.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65.i

if.end32.i:                                       ; preds = %if.end22.i
  %next.i = getelementptr inbounds %struct.filename_trans_datum, ptr %datum.0148.i, i32 0, i32 2
  %64 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %next.i, align 4
  %tobool16.not.i = icmp eq ptr %65, null
  br i1 %tobool16.not.i, label %if.end32.i.if.then34.critedge.i_crit_edge, label %if.end32.i.while.body.i_crit_edge

if.end32.i.while.body.i_crit_edge:                ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

if.end32.i.if.then34.critedge.i_crit_edge:        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then34.critedge.i

if.then34.critedge.i:                             ; preds = %if.end32.i.if.then34.critedge.i_crit_edge, %policydb_filenametr_search.exit.i.if.then34.critedge.i_crit_edge, %cleanup.i.i.i.if.then34.critedge.i_crit_edge, %if.end8.i.i119.i.if.then34.critedge.i_crit_edge, %filenametr_hash.exit.i.i.if.then34.critedge.i_crit_edge, %if.end9.i.if.then34.critedge.i_crit_edge
  %last.0.lcssa.i = phi ptr [ null, %policydb_filenametr_search.exit.i.if.then34.critedge.i_crit_edge ], [ null, %if.end9.i.if.then34.critedge.i_crit_edge ], [ null, %filenametr_hash.exit.i.i.if.then34.critedge.i_crit_edge ], [ %datum.0148.i, %if.end32.i.if.then34.critedge.i_crit_edge ], [ null, %if.end8.i.i119.i.if.then34.critedge.i_crit_edge ], [ null, %cleanup.i.i.i.if.then34.critedge.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %66 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %66, i32 noundef 3264, i32 noundef 16) #22
  %tobool36.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool36.not.i, label %if.then34.critedge.i.out.i_crit_edge, label %if.end38.i

if.then34.critedge.i.out.i_crit_edge:             ; preds = %if.then34.critedge.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.end38.i:                                       ; preds = %if.then34.critedge.i
  %67 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 0, ptr %call7.i.i, align 8
  %otype40.i = getelementptr inbounds %struct.filename_trans_datum, ptr %call7.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %otype40.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %40, ptr %otype40.i, align 8
  %next41.i = getelementptr inbounds %struct.filename_trans_datum, ptr %call7.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %next41.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %next41.i, align 4
  %tobool42.not.i = icmp eq ptr %last.0.lcssa.i, null
  br i1 %tobool42.not.i, label %if.else.i, label %if.then49.i, !prof !228

if.then49.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #19
  %next50.i = getelementptr inbounds %struct.filename_trans_datum, ptr %last.0.lcssa.i, i32 0, i32 2
  %70 = ptrtoint ptr %next50.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.i, ptr %next50.i, align 4
  br label %if.end65.i

if.else.i:                                        ; preds = %if.end38.i
  %call51.i = call ptr @kmemdup(ptr noundef nonnull %key.i, i32 noundef 12, i32 noundef 3264) #17
  %tobool52.not.i = icmp eq ptr %call51.i, null
  br i1 %tobool52.not.i, label %if.else.i.out.i_crit_edge, label %if.end54.i

if.else.i.out.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.end54.i:                                       ; preds = %if.else.i
  %call55.i = call fastcc i32 @hashtab_insert(ptr noundef %filename_trans, ptr noundef nonnull %call51.i, ptr noundef nonnull %call7.i.i, [2 x i32] [i32 ptrtoint (ptr @filenametr_hash to i32), i32 ptrtoint (ptr @filenametr_cmp to i32)]) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end58.i, label %if.end54.i.out.i_crit_edge

if.end54.i.out.i_crit_edge:                       ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.end58.i:                                       ; preds = %if.end54.i
  %71 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %key.i, align 4
  %call60.i = call i32 @ebitmap_set_bit(ptr noundef %filename_trans_ttypes.i, i32 noundef %72, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %tobool61.not.i = icmp eq i32 %call60.i, 0
  br i1 %tobool61.not.i, label %if.end58.i.if.end65.i_crit_edge, label %if.end58.i.filename_trans_read_helper_compat.exit.thread_crit_edge

if.end58.i.filename_trans_read_helper_compat.exit.thread_crit_edge: ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %filename_trans_read_helper_compat.exit.thread

if.end58.i.if.end65.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end65.i

if.end65.i:                                       ; preds = %if.end58.i.if.end65.i_crit_edge, %if.then49.i, %if.end22.i.if.end65.i_crit_edge
  %name.1.i = phi ptr [ null, %if.end58.i.if.end65.i_crit_edge ], [ %call9.i.i.i, %if.then49.i ], [ %call9.i.i.i, %if.end22.i.if.end65.i_crit_edge ]
  %datum.1.i = phi ptr [ %call7.i.i, %if.end58.i.if.end65.i_crit_edge ], [ %call7.i.i, %if.then49.i ], [ %datum.0148.i, %if.end22.i.if.end65.i_crit_edge ]
  call void @kfree(ptr noundef %name.1.i) #17
  %sub67.i = add i32 %34, -1
  %call68.i = call i32 @ebitmap_set_bit(ptr noundef nonnull %datum.1.i, i32 noundef %sub67.i, i32 noundef 1) #17
  br label %filename_trans_read_helper_compat.exit

out.i:                                            ; preds = %if.end54.i.out.i_crit_edge, %if.else.i.out.i_crit_edge, %if.then34.critedge.i.out.i_crit_edge, %while.body.i.out.i_crit_edge, %if.end4.i.out.i_crit_edge
  %ft.0.i = phi ptr [ %call51.i, %if.end54.i.out.i_crit_edge ], [ null, %if.else.i.out.i_crit_edge ], [ null, %if.then34.critedge.i.out.i_crit_edge ], [ null, %if.end4.i.out.i_crit_edge ], [ null, %while.body.i.out.i_crit_edge ]
  %datum.2.i = phi ptr [ %call7.i.i, %if.end54.i.out.i_crit_edge ], [ %call7.i.i, %if.else.i.out.i_crit_edge ], [ null, %if.then34.critedge.i.out.i_crit_edge ], [ null, %if.end4.i.out.i_crit_edge ], [ null, %while.body.i.out.i_crit_edge ]
  %rc.0.i = phi i32 [ %call55.i, %if.end54.i.out.i_crit_edge ], [ -12, %if.else.i.out.i_crit_edge ], [ -12, %if.then34.critedge.i.out.i_crit_edge ], [ -22, %if.end4.i.out.i_crit_edge ], [ 0, %while.body.i.out.i_crit_edge ]
  call void @kfree(ptr noundef %ft.0.i) #17
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #17
  call void @kfree(ptr noundef %datum.2.i) #17
  br label %filename_trans_read_helper_compat.exit

filename_trans_read_helper_compat.exit.thread:    ; preds = %if.end58.i.filename_trans_read_helper_compat.exit.thread_crit_edge, %if.then6.i.i, %if.end8.i.i.i.filename_trans_read_helper_compat.exit.thread_crit_edge, %if.end.i59.filename_trans_read_helper_compat.exit.thread_crit_edge, %if.end.i59.filename_trans_read_helper_compat.exit.thread_crit_edge180, %for.body.filename_trans_read_helper_compat.exit.thread_crit_edge
  %retval.0.i62.ph = phi i32 [ -22, %if.then6.i.i ], [ %call60.i, %if.end58.i.filename_trans_read_helper_compat.exit.thread_crit_edge ], [ -22, %for.body.filename_trans_read_helper_compat.exit.thread_crit_edge ], [ -12, %if.end8.i.i.i.filename_trans_read_helper_compat.exit.thread_crit_edge ], [ -22, %if.end.i59.filename_trans_read_helper_compat.exit.thread_crit_edge ], [ -22, %if.end.i59.filename_trans_read_helper_compat.exit.thread_crit_edge180 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i) #17
  br label %cleanup

filename_trans_read_helper_compat.exit:           ; preds = %out.i, %if.end65.i
  %retval.0.i62 = phi i32 [ %rc.0.i, %out.i ], [ %call68.i, %if.end65.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %key.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i62)
  %tobool12.not = icmp eq i32 %retval.0.i62, 0
  br i1 %tobool12.not, label %for.cond, label %filename_trans_read_helper_compat.exit.cleanup_crit_edge

filename_trans_read_helper_compat.exit.cleanup_crit_edge: ; preds = %filename_trans_read_helper_compat.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else:                                          ; preds = %if.end2
  %filename_trans15 = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 10
  %call16 = tail call i32 @hashtab_init(ptr noundef %filename_trans15, i32 noundef %8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %for.cond20.preheader, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond20.preheader:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.0.0.copyload)
  %cmp21134.not = icmp eq i32 %buf.sroa.0.0.copyload, 0
  br i1 %cmp21134.not, label %for.cond20.preheader.cleanup_crit_edge, label %for.body22.lr.ph

for.cond20.preheader.cleanup_crit_edge:           ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body22.lr.ph:                                 ; preds = %for.cond20.preheader
  %filename_trans_ttypes.i114 = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 9
  %umax = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %for.body22

for.cond20:                                       ; preds = %filename_trans_read_helper.exit
  %inc28 = add nuw i32 %i.1135, 1
  %exitcond.not = icmp eq i32 %inc28, %umax
  br i1 %exitcond.not, label %for.cond20.cleanup_crit_edge, label %for.cond20.for.body22_crit_edge

for.cond20.for.body22_crit_edge:                  ; preds = %for.cond20
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body22

for.cond20.cleanup_crit_edge:                     ; preds = %for.cond20
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body22:                                       ; preds = %for.cond20.for.body22_crit_edge, %for.body22.lr.ph
  %i.1135 = phi i32 [ 0, %for.body22.lr.ph ], [ %inc28, %for.cond20.for.body22_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %first.i)
  %73 = ptrtoint ptr %first.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %first.i, align 4
  %74 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %75)
  %cmp.i.i64 = icmp ult i32 %75, 4
  br i1 %cmp.i.i64, label %for.body22.filename_trans_read_helper.exit.thread_crit_edge, label %if.end.i67

for.body22.filename_trans_read_helper.exit.thread_crit_edge: ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #19
  br label %filename_trans_read_helper.exit.thread

if.end.i67:                                       ; preds = %for.body22
  %76 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fp, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_loadN_noabort(i32 %78, i32 4)
  %buf.sroa.0.0.copyload119.i = load i32, ptr %77, align 1
  %add.ptr.i.i65 = getelementptr i8, ptr %77, i32 4
  store ptr %add.ptr.i.i65, ptr %fp, align 4
  %sub.i.i66 = add i32 %75, -4
  %79 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub.i.i66, ptr %len.i, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload119.i) #17
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %80, label %if.end8.i.i.i92 [
    i32 0, label %if.end.i67.filename_trans_read_helper.exit.thread_crit_edge
    i32 -1, label %if.end.i67.filename_trans_read_helper.exit.thread_crit_edge181
  ]

if.end.i67.filename_trans_read_helper.exit.thread_crit_edge181: ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #19
  br label %filename_trans_read_helper.exit.thread

if.end.i67.filename_trans_read_helper.exit.thread_crit_edge: ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #19
  br label %filename_trans_read_helper.exit.thread

if.end8.i.i.i92:                                  ; preds = %if.end.i67
  %add.i.i68 = add nuw i32 %80, 1
  %call9.i.i.i91 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i68, i32 noundef 11456) #24
  %tobool.not.i.i94 = icmp eq ptr %call9.i.i.i91, null
  br i1 %tobool.not.i.i94, label %if.end8.i.i.i92.filename_trans_read_helper.exit.thread_crit_edge, label %if.end3.i.i97

if.end8.i.i.i92.filename_trans_read_helper.exit.thread_crit_edge: ; preds = %if.end8.i.i.i92
  call void @__sanitizer_cov_trace_pc() #19
  br label %filename_trans_read_helper.exit.thread

if.end3.i.i97:                                    ; preds = %if.end8.i.i.i92
  %82 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %80)
  %cmp.i18.i.i96 = icmp ult i32 %83, %80
  br i1 %cmp.i18.i.i96, label %if.then6.i.i98, label %if.end4.i102

if.then6.i.i98:                                   ; preds = %if.end3.i.i97
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i91) #17
  br label %filename_trans_read_helper.exit.thread

if.end4.i102:                                     ; preds = %if.end3.i.i97
  %84 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %fp, align 4
  %86 = call ptr @memcpy(ptr %call9.i.i.i91, ptr %85, i32 %80)
  %add.ptr.i.i.i99 = getelementptr i8, ptr %85, i32 %80
  store ptr %add.ptr.i.i.i99, ptr %fp, align 4
  %sub.i.i.i100 = sub i32 %83, %80
  %87 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %sub.i.i.i100, ptr %len.i, align 4
  %arrayidx.i.i101 = getelementptr i8, ptr %call9.i.i.i91, i32 %80
  %88 = ptrtoint ptr %arrayidx.i.i101 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %arrayidx.i.i101, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i.i.i100)
  %cmp.i104.i = icmp ult i32 %sub.i.i.i100, 12
  br i1 %cmp.i104.i, label %if.end4.i102.out.i117_crit_edge, label %if.end9.i109

if.end4.i102.out.i117_crit_edge:                  ; preds = %if.end4.i102
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i117

if.end9.i109:                                     ; preds = %if.end4.i102
  %89 = ptrtoint ptr %add.ptr.i.i.i99 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %buf.sroa.0.0.copyload.i103 = load i32, ptr %add.ptr.i.i.i99, align 1
  %buf.sroa.9.0..sroa_idx.i104 = getelementptr inbounds i8, ptr %add.ptr.i.i.i99, i32 4
  %90 = ptrtoint ptr %buf.sroa.9.0..sroa_idx.i104 to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %buf.sroa.9.0.copyload.i105 = load i32, ptr %buf.sroa.9.0..sroa_idx.i104, align 1
  %buf.sroa.11.0..sroa_idx.i106 = getelementptr inbounds i8, ptr %add.ptr.i.i.i99, i32 8
  %91 = ptrtoint ptr %buf.sroa.11.0..sroa_idx.i106 to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %buf.sroa.11.0.copyload.i107 = load i32, ptr %buf.sroa.11.0..sroa_idx.i106, align 1
  %add.ptr.i105.i = getelementptr i8, ptr %add.ptr.i.i.i99, i32 12
  %92 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %add.ptr.i105.i, ptr %fp, align 4
  %sub.i106.i = add i32 %sub.i.i.i100, -12
  %93 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %sub.i106.i, ptr %len.i, align 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload.i103) #17
  %95 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.9.0.copyload.i105) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.11.0.copyload.i107)
  %cmp.i108 = icmp eq i32 %buf.sroa.11.0.copyload.i107, 0
  br i1 %cmp.i108, label %if.end9.i109.out.sink.split.i_crit_edge, label %for.body.preheader.i

if.end9.i109.out.sink.split.i_crit_edge:          ; preds = %if.end9.i109
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.sink.split.i

for.body.preheader.i:                             ; preds = %if.end9.i109
  %96 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.11.0.copyload.i107) #17
  %umax.i = tail call i32 @llvm.umax.i32(i32 %96, i32 1) #17
  br label %for.body.i

for.body.i:                                       ; preds = %if.end29.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0143.i = phi i32 [ %inc.i, %if.end29.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %dst.0142.i = phi ptr [ %next.i112, %if.end29.i.for.body.i_crit_edge ], [ %first.i, %for.body.preheader.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %97 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i110 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 3264, i32 noundef 16) #22
  %tobool18.not.i111 = icmp eq ptr %call7.i.i110, null
  br i1 %tobool18.not.i111, label %for.body.i.out.i117_crit_edge, label %if.end20.i

for.body.i.out.i117_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i117

if.end20.i:                                       ; preds = %for.body.i
  %98 = ptrtoint ptr %dst.0142.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call7.i.i110, ptr %dst.0142.i, align 4
  %call21.i = tail call i32 @ebitmap_read(ptr noundef nonnull %call7.i.i110, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.out.i117_crit_edge

if.end20.i.out.i117_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i117

if.end24.i:                                       ; preds = %if.end20.i
  %99 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %100)
  %cmp.i111.i = icmp ult i32 %100, 4
  br i1 %cmp.i111.i, label %if.end24.i.out.i117_crit_edge, label %if.end29.i

if.end24.i.out.i117_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i117

if.end29.i:                                       ; preds = %if.end24.i
  %101 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %fp, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %buf.sroa.0.0.copyload120.i = load i32, ptr %102, align 1
  %add.ptr.i112.i = getelementptr i8, ptr %102, i32 4
  store ptr %add.ptr.i112.i, ptr %fp, align 4
  %sub.i113.i = add i32 %100, -4
  %104 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %sub.i113.i, ptr %len.i, align 4
  %105 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload120.i) #17
  %otype.i = getelementptr inbounds %struct.filename_trans_datum, ptr %call7.i.i110, i32 0, i32 1
  %106 = ptrtoint ptr %otype.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %otype.i, align 8
  %next.i112 = getelementptr inbounds %struct.filename_trans_datum, ptr %call7.i.i110, i32 0, i32 2
  %107 = ptrtoint ptr %next.i112 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %next.i112, align 4
  %inc.i = add nuw i32 %i.0143.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.end.i, label %if.end29.i.for.body.i_crit_edge

if.end29.i.for.body.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %if.end29.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %108 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i100.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %108, i32 noundef 3264, i32 noundef 12) #22
  %tobool33.not.i = icmp eq ptr %call7.i100.i, null
  br i1 %tobool33.not.i, label %for.end.i.out.i117_crit_edge, label %if.end35.i

for.end.i.out.i117_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i117

if.end35.i:                                       ; preds = %for.end.i
  %109 = ptrtoint ptr %call7.i100.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %94, ptr %call7.i100.i, align 8
  %conv.i113 = trunc i32 %95 to i16
  %tclass37.i = getelementptr inbounds %struct.filename_trans_key, ptr %call7.i100.i, i32 0, i32 1
  %110 = ptrtoint ptr %tclass37.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv.i113, ptr %tclass37.i, align 4
  %name38.i = getelementptr inbounds %struct.filename_trans_key, ptr %call7.i100.i, i32 0, i32 2
  %111 = ptrtoint ptr %name38.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call9.i.i.i91, ptr %name38.i, align 8
  %112 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %first.i.0.first.i.0.first.0.first.0.first.0..i = load ptr, ptr %first.i, align 4
  %call39.i = tail call fastcc i32 @hashtab_insert(ptr noundef %filename_trans15, ptr noundef nonnull %call7.i100.i, ptr noundef %first.i.0.first.i.0.first.0.first.0.first.0..i, [2 x i32] [i32 ptrtoint (ptr @filenametr_hash to i32), i32 ptrtoint (ptr @filenametr_cmp to i32)]) #17
  %113 = zext i32 %call39.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %call39.i, label %if.end35.i.out.i117_crit_edge [
    i32 -17, label %if.end35.i.out.sink.split.i_crit_edge
    i32 0, label %if.end51.i
  ]

if.end35.i.out.sink.split.i_crit_edge:            ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.sink.split.i

if.end35.i.out.i117_crit_edge:                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i117

if.end51.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #19
  %call52.i = tail call i32 @ebitmap_set_bit(ptr noundef %filename_trans_ttypes.i114, i32 noundef %94, i32 noundef 1) #17
  br label %filename_trans_read_helper.exit

out.sink.split.i:                                 ; preds = %if.end35.i.out.sink.split.i_crit_edge, %if.end9.i109.out.sink.split.i_crit_edge
  %.str.82.sink.i = phi ptr [ @.str.79, %if.end9.i109.out.sink.split.i_crit_edge ], [ @.str.82, %if.end35.i.out.sink.split.i_crit_edge ]
  %rc.0.ph.i = phi i32 [ -2, %if.end9.i109.out.sink.split.i_crit_edge ], [ %call39.i, %if.end35.i.out.sink.split.i_crit_edge ]
  %ft.0.ph.i = phi ptr [ null, %if.end9.i109.out.sink.split.i_crit_edge ], [ %call7.i100.i, %if.end35.i.out.sink.split.i_crit_edge ]
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.82.sink.i) #21
  br label %out.i117

out.i117:                                         ; preds = %out.sink.split.i, %if.end35.i.out.i117_crit_edge, %for.end.i.out.i117_crit_edge, %if.end24.i.out.i117_crit_edge, %if.end20.i.out.i117_crit_edge, %for.body.i.out.i117_crit_edge, %if.end4.i102.out.i117_crit_edge
  %rc.0.i115 = phi i32 [ -12, %for.end.i.out.i117_crit_edge ], [ %call39.i, %if.end35.i.out.i117_crit_edge ], [ -22, %if.end4.i102.out.i117_crit_edge ], [ %rc.0.ph.i, %out.sink.split.i ], [ %call21.i, %if.end20.i.out.i117_crit_edge ], [ -12, %for.body.i.out.i117_crit_edge ], [ -22, %if.end24.i.out.i117_crit_edge ]
  %ft.0.i116 = phi ptr [ null, %for.end.i.out.i117_crit_edge ], [ %call7.i100.i, %if.end35.i.out.i117_crit_edge ], [ null, %if.end4.i102.out.i117_crit_edge ], [ %ft.0.ph.i, %out.sink.split.i ], [ null, %for.body.i.out.i117_crit_edge ], [ null, %if.end20.i.out.i117_crit_edge ], [ null, %if.end24.i.out.i117_crit_edge ]
  tail call void @kfree(ptr noundef %ft.0.i116) #17
  tail call void @kfree(ptr noundef nonnull %call9.i.i.i91) #17
  %114 = ptrtoint ptr %first.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %first.i.0.first.i.0.first.0.first.0.first.0.96.pr.i = load ptr, ptr %first.i, align 4
  %tobool53.not144.i = icmp eq ptr %first.i.0.first.i.0.first.0.first.0.first.0.96.pr.i, null
  br i1 %tobool53.not144.i, label %out.i117.filename_trans_read_helper.exit.thread_crit_edge, label %out.i117.while.body.i118_crit_edge

out.i117.while.body.i118_crit_edge:               ; preds = %out.i117
  br label %while.body.i118

out.i117.filename_trans_read_helper.exit.thread_crit_edge: ; preds = %out.i117
  call void @__sanitizer_cov_trace_pc() #19
  br label %filename_trans_read_helper.exit.thread

while.body.i118:                                  ; preds = %while.body.i118.while.body.i118_crit_edge, %out.i117.while.body.i118_crit_edge
  %first.0.first.0.96145.i = phi ptr [ %116, %while.body.i118.while.body.i118_crit_edge ], [ %first.i.0.first.i.0.first.0.first.0.first.0.96.pr.i, %out.i117.while.body.i118_crit_edge ]
  %next54.i = getelementptr inbounds %struct.filename_trans_datum, ptr %first.0.first.0.96145.i, i32 0, i32 2
  %115 = ptrtoint ptr %next54.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %next54.i, align 4
  tail call void @ebitmap_destroy(ptr noundef nonnull %first.0.first.0.96145.i) #17
  tail call void @kfree(ptr noundef nonnull %first.0.first.0.96145.i) #17
  %tobool53.not.i = icmp eq ptr %116, null
  br i1 %tobool53.not.i, label %while.body.i118.filename_trans_read_helper.exit_crit_edge, label %while.body.i118.while.body.i118_crit_edge

while.body.i118.while.body.i118_crit_edge:        ; preds = %while.body.i118
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i118

while.body.i118.filename_trans_read_helper.exit_crit_edge: ; preds = %while.body.i118
  call void @__sanitizer_cov_trace_pc() #19
  br label %filename_trans_read_helper.exit

filename_trans_read_helper.exit.thread:           ; preds = %out.i117.filename_trans_read_helper.exit.thread_crit_edge, %if.then6.i.i98, %if.end8.i.i.i92.filename_trans_read_helper.exit.thread_crit_edge, %if.end.i67.filename_trans_read_helper.exit.thread_crit_edge, %if.end.i67.filename_trans_read_helper.exit.thread_crit_edge181, %for.body22.filename_trans_read_helper.exit.thread_crit_edge
  %retval.0.i119.ph = phi i32 [ -22, %if.then6.i.i98 ], [ -22, %for.body22.filename_trans_read_helper.exit.thread_crit_edge ], [ -12, %if.end8.i.i.i92.filename_trans_read_helper.exit.thread_crit_edge ], [ -22, %if.end.i67.filename_trans_read_helper.exit.thread_crit_edge ], [ -22, %if.end.i67.filename_trans_read_helper.exit.thread_crit_edge181 ], [ %rc.0.i115, %out.i117.filename_trans_read_helper.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first.i)
  br label %cleanup

filename_trans_read_helper.exit:                  ; preds = %while.body.i118.filename_trans_read_helper.exit_crit_edge, %if.end51.i
  %retval.0.i119 = phi i32 [ %call52.i, %if.end51.i ], [ %rc.0.i115, %while.body.i118.filename_trans_read_helper.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %first.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i119)
  %tobool24.not = icmp eq i32 %retval.0.i119, 0
  br i1 %tobool24.not, label %for.cond20, label %filename_trans_read_helper.exit.cleanup_crit_edge

filename_trans_read_helper.exit.cleanup_crit_edge: ; preds = %filename_trans_read_helper.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %filename_trans_read_helper.exit.cleanup_crit_edge, %filename_trans_read_helper.exit.thread, %for.cond20.cleanup_crit_edge, %for.cond20.preheader.cleanup_crit_edge, %if.else.cleanup_crit_edge, %filename_trans_read_helper_compat.exit.cleanup_crit_edge, %filename_trans_read_helper_compat.exit.thread, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call6, %if.then5.cleanup_crit_edge ], [ %call16, %if.else.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i62.ph, %filename_trans_read_helper_compat.exit.thread ], [ %retval.0.i119.ph, %filename_trans_read_helper.exit.thread ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.cond20.preheader.cleanup_crit_edge ], [ %retval.0.i62, %filename_trans_read_helper_compat.exit.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %retval.0.i119, %filename_trans_read_helper.exit.cleanup_crit_edge ], [ 0, %for.cond20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @policydb_index(ptr noundef %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body20, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @policydb_index.__UNIQUE_ID_ddebug484, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@policydb_index, %if.then4)) #17
          to label %do.body49 [label %if.then4], !srcloc !230

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  %nprim = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nprim, align 4
  %nprim7 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 2, i32 1
  %4 = ptrtoint ptr %nprim7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nprim7, align 4
  %nprim10 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 3, i32 1
  %6 = ptrtoint ptr %nprim10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nprim10, align 4
  %nprim13 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 5, i32 1
  %8 = ptrtoint ptr %nprim13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nprim13, align 4
  %nprim16 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 6, i32 1
  %10 = ptrtoint ptr %nprim16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nprim16, align 4
  %nprim19 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 7, i32 1
  %12 = ptrtoint ptr %nprim19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nprim19, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @policydb_index.__UNIQUE_ID_ddebug484, ptr noundef nonnull @.str.86, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #17
  br label %do.body49

do.body20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @policydb_index.__UNIQUE_ID_ddebug485, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@policydb_index, %if.then32)) #17
          to label %do.body49 [label %if.then32], !srcloc !230

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #19
  %nprim35 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 4, i32 1
  %14 = ptrtoint ptr %nprim35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nprim35, align 4
  %nprim38 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 2, i32 1
  %16 = ptrtoint ptr %nprim38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nprim38, align 4
  %nprim41 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 3, i32 1
  %18 = ptrtoint ptr %nprim41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nprim41, align 4
  %nprim44 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 5, i32 1
  %20 = ptrtoint ptr %nprim44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nprim44, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @policydb_index.__UNIQUE_ID_ddebug485, ptr noundef nonnull @.str.87, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21) #17
  br label %do.body49

do.body49:                                        ; preds = %if.then32, %do.body20, %if.then4, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @policydb_index.__UNIQUE_ID_ddebug486, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@policydb_index, %if.then61)) #17
          to label %do.end67 [label %if.then61], !srcloc !230

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #19
  %nprim64 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 1, i32 1
  %22 = ptrtoint ptr %nprim64 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nprim64, align 4
  %nel = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %nel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nel, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @policydb_index.__UNIQUE_ID_ddebug486, ptr noundef nonnull @.str.88, i32 noundef %23, i32 noundef %25) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then61, %do.body49
  %nprim70 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 1, i32 1
  %26 = ptrtoint ptr %nprim70 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nprim70, align 4
  %28 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %27, i32 4) #17
  %29 = extractvalue { i32, i1 } %28, 1
  br i1 %29, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !229

kcalloc.exit.thread:                              ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #19
  %class_val_to_struct242 = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 3
  br label %cleanup.sink.split

if.end7.i.i:                                      ; preds = %do.end67
  %30 = extractvalue { i32, i1 } %28, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #24
  %class_val_to_struct = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 3
  %31 = ptrtoint ptr %class_val_to_struct to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call8.i.i, ptr %class_val_to_struct, align 4
  %tobool73.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool73.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end75

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end75:                                         ; preds = %if.end7.i.i
  %nprim78 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 2, i32 1
  %32 = ptrtoint ptr %nprim78 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nprim78, align 4
  %34 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 4) #17
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %kcalloc.exit198.thread, label %if.end7.i.i196, !prof !229

kcalloc.exit198.thread:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #19
  %role_val_to_struct249 = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 4
  br label %cleanup.sink.split

if.end7.i.i196:                                   ; preds = %if.end75
  %36 = extractvalue { i32, i1 } %34, 0
  %call8.i.i195 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %36, i32 noundef 3520) #24
  %role_val_to_struct = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 4
  %37 = ptrtoint ptr %role_val_to_struct to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i.i195, ptr %role_val_to_struct, align 4
  %tobool81.not = icmp eq ptr %call8.i.i195, null
  br i1 %tobool81.not, label %if.end7.i.i196.cleanup_crit_edge, label %if.end83

if.end7.i.i196.cleanup_crit_edge:                 ; preds = %if.end7.i.i196
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end83:                                         ; preds = %if.end7.i.i196
  %nprim86 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 4, i32 1
  %38 = ptrtoint ptr %nprim86 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nprim86, align 4
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 4) #17
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %kcalloc.exit231.thread, label %if.end7.i.i229, !prof !229

kcalloc.exit231.thread:                           ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #19
  %user_val_to_struct256 = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 5
  br label %cleanup.sink.split

if.end7.i.i229:                                   ; preds = %if.end83
  %42 = extractvalue { i32, i1 } %40, 0
  %call8.i.i228 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %42, i32 noundef 3520) #24
  %user_val_to_struct = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 5
  %43 = ptrtoint ptr %user_val_to_struct to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call8.i.i228, ptr %user_val_to_struct, align 4
  %tobool89.not = icmp eq ptr %call8.i.i228, null
  br i1 %tobool89.not, label %if.end7.i.i229.cleanup_crit_edge, label %if.end91

if.end7.i.i229.cleanup_crit_edge:                 ; preds = %if.end7.i.i229
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end91:                                         ; preds = %if.end7.i.i229
  %nprim94 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 3, i32 1
  %44 = ptrtoint ptr %nprim94 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nprim94, align 4
  %46 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %45, i32 4) #17
  %47 = extractvalue { i32, i1 } %46, 1
  br i1 %47, label %kvcalloc.exit.thread, label %kvcalloc.exit, !prof !229

kvcalloc.exit.thread:                             ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #19
  %type_val_to_struct263 = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 6
  br label %cleanup.sink.split

kvcalloc.exit:                                    ; preds = %if.end91
  %48 = extractvalue { i32, i1 } %46, 0
  %call.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %48, i32 noundef 3520, i32 noundef -1) #24
  %type_val_to_struct = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 6
  %49 = ptrtoint ptr %type_val_to_struct to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i.i.i, ptr %type_val_to_struct, align 4
  %tobool97.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool97.not, label %kvcalloc.exit.cleanup_crit_edge, label %if.end99

kvcalloc.exit.cleanup_crit_edge:                  ; preds = %kvcalloc.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end99:                                         ; preds = %kvcalloc.exit
  %call100 = tail call i32 @cond_init_bool_indexes(ptr noundef %p) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end99.for.body_crit_edge, label %if.end99.cleanup_crit_edge

if.end99.cleanup_crit_edge:                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end99.for.body_crit_edge:                      ; preds = %if.end99
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end99.for.body_crit_edge
  %i.0269 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end99.for.body_crit_edge ]
  %nprim106 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 %i.0269, i32 1
  %50 = ptrtoint ptr %nprim106 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nprim106, align 4
  %52 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %51, i32 4) #17
  %53 = extractvalue { i32, i1 } %52, 1
  br i1 %53, label %kvcalloc.exit237.thread, label %kvcalloc.exit237, !prof !229

kvcalloc.exit237.thread:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx108266 = getelementptr %struct.policydb, ptr %p, i32 0, i32 2, i32 %i.0269
  br label %cleanup.sink.split

kvcalloc.exit237:                                 ; preds = %for.body
  %54 = extractvalue { i32, i1 } %52, 0
  %call.i.i.i234 = tail call noalias ptr @kvmalloc_node(i32 noundef %54, i32 noundef 3520, i32 noundef -1) #24
  %arrayidx108 = getelementptr %struct.policydb, ptr %p, i32 0, i32 2, i32 %i.0269
  %55 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.i.i.i234, ptr %arrayidx108, align 4
  %tobool111.not = icmp eq ptr %call.i.i.i234, null
  br i1 %tobool111.not, label %kvcalloc.exit237.cleanup_crit_edge, label %if.end113

kvcalloc.exit237.cleanup_crit_edge:               ; preds = %kvcalloc.exit237
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end113:                                        ; preds = %kvcalloc.exit237
  %arrayidx105 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 %i.0269
  %arrayidx116 = getelementptr [8 x ptr], ptr @index_f, i32 0, i32 %i.0269
  %56 = ptrtoint ptr %arrayidx116 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx116, align 4
  %call117 = tail call i32 @hashtab_map(ptr noundef %arrayidx105, ptr noundef %57, ptr noundef %p) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %for.inc, label %if.end113.cleanup_crit_edge

if.end113.cleanup_crit_edge:                      ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc:                                          ; preds = %if.end113
  %inc = add nuw nsw i32 %i.0269, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup.sink.split:                               ; preds = %kvcalloc.exit237.thread, %kvcalloc.exit.thread, %kcalloc.exit231.thread, %kcalloc.exit198.thread, %kcalloc.exit.thread
  %arrayidx108266.sink = phi ptr [ %arrayidx108266, %kvcalloc.exit237.thread ], [ %type_val_to_struct263, %kvcalloc.exit.thread ], [ %user_val_to_struct256, %kcalloc.exit231.thread ], [ %role_val_to_struct249, %kcalloc.exit198.thread ], [ %class_val_to_struct242, %kcalloc.exit.thread ]
  %58 = ptrtoint ptr %arrayidx108266.sink to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %arrayidx108266.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge, %if.end113.cleanup_crit_edge, %kvcalloc.exit237.cleanup_crit_edge, %if.end99.cleanup_crit_edge, %kvcalloc.exit.cleanup_crit_edge, %if.end7.i.i229.cleanup_crit_edge, %if.end7.i.i196.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %if.end7.i.i196.cleanup_crit_edge ], [ -12, %if.end7.i.i229.cleanup_crit_edge ], [ -12, %kvcalloc.exit.cleanup_crit_edge ], [ %call100, %if.end99.cleanup_crit_edge ], [ -12, %cleanup.sink.split ], [ 0, %for.inc.cleanup_crit_edge ], [ %call117, %if.end113.cleanup_crit_edge ], [ -12, %kvcalloc.exit237.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocontext_read(ptr noundef %p, ptr nocapture noundef readonly %info, ptr noundef %fp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ocon_num = getelementptr inbounds %struct.policydb_compat_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %ocon_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ocon_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp590 = icmp sgt i32 %1, 0
  br i1 %cmp590, label %for.body.lr.ph, label %entry.cleanup214_crit_edge

entry.cleanup214_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

for.body.lr.ph:                                   ; preds = %entry
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc211.for.body_crit_edge, %for.body.lr.ph
  %i.0593 = phi i32 [ 0, %for.body.lr.ph ], [ %inc212, %for.inc211.for.body_crit_edge ]
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp ult i32 %3, 4
  br i1 %cmp.i, label %for.body.cleanup214_crit_edge, label %if.end

for.body.cleanup214_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fp, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %buf.sroa.0.0.copyload488 = load i32, ptr %5, align 1
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %3, -4
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.i, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.0.0.copyload488)
  %cmp2583.not = icmp eq i32 %buf.sroa.0.0.copyload488, 0
  br i1 %cmp2583.not, label %if.end.for.inc211_crit_edge, label %for.body3.lr.ph

if.end.for.inc211_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc211

for.body3.lr.ph:                                  ; preds = %if.end
  %8 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload488)
  %arrayidx10 = getelementptr %struct.policydb, ptr %p, i32 0, i32 17, i32 %i.0593
  %umax = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %for.body3

for.body3:                                        ; preds = %for.inc208.for.body3_crit_edge, %for.body3.lr.ph
  %l.0588 = phi ptr [ null, %for.body3.lr.ph ], [ %call7.i.i, %for.inc208.for.body3_crit_edge ]
  %j.0587 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc209, %for.inc208.for.body3_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 136) #22
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %for.body3.cleanup214_crit_edge, label %if.end7

for.body3.cleanup214_crit_edge:                   ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end7:                                          ; preds = %for.body3
  %tobool8.not = icmp eq ptr %l.0588, null
  %next = getelementptr inbounds %struct.ocontext, ptr %l.0588, i32 0, i32 4
  %arrayidx10.sink = select i1 %tobool8.not, ptr %arrayidx10, ptr %next
  %10 = ptrtoint ptr %arrayidx10.sink to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i, ptr %arrayidx10.sink, align 4
  %11 = zext i32 %i.0593 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %i.0593, label %if.end7.for.inc208_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end7.sw.bb24_crit_edge
    i32 3, label %if.end7.sw.bb24_crit_edge613
    i32 2, label %sw.bb47
    i32 4, label %sw.bb67
    i32 5, label %sw.bb83
    i32 6, label %sw.bb112
    i32 7, label %sw.bb143
    i32 8, label %sw.bb177
  ]

if.end7.sw.bb24_crit_edge613:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb24

if.end7.sw.bb24_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb24

if.end7.for.inc208_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc208

sw.bb:                                            ; preds = %if.end7
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp.i336 = icmp ult i32 %13, 4
  br i1 %cmp.i336, label %sw.bb.cleanup214_crit_edge, label %if.end16

sw.bb.cleanup214_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end16:                                         ; preds = %sw.bb
  %14 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fp, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %buf.sroa.0.0.copyload489 = load i32, ptr %15, align 1
  %add.ptr.i337 = getelementptr i8, ptr %15, i32 4
  store ptr %add.ptr.i337, ptr %fp, align 4
  %sub.i338 = add i32 %13, -4
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.i338, ptr %len.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload489)
  %sid = getelementptr inbounds %struct.ocontext, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %sid to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %sid, align 4
  %context = getelementptr inbounds %struct.ocontext, ptr %call7.i.i, i32 0, i32 2
  %call20 = tail call fastcc i32 @context_read_and_validate(ptr noundef %context, ptr noundef %p, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end16.for.inc208_crit_edge, label %if.end16.cleanup214_crit_edge

if.end16.cleanup214_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end16.for.inc208_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc208

sw.bb24:                                          ; preds = %if.end7.sw.bb24_crit_edge, %if.end7.sw.bb24_crit_edge613
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %21)
  %cmp.i343 = icmp ult i32 %21, 4
  br i1 %cmp.i343, label %sw.bb24.cleanup214_crit_edge, label %if.end29

sw.bb24.cleanup214_crit_edge:                     ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end29:                                         ; preds = %sw.bb24
  %22 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fp, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %buf.sroa.0.0.copyload490 = load i32, ptr %23, align 1
  %add.ptr.i344 = getelementptr i8, ptr %23, i32 4
  store ptr %add.ptr.i344, ptr %fp, align 4
  %sub.i345 = add i32 %21, -4
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.i345, ptr %len.i, align 4
  %26 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload490)
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %26, label %if.end8.i.i [
    i32 0, label %if.end29.cleanup214_crit_edge
    i32 -1, label %if.end29.cleanup214_crit_edge614
  ]

if.end29.cleanup214_crit_edge614:                 ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end29.cleanup214_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end8.i.i:                                      ; preds = %if.end29
  %add.i = add nuw i32 %26, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 11456) #24
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.cleanup214_crit_edge, label %if.end3.i

if.end8.i.i.cleanup214_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end3.i:                                        ; preds = %if.end8.i.i
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %26)
  %cmp.i18.i = icmp ult i32 %29, %26
  br i1 %cmp.i18.i, label %if.end3.i.cleanup214.sink.split_crit_edge, label %if.end34

if.end3.i.cleanup214.sink.split_crit_edge:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214.sink.split

if.end34:                                         ; preds = %if.end3.i
  %30 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fp, align 4
  %32 = call ptr @memcpy(ptr %call9.i.i, ptr %31, i32 %26)
  %add.ptr.i.i = getelementptr i8, ptr %31, i32 %26
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %sub.i.i = sub i32 %29, %26
  %33 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub.i.i, ptr %len.i, align 4
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %26
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx.i, align 1
  %35 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call9.i.i, ptr %call7.i.i, align 8
  %context35 = getelementptr inbounds %struct.ocontext, ptr %call7.i.i, i32 0, i32 2
  %call37 = tail call fastcc i32 @context_read_and_validate(ptr noundef %context35, ptr noundef %p, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.cleanup214_crit_edge

if.end34.cleanup214_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end40:                                         ; preds = %if.end34
  %arrayidx42 = getelementptr %struct.ocontext, ptr %call7.i.i, i32 0, i32 2, i32 1
  %call43 = tail call fastcc i32 @context_read_and_validate(ptr noundef %arrayidx42, ptr noundef %p, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end40.for.inc208_crit_edge, label %if.end40.cleanup214_crit_edge

if.end40.cleanup214_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end40.for.inc208_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc208

sw.bb47:                                          ; preds = %if.end7
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %37)
  %cmp.i353 = icmp ult i32 %37, 12
  br i1 %cmp.i353, label %sw.bb47.cleanup214_crit_edge, label %if.end52

sw.bb47.cleanup214_crit_edge:                     ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end52:                                         ; preds = %sw.bb47
  %38 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fp, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %39, align 1
  %buf.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %39, i32 4
  %41 = ptrtoint ptr %buf.sroa.17.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %buf.sroa.17.0.copyload = load i32, ptr %buf.sroa.17.0..sroa_idx, align 1
  %buf.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %39, i32 8
  %42 = ptrtoint ptr %buf.sroa.22.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %42, i32 4)
  %buf.sroa.22.0.copyload = load i32, ptr %buf.sroa.22.0..sroa_idx, align 1
  %add.ptr.i354 = getelementptr i8, ptr %39, i32 12
  store ptr %add.ptr.i354, ptr %fp, align 4
  %sub.i355 = add i32 %37, -12
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %sub.i355, ptr %len.i, align 4
  %44 = lshr i32 %buf.sroa.0.0.copyload, 24
  %conv = trunc i32 %44 to i8
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv, ptr %call7.i.i, align 8
  %46 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.17.0.copyload)
  %conv56 = trunc i32 %46 to i16
  %low_port = getelementptr inbounds %struct.anon, ptr %call7.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %low_port to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv56, ptr %low_port, align 2
  %48 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.22.0.copyload)
  %conv59 = trunc i32 %48 to i16
  %high_port = getelementptr inbounds %struct.anon, ptr %call7.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %high_port to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv59, ptr %high_port, align 4
  %context61 = getelementptr inbounds %struct.ocontext, ptr %call7.i.i, i32 0, i32 2
  %call63 = tail call fastcc i32 @context_read_and_validate(ptr noundef %context61, ptr noundef %p, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end52.for.inc208_crit_edge, label %if.end52.cleanup214_crit_edge

if.end52.cleanup214_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end52.for.inc208_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc208

sw.bb67:                                          ; preds = %if.end7
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %51)
  %cmp.i360 = icmp ult i32 %51, 8
  br i1 %cmp.i360, label %sw.bb67.cleanup214_crit_edge, label %if.end72

sw.bb67.cleanup214_crit_edge:                     ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end72:                                         ; preds = %sw.bb67
  %52 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fp, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 8)
  %55 = load i64, ptr %53, align 1
  %nodebuf.sroa.0.sroa.0.0.extract.shift = lshr i64 %55, 32
  %nodebuf.sroa.0.sroa.0.0.extract.trunc = trunc i64 %nodebuf.sroa.0.sroa.0.0.extract.shift to i32
  %nodebuf.sroa.0.sroa.7.0.extract.trunc = trunc i64 %55 to i32
  %add.ptr.i361 = getelementptr i8, ptr %53, i32 8
  store ptr %add.ptr.i361, ptr %fp, align 4
  %sub.i362 = add i32 %51, -8
  %56 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub.i362, ptr %len.i, align 4
  %57 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %nodebuf.sroa.0.sroa.0.0.extract.trunc, ptr %call7.i.i, align 8
  %mask = getelementptr inbounds %struct.anon.1, ptr %call7.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %nodebuf.sroa.0.sroa.7.0.extract.trunc, ptr %mask, align 4
  %context77 = getelementptr inbounds %struct.ocontext, ptr %call7.i.i, i32 0, i32 2
  %call79 = tail call fastcc i32 @context_read_and_validate(ptr noundef %context77, ptr noundef %p, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end72.for.inc208_crit_edge, label %if.end72.cleanup214_crit_edge

if.end72.cleanup214_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end72.for.inc208_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc208

sw.bb83:                                          ; preds = %if.end7
  %59 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %60)
  %cmp.i367 = icmp ult i32 %60, 8
  br i1 %cmp.i367, label %sw.bb83.cleanup214_crit_edge, label %if.end88

sw.bb83.cleanup214_crit_edge:                     ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end88:                                         ; preds = %sw.bb83
  %61 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fp, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %buf.sroa.0.0.copyload485 = load i32, ptr %62, align 1
  %buf.sroa.17.0..sroa_idx491 = getelementptr inbounds i8, ptr %62, i32 4
  %64 = ptrtoint ptr %buf.sroa.17.0..sroa_idx491 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %buf.sroa.17.0.copyload492 = load i32, ptr %buf.sroa.17.0..sroa_idx491, align 1
  %add.ptr.i368 = getelementptr i8, ptr %62, i32 8
  store ptr %add.ptr.i368, ptr %fp, align 4
  %sub.i369 = add i32 %60, -8
  %65 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub.i369, ptr %len.i, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload485)
  %v = getelementptr inbounds %struct.ocontext, ptr %call7.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %buf.sroa.0.0.copyload485)
  %cmp91 = icmp eq i32 %buf.sroa.0.0.copyload485, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %66)
  %cmp96 = icmp ugt i32 %66, 7
  %or.cond = select i1 %cmp91, i1 true, i1 %cmp96
  br i1 %or.cond, label %if.end88.cleanup214_crit_edge, label %if.end99

if.end88.cleanup214_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end99:                                         ; preds = %if.end88
  %68 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.17.0.copyload492)
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %68, label %if.end8.i.i398 [
    i32 0, label %if.end99.cleanup214_crit_edge
    i32 -1, label %if.end99.cleanup214_crit_edge615
  ]

if.end99.cleanup214_crit_edge615:                 ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end99.cleanup214_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end8.i.i398:                                   ; preds = %if.end99
  %add.i373 = add nuw i32 %68, 1
  %call9.i.i397 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i373, i32 noundef 11456) #24
  %tobool.not.i400 = icmp eq ptr %call9.i.i397, null
  br i1 %tobool.not.i400, label %if.end8.i.i398.cleanup214_crit_edge, label %if.end3.i404

if.end8.i.i398.cleanup214_crit_edge:              ; preds = %if.end8.i.i398
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end3.i404:                                     ; preds = %if.end8.i.i398
  %70 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %68)
  %cmp.i18.i403 = icmp ult i32 %71, %68
  br i1 %cmp.i18.i403, label %if.end3.i404.cleanup214.sink.split_crit_edge, label %if.end105

if.end3.i404.cleanup214.sink.split_crit_edge:     ; preds = %if.end3.i404
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214.sink.split

if.end105:                                        ; preds = %if.end3.i404
  %72 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %fp, align 4
  %74 = call ptr @memcpy(ptr %call9.i.i397, ptr %73, i32 %68)
  %add.ptr.i.i406 = getelementptr i8, ptr %73, i32 %68
  store ptr %add.ptr.i.i406, ptr %fp, align 4
  %sub.i.i407 = sub i32 %71, %68
  %75 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %sub.i.i407, ptr %len.i, align 4
  %arrayidx.i408 = getelementptr i8, ptr %call9.i.i397, i32 %68
  %76 = ptrtoint ptr %arrayidx.i408 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %arrayidx.i408, align 1
  %77 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call9.i.i397, ptr %call7.i.i, align 8
  %context106 = getelementptr inbounds %struct.ocontext, ptr %call7.i.i, i32 0, i32 2
  %call108 = tail call fastcc i32 @context_read_and_validate(ptr noundef %context106, ptr noundef %p, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end105.for.inc208_crit_edge, label %if.end105.cleanup214_crit_edge

if.end105.cleanup214_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end105.for.inc208_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc208

sw.bb112:                                         ; preds = %if.end7
  %78 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %79)
  %cmp.i413 = icmp ult i32 %79, 32
  br i1 %cmp.i413, label %sw.bb112.cleanup214_crit_edge, label %next_entry.exit418

sw.bb112.cleanup214_crit_edge:                    ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

next_entry.exit418:                               ; preds = %sw.bb112
  %80 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fp, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_loadN_noabort(i32 %82, i32 8)
  %nodebuf.sroa.0.0.copyload = load i64, ptr %81, align 1
  %nodebuf.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %81, i32 8
  %83 = ptrtoint ptr %nodebuf.sroa.9.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %nodebuf.sroa.9.0.copyload = load i32, ptr %nodebuf.sroa.9.0..sroa_idx, align 1
  %nodebuf.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %81, i32 12
  %84 = ptrtoint ptr %nodebuf.sroa.10.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %84, i32 4)
  %nodebuf.sroa.10.0.copyload = load i32, ptr %nodebuf.sroa.10.0..sroa_idx, align 1
  %nodebuf.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %81, i32 16
  %85 = ptrtoint ptr %nodebuf.sroa.11.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %nodebuf.sroa.11.0.copyload = load i32, ptr %nodebuf.sroa.11.0..sroa_idx, align 1
  %nodebuf.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %81, i32 20
  %86 = ptrtoint ptr %nodebuf.sroa.13.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %86, i32 4)
  %nodebuf.sroa.13.0.copyload = load i32, ptr %nodebuf.sroa.13.0..sroa_idx, align 1
  %nodebuf.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %81, i32 24
  %87 = ptrtoint ptr %nodebuf.sroa.14.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %nodebuf.sroa.14.0.copyload = load i32, ptr %nodebuf.sroa.14.0..sroa_idx, align 1
  %nodebuf.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %81, i32 28
  %88 = ptrtoint ptr %nodebuf.sroa.15.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %88, i32 4)
  %nodebuf.sroa.15.0.copyload = load i32, ptr %nodebuf.sroa.15.0..sroa_idx, align 1
  %add.ptr.i414 = getelementptr i8, ptr %81, i32 32
  store ptr %add.ptr.i414, ptr %fp, align 4
  %sub.i415 = add i32 %79, -32
  %89 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %sub.i415, ptr %len.i, align 4
  %90 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %nodebuf.sroa.0.0.copyload, ptr %call7.i.i, align 8
  %nodebuf.sroa.9.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 8
  %91 = ptrtoint ptr %nodebuf.sroa.9.0.call7.i.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %nodebuf.sroa.9.0.copyload, ptr %nodebuf.sroa.9.0.call7.i.i.sroa_idx, align 8
  %nodebuf.sroa.10.0.call7.i.i.sroa_idx = getelementptr inbounds i8, ptr %call7.i.i, i32 12
  %92 = ptrtoint ptr %nodebuf.sroa.10.0.call7.i.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %nodebuf.sroa.10.0.copyload, ptr %nodebuf.sroa.10.0.call7.i.i.sroa_idx, align 4
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 16
  %93 = ptrtoint ptr %uglygep to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %nodebuf.sroa.11.0.copyload, ptr %uglygep, align 8
  %nodebuf.sroa.13.16.uglygep.sroa_idx = getelementptr i8, ptr %call7.i.i, i32 20
  %94 = ptrtoint ptr %nodebuf.sroa.13.16.uglygep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %nodebuf.sroa.13.0.copyload, ptr %nodebuf.sroa.13.16.uglygep.sroa_idx, align 4
  %nodebuf.sroa.14.16.uglygep.sroa_idx = getelementptr i8, ptr %call7.i.i, i32 24
  %95 = ptrtoint ptr %nodebuf.sroa.14.16.uglygep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %nodebuf.sroa.14.0.copyload, ptr %nodebuf.sroa.14.16.uglygep.sroa_idx, align 8
  %nodebuf.sroa.15.16.uglygep.sroa_idx = getelementptr i8, ptr %call7.i.i, i32 28
  %96 = ptrtoint ptr %nodebuf.sroa.15.16.uglygep.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %nodebuf.sroa.15.0.copyload, ptr %nodebuf.sroa.15.16.uglygep.sroa_idx, align 4
  %context137 = getelementptr inbounds %struct.ocontext, ptr %call7.i.i, i32 0, i32 2
  %call139 = tail call fastcc i32 @context_read_and_validate(ptr noundef %context137, ptr noundef %p, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %next_entry.exit418.for.inc208_crit_edge, label %next_entry.exit418.cleanup214_crit_edge

next_entry.exit418.cleanup214_crit_edge:          ; preds = %next_entry.exit418
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

next_entry.exit418.for.inc208_crit_edge:          ; preds = %next_entry.exit418
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc208

sw.bb143:                                         ; preds = %if.end7
  %97 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %98)
  %cmp.i420 = icmp ult i32 %98, 8
  br i1 %cmp.i420, label %sw.bb143.cleanup214_crit_edge, label %if.end148

sw.bb143.cleanup214_crit_edge:                    ; preds = %sw.bb143
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end148:                                        ; preds = %sw.bb143
  %99 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fp, align 4
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_loadN_noabort(i32 %101, i32 8)
  %prefixbuf.sroa.0.0.copyload = load i64, ptr %100, align 1
  %add.ptr.i421 = getelementptr i8, ptr %100, i32 8
  store ptr %add.ptr.i421, ptr %fp, align 4
  %sub.i422 = add i32 %98, -8
  %102 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %sub.i422, ptr %len.i, align 4
  %103 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 %prefixbuf.sroa.0.0.copyload, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i422)
  %cmp.i427 = icmp ult i32 %sub.i422, 8
  br i1 %cmp.i427, label %if.end148.cleanup214_crit_edge, label %if.end155

if.end148.cleanup214_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end155:                                        ; preds = %if.end148
  %104 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fp, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_loadN_noabort(i32 %106, i32 4)
  %buf.sroa.0.0.copyload486 = load i32, ptr %105, align 1
  %buf.sroa.17.0..sroa_idx493 = getelementptr inbounds i8, ptr %105, i32 4
  %107 = ptrtoint ptr %buf.sroa.17.0..sroa_idx493 to i32
  call void @__asan_loadN_noabort(i32 %107, i32 4)
  %buf.sroa.17.0.copyload494 = load i32, ptr %buf.sroa.17.0..sroa_idx493, align 1
  %add.ptr.i428 = getelementptr i8, ptr %105, i32 8
  store ptr %add.ptr.i428, ptr %fp, align 4
  %sub.i429 = add i32 %98, -16
  %108 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %sub.i429, ptr %len.i, align 4
  %109 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload486)
  %110 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.17.0.copyload494)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %109)
  %cmp158 = icmp ugt i32 %109, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %110)
  %cmp160 = icmp ugt i32 %110, 65535
  %or.cond329 = select i1 %cmp158, i1 true, i1 %cmp160
  br i1 %or.cond329, label %if.end155.cleanup214_crit_edge, label %if.end163

if.end155.cleanup214_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end163:                                        ; preds = %if.end155
  %conv164 = trunc i32 %109 to i16
  %low_pkey = getelementptr inbounds %struct.anon.3, ptr %call7.i.i, i32 0, i32 1
  %111 = ptrtoint ptr %low_pkey to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv164, ptr %low_pkey, align 8
  %conv166 = trunc i32 %110 to i16
  %high_pkey = getelementptr inbounds %struct.anon.3, ptr %call7.i.i, i32 0, i32 2
  %112 = ptrtoint ptr %high_pkey to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv166, ptr %high_pkey, align 2
  %context168 = getelementptr inbounds %struct.ocontext, ptr %call7.i.i, i32 0, i32 2
  %call170 = tail call fastcc i32 @context_read_and_validate(ptr noundef %context168, ptr noundef %p, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end163.for.inc208_crit_edge, label %if.end163.cleanup214_crit_edge

if.end163.cleanup214_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end163.for.inc208_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc208

sw.bb177:                                         ; preds = %if.end7
  %113 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %114)
  %cmp.i434 = icmp ult i32 %114, 8
  br i1 %cmp.i434, label %sw.bb177.cleanup214_crit_edge, label %if.end182

sw.bb177.cleanup214_crit_edge:                    ; preds = %sw.bb177
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end182:                                        ; preds = %sw.bb177
  %115 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %fp, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 4)
  %buf.sroa.0.0.copyload487 = load i32, ptr %116, align 1
  %buf.sroa.17.0..sroa_idx495 = getelementptr inbounds i8, ptr %116, i32 4
  %118 = ptrtoint ptr %buf.sroa.17.0..sroa_idx495 to i32
  call void @__asan_loadN_noabort(i32 %118, i32 4)
  %buf.sroa.17.0.copyload496 = load i32, ptr %buf.sroa.17.0..sroa_idx495, align 1
  %add.ptr.i435 = getelementptr i8, ptr %116, i32 8
  store ptr %add.ptr.i435, ptr %fp, align 4
  %sub.i436 = add i32 %114, -8
  %119 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %sub.i436, ptr %len.i, align 4
  %120 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload487)
  %121 = zext i32 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %120, label %if.end8.i.i465 [
    i32 0, label %if.end182.cleanup214_crit_edge
    i32 -1, label %if.end182.cleanup214_crit_edge616
  ]

if.end182.cleanup214_crit_edge616:                ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end182.cleanup214_crit_edge:                   ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end8.i.i465:                                   ; preds = %if.end182
  %add.i440 = add nuw i32 %120, 1
  %call9.i.i464 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i440, i32 noundef 11456) #24
  %tobool.not.i467 = icmp eq ptr %call9.i.i464, null
  br i1 %tobool.not.i467, label %if.end8.i.i465.cleanup214_crit_edge, label %if.end3.i471

if.end8.i.i465.cleanup214_crit_edge:              ; preds = %if.end8.i.i465
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end3.i471:                                     ; preds = %if.end8.i.i465
  %122 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %120)
  %cmp.i18.i470 = icmp ult i32 %123, %120
  br i1 %cmp.i18.i470, label %if.end3.i471.cleanup214.sink.split_crit_edge, label %if.end188

if.end3.i471.cleanup214.sink.split_crit_edge:     ; preds = %if.end3.i471
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214.sink.split

if.end188:                                        ; preds = %if.end3.i471
  %124 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %fp, align 4
  %126 = call ptr @memcpy(ptr %call9.i.i464, ptr %125, i32 %120)
  %add.ptr.i.i473 = getelementptr i8, ptr %125, i32 %120
  store ptr %add.ptr.i.i473, ptr %fp, align 4
  %sub.i.i474 = sub i32 %123, %120
  %127 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %sub.i.i474, ptr %len.i, align 4
  %arrayidx.i475 = getelementptr i8, ptr %call9.i.i464, i32 %120
  %128 = ptrtoint ptr %arrayidx.i475 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %arrayidx.i475, align 1
  %129 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %call9.i.i464, ptr %call7.i.i, align 8
  %130 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.17.0.copyload496)
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %130)
  %cmp190 = icmp ugt i32 %130, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.17.0.copyload496)
  %cmp193 = icmp eq i32 %buf.sroa.17.0.copyload496, 0
  %or.cond331 = select i1 %cmp190, i1 true, i1 %cmp193
  br i1 %or.cond331, label %if.end188.cleanup214_crit_edge, label %if.end196

if.end188.cleanup214_crit_edge:                   ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end196:                                        ; preds = %if.end188
  %conv197 = trunc i32 %130 to i8
  %port199 = getelementptr inbounds %struct.anon.4, ptr %call7.i.i, i32 0, i32 1
  %131 = ptrtoint ptr %port199 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv197, ptr %port199, align 4
  %context200 = getelementptr inbounds %struct.ocontext, ptr %call7.i.i, i32 0, i32 2
  %call202 = tail call fastcc i32 @context_read_and_validate(ptr noundef %context200, ptr noundef %p, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call202)
  %tobool203.not = icmp eq i32 %call202, 0
  br i1 %tobool203.not, label %if.end196.for.inc208_crit_edge, label %if.end196.cleanup214_crit_edge

if.end196.cleanup214_crit_edge:                   ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

if.end196.for.inc208_crit_edge:                   ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc208

for.inc208:                                       ; preds = %if.end196.for.inc208_crit_edge, %if.end163.for.inc208_crit_edge, %next_entry.exit418.for.inc208_crit_edge, %if.end105.for.inc208_crit_edge, %if.end72.for.inc208_crit_edge, %if.end52.for.inc208_crit_edge, %if.end40.for.inc208_crit_edge, %if.end16.for.inc208_crit_edge, %if.end7.for.inc208_crit_edge
  %inc209 = add nuw i32 %j.0587, 1
  %exitcond.not = icmp eq i32 %inc209, %umax
  br i1 %exitcond.not, label %for.inc208.for.inc211_crit_edge, label %for.inc208.for.body3_crit_edge

for.inc208.for.body3_crit_edge:                   ; preds = %for.inc208
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body3

for.inc208.for.inc211_crit_edge:                  ; preds = %for.inc208
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc211

for.inc211:                                       ; preds = %for.inc208.for.inc211_crit_edge, %if.end.for.inc211_crit_edge
  %inc212 = add nuw nsw i32 %i.0593, 1
  %132 = ptrtoint ptr %ocon_num to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ocon_num, align 4
  %cmp = icmp slt i32 %inc212, %133
  br i1 %cmp, label %for.inc211.for.body_crit_edge, label %for.inc211.cleanup214_crit_edge

for.inc211.cleanup214_crit_edge:                  ; preds = %for.inc211
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup214

for.inc211.for.body_crit_edge:                    ; preds = %for.inc211
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup214.sink.split:                            ; preds = %if.end3.i471.cleanup214.sink.split_crit_edge, %if.end3.i404.cleanup214.sink.split_crit_edge, %if.end3.i.cleanup214.sink.split_crit_edge
  %retval.1.i.i466.lcssa.sink = phi ptr [ %call9.i.i, %if.end3.i.cleanup214.sink.split_crit_edge ], [ %call9.i.i397, %if.end3.i404.cleanup214.sink.split_crit_edge ], [ %call9.i.i464, %if.end3.i471.cleanup214.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %retval.1.i.i466.lcssa.sink) #17
  br label %cleanup214

cleanup214:                                       ; preds = %cleanup214.sink.split, %for.inc211.cleanup214_crit_edge, %if.end196.cleanup214_crit_edge, %if.end188.cleanup214_crit_edge, %if.end8.i.i465.cleanup214_crit_edge, %if.end182.cleanup214_crit_edge, %if.end182.cleanup214_crit_edge616, %sw.bb177.cleanup214_crit_edge, %if.end163.cleanup214_crit_edge, %if.end155.cleanup214_crit_edge, %if.end148.cleanup214_crit_edge, %sw.bb143.cleanup214_crit_edge, %next_entry.exit418.cleanup214_crit_edge, %sw.bb112.cleanup214_crit_edge, %if.end105.cleanup214_crit_edge, %if.end8.i.i398.cleanup214_crit_edge, %if.end99.cleanup214_crit_edge, %if.end99.cleanup214_crit_edge615, %if.end88.cleanup214_crit_edge, %sw.bb83.cleanup214_crit_edge, %if.end72.cleanup214_crit_edge, %sw.bb67.cleanup214_crit_edge, %if.end52.cleanup214_crit_edge, %sw.bb47.cleanup214_crit_edge, %if.end40.cleanup214_crit_edge, %if.end34.cleanup214_crit_edge, %if.end8.i.i.cleanup214_crit_edge, %if.end29.cleanup214_crit_edge, %if.end29.cleanup214_crit_edge614, %sw.bb24.cleanup214_crit_edge, %if.end16.cleanup214_crit_edge, %sw.bb.cleanup214_crit_edge, %for.body3.cleanup214_crit_edge, %for.body.cleanup214_crit_edge, %entry.cleanup214_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup214_crit_edge ], [ -22, %cleanup214.sink.split ], [ -22, %if.end182.cleanup214_crit_edge ], [ -22, %if.end182.cleanup214_crit_edge616 ], [ -12, %if.end8.i.i465.cleanup214_crit_edge ], [ -22, %if.end188.cleanup214_crit_edge ], [ %call202, %if.end196.cleanup214_crit_edge ], [ -22, %sw.bb177.cleanup214_crit_edge ], [ -22, %if.end155.cleanup214_crit_edge ], [ %call170, %if.end163.cleanup214_crit_edge ], [ -22, %sw.bb143.cleanup214_crit_edge ], [ -22, %if.end148.cleanup214_crit_edge ], [ -22, %sw.bb112.cleanup214_crit_edge ], [ %call139, %next_entry.exit418.cleanup214_crit_edge ], [ -22, %if.end99.cleanup214_crit_edge ], [ -22, %if.end99.cleanup214_crit_edge615 ], [ -12, %if.end8.i.i398.cleanup214_crit_edge ], [ -22, %if.end29.cleanup214_crit_edge ], [ -22, %if.end29.cleanup214_crit_edge614 ], [ -12, %if.end8.i.i.cleanup214_crit_edge ], [ -22, %sw.bb83.cleanup214_crit_edge ], [ -22, %sw.bb67.cleanup214_crit_edge ], [ -22, %sw.bb47.cleanup214_crit_edge ], [ -22, %sw.bb24.cleanup214_crit_edge ], [ -22, %sw.bb.cleanup214_crit_edge ], [ -12, %for.body3.cleanup214_crit_edge ], [ %call20, %if.end16.cleanup214_crit_edge ], [ %call43, %if.end40.cleanup214_crit_edge ], [ %call37, %if.end34.cleanup214_crit_edge ], [ %call63, %if.end52.cleanup214_crit_edge ], [ %call79, %if.end72.cleanup214_crit_edge ], [ %call108, %if.end105.cleanup214_crit_edge ], [ -22, %if.end88.cleanup214_crit_edge ], [ 0, %for.inc211.cleanup214_crit_edge ], [ -22, %for.body.cleanup214_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @genfs_read(ptr noundef %p, ptr noundef %fp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp ult i32 %1, 4
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fp, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %3, align 1
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %1, -4
  %5 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.i, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.0.0.copyload)
  %cmp360.not = icmp eq i32 %buf.sroa.0.0.copyload, 0
  br i1 %cmp360.not, label %if.end.if.end122_crit_edge, label %for.body.lr.ph

if.end.if.end122_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122

for.body.lr.ph:                                   ; preds = %if.end
  %6 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  %genfs15 = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 18
  %umax384 = call i32 @llvm.umax.i32(i32 %6, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc116.for.body_crit_edge, %for.body.lr.ph
  %i.0361 = phi i32 [ 0, %for.body.lr.ph ], [ %inc117, %for.inc116.for.body_crit_edge ]
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp.i200 = icmp ult i32 %8, 4
  br i1 %cmp.i200, label %for.body.if.end122_crit_edge, label %if.end5

for.body.if.end122_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122

if.end5:                                          ; preds = %for.body
  %9 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fp, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %buf.sroa.0.0.copyload282 = load i32, ptr %10, align 1
  %add.ptr.i201 = getelementptr i8, ptr %10, i32 4
  store ptr %add.ptr.i201, ptr %fp, align 4
  %sub.i202 = add i32 %8, -4
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.i202, ptr %len.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 12) #22
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end5.if.end122_crit_edge, label %if.end10

if.end5.if.end122_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122

if.end10:                                         ; preds = %if.end5
  %14 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload282)
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %14, label %if.end8.i.i [
    i32 0, label %if.end10.if.then120_crit_edge
    i32 -1, label %if.end10.if.then120_crit_edge512
  ]

if.end10.if.then120_crit_edge512:                 ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then120

if.end10.if.then120_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then120

if.end8.i.i:                                      ; preds = %if.end10
  %add.i = add nuw i32 %14, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 11456) #24
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.if.then120_crit_edge, label %if.end3.i

if.end8.i.i.if.then120_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then120

if.end3.i:                                        ; preds = %if.end8.i.i
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %14)
  %cmp.i18.i = icmp ult i32 %17, %14
  br i1 %cmp.i18.i, label %if.then6.i, label %if.end14

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #17
  br label %if.then120

if.end14:                                         ; preds = %if.end3.i
  %18 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fp, align 4
  %20 = call ptr @memcpy(ptr %call9.i.i, ptr %19, i32 %14)
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %14
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %sub.i.i = sub i32 %17, %14
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub.i.i, ptr %len.i, align 4
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %14
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx.i, align 1
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i.i, ptr %call7.i.i, align 8
  %24 = ptrtoint ptr %genfs15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %genfs.0343 = load ptr, ptr %genfs15, align 4
  %tobool17.not344 = icmp eq ptr %genfs.0343, null
  br i1 %tobool17.not344, label %for.end.thread, label %for.body18.lr.ph

for.end.thread:                                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  %next33388 = getelementptr inbounds %struct.genfs, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %next33388 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %next33388, align 8
  br label %if.end38

for.body18.lr.ph:                                 ; preds = %if.end14
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call7.i.i, align 8
  br label %for.body18

for.body18:                                       ; preds = %for.inc.for.body18_crit_edge, %for.body18.lr.ph
  %genfs.0346 = phi ptr [ %genfs.0343, %for.body18.lr.ph ], [ %genfs.0, %for.inc.for.body18_crit_edge ]
  %genfs_p.0345 = phi ptr [ null, %for.body18.lr.ph ], [ %genfs.0346, %for.inc.for.body18_crit_edge ]
  %28 = ptrtoint ptr %genfs.0346 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %genfs.0346, align 4
  %call21 = tail call i32 @strcmp(ptr noundef %27, ptr noundef %29) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %out, label %if.end26

if.end26:                                         ; preds = %for.body18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp30 = icmp slt i32 %call21, 0
  br i1 %cmp30, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end26
  %next = getelementptr inbounds %struct.genfs, ptr %genfs.0346, i32 0, i32 2
  %30 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %30)
  %genfs.0 = load ptr, ptr %next, align 4
  %tobool17.not = icmp eq ptr %genfs.0, null
  br i1 %tobool17.not, label %for.end.thread390, label %for.inc.for.body18_crit_edge

for.inc.for.body18_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body18

for.end.thread390:                                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  %next33393 = getelementptr inbounds %struct.genfs, ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %next33393 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %next33393, align 8
  br label %if.then35

for.end:                                          ; preds = %if.end26
  %next33 = getelementptr inbounds %struct.genfs, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %next33 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %genfs.0346, ptr %next33, align 8
  %tobool34.not = icmp eq ptr %genfs_p.0345, null
  br i1 %tobool34.not, label %for.end.if.end38_crit_edge, label %for.end.if.then35_crit_edge

for.end.if.then35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then35

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.then35:                                        ; preds = %for.end.if.then35_crit_edge, %for.end.thread390
  %genfs_p.0.lcssa395 = phi ptr [ %genfs.0346, %for.end.thread390 ], [ %genfs_p.0345, %for.end.if.then35_crit_edge ]
  %next36 = getelementptr inbounds %struct.genfs, ptr %genfs_p.0.lcssa395, i32 0, i32 2
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %for.end.if.end38_crit_edge, %for.end.thread
  %genfs15.sink = phi ptr [ %next36, %if.then35 ], [ %genfs15, %for.end.thread ], [ %genfs15, %for.end.if.end38_crit_edge ]
  %33 = ptrtoint ptr %genfs15.sink to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i, ptr %genfs15.sink, align 4
  %34 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp.i210 = icmp ult i32 %35, 4
  br i1 %cmp.i210, label %if.end38.if.end122_crit_edge, label %if.end43

if.end38.if.end122_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122

if.end43:                                         ; preds = %if.end38
  %36 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fp, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %buf.sroa.0.0.copyload283 = load i32, ptr %37, align 1
  %add.ptr.i211 = getelementptr i8, ptr %37, i32 4
  store ptr %add.ptr.i211, ptr %fp, align 4
  %sub.i212 = add i32 %35, -4
  %39 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %sub.i212, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.0.0.copyload283)
  %cmp46358.not = icmp eq i32 %buf.sroa.0.0.copyload283, 0
  br i1 %cmp46358.not, label %if.end43.for.inc116_crit_edge, label %for.body47.lr.ph

if.end43.for.inc116_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc116

for.body47.lr.ph:                                 ; preds = %if.end43
  %40 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload283)
  %head = getelementptr inbounds %struct.genfs, ptr %call7.i.i, i32 0, i32 1
  %umax = call i32 @llvm.umax.i32(i32 %40, i32 1)
  br label %for.body47

for.body47:                                       ; preds = %if.end113.for.body47_crit_edge, %for.body47.lr.ph
  %j.0359 = phi i32 [ 0, %for.body47.lr.ph ], [ %inc, %if.end113.for.body47_crit_edge ]
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %cmp.i217 = icmp ult i32 %42, 4
  br i1 %cmp.i217, label %for.body47.if.end122_crit_edge, label %if.end52

for.body47.if.end122_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122

if.end52:                                         ; preds = %for.body47
  %43 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fp, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %buf.sroa.0.0.copyload284 = load i32, ptr %44, align 1
  %add.ptr.i218 = getelementptr i8, ptr %44, i32 4
  store ptr %add.ptr.i218, ptr %fp, align 4
  %sub.i219 = add i32 %42, -4
  %46 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i219, ptr %len.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i229 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 136) #22
  %tobool55.not = icmp eq ptr %call7.i.i229, null
  br i1 %tobool55.not, label %if.end52.if.end122_crit_edge, label %if.end57

if.end52.if.end122_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122

if.end57:                                         ; preds = %if.end52
  %48 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload284)
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %48, label %if.end8.i.i257 [
    i32 0, label %if.end57.if.end122_crit_edge
    i32 -1, label %if.end57.if.end122_crit_edge513
  ]

if.end57.if.end122_crit_edge513:                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122

if.end57.if.end122_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122

if.end8.i.i257:                                   ; preds = %if.end57
  %add.i232 = add nuw i32 %48, 1
  %call9.i.i256 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i232, i32 noundef 11456) #24
  %tobool.not.i259 = icmp eq ptr %call9.i.i256, null
  br i1 %tobool.not.i259, label %if.end8.i.i257.if.end122_crit_edge, label %if.end3.i263

if.end8.i.i257.if.end122_crit_edge:               ; preds = %if.end8.i.i257
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122

if.end3.i263:                                     ; preds = %if.end8.i.i257
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %48)
  %cmp.i18.i262 = icmp ult i32 %51, %48
  br i1 %cmp.i18.i262, label %if.then6.i264, label %if.end61

if.then6.i264:                                    ; preds = %if.end3.i263
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call9.i.i256) #17
  br label %if.end122

if.end61:                                         ; preds = %if.end3.i263
  %52 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fp, align 4
  %54 = call ptr @memcpy(ptr %call9.i.i256, ptr %53, i32 %48)
  %add.ptr.i.i265 = getelementptr i8, ptr %53, i32 %48
  store ptr %add.ptr.i.i265, ptr %fp, align 4
  %sub.i.i266 = sub i32 %51, %48
  %55 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub.i.i266, ptr %len.i, align 4
  %arrayidx.i267 = getelementptr i8, ptr %call9.i.i256, i32 %48
  %56 = ptrtoint ptr %arrayidx.i267 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %arrayidx.i267, align 1
  %57 = ptrtoint ptr %call7.i.i229 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call9.i.i256, ptr %call7.i.i229, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i.i266)
  %cmp.i272 = icmp ult i32 %sub.i.i266, 4
  br i1 %cmp.i272, label %if.end61.if.end122_crit_edge, label %if.end66

if.end61.if.end122_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122

if.end66:                                         ; preds = %if.end61
  %58 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %fp, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %buf.sroa.0.0.copyload285 = load i32, ptr %59, align 1
  %add.ptr.i273 = getelementptr i8, ptr %59, i32 4
  store ptr %add.ptr.i273, ptr %fp, align 4
  %sub.i274 = add i32 %sub.i.i266, -4
  %61 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub.i274, ptr %len.i, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload285)
  %v = getelementptr inbounds %struct.ocontext, ptr %call7.i.i229, i32 0, i32 1
  %63 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %v, align 8
  %context = getelementptr inbounds %struct.ocontext, ptr %call7.i.i229, i32 0, i32 2
  %call69 = tail call fastcc i32 @context_read_and_validate(ptr noundef %context, ptr noundef %p, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end66.if.end122_crit_edge

if.end66.if.end122_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122

if.end72:                                         ; preds = %if.end66
  %64 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %64)
  %c.0350 = load ptr, ptr %head, align 4
  %tobool74.not351 = icmp eq ptr %c.0350, null
  br i1 %tobool74.not351, label %for.end106.thread, label %for.body75.lr.ph

for.end106.thread:                                ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #19
  %next107398 = getelementptr inbounds %struct.ocontext, ptr %call7.i.i229, i32 0, i32 4
  %65 = ptrtoint ptr %next107398 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %next107398, align 4
  br label %if.end113

for.body75.lr.ph:                                 ; preds = %if.end72
  %66 = ptrtoint ptr %call7.i.i229 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call7.i.i229, align 8
  br label %for.body75

for.body75:                                       ; preds = %for.inc104.for.body75_crit_edge, %for.body75.lr.ph
  %c.0353 = phi ptr [ %c.0350, %for.body75.lr.ph ], [ %c.0, %for.inc104.for.body75_crit_edge ]
  %l.0352 = phi ptr [ null, %for.body75.lr.ph ], [ %c.0353, %for.inc104.for.body75_crit_edge ]
  %68 = ptrtoint ptr %c.0353 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %c.0353, align 8
  %call78 = tail call i32 @strcmp(ptr noundef %67, ptr noundef %69) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true, label %for.body75.if.end96_crit_edge

for.body75.if.end96_crit_edge:                    ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end96

land.lhs.true:                                    ; preds = %for.body75
  %v80 = getelementptr inbounds %struct.ocontext, ptr %c.0353, i32 0, i32 1
  %70 = ptrtoint ptr %v80 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %v80, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool81.not = icmp eq i32 %71, 0
  br i1 %tobool81.not, label %land.lhs.true.do.end91_crit_edge, label %lor.lhs.false

land.lhs.true.do.end91_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end91

lor.lhs.false:                                    ; preds = %land.lhs.true
  %72 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %v, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool83.not = icmp eq i32 %73, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %71)
  %cmp87 = icmp eq i32 %73, %71
  %or.cond = select i1 %tobool83.not, i1 true, i1 %cmp87
  br i1 %or.cond, label %lor.lhs.false.do.end91_crit_edge, label %lor.lhs.false.if.end96_crit_edge

lor.lhs.false.if.end96_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end96

lor.lhs.false.do.end91_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end91

do.end91:                                         ; preds = %lor.lhs.false.do.end91_crit_edge, %land.lhs.true.do.end91_crit_edge
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call7.i.i, align 8
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %75, ptr noundef %69) #21
  br label %if.end122

if.end96:                                         ; preds = %lor.lhs.false.if.end96_crit_edge, %for.body75.if.end96_crit_edge
  %call98 = tail call i32 @strlen(ptr noundef %67) #23
  %call100 = tail call i32 @strlen(ptr noundef %69) #23
  call void @__sanitizer_cov_trace_cmp4(i32 %call98, i32 %call100)
  %cmp101 = icmp ugt i32 %call98, %call100
  br i1 %cmp101, label %for.end106, label %for.inc104

for.inc104:                                       ; preds = %if.end96
  %next105 = getelementptr inbounds %struct.ocontext, ptr %c.0353, i32 0, i32 4
  %76 = ptrtoint ptr %next105 to i32
  call void @__asan_load4_noabort(i32 %76)
  %c.0 = load ptr, ptr %next105, align 4
  %tobool74.not = icmp eq ptr %c.0, null
  br i1 %tobool74.not, label %for.end106.thread400, label %for.inc104.for.body75_crit_edge

for.inc104.for.body75_crit_edge:                  ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body75

for.end106.thread400:                             ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #19
  %next107403 = getelementptr inbounds %struct.ocontext, ptr %call7.i.i229, i32 0, i32 4
  %77 = ptrtoint ptr %next107403 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %next107403, align 4
  br label %if.then109

for.end106:                                       ; preds = %if.end96
  %next107 = getelementptr inbounds %struct.ocontext, ptr %call7.i.i229, i32 0, i32 4
  %78 = ptrtoint ptr %next107 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %c.0353, ptr %next107, align 4
  %tobool108.not = icmp eq ptr %l.0352, null
  br i1 %tobool108.not, label %for.end106.if.end113_crit_edge, label %for.end106.if.then109_crit_edge

for.end106.if.then109_crit_edge:                  ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then109

for.end106.if.end113_crit_edge:                   ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end113

if.then109:                                       ; preds = %for.end106.if.then109_crit_edge, %for.end106.thread400
  %l.0.lcssa405 = phi ptr [ %c.0353, %for.end106.thread400 ], [ %l.0352, %for.end106.if.then109_crit_edge ]
  %next110 = getelementptr inbounds %struct.ocontext, ptr %l.0.lcssa405, i32 0, i32 4
  br label %if.end113

if.end113:                                        ; preds = %if.then109, %for.end106.if.end113_crit_edge, %for.end106.thread
  %head.sink = phi ptr [ %next110, %if.then109 ], [ %head, %for.end106.thread ], [ %head, %for.end106.if.end113_crit_edge ]
  %79 = ptrtoint ptr %head.sink to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i229, ptr %head.sink, align 4
  %inc = add nuw i32 %j.0359, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end113.for.inc116_crit_edge, label %if.end113.for.body47_crit_edge

if.end113.for.body47_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body47

if.end113.for.inc116_crit_edge:                   ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc116

for.inc116:                                       ; preds = %if.end113.for.inc116_crit_edge, %if.end43.for.inc116_crit_edge
  %inc117 = add nuw i32 %i.0361, 1
  %exitcond385.not = icmp eq i32 %inc117, %umax384
  br i1 %exitcond385.not, label %for.inc116.if.end122_crit_edge, label %for.inc116.for.body_crit_edge

for.inc116.for.body_crit_edge:                    ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc116.if.end122_crit_edge:                   ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end122

out:                                              ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #19
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, ptr noundef %27) #21
  br label %if.then120

if.then120:                                       ; preds = %out, %if.then6.i, %if.end8.i.i.if.then120_crit_edge, %if.end10.if.then120_crit_edge, %if.end10.if.then120_crit_edge512
  %rc.0321 = phi i32 [ -22, %out ], [ -22, %if.then6.i ], [ -22, %if.end10.if.then120_crit_edge ], [ -22, %if.end10.if.then120_crit_edge512 ], [ -12, %if.end8.i.i.if.then120_crit_edge ]
  %80 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %81) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %for.inc116.if.end122_crit_edge, %do.end91, %if.end66.if.end122_crit_edge, %if.end61.if.end122_crit_edge, %if.then6.i264, %if.end8.i.i257.if.end122_crit_edge, %if.end57.if.end122_crit_edge, %if.end57.if.end122_crit_edge513, %if.end52.if.end122_crit_edge, %for.body47.if.end122_crit_edge, %if.end38.if.end122_crit_edge, %if.end5.if.end122_crit_edge, %for.body.if.end122_crit_edge, %if.end.if.end122_crit_edge
  %newc.2315 = phi ptr [ null, %if.then120 ], [ %call7.i.i229, %do.end91 ], [ %call7.i.i229, %if.then6.i264 ], [ null, %if.end.if.end122_crit_edge ], [ %call7.i.i229, %if.end8.i.i257.if.end122_crit_edge ], [ %call7.i.i229, %if.end57.if.end122_crit_edge ], [ %call7.i.i229, %if.end57.if.end122_crit_edge513 ], [ %call7.i.i229, %if.end66.if.end122_crit_edge ], [ null, %if.end52.if.end122_crit_edge ], [ null, %for.body47.if.end122_crit_edge ], [ %call7.i.i229, %if.end61.if.end122_crit_edge ], [ null, %if.end38.if.end122_crit_edge ], [ null, %for.body.if.end122_crit_edge ], [ null, %for.inc116.if.end122_crit_edge ], [ null, %if.end5.if.end122_crit_edge ]
  %rc.0314 = phi i32 [ %rc.0321, %if.then120 ], [ -22, %do.end91 ], [ -22, %if.then6.i264 ], [ 0, %if.end.if.end122_crit_edge ], [ -12, %if.end8.i.i257.if.end122_crit_edge ], [ -22, %if.end57.if.end122_crit_edge ], [ -22, %if.end57.if.end122_crit_edge513 ], [ %call69, %if.end66.if.end122_crit_edge ], [ -12, %if.end52.if.end122_crit_edge ], [ -22, %for.body47.if.end122_crit_edge ], [ -22, %if.end61.if.end122_crit_edge ], [ -12, %if.end5.if.end122_crit_edge ], [ 0, %for.inc116.if.end122_crit_edge ], [ -22, %for.body.if.end122_crit_edge ], [ -22, %if.end38.if.end122_crit_edge ]
  tail call fastcc void @ocontext_destroy(ptr noundef %newc.2315, i32 noundef 5)
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0314, %if.end122 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @range_read(ptr noundef %p, ptr noundef %fp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %policyvers = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 24
  %0 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %1)
  %cmp = icmp ult i32 %1, 19
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp ult i32 %3, 4
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %4 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fp, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %buf.sroa.0.0.copyload145 = load i32, ptr %5, align 1
  %add.ptr.i = getelementptr i8, ptr %5, i32 4
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %3, -4
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.i, ptr %len.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload145)
  %range_tr = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 19
  %call3 = tail call i32 @hashtab_init(ptr noundef %range_tr, i32 noundef %8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.0.0.copyload145)
  %cmp7179.not = icmp eq i32 %buf.sroa.0.0.copyload145, 0
  br i1 %cmp7179.not, label %for.cond.preheader.out_crit_edge, label %for.body.lr.ph

for.cond.preheader.out_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %process_class = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 26
  %nprim.i = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 3, i32 1
  %nprim.i126 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 1, i32 1
  %size.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 19, i32 1
  %nel.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 19, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %for.body

for.cond:                                         ; preds = %hashtab_insert.exit
  %inc = add nuw i32 %i.0180, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.cond.out_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0180 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 12) #22
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %for.body.out_crit_edge, label %if.end11

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end11:                                         ; preds = %for.body
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp.i103 = icmp ult i32 %11, 8
  br i1 %cmp.i103, label %if.end11.out_crit_edge, label %if.end16

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end16:                                         ; preds = %if.end11
  %12 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fp, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %13, align 1
  %buf.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %13, i32 4
  %15 = ptrtoint ptr %buf.sroa.9.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %buf.sroa.9.0.copyload = load i32, ptr %buf.sroa.9.0..sroa_idx, align 1
  %add.ptr.i104 = getelementptr i8, ptr %13, i32 8
  store ptr %add.ptr.i104, ptr %fp, align 4
  %sub.i105 = add i32 %11, -8
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.i105, ptr %len.i, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %call7.i.i, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.9.0.copyload)
  %target_type = getelementptr inbounds %struct.range_trans, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %target_type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %target_type, align 4
  %21 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %22)
  %cmp20 = icmp ugt i32 %22, 20
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end16
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp.i110 = icmp ult i32 %24, 4
  br i1 %cmp.i110, label %if.then21.out_crit_edge, label %if.end26

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end26:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fp, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %buf.sroa.0.0.copyload146 = load i32, ptr %26, align 1
  %add.ptr.i111 = getelementptr i8, ptr %26, i32 4
  store ptr %add.ptr.i111, ptr %fp, align 4
  %sub.i112 = add i32 %24, -4
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.i112, ptr %len.i, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload146)
  br label %if.end29

if.else:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  %30 = ptrtoint ptr %process_class to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %process_class, align 2
  %conv = zext i16 %31 to i32
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end26
  %conv.sink = phi i32 [ %conv, %if.else ], [ %29, %if.end26 ]
  %target_class28 = getelementptr inbounds %struct.range_trans, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %target_class28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv.sink, ptr %target_class28, align 8
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %if.end29.out_crit_edge, label %policydb_type_isvalid.exit

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

policydb_type_isvalid.exit:                       ; preds = %if.end29
  %35 = ptrtoint ptr %nprim.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nprim.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %34)
  %cmp.i116.not = icmp ult i32 %36, %34
  br i1 %cmp.i116.not, label %policydb_type_isvalid.exit.out_crit_edge, label %lor.lhs.false

policydb_type_isvalid.exit.out_crit_edge:         ; preds = %policydb_type_isvalid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

lor.lhs.false:                                    ; preds = %policydb_type_isvalid.exit
  %37 = ptrtoint ptr %target_type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %target_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i118 = icmp eq i32 %38, 0
  br i1 %tobool.not.i118, label %lor.lhs.false.out_crit_edge, label %policydb_type_isvalid.exit124

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

policydb_type_isvalid.exit124:                    ; preds = %lor.lhs.false
  %39 = ptrtoint ptr %nprim.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nprim.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp.i120.not = icmp ult i32 %40, %38
  br i1 %cmp.i120.not, label %policydb_type_isvalid.exit124.out_crit_edge, label %lor.lhs.false36

policydb_type_isvalid.exit124.out_crit_edge:      ; preds = %policydb_type_isvalid.exit124
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

lor.lhs.false36:                                  ; preds = %policydb_type_isvalid.exit124
  %target_class37 = getelementptr inbounds %struct.range_trans, ptr %call7.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %target_class37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %target_class37, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i125 = icmp eq i32 %42, 0
  br i1 %tobool.not.i125, label %lor.lhs.false36.out_crit_edge, label %policydb_class_isvalid.exit

lor.lhs.false36.out_crit_edge:                    ; preds = %lor.lhs.false36
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

policydb_class_isvalid.exit:                      ; preds = %lor.lhs.false36
  %43 = ptrtoint ptr %nprim.i126 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nprim.i126, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %42)
  %cmp.i127.not = icmp ult i32 %44, %42
  br i1 %cmp.i127.not, label %policydb_class_isvalid.exit.out_crit_edge, label %if.end41

policydb_class_isvalid.exit.out_crit_edge:        ; preds = %policydb_class_isvalid.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end41:                                         ; preds = %policydb_class_isvalid.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %45 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i131 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 24) #22
  %tobool43.not = icmp eq ptr %call7.i.i131, null
  br i1 %tobool43.not, label %if.end41.out_crit_edge, label %if.end45

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end45:                                         ; preds = %if.end41
  %call46 = tail call fastcc i32 @mls_read_range_helper(ptr noundef nonnull %call7.i.i131, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.out_crit_edge

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end49:                                         ; preds = %if.end45
  %call50 = tail call i32 @mls_range_isvalid(ptr noundef %p, ptr noundef nonnull %call7.i.i131) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.end, label %if.end54

do.end:                                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #21
  br label %out

if.end54:                                         ; preds = %if.end49
  tail call void @__might_resched(ptr noundef nonnull @.str.77, i32 noundef 67, i32 noundef 0) #17
  %call.i.i = tail call i32 @__cond_resched() #17
  %46 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i132 = icmp eq i32 %47, 0
  br i1 %tobool.not.i132, label %if.end54.out_crit_edge, label %lor.lhs.false.i134

if.end54.out_crit_edge:                           ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

lor.lhs.false.i134:                               ; preds = %if.end54
  %48 = ptrtoint ptr %nel.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.i133 = icmp eq i32 %49, -1
  br i1 %cmp.i133, label %lor.lhs.false.i134.out_crit_edge, label %if.end.i136

lor.lhs.false.i134.out_crit_edge:                 ; preds = %lor.lhs.false.i134
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end.i136:                                      ; preds = %lor.lhs.false.i134
  %50 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %call7.i.i, align 8
  %52 = ptrtoint ptr %target_type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %target_type, align 4
  %shl.i = shl i32 %53, 3
  %add.i = add i32 %shl.i, %51
  %54 = ptrtoint ptr %target_class37 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %target_class37, align 8
  %shl1.i = shl i32 %55, 5
  %add2.i = add i32 %add.i, %shl1.i
  %sub.i135 = add i32 %47, -1
  %and.i = and i32 %add2.i, %sub.i135
  %56 = ptrtoint ptr %range_tr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %range_tr, align 4
  %arrayidx.i = getelementptr ptr, ptr %57, i32 %and.i
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %cur.043.i = load ptr, ptr %arrayidx.i, align 4
  %tobool3.not44.i = icmp eq ptr %cur.043.i, null
  br i1 %tobool3.not44.i, label %if.end.i136.hashtab_insert.exit_crit_edge, label %if.end.i136.while.body.i_crit_edge

if.end.i136.while.body.i_crit_edge:               ; preds = %if.end.i136
  br label %while.body.i

if.end.i136.hashtab_insert.exit_crit_edge:        ; preds = %if.end.i136
  call void @__sanitizer_cov_trace_pc() #19
  br label %hashtab_insert.exit

while.cond.i:                                     ; preds = %if.end10.i
  %next.i = getelementptr inbounds %struct.hashtab_node, ptr %cur.046.i, i32 0, i32 2
  %59 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %cur.0.i = load ptr, ptr %next.i, align 4
  %tobool3.not.i = icmp eq ptr %cur.0.i, null
  br i1 %tobool3.not.i, label %while.cond.i.cond.true.i_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

while.cond.i.cond.true.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %if.end.i136.while.body.i_crit_edge
  %cur.046.i = phi ptr [ %cur.0.i, %while.cond.i.while.body.i_crit_edge ], [ %cur.043.i, %if.end.i136.while.body.i_crit_edge ]
  %prev.045.i = phi ptr [ %cur.046.i, %while.cond.i.while.body.i_crit_edge ], [ null, %if.end.i136.while.body.i_crit_edge ]
  %60 = ptrtoint ptr %cur.046.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cur.046.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  %sub.i137 = sub i32 %51, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i137)
  %tobool.not.i138 = icmp eq i32 %sub.i137, 0
  br i1 %tobool.not.i138, label %if.end.i139, label %while.body.i.if.end10.i_crit_edge

while.body.i.if.end10.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.i

if.end.i139:                                      ; preds = %while.body.i
  %target_type2.i = getelementptr inbounds %struct.range_trans, ptr %61, i32 0, i32 1
  %64 = ptrtoint ptr %target_type2.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %target_type2.i, align 4
  %sub3.i = sub i32 %53, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3.i)
  %tobool4.not.i = icmp eq i32 %sub3.i, 0
  br i1 %tobool4.not.i, label %rangetr_cmp.exit, label %if.end.i139.if.end10.i_crit_edge

if.end.i139.if.end10.i_crit_edge:                 ; preds = %if.end.i139
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.i

rangetr_cmp.exit:                                 ; preds = %if.end.i139
  %target_class7.i = getelementptr inbounds %struct.range_trans, ptr %61, i32 0, i32 2
  %66 = ptrtoint ptr %target_class7.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %target_class7.i, align 4
  %sub8.i = sub i32 %55, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub8.i)
  %cmp8.i = icmp eq i32 %sub8.i, 0
  br i1 %cmp8.i, label %rangetr_cmp.exit.out_crit_edge, label %rangetr_cmp.exit.if.end10.i_crit_edge

rangetr_cmp.exit.if.end10.i_crit_edge:            ; preds = %rangetr_cmp.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10.i

rangetr_cmp.exit.out_crit_edge:                   ; preds = %rangetr_cmp.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end10.i:                                       ; preds = %rangetr_cmp.exit.if.end10.i_crit_edge, %if.end.i139.if.end10.i_crit_edge, %while.body.i.if.end10.i_crit_edge
  %retval.0.i140169 = phi i32 [ %sub8.i, %rangetr_cmp.exit.if.end10.i_crit_edge ], [ %sub3.i, %if.end.i139.if.end10.i_crit_edge ], [ %sub.i137, %while.body.i.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i140169)
  %cmp11.i = icmp slt i32 %retval.0.i140169, 0
  br i1 %cmp11.i, label %while.end.i, label %while.cond.i

while.end.i:                                      ; preds = %if.end10.i
  %tobool14.not.i = icmp eq ptr %prev.045.i, null
  br i1 %tobool14.not.i, label %while.end.i.hashtab_insert.exit_crit_edge, label %while.end.i.cond.true.i_crit_edge

while.end.i.cond.true.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

while.end.i.hashtab_insert.exit_crit_edge:        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %hashtab_insert.exit

cond.true.i:                                      ; preds = %while.end.i.cond.true.i_crit_edge, %while.cond.i.cond.true.i_crit_edge
  %prev.0.lcssa53.i = phi ptr [ %prev.045.i, %while.end.i.cond.true.i_crit_edge ], [ %cur.046.i, %while.cond.i.cond.true.i_crit_edge ]
  %next15.i = getelementptr inbounds %struct.hashtab_node, ptr %prev.0.lcssa53.i, i32 0, i32 2
  br label %hashtab_insert.exit

hashtab_insert.exit:                              ; preds = %cond.true.i, %while.end.i.hashtab_insert.exit_crit_edge, %if.end.i136.hashtab_insert.exit_crit_edge
  %cond.i = phi ptr [ %next15.i, %cond.true.i ], [ %arrayidx.i, %while.end.i.hashtab_insert.exit_crit_edge ], [ %arrayidx.i, %if.end.i136.hashtab_insert.exit_crit_edge ]
  %call18.i = tail call i32 @__hashtab_insert(ptr noundef %range_tr, ptr noundef %cond.i, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i.i131) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool57.not = icmp eq i32 %call18.i, 0
  br i1 %tobool57.not, label %for.cond, label %hashtab_insert.exit.out_crit_edge

hashtab_insert.exit.out_crit_edge:                ; preds = %hashtab_insert.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

out:                                              ; preds = %hashtab_insert.exit.out_crit_edge, %rangetr_cmp.exit.out_crit_edge, %lor.lhs.false.i134.out_crit_edge, %if.end54.out_crit_edge, %do.end, %if.end45.out_crit_edge, %if.end41.out_crit_edge, %policydb_class_isvalid.exit.out_crit_edge, %lor.lhs.false36.out_crit_edge, %policydb_type_isvalid.exit124.out_crit_edge, %lor.lhs.false.out_crit_edge, %policydb_type_isvalid.exit.out_crit_edge, %if.end29.out_crit_edge, %if.then21.out_crit_edge, %if.end11.out_crit_edge, %for.body.out_crit_edge, %for.cond.out_crit_edge, %for.cond.preheader.out_crit_edge
  %rt.1 = phi ptr [ %call7.i.i, %do.end ], [ null, %for.cond.preheader.out_crit_edge ], [ %call7.i.i, %rangetr_cmp.exit.out_crit_edge ], [ null, %for.body.out_crit_edge ], [ %call7.i.i, %policydb_class_isvalid.exit.out_crit_edge ], [ %call7.i.i, %policydb_type_isvalid.exit124.out_crit_edge ], [ %call7.i.i, %policydb_type_isvalid.exit.out_crit_edge ], [ %call7.i.i, %if.end41.out_crit_edge ], [ %call7.i.i, %if.end45.out_crit_edge ], [ %call7.i.i, %hashtab_insert.exit.out_crit_edge ], [ %call7.i.i, %if.end11.out_crit_edge ], [ %call7.i.i, %if.then21.out_crit_edge ], [ null, %for.cond.out_crit_edge ], [ %call7.i.i, %if.end29.out_crit_edge ], [ %call7.i.i, %lor.lhs.false.out_crit_edge ], [ %call7.i.i, %lor.lhs.false36.out_crit_edge ], [ %call7.i.i, %lor.lhs.false.i134.out_crit_edge ], [ %call7.i.i, %if.end54.out_crit_edge ]
  %r.1 = phi ptr [ %call7.i.i131, %do.end ], [ null, %for.cond.preheader.out_crit_edge ], [ %call7.i.i131, %rangetr_cmp.exit.out_crit_edge ], [ null, %for.body.out_crit_edge ], [ null, %policydb_class_isvalid.exit.out_crit_edge ], [ null, %policydb_type_isvalid.exit124.out_crit_edge ], [ null, %policydb_type_isvalid.exit.out_crit_edge ], [ null, %if.end41.out_crit_edge ], [ %call7.i.i131, %if.end45.out_crit_edge ], [ %call7.i.i131, %hashtab_insert.exit.out_crit_edge ], [ null, %if.end11.out_crit_edge ], [ null, %if.then21.out_crit_edge ], [ null, %for.cond.out_crit_edge ], [ null, %if.end29.out_crit_edge ], [ null, %lor.lhs.false.out_crit_edge ], [ null, %lor.lhs.false36.out_crit_edge ], [ %call7.i.i131, %lor.lhs.false.i134.out_crit_edge ], [ %call7.i.i131, %if.end54.out_crit_edge ]
  %rc.0 = phi i32 [ -22, %do.end ], [ 0, %for.cond.preheader.out_crit_edge ], [ -17, %rangetr_cmp.exit.out_crit_edge ], [ -12, %for.body.out_crit_edge ], [ -22, %policydb_class_isvalid.exit.out_crit_edge ], [ -22, %policydb_type_isvalid.exit124.out_crit_edge ], [ -22, %policydb_type_isvalid.exit.out_crit_edge ], [ -12, %if.end41.out_crit_edge ], [ %call46, %if.end45.out_crit_edge ], [ %call18.i, %hashtab_insert.exit.out_crit_edge ], [ -22, %if.end11.out_crit_edge ], [ -22, %if.then21.out_crit_edge ], [ 0, %for.cond.out_crit_edge ], [ -22, %if.end29.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %lor.lhs.false36.out_crit_edge ], [ -22, %lor.lhs.false.i134.out_crit_edge ], [ -22, %if.end54.out_crit_edge ]
  tail call void @kfree(ptr noundef %rt.1) #17
  tail call void @kfree(ptr noundef %r.1) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ 0, %entry.cleanup_crit_edge ], [ %call3, %if.end2.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebitmap_set_bit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @policydb_bounds_sanity_check(ptr noundef %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %policyvers = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 24
  %0 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %1)
  %cmp = icmp ult i32 %1, 24
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 4
  %call = tail call i32 @hashtab_map(ptr noundef %arrayidx, ptr noundef nonnull @user_bounds_sanity_check, ptr noundef %p) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %arrayidx4 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 2
  %call6 = tail call i32 @hashtab_map(ptr noundef %arrayidx4, ptr noundef nonnull @role_bounds_sanity_check, ptr noundef %p) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx11 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 3
  %call13 = tail call i32 @hashtab_map(ptr noundef %arrayidx11, ptr noundef nonnull @type_bounds_sanity_check, ptr noundef %p) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call6, %if.end2.cleanup_crit_edge ], [ %call13, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @policydb_write(ptr noundef %p, ptr noundef %fp) local_unnamed_addr #2 align 64 {
entry:
  %pd.i = alloca %struct.policy_data, align 4
  %pd = alloca %struct.policy_data, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %policyvers = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 24
  %0 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp = icmp ult i32 %1, 20
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %1, i32 noundef 20) #21
  br label %cleanup132

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p, align 4
  %reject_unknown = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 25
  %4 = ptrtoint ptr %reject_unknown to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %reject_unknown, align 4
  %5 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fp, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 -1929413383, ptr %6, align 1
  %buf.sroa.9.0..sroa_idx240 = getelementptr inbounds i8, ptr %6, i32 4
  %8 = ptrtoint ptr %buf.sroa.9.0..sroa_idx240 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 134217728, ptr %buf.sroa.9.0..sroa_idx240, align 1
  %9 = load ptr, ptr %fp, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  store ptr %add.ptr.i, ptr %fp, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %10 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %11, -8
  store i32 %sub.i, ptr %len2.i, align 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 6000237591099503992, ptr %add.ptr.i, align 1
  %13 = load ptr, ptr %fp, align 4
  %add.ptr.i229 = getelementptr i8, ptr %13, i32 8
  store ptr %add.ptr.i229, ptr %fp, align 4
  %14 = load i32, ptr %len2.i, align 4
  %sub.i231 = add i32 %14, -8
  store i32 %sub.i231, ptr %len2.i, align 4
  %15 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %policyvers, align 4
  %call25 = tail call fastcc ptr @policydb_lookup_compat(i32 noundef %16)
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %if.end34

do.end30:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %16) #21
  br label %cleanup132

if.end34:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool4.not245 = icmp slt i8 %bf.load, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp ne i32 %3, 0
  %spec.select = zext i1 %tobool.not to i32
  %or6 = or i32 %spec.select, 2
  %config.1 = select i1 %tobool4.not245, i32 %or6, i32 %spec.select
  %17 = lshr i8 %bf.load, 4
  %18 = and i8 %17, 4
  %19 = zext i8 %18 to i32
  %20 = or i32 %config.1, %19
  %21 = tail call i32 @llvm.bswap.i32(i32 %16)
  %22 = shl nuw nsw i32 %20, 24
  %sym_num = getelementptr inbounds %struct.policydb_compat_info, ptr %call25, i32 0, i32 1
  %23 = ptrtoint ptr %sym_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sym_num, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %ocon_num = getelementptr inbounds %struct.policydb_compat_info, ptr %call25, i32 0, i32 2
  %26 = ptrtoint ptr %ocon_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ocon_num, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %add.ptr.i229 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %21, ptr %add.ptr.i229, align 1
  %buf.sroa.9.0..sroa_idx = getelementptr i8, ptr %13, i32 12
  %30 = ptrtoint ptr %buf.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %30, i32 4)
  store i32 %22, ptr %buf.sroa.9.0..sroa_idx, align 1
  %buf.sroa.13.0..sroa_idx = getelementptr i8, ptr %13, i32 16
  %31 = ptrtoint ptr %buf.sroa.13.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %25, ptr %buf.sroa.13.0..sroa_idx, align 1
  %buf.sroa.15.0..sroa_idx = getelementptr i8, ptr %13, i32 20
  %32 = ptrtoint ptr %buf.sroa.15.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %28, ptr %buf.sroa.15.0..sroa_idx, align 1
  %33 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fp, align 4
  %add.ptr.i232 = getelementptr i8, ptr %34, i32 16
  store ptr %add.ptr.i232, ptr %fp, align 4
  %35 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len2.i, align 4
  %sub.i234 = add i32 %36, -16
  store i32 %sub.i234, ptr %len2.i, align 4
  %37 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %38)
  %cmp46 = icmp ugt i32 %38, 21
  br i1 %cmp46, label %if.then47, label %if.end34.if.end60_crit_edge

if.end34.if.end60_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60

if.then47:                                        ; preds = %if.end34
  %policycaps = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 21
  %call48 = tail call i32 @ebitmap_write(ptr noundef %policycaps, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end52, label %if.then47.cleanup132_crit_edge

if.then47.cleanup132_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup132

if.end52:                                         ; preds = %if.then47
  %39 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %.pr)
  %cmp54 = icmp ugt i32 %.pr, 22
  br i1 %cmp54, label %if.then55, label %if.end52.if.end60_crit_edge

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60

if.then55:                                        ; preds = %if.end52
  %permissive_map = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 22
  %call56 = tail call i32 @ebitmap_write(ptr noundef %permissive_map, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.then55.if.end60_crit_edge, label %if.then55.cleanup132_crit_edge

if.then55.cleanup132_crit_edge:                   ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup132

if.then55.if.end60_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end60

if.end60:                                         ; preds = %if.then55.if.end60_crit_edge, %if.end52.if.end60_crit_edge, %if.end34.if.end60_crit_edge
  %40 = ptrtoint ptr %sym_num to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sym_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp62247.not = icmp eq i32 %41, 0
  br i1 %cmp62247.not, label %if.end60.for.end_crit_edge, label %for.body.lr.ph

if.end60.for.end_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end60
  %42 = getelementptr inbounds %struct.policy_data, ptr %pd, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0248, 1
  %exitcond.not = icmp eq i32 %inc, %41
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0248 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pd) #17
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %fp, ptr %42, align 4
  %44 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %p, ptr %pd, align 4
  %arrayidx65 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 %i.0248
  %nprim = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 %i.0248, i32 1
  %45 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nprim, align 4
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  %nel = getelementptr inbounds %struct.hashtab, ptr %arrayidx65, i32 0, i32 2
  %48 = ptrtoint ptr %nel to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nel, align 4
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fp, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_storeN_noabort(i32 %53, i32 4)
  store i32 %47, ptr %52, align 1
  %buf.sroa.9.0..sroa_idx242 = getelementptr inbounds i8, ptr %52, i32 4
  %54 = ptrtoint ptr %buf.sroa.9.0..sroa_idx242 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %50, ptr %buf.sroa.9.0..sroa_idx242, align 1
  %55 = load ptr, ptr %fp, align 4
  %add.ptr.i235 = getelementptr i8, ptr %55, i32 8
  store ptr %add.ptr.i235, ptr %fp, align 4
  %56 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len2.i, align 4
  %sub.i237 = add i32 %57, -8
  store i32 %sub.i237, ptr %len2.i, align 4
  %arrayidx78 = getelementptr [8 x ptr], ptr @write_f, i32 0, i32 %i.0248
  %58 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx78, align 4
  %call79 = call i32 @hashtab_map(ptr noundef %arrayidx65, ptr noundef %59, ptr noundef nonnull %pd) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pd) #17
  br i1 %tobool80.not, label %for.cond, label %for.body.cleanup132_crit_edge

for.body.cleanup132_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup132

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end60.for.end_crit_edge
  %te_avtab = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 7
  %call83 = call i32 @avtab_write(ptr noundef %p, ptr noundef %te_avtab, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %for.end.cleanup132_crit_edge

for.end.cleanup132_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup132

if.end86:                                         ; preds = %for.end
  %call87 = call i32 @cond_write_list(ptr noundef %p, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end86.cleanup132_crit_edge

if.end86.cleanup132_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup132

if.end90:                                         ; preds = %if.end86
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pd.i) #17
  %60 = getelementptr inbounds %struct.policy_data, ptr %pd.i, i32 0, i32 1
  %61 = ptrtoint ptr %pd.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %p, ptr %pd.i, align 4
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %fp, ptr %60, align 4
  %nel.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 8, i32 2
  %63 = ptrtoint ptr %nel.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nel.i, align 4
  %65 = call i32 @llvm.bswap.i32(i32 %64) #17
  %66 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fp, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %65, ptr %67, align 1
  %69 = load ptr, ptr %fp, align 4
  %add.ptr.i.i = getelementptr i8, ptr %69, i32 4
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %70 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len2.i, align 4
  %sub.i.i = add i32 %71, -4
  store i32 %sub.i.i, ptr %len2.i, align 4
  %role_tr.i = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 8
  %call4.i = call i32 @hashtab_map(ptr noundef %role_tr.i, ptr noundef nonnull @role_trans_write_one, ptr noundef nonnull %pd.i) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pd.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool92.not = icmp eq i32 %call4.i, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.cleanup132_crit_edge

if.end90.cleanup132_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup132

if.end94:                                         ; preds = %if.end90
  %role_allow = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 16
  %72 = ptrtoint ptr %role_allow to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %role_allow, align 4
  call fastcc void @role_allow_write(ptr noundef %73, ptr noundef %fp)
  %call99 = call fastcc i32 @filename_trans_write(ptr noundef %p, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end94.cleanup132_crit_edge

if.end94.cleanup132_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup132

if.end102:                                        ; preds = %if.end94
  %call103 = call fastcc i32 @ocontext_write(ptr noundef %p, ptr noundef nonnull %call25, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end106, label %if.end102.cleanup132_crit_edge

if.end102.cleanup132_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup132

if.end106:                                        ; preds = %if.end102
  %call107 = call fastcc i32 @genfs_write(ptr noundef %p, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.end110, label %if.end106.cleanup132_crit_edge

if.end106.cleanup132_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup132

if.end110:                                        ; preds = %if.end106
  %call111 = call fastcc i32 @range_write(ptr noundef %p, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %for.cond115.preheader, label %if.end110.cleanup132_crit_edge

if.end110.cleanup132_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup132

for.cond115.preheader:                            ; preds = %if.end110
  %type_attr_map_array = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 20
  %nprim118 = getelementptr %struct.policydb, ptr %p, i32 0, i32 1, i32 3, i32 1
  %74 = ptrtoint ptr %nprim118 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nprim118, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp119249.not = icmp eq i32 %75, 0
  br i1 %cmp119249.not, label %for.cond115.preheader.cleanup132_crit_edge, label %for.cond115.preheader.for.body120_crit_edge

for.cond115.preheader.for.body120_crit_edge:      ; preds = %for.cond115.preheader
  br label %for.body120

for.cond115.preheader.cleanup132_crit_edge:       ; preds = %for.cond115.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup132

for.cond115:                                      ; preds = %for.body120
  %inc130 = add nuw i32 %i.1250, 1
  %76 = ptrtoint ptr %nprim118 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nprim118, align 4
  %cmp119 = icmp ult i32 %inc130, %77
  br i1 %cmp119, label %for.cond115.for.body120_crit_edge, label %for.cond115.cleanup132_crit_edge

for.cond115.cleanup132_crit_edge:                 ; preds = %for.cond115
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup132

for.cond115.for.body120_crit_edge:                ; preds = %for.cond115
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body120

for.body120:                                      ; preds = %for.cond115.for.body120_crit_edge, %for.cond115.preheader.for.body120_crit_edge
  %i.1250 = phi i32 [ %inc130, %for.cond115.for.body120_crit_edge ], [ 0, %for.cond115.preheader.for.body120_crit_edge ]
  %78 = ptrtoint ptr %type_attr_map_array to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %type_attr_map_array, align 4
  %arrayidx121 = getelementptr %struct.ebitmap, ptr %79, i32 %i.1250
  %call122 = call i32 @ebitmap_write(ptr noundef %arrayidx121, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %for.cond115, label %for.body120.cleanup132_crit_edge

for.body120.cleanup132_crit_edge:                 ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup132

cleanup132:                                       ; preds = %for.body120.cleanup132_crit_edge, %for.cond115.cleanup132_crit_edge, %for.cond115.preheader.cleanup132_crit_edge, %if.end110.cleanup132_crit_edge, %if.end106.cleanup132_crit_edge, %if.end102.cleanup132_crit_edge, %if.end94.cleanup132_crit_edge, %if.end90.cleanup132_crit_edge, %if.end86.cleanup132_crit_edge, %for.end.cleanup132_crit_edge, %for.body.cleanup132_crit_edge, %if.then55.cleanup132_crit_edge, %if.then47.cleanup132_crit_edge, %do.end30, %do.end
  %retval.4 = phi i32 [ -22, %do.end ], [ -22, %do.end30 ], [ %call48, %if.then47.cleanup132_crit_edge ], [ %call56, %if.then55.cleanup132_crit_edge ], [ %call83, %for.end.cleanup132_crit_edge ], [ %call87, %if.end86.cleanup132_crit_edge ], [ %call4.i, %if.end90.cleanup132_crit_edge ], [ %call99, %if.end94.cleanup132_crit_edge ], [ %call103, %if.end102.cleanup132_crit_edge ], [ %call107, %if.end106.cleanup132_crit_edge ], [ %call111, %if.end110.cleanup132_crit_edge ], [ 0, %for.cond115.preheader.cleanup132_crit_edge ], [ %call122, %for.body120.cleanup132_crit_edge ], [ 0, %for.cond115.cleanup132_crit_edge ], [ %call79, %for.body.cleanup132_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebitmap_write(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @avtab_write(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cond_write_list(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @role_allow_write(ptr noundef readonly %r, ptr nocapture noundef %fp) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not5 = icmp eq ptr %r, null
  br i1 %tobool.not5, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %nel.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ra.06 = phi ptr [ %1, %for.body.for.body_crit_edge ], [ %r, %entry.for.body_crit_edge ]
  %inc = add i32 %nel.07, 1
  %next = getelementptr inbounds %struct.role_allow, ptr %ra.06, i32 0, i32 2
  %0 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %nel.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %2 = tail call i32 @llvm.bswap.i32(i32 %nel.0.lcssa)
  %3 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fp, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %2, ptr %4, align 1
  %6 = load ptr, ptr %fp, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  store ptr %add.ptr.i, ptr %fp, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %7 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %8, -4
  store i32 %sub.i, ptr %len2.i, align 4
  br i1 %tobool.not5, label %for.end.cleanup_crit_edge, label %for.end.for.body4_crit_edge

for.end.for.body4_crit_edge:                      ; preds = %for.end
  br label %for.body4

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.end.for.body4_crit_edge
  %ra.19 = phi ptr [ %23, %for.body4.for.body4_crit_edge ], [ %r, %for.end.for.body4_crit_edge ]
  %9 = ptrtoint ptr %ra.19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ra.19, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %new_role = getelementptr inbounds %struct.role_allow, ptr %ra.19, i32 0, i32 1
  %12 = ptrtoint ptr %new_role to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new_role, align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fp, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %11, ptr %16, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %16, i32 4
  %18 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %14, ptr %buf.sroa.7.0..sroa_idx, align 1
  %19 = load ptr, ptr %fp, align 4
  %add.ptr.i1 = getelementptr i8, ptr %19, i32 8
  store ptr %add.ptr.i1, ptr %fp, align 4
  %20 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len2.i, align 4
  %sub.i3 = add i32 %21, -8
  store i32 %sub.i3, ptr %len2.i, align 4
  %next13 = getelementptr inbounds %struct.role_allow, ptr %ra.19, i32 0, i32 2
  %22 = ptrtoint ptr %next13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %next13, align 4
  %tobool3.not = icmp eq ptr %23, null
  br i1 %tobool3.not, label %for.body4.cleanup_crit_edge, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body4

for.body4.cleanup_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.body4.cleanup_crit_edge, %for.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @filename_trans_write(ptr noundef %p, ptr noundef %fp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %policyvers = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 24
  %0 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %1)
  %cmp = icmp ult i32 %1, 25
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %1)
  %cmp2 = icmp ult i32 %1, 33
  %nel = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 10, i32 2
  %compat_filename_trans_count = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 11
  %nel.sink = select i1 %cmp2, ptr %compat_filename_trans_count, ptr %nel
  %filename_write_helper_compat.sink = select i1 %cmp2, ptr @filename_write_helper_compat, ptr @filename_write_helper
  %2 = ptrtoint ptr %nel.sink to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nel.sink, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fp, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %4, ptr %6, align 1
  %8 = load ptr, ptr %fp, align 4
  %add.ptr.i30 = getelementptr i8, ptr %8, i32 4
  store ptr %add.ptr.i30, ptr %fp, align 4
  %len2.i31 = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %9 = ptrtoint ptr %len2.i31 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len2.i31, align 4
  %sub.i = add i32 %10, -4
  store i32 %sub.i, ptr %len2.i31, align 4
  %filename_trans = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 10
  %call6 = tail call i32 @hashtab_map(ptr noundef %filename_trans, ptr noundef nonnull %filename_write_helper_compat.sink, ptr noundef %fp) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ocontext_write(ptr nocapture noundef readonly %p, ptr nocapture noundef readonly %info, ptr noundef %fp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ocon_num = getelementptr inbounds %struct.policydb_compat_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %ocon_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ocon_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp382.not = icmp eq i32 %1, 0
  br i1 %cmp382.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc190.for.body_crit_edge, %for.body.lr.ph
  %i.0383 = phi i32 [ 0, %for.body.lr.ph ], [ %inc191, %for.inc190.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.policydb, ptr %p, i32 0, i32 17, i32 %i.0383
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %c.0372 = load ptr, ptr %arrayidx, align 4
  %tobool.not373 = icmp eq ptr %c.0372, null
  br i1 %tobool.not373, label %for.body.for.end_crit_edge, label %for.body.for.body2_crit_edge

for.body.for.body2_crit_edge:                     ; preds = %for.body
  br label %for.body2

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body2:                                        ; preds = %for.body2.for.body2_crit_edge, %for.body.for.body2_crit_edge
  %c.0375 = phi ptr [ %c.0, %for.body2.for.body2_crit_edge ], [ %c.0372, %for.body.for.body2_crit_edge ]
  %nel.0374 = phi i32 [ %inc, %for.body2.for.body2_crit_edge ], [ 0, %for.body.for.body2_crit_edge ]
  %inc = add i32 %nel.0374, 1
  %next = getelementptr inbounds %struct.ocontext, ptr %c.0375, i32 0, i32 4
  %3 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %3)
  %c.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %c.0, null
  br i1 %tobool.not, label %for.body2.for.end_crit_edge, label %for.body2.for.body2_crit_edge

for.body2.for.body2_crit_edge:                    ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body2

for.body2.for.end_crit_edge:                      ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body2.for.end_crit_edge, %for.body.for.end_crit_edge
  %nel.0.lcssa = phi i32 [ 0, %for.body.for.end_crit_edge ], [ %inc, %for.body2.for.end_crit_edge ]
  %4 = tail call i32 @llvm.bswap.i32(i32 %nel.0.lcssa)
  %5 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fp, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %4, ptr %6, align 1
  %8 = load ptr, ptr %fp, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  store ptr %add.ptr.i, ptr %fp, align 4
  %9 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %10, -4
  store i32 %sub.i, ptr %len2.i, align 4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %c.1378 = load ptr, ptr %arrayidx, align 4
  %tobool8.not379 = icmp eq ptr %c.1378, null
  br i1 %tobool8.not379, label %for.end.for.inc190_crit_edge, label %for.end.for.body9_crit_edge

for.end.for.body9_crit_edge:                      ; preds = %for.end
  br label %for.body9

for.end.for.inc190_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc190

for.body9:                                        ; preds = %for.inc187.for.body9_crit_edge, %for.end.for.body9_crit_edge
  %c.1380 = phi ptr [ %c.1, %for.inc187.for.body9_crit_edge ], [ %c.1378, %for.end.for.body9_crit_edge ]
  %12 = zext i32 %i.0383 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %i.0383, label %for.body9.for.inc187_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %for.body9.sw.bb22_crit_edge
    i32 3, label %for.body9.sw.bb22_crit_edge401
    i32 2, label %sw.bb47
    i32 4, label %sw.bb67
    i32 5, label %sw.bb83
    i32 6, label %for.body108.preheader
    i32 7, label %sw.bb138
    i32 8, label %sw.bb163
  ]

for.body9.sw.bb22_crit_edge401:                   ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb22

for.body9.sw.bb22_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb22

for.body9.for.inc187_crit_edge:                   ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc187

for.body108.preheader:                            ; preds = %for.body9
  %13 = ptrtoint ptr %c.1380 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %nodebuf.sroa.0.0.copyload387 = load i64, ptr %c.1380, align 4
  %nodebuf.sroa.9.0.c.1380.sroa_idx = getelementptr inbounds i8, ptr %c.1380, i32 8
  %14 = ptrtoint ptr %nodebuf.sroa.9.0.c.1380.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %nodebuf.sroa.9.0.copyload389 = load i32, ptr %nodebuf.sroa.9.0.c.1380.sroa_idx, align 4
  %nodebuf.sroa.10.0.c.1380.sroa_idx = getelementptr inbounds i8, ptr %c.1380, i32 12
  %15 = ptrtoint ptr %nodebuf.sroa.10.0.c.1380.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %15)
  %nodebuf.sroa.10.0.copyload390 = load i32, ptr %nodebuf.sroa.10.0.c.1380.sroa_idx, align 4
  %uglygep386 = getelementptr i8, ptr %c.1380, i32 16
  %16 = ptrtoint ptr %uglygep386 to i32
  call void @__asan_load4_noabort(i32 %16)
  %nodebuf.sroa.11.16.copyload = load i32, ptr %uglygep386, align 4
  %nodebuf.sroa.13.16.uglygep386.sroa_idx = getelementptr i8, ptr %c.1380, i32 20
  %17 = ptrtoint ptr %nodebuf.sroa.13.16.uglygep386.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %nodebuf.sroa.13.16.copyload = load i32, ptr %nodebuf.sroa.13.16.uglygep386.sroa_idx, align 4
  %nodebuf.sroa.14.16.uglygep386.sroa_idx = getelementptr i8, ptr %c.1380, i32 24
  %18 = ptrtoint ptr %nodebuf.sroa.14.16.uglygep386.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %nodebuf.sroa.14.16.copyload = load i32, ptr %nodebuf.sroa.14.16.uglygep386.sroa_idx, align 4
  %nodebuf.sroa.15.16.uglygep386.sroa_idx = getelementptr i8, ptr %c.1380, i32 28
  %19 = ptrtoint ptr %nodebuf.sroa.15.16.uglygep386.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %nodebuf.sroa.15.16.copyload = load i32, ptr %nodebuf.sroa.15.16.uglygep386.sroa_idx, align 4
  %20 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fp, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 8)
  store i64 %nodebuf.sroa.0.0.copyload387, ptr %21, align 1
  %nodebuf.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %21, i32 8
  %23 = ptrtoint ptr %nodebuf.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %nodebuf.sroa.9.0.copyload389, ptr %nodebuf.sroa.9.0..sroa_idx, align 1
  %nodebuf.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %21, i32 12
  %24 = ptrtoint ptr %nodebuf.sroa.10.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %nodebuf.sroa.10.0.copyload390, ptr %nodebuf.sroa.10.0..sroa_idx, align 1
  %nodebuf.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %21, i32 16
  %25 = ptrtoint ptr %nodebuf.sroa.11.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %nodebuf.sroa.11.16.copyload, ptr %nodebuf.sroa.11.0..sroa_idx, align 1
  %nodebuf.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %21, i32 20
  %26 = ptrtoint ptr %nodebuf.sroa.13.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %nodebuf.sroa.13.16.copyload, ptr %nodebuf.sroa.13.0..sroa_idx, align 1
  %nodebuf.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %21, i32 24
  %27 = ptrtoint ptr %nodebuf.sroa.14.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %nodebuf.sroa.14.16.copyload, ptr %nodebuf.sroa.14.0..sroa_idx, align 1
  %nodebuf.sroa.15.0..sroa_idx = getelementptr inbounds i8, ptr %21, i32 28
  %28 = ptrtoint ptr %nodebuf.sroa.15.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %nodebuf.sroa.15.16.copyload, ptr %nodebuf.sroa.15.0..sroa_idx, align 1
  %29 = load ptr, ptr %fp, align 4
  %add.ptr.i344 = getelementptr i8, ptr %29, i32 32
  store ptr %add.ptr.i344, ptr %fp, align 4
  %30 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len2.i, align 4
  %sub.i346 = add i32 %31, -32
  store i32 %sub.i346, ptr %len2.i, align 4
  %context132 = getelementptr inbounds %struct.ocontext, ptr %c.1380, i32 0, i32 2
  %call134 = tail call fastcc i32 @context_write(ptr noundef %context132, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %for.body108.preheader.for.inc187_crit_edge, label %for.body108.preheader.cleanup_crit_edge

for.body108.preheader.cleanup_crit_edge:          ; preds = %for.body108.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body108.preheader.for.inc187_crit_edge:       ; preds = %for.body108.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc187

sw.bb:                                            ; preds = %for.body9
  %sid = getelementptr inbounds %struct.ocontext, ptr %c.1380, i32 0, i32 3
  %32 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sid, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fp, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_storeN_noabort(i32 %37, i32 4)
  store i32 %34, ptr %36, align 1
  %38 = load ptr, ptr %fp, align 4
  %add.ptr.i323 = getelementptr i8, ptr %38, i32 4
  store ptr %add.ptr.i323, ptr %fp, align 4
  %39 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len2.i, align 4
  %sub.i325 = add i32 %40, -4
  store i32 %sub.i325, ptr %len2.i, align 4
  %context = getelementptr inbounds %struct.ocontext, ptr %c.1380, i32 0, i32 2
  %call18 = tail call fastcc i32 @context_write(ptr noundef %context, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %sw.bb.for.inc187_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb.for.inc187_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc187

sw.bb22:                                          ; preds = %for.body9.sw.bb22_crit_edge, %for.body9.sw.bb22_crit_edge401
  %41 = ptrtoint ptr %c.1380 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %c.1380, align 8
  %call23 = tail call i32 @strlen(ptr noundef %42) #23
  %43 = tail call i32 @llvm.bswap.i32(i32 %call23)
  %44 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fp, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %43, ptr %45, align 1
  %47 = load ptr, ptr %fp, align 4
  %add.ptr.i326 = getelementptr i8, ptr %47, i32 4
  store ptr %add.ptr.i326, ptr %fp, align 4
  %48 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len2.i, align 4
  %sub.i328 = add i32 %49, -4
  store i32 %sub.i328, ptr %len2.i, align 4
  %50 = ptrtoint ptr %c.1380 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %c.1380, align 8
  %52 = call ptr @memcpy(ptr %add.ptr.i326, ptr %51, i32 %call23)
  %53 = load ptr, ptr %fp, align 4
  %add.ptr.i329 = getelementptr i8, ptr %53, i32 %call23
  store ptr %add.ptr.i329, ptr %fp, align 4
  %54 = load i32, ptr %len2.i, align 4
  %sub.i331 = sub i32 %54, %call23
  store i32 %sub.i331, ptr %len2.i, align 4
  %context35 = getelementptr inbounds %struct.ocontext, ptr %c.1380, i32 0, i32 2
  %call37 = tail call fastcc i32 @context_write(ptr noundef %context35, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %sw.bb22.cleanup_crit_edge

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end40:                                         ; preds = %sw.bb22
  %arrayidx42 = getelementptr %struct.ocontext, ptr %c.1380, i32 0, i32 2, i32 1
  %call43 = tail call fastcc i32 @context_write(ptr noundef %arrayidx42, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end40.for.inc187_crit_edge, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end40.for.inc187_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc187

sw.bb47:                                          ; preds = %for.body9
  %55 = ptrtoint ptr %c.1380 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %c.1380, align 8
  %conv = zext i8 %56 to i32
  %57 = shl nuw i32 %conv, 24
  %low_port = getelementptr inbounds %struct.anon, ptr %c.1380, i32 0, i32 1
  %58 = ptrtoint ptr %low_port to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %low_port, align 2
  %conv51 = zext i16 %59 to i32
  %60 = tail call i32 @llvm.bswap.i32(i32 %conv51)
  %high_port = getelementptr inbounds %struct.anon, ptr %c.1380, i32 0, i32 2
  %61 = ptrtoint ptr %high_port to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %high_port, align 4
  %conv54 = zext i16 %62 to i32
  %63 = tail call i32 @llvm.bswap.i32(i32 %conv54)
  %64 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %fp, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %57, ptr %65, align 1
  %buf.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %65, i32 4
  %67 = ptrtoint ptr %buf.sroa.17.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %60, ptr %buf.sroa.17.0..sroa_idx, align 1
  %buf.sroa.22.0..sroa_idx = getelementptr inbounds i8, ptr %65, i32 8
  %68 = ptrtoint ptr %buf.sroa.22.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %63, ptr %buf.sroa.22.0..sroa_idx, align 1
  %69 = load ptr, ptr %fp, align 4
  %add.ptr.i332 = getelementptr i8, ptr %69, i32 12
  store ptr %add.ptr.i332, ptr %fp, align 4
  %70 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len2.i, align 4
  %sub.i334 = add i32 %71, -12
  store i32 %sub.i334, ptr %len2.i, align 4
  %context61 = getelementptr inbounds %struct.ocontext, ptr %c.1380, i32 0, i32 2
  %call63 = tail call fastcc i32 @context_write(ptr noundef %context61, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %sw.bb47.for.inc187_crit_edge, label %sw.bb47.cleanup_crit_edge

sw.bb47.cleanup_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb47.for.inc187_crit_edge:                     ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc187

sw.bb67:                                          ; preds = %for.body9
  %72 = ptrtoint ptr %c.1380 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %c.1380, align 8
  %mask = getelementptr inbounds %struct.anon.1, ptr %c.1380, i32 0, i32 1
  %74 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mask, align 4
  %76 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fp, align 4
  %nodebuf.sroa.0.sroa.7.0.insert.ext = zext i32 %75 to i64
  %nodebuf.sroa.0.sroa.0.0.insert.ext = zext i32 %73 to i64
  %nodebuf.sroa.0.sroa.0.0.insert.shift = shl nuw i64 %nodebuf.sroa.0.sroa.0.0.insert.ext, 32
  %nodebuf.sroa.0.sroa.0.0.insert.insert = or i64 %nodebuf.sroa.0.sroa.0.0.insert.shift, %nodebuf.sroa.0.sroa.7.0.insert.ext
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_storeN_noabort(i32 %78, i32 8)
  store i64 %nodebuf.sroa.0.sroa.0.0.insert.insert, ptr %77, align 1
  %79 = load ptr, ptr %fp, align 4
  %add.ptr.i335 = getelementptr i8, ptr %79, i32 8
  store ptr %add.ptr.i335, ptr %fp, align 4
  %80 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len2.i, align 4
  %sub.i337 = add i32 %81, -8
  store i32 %sub.i337, ptr %len2.i, align 4
  %context77 = getelementptr inbounds %struct.ocontext, ptr %c.1380, i32 0, i32 2
  %call79 = tail call fastcc i32 @context_write(ptr noundef %context77, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %sw.bb67.for.inc187_crit_edge, label %sw.bb67.cleanup_crit_edge

sw.bb67.cleanup_crit_edge:                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb67.for.inc187_crit_edge:                     ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc187

sw.bb83:                                          ; preds = %for.body9
  %v = getelementptr inbounds %struct.ocontext, ptr %c.1380, i32 0, i32 1
  %82 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %v, align 8
  %84 = tail call i32 @llvm.bswap.i32(i32 %83)
  %85 = ptrtoint ptr %c.1380 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %c.1380, align 8
  %call86 = tail call i32 @strlen(ptr noundef %86) #23
  %87 = tail call i32 @llvm.bswap.i32(i32 %call86)
  %88 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %fp, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %84, ptr %89, align 1
  %buf.sroa.17.0..sroa_idx365 = getelementptr inbounds i8, ptr %89, i32 4
  %91 = ptrtoint ptr %buf.sroa.17.0..sroa_idx365 to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 %87, ptr %buf.sroa.17.0..sroa_idx365, align 1
  %92 = load ptr, ptr %fp, align 4
  %add.ptr.i338 = getelementptr i8, ptr %92, i32 8
  store ptr %add.ptr.i338, ptr %fp, align 4
  %93 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len2.i, align 4
  %sub.i340 = add i32 %94, -8
  store i32 %sub.i340, ptr %len2.i, align 4
  %95 = ptrtoint ptr %c.1380 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %c.1380, align 8
  %97 = call ptr @memcpy(ptr %add.ptr.i338, ptr %96, i32 %call86)
  %98 = load ptr, ptr %fp, align 4
  %add.ptr.i341 = getelementptr i8, ptr %98, i32 %call86
  store ptr %add.ptr.i341, ptr %fp, align 4
  %99 = load i32, ptr %len2.i, align 4
  %sub.i343 = sub i32 %99, %call86
  store i32 %sub.i343, ptr %len2.i, align 4
  %context98 = getelementptr inbounds %struct.ocontext, ptr %c.1380, i32 0, i32 2
  %call100 = tail call fastcc i32 @context_write(ptr noundef %context98, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %sw.bb83.for.inc187_crit_edge, label %sw.bb83.cleanup_crit_edge

sw.bb83.cleanup_crit_edge:                        ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb83.for.inc187_crit_edge:                     ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc187

sw.bb138:                                         ; preds = %for.body9
  %100 = ptrtoint ptr %c.1380 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %c.1380, align 8
  %102 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %fp, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_storeN_noabort(i32 %104, i32 8)
  store i64 %101, ptr %103, align 1
  %105 = load ptr, ptr %fp, align 4
  %add.ptr.i347 = getelementptr i8, ptr %105, i32 8
  store ptr %add.ptr.i347, ptr %fp, align 4
  %106 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %len2.i, align 4
  %sub.i349 = add i32 %107, -8
  store i32 %sub.i349, ptr %len2.i, align 4
  %low_pkey = getelementptr inbounds %struct.anon.3, ptr %c.1380, i32 0, i32 1
  %108 = ptrtoint ptr %low_pkey to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %low_pkey, align 8
  %conv147 = zext i16 %109 to i32
  %110 = tail call i32 @llvm.bswap.i32(i32 %conv147)
  %high_pkey = getelementptr inbounds %struct.anon.3, ptr %c.1380, i32 0, i32 2
  %111 = ptrtoint ptr %high_pkey to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %high_pkey, align 2
  %conv150 = zext i16 %112 to i32
  %113 = tail call i32 @llvm.bswap.i32(i32 %conv150)
  %114 = ptrtoint ptr %add.ptr.i347 to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 %110, ptr %add.ptr.i347, align 1
  %buf.sroa.17.0..sroa_idx367 = getelementptr i8, ptr %105, i32 12
  %115 = ptrtoint ptr %buf.sroa.17.0..sroa_idx367 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 4)
  store i32 %113, ptr %buf.sroa.17.0..sroa_idx367, align 1
  %116 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %fp, align 4
  %add.ptr.i350 = getelementptr i8, ptr %117, i32 8
  store ptr %add.ptr.i350, ptr %fp, align 4
  %118 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %len2.i, align 4
  %sub.i352 = add i32 %119, -8
  store i32 %sub.i352, ptr %len2.i, align 4
  %context157 = getelementptr inbounds %struct.ocontext, ptr %c.1380, i32 0, i32 2
  %call159 = tail call fastcc i32 @context_write(ptr noundef %context157, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %sw.bb138.for.inc187_crit_edge, label %sw.bb138.cleanup_crit_edge

sw.bb138.cleanup_crit_edge:                       ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb138.for.inc187_crit_edge:                    ; preds = %sw.bb138
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc187

sw.bb163:                                         ; preds = %for.body9
  %120 = ptrtoint ptr %c.1380 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %c.1380, align 8
  %call165 = tail call i32 @strlen(ptr noundef %121) #23
  %122 = tail call i32 @llvm.bswap.i32(i32 %call165)
  %port = getelementptr inbounds %struct.anon.4, ptr %c.1380, i32 0, i32 1
  %123 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %port, align 4
  %conv168 = zext i8 %124 to i32
  %125 = shl nuw i32 %conv168, 24
  %126 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %fp, align 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_storeN_noabort(i32 %128, i32 4)
  store i32 %122, ptr %127, align 1
  %buf.sroa.17.0..sroa_idx369 = getelementptr inbounds i8, ptr %127, i32 4
  %129 = ptrtoint ptr %buf.sroa.17.0..sroa_idx369 to i32
  call void @__asan_storeN_noabort(i32 %129, i32 4)
  store i32 %125, ptr %buf.sroa.17.0..sroa_idx369, align 1
  %130 = load ptr, ptr %fp, align 4
  %add.ptr.i353 = getelementptr i8, ptr %130, i32 8
  store ptr %add.ptr.i353, ptr %fp, align 4
  %131 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %len2.i, align 4
  %sub.i355 = add i32 %132, -8
  store i32 %sub.i355, ptr %len2.i, align 4
  %133 = ptrtoint ptr %c.1380 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %c.1380, align 8
  %135 = call ptr @memcpy(ptr %add.ptr.i353, ptr %134, i32 %call165)
  %136 = load ptr, ptr %fp, align 4
  %add.ptr.i356 = getelementptr i8, ptr %136, i32 %call165
  store ptr %add.ptr.i356, ptr %fp, align 4
  %137 = load i32, ptr %len2.i, align 4
  %sub.i358 = sub i32 %137, %call165
  store i32 %sub.i358, ptr %len2.i, align 4
  %context181 = getelementptr inbounds %struct.ocontext, ptr %c.1380, i32 0, i32 2
  %call183 = tail call fastcc i32 @context_write(ptr noundef %context181, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %sw.bb163.for.inc187_crit_edge, label %sw.bb163.cleanup_crit_edge

sw.bb163.cleanup_crit_edge:                       ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb163.for.inc187_crit_edge:                    ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc187

for.inc187:                                       ; preds = %sw.bb163.for.inc187_crit_edge, %sw.bb138.for.inc187_crit_edge, %sw.bb83.for.inc187_crit_edge, %sw.bb67.for.inc187_crit_edge, %sw.bb47.for.inc187_crit_edge, %if.end40.for.inc187_crit_edge, %sw.bb.for.inc187_crit_edge, %for.body108.preheader.for.inc187_crit_edge, %for.body9.for.inc187_crit_edge
  %next188 = getelementptr inbounds %struct.ocontext, ptr %c.1380, i32 0, i32 4
  %138 = ptrtoint ptr %next188 to i32
  call void @__asan_load4_noabort(i32 %138)
  %c.1 = load ptr, ptr %next188, align 4
  %tobool8.not = icmp eq ptr %c.1, null
  br i1 %tobool8.not, label %for.inc187.for.inc190_crit_edge, label %for.inc187.for.body9_crit_edge

for.inc187.for.body9_crit_edge:                   ; preds = %for.inc187
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body9

for.inc187.for.inc190_crit_edge:                  ; preds = %for.inc187
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc190

for.inc190:                                       ; preds = %for.inc187.for.inc190_crit_edge, %for.end.for.inc190_crit_edge
  %inc191 = add nuw i32 %i.0383, 1
  %139 = ptrtoint ptr %ocon_num to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ocon_num, align 4
  %cmp = icmp ult i32 %inc191, %140
  br i1 %cmp, label %for.inc190.for.body_crit_edge, label %for.inc190.cleanup_crit_edge

for.inc190.cleanup_crit_edge:                     ; preds = %for.inc190
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc190.for.body_crit_edge:                    ; preds = %for.inc190
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup:                                          ; preds = %for.inc190.cleanup_crit_edge, %sw.bb163.cleanup_crit_edge, %sw.bb138.cleanup_crit_edge, %sw.bb83.cleanup_crit_edge, %sw.bb67.cleanup_crit_edge, %sw.bb47.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %for.body108.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call183, %sw.bb163.cleanup_crit_edge ], [ %call159, %sw.bb138.cleanup_crit_edge ], [ %call134, %for.body108.preheader.cleanup_crit_edge ], [ %call100, %sw.bb83.cleanup_crit_edge ], [ %call79, %sw.bb67.cleanup_crit_edge ], [ %call63, %sw.bb47.cleanup_crit_edge ], [ %call43, %if.end40.cleanup_crit_edge ], [ %call37, %sw.bb22.cleanup_crit_edge ], [ %call18, %sw.bb.cleanup_crit_edge ], [ 0, %for.inc190.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @genfs_write(ptr nocapture noundef readonly %p, ptr noundef %fp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %genfs1 = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 18
  %0 = ptrtoint ptr %genfs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %genfs.0137 = load ptr, ptr %genfs1, align 4
  %tobool.not138 = icmp eq ptr %genfs.0137, null
  br i1 %tobool.not138, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %genfs.0140 = phi ptr [ %genfs.0, %for.body.for.body_crit_edge ], [ %genfs.0137, %entry.for.body_crit_edge ]
  %len.0139 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %inc = add i32 %len.0139, 1
  %next = getelementptr inbounds %struct.genfs, ptr %genfs.0140, i32 0, i32 2
  %1 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %1)
  %genfs.0 = load ptr, ptr %next, align 4
  %tobool.not = icmp eq ptr %genfs.0, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %2 = tail call i32 @llvm.bswap.i32(i32 %len.0.lcssa)
  %3 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fp, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %2, ptr %4, align 1
  %6 = load ptr, ptr %fp, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  store ptr %add.ptr.i, ptr %fp, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %7 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %8, -4
  store i32 %sub.i, ptr %len2.i, align 4
  %9 = ptrtoint ptr %genfs1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %genfs.1149 = load ptr, ptr %genfs1, align 4
  %tobool5.not150 = icmp eq ptr %genfs.1149, null
  br i1 %tobool5.not150, label %for.end.cleanup_crit_edge, label %for.end.for.body6_crit_edge

for.end.for.body6_crit_edge:                      ; preds = %for.end
  br label %for.body6

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body6:                                        ; preds = %for.inc62.for.body6_crit_edge, %for.end.for.body6_crit_edge
  %genfs.1151 = phi ptr [ %genfs.1, %for.inc62.for.body6_crit_edge ], [ %genfs.1149, %for.end.for.body6_crit_edge ]
  %10 = ptrtoint ptr %genfs.1151 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %genfs.1151, align 4
  %call7 = tail call i32 @strlen(ptr noundef %11) #23
  %12 = tail call i32 @llvm.bswap.i32(i32 %call7)
  %13 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fp, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %12, ptr %14, align 1
  %16 = load ptr, ptr %fp, align 4
  %add.ptr.i114 = getelementptr i8, ptr %16, i32 4
  store ptr %add.ptr.i114, ptr %fp, align 4
  %17 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len2.i, align 4
  %sub.i116 = add i32 %18, -4
  store i32 %sub.i116, ptr %len2.i, align 4
  %19 = ptrtoint ptr %genfs.1151 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %genfs.1151, align 4
  %21 = call ptr @memcpy(ptr %add.ptr.i114, ptr %20, i32 %call7)
  %22 = load ptr, ptr %fp, align 4
  %add.ptr.i117 = getelementptr i8, ptr %22, i32 %call7
  store ptr %add.ptr.i117, ptr %fp, align 4
  %23 = load i32, ptr %len2.i, align 4
  %sub.i119 = sub i32 %23, %call7
  store i32 %sub.i119, ptr %len2.i, align 4
  %head = getelementptr inbounds %struct.genfs, ptr %genfs.1151, i32 0, i32 1
  %24 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %24)
  %c.0141 = load ptr, ptr %head, align 4
  %tobool20.not142 = icmp eq ptr %c.0141, null
  br i1 %tobool20.not142, label %for.body6.for.end25_crit_edge, label %for.body6.for.body21_crit_edge

for.body6.for.body21_crit_edge:                   ; preds = %for.body6
  br label %for.body21

for.body6.for.end25_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end25

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.body6.for.body21_crit_edge
  %c.0144 = phi ptr [ %c.0, %for.body21.for.body21_crit_edge ], [ %c.0141, %for.body6.for.body21_crit_edge ]
  %len.1143 = phi i32 [ %inc22, %for.body21.for.body21_crit_edge ], [ 0, %for.body6.for.body21_crit_edge ]
  %inc22 = add i32 %len.1143, 1
  %next24 = getelementptr inbounds %struct.ocontext, ptr %c.0144, i32 0, i32 4
  %25 = ptrtoint ptr %next24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %c.0 = load ptr, ptr %next24, align 4
  %tobool20.not = icmp eq ptr %c.0, null
  br i1 %tobool20.not, label %for.body21.for.end25_crit_edge, label %for.body21.for.body21_crit_edge

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body21

for.body21.for.end25_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end25

for.end25:                                        ; preds = %for.body21.for.end25_crit_edge, %for.body6.for.end25_crit_edge
  %len.1.lcssa = phi i32 [ 0, %for.body6.for.end25_crit_edge ], [ %inc22, %for.body21.for.end25_crit_edge ]
  %26 = tail call i32 @llvm.bswap.i32(i32 %len.1.lcssa)
  %27 = ptrtoint ptr %add.ptr.i117 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %26, ptr %add.ptr.i117, align 1
  %28 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fp, align 4
  %add.ptr.i120 = getelementptr i8, ptr %29, i32 4
  store ptr %add.ptr.i120, ptr %fp, align 4
  %30 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len2.i, align 4
  %sub.i122 = add i32 %31, -4
  store i32 %sub.i122, ptr %len2.i, align 4
  %32 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %32)
  %c.1146 = load ptr, ptr %head, align 4
  %tobool34.not147 = icmp eq ptr %c.1146, null
  br i1 %tobool34.not147, label %for.end25.for.inc62_crit_edge, label %for.end25.for.body35_crit_edge

for.end25.for.body35_crit_edge:                   ; preds = %for.end25
  br label %for.body35

for.end25.for.inc62_crit_edge:                    ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc62

for.cond33:                                       ; preds = %for.body35
  %next60 = getelementptr inbounds %struct.ocontext, ptr %c.1148, i32 0, i32 4
  %33 = ptrtoint ptr %next60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %c.1 = load ptr, ptr %next60, align 4
  %tobool34.not = icmp eq ptr %c.1, null
  br i1 %tobool34.not, label %for.cond33.for.inc62_crit_edge, label %for.cond33.for.body35_crit_edge

for.cond33.for.body35_crit_edge:                  ; preds = %for.cond33
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body35

for.cond33.for.inc62_crit_edge:                   ; preds = %for.cond33
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc62

for.body35:                                       ; preds = %for.cond33.for.body35_crit_edge, %for.end25.for.body35_crit_edge
  %c.1148 = phi ptr [ %c.1, %for.cond33.for.body35_crit_edge ], [ %c.1146, %for.end25.for.body35_crit_edge ]
  %34 = ptrtoint ptr %c.1148 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %c.1148, align 8
  %call36 = tail call i32 @strlen(ptr noundef %35) #23
  %36 = tail call i32 @llvm.bswap.i32(i32 %call36)
  %37 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fp, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 %36, ptr %38, align 1
  %40 = load ptr, ptr %fp, align 4
  %add.ptr.i123 = getelementptr i8, ptr %40, i32 4
  store ptr %add.ptr.i123, ptr %fp, align 4
  %41 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len2.i, align 4
  %sub.i125 = add i32 %42, -4
  store i32 %sub.i125, ptr %len2.i, align 4
  %43 = ptrtoint ptr %c.1148 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %c.1148, align 8
  %45 = call ptr @memcpy(ptr %add.ptr.i123, ptr %44, i32 %call36)
  %46 = load ptr, ptr %fp, align 4
  %add.ptr.i126 = getelementptr i8, ptr %46, i32 %call36
  store ptr %add.ptr.i126, ptr %fp, align 4
  %47 = load i32, ptr %len2.i, align 4
  %sub.i128 = sub i32 %47, %call36
  store i32 %sub.i128, ptr %len2.i, align 4
  %v = getelementptr inbounds %struct.ocontext, ptr %c.1148, i32 0, i32 1
  %48 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %v, align 8
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %add.ptr.i126 to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %add.ptr.i126, align 1
  %52 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fp, align 4
  %add.ptr.i129 = getelementptr i8, ptr %53, i32 4
  store ptr %add.ptr.i129, ptr %fp, align 4
  %54 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len2.i, align 4
  %sub.i131 = add i32 %55, -4
  store i32 %sub.i131, ptr %len2.i, align 4
  %context = getelementptr inbounds %struct.ocontext, ptr %c.1148, i32 0, i32 2
  %call55 = tail call fastcc i32 @context_write(ptr noundef %context, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %for.cond33, label %for.body35.cleanup_crit_edge

for.body35.cleanup_crit_edge:                     ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.inc62:                                        ; preds = %for.cond33.for.inc62_crit_edge, %for.end25.for.inc62_crit_edge
  %next63 = getelementptr inbounds %struct.genfs, ptr %genfs.1151, i32 0, i32 2
  %56 = ptrtoint ptr %next63 to i32
  call void @__asan_load4_noabort(i32 %56)
  %genfs.1 = load ptr, ptr %next63, align 4
  %tobool5.not = icmp eq ptr %genfs.1, null
  br i1 %tobool5.not, label %for.inc62.cleanup_crit_edge, label %for.inc62.for.body6_crit_edge

for.inc62.for.body6_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body6

for.inc62.cleanup_crit_edge:                      ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc62.cleanup_crit_edge, %for.body35.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ %call55, %for.body35.cleanup_crit_edge ], [ 0, %for.inc62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @range_write(ptr noundef %p, ptr noundef %fp) unnamed_addr #2 align 64 {
entry:
  %pd = alloca %struct.policy_data, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pd) #17
  %0 = getelementptr inbounds %struct.policy_data, ptr %pd, i32 0, i32 1
  %1 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %p, ptr %pd, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fp, ptr %0, align 4
  %nel = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 19, i32 2
  %3 = ptrtoint ptr %nel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nel, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fp, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %5, ptr %7, align 1
  %9 = load ptr, ptr %fp, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  store ptr %add.ptr.i, ptr %fp, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %10 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %11, -4
  store i32 %sub.i, ptr %len2.i, align 4
  %range_tr = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 19
  %call4 = call i32 @hashtab_map(ptr noundef %range_tr, ptr noundef nonnull @range_write_helper, ptr noundef nonnull %pd) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pd) #17
  ret i32 %call4
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @filenametr_hash(ptr nocapture noundef readonly %k) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %k, align 4
  %tclass = getelementptr inbounds %struct.filename_trans_key, ptr %k, i32 0, i32 1
  %2 = ptrtoint ptr %tclass to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tclass, align 4
  %conv = zext i16 %3 to i32
  %xor = xor i32 %1, %conv
  %name = getelementptr inbounds %struct.filename_trans_key, ptr %k, i32 0, i32 2
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not5 = icmp eq i8 %7, 0
  br i1 %tobool.not5, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %8 = phi i8 [ %10, %while.body.while.body_crit_edge ], [ %7, %entry.while.body_crit_edge ]
  %byte_num.07 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %hash.06 = phi i32 [ %mul.i, %while.body.while.body_crit_edge ], [ %xor, %entry.while.body_crit_edge ]
  %inc = add i32 %byte_num.07, 1
  %conv1 = zext i8 %8 to i32
  %shl.i = shl nuw nsw i32 %conv1, 4
  %add.i = add i32 %shl.i, %hash.06
  %shr.i = lshr i32 %conv1, 4
  %add1.i = add i32 %add.i, %shr.i
  %mul.i = mul i32 %add1.i, 11
  %arrayidx = getelementptr i8, ptr %5, i32 %inc
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %hash.0.lcssa = phi i32 [ %xor, %entry.while.end_crit_edge ], [ %mul.i, %while.body.while.end_crit_edge ]
  ret i32 %hash.0.lcssa
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filenametr_cmp(ptr nocapture noundef readonly %k1, ptr nocapture noundef readonly %k2) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %k1, align 4
  %2 = ptrtoint ptr %k2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %k2, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %tclass = getelementptr inbounds %struct.filename_trans_key, ptr %k1, i32 0, i32 1
  %4 = ptrtoint ptr %tclass to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tclass, align 4
  %conv = zext i16 %5 to i32
  %tclass2 = getelementptr inbounds %struct.filename_trans_key, ptr %k2, i32 0, i32 1
  %6 = ptrtoint ptr %tclass2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tclass2, align 4
  %conv3 = zext i16 %7 to i32
  %sub4 = sub nsw i32 %conv, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4)
  %tobool5.not = icmp eq i32 %sub4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %name = getelementptr inbounds %struct.filename_trans_key, ptr %k1, i32 0, i32 2
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %name8 = getelementptr inbounds %struct.filename_trans_key, ptr %k2, i32 0, i32 2
  %10 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name8, align 4
  %call = tail call i32 @strcmp(ptr noundef %9, ptr noundef %11) #23
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end7 ], [ %sub, %entry.cleanup_crit_edge ], [ %sub4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @role_trans_hash(ptr nocapture noundef readonly %k) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %k, align 4
  %type = getelementptr inbounds %struct.role_trans_key, ptr %k, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %shl = shl i32 %3, 3
  %add = add i32 %shl, %1
  %tclass = getelementptr inbounds %struct.role_trans_key, ptr %k, i32 0, i32 2
  %4 = ptrtoint ptr %tclass to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tclass, align 4
  %shl1 = shl i32 %5, 5
  %add2 = add i32 %add, %shl1
  ret i32 %add2
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @role_trans_cmp(ptr nocapture noundef readonly %k1, ptr nocapture noundef readonly %k2) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %k1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %k1, align 4
  %2 = ptrtoint ptr %k2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %k2, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.role_trans_key, ptr %k1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %type2 = getelementptr inbounds %struct.role_trans_key, ptr %k2, i32 0, i32 1
  %6 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type2, align 4
  %sub3 = sub i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3)
  %tobool4.not = icmp eq i32 %sub3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %tclass = getelementptr inbounds %struct.role_trans_key, ptr %k1, i32 0, i32 2
  %8 = ptrtoint ptr %tclass to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tclass, align 4
  %tclass7 = getelementptr inbounds %struct.role_trans_key, ptr %k2, i32 0, i32 2
  %10 = ptrtoint ptr %tclass7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tclass7, align 4
  %sub8 = sub i32 %9, %11
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub8, %if.end6 ], [ %sub, %entry.cleanup_crit_edge ], [ %sub3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @common_destroy(ptr noundef %key, ptr noundef %datum, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %key) #17
  %tobool.not = icmp eq ptr %datum, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %permissions = getelementptr inbounds %struct.common_datum, ptr %datum, i32 0, i32 1
  %call = tail call i32 @hashtab_map(ptr noundef %permissions, ptr noundef nonnull @perm_destroy, ptr noundef null) #17
  tail call void @hashtab_destroy(ptr noundef %permissions) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %datum) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cls_destroy(ptr noundef %key, ptr noundef %datum, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %key) #17
  %tobool.not = icmp eq ptr %datum, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  %permissions = getelementptr inbounds %struct.class_datum, ptr %datum, i32 0, i32 3
  %call = tail call i32 @hashtab_map(ptr noundef %permissions, ptr noundef nonnull @perm_destroy, ptr noundef null) #17
  tail call void @hashtab_destroy(ptr noundef %permissions) #17
  %constraints = getelementptr inbounds %struct.class_datum, ptr %datum, i32 0, i32 4
  %0 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %constraints, align 4
  %tobool3.not51 = icmp eq ptr %1, null
  br i1 %tobool3.not51, label %if.then.while.end8_crit_edge, label %if.then.while.body_crit_edge

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

if.then.while.end8_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end8

while.body:                                       ; preds = %while.end.while.body_crit_edge, %if.then.while.body_crit_edge
  %constraint.052 = phi ptr [ %13, %while.end.while.body_crit_edge ], [ %1, %if.then.while.body_crit_edge ]
  %expr = getelementptr inbounds %struct.constraint_node, ptr %constraint.052, i32 0, i32 1
  %2 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %expr, align 4
  %tobool5.not49 = icmp eq ptr %3, null
  br i1 %tobool5.not49, label %while.body.while.end_crit_edge, label %while.body.if.then.i_crit_edge

while.body.if.then.i_crit_edge:                   ; preds = %while.body
  br label %if.then.i

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.then.i:                                        ; preds = %constraint_expr_destroy.exit.if.then.i_crit_edge, %while.body.if.then.i_crit_edge
  %e.050 = phi ptr [ %5, %constraint_expr_destroy.exit.if.then.i_crit_edge ], [ %3, %while.body.if.then.i_crit_edge ]
  %next = getelementptr inbounds %struct.constraint_expr, ptr %e.050, i32 0, i32 5
  %4 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next, align 4
  %names.i = getelementptr inbounds %struct.constraint_expr, ptr %e.050, i32 0, i32 3
  tail call void @ebitmap_destroy(ptr noundef %names.i) #17
  %type_names.i = getelementptr inbounds %struct.constraint_expr, ptr %e.050, i32 0, i32 4
  %6 = ptrtoint ptr %type_names.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type_names.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.then.i.constraint_expr_destroy.exit_crit_edge, label %if.then2.i

if.then.i.constraint_expr_destroy.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %constraint_expr_destroy.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ebitmap_destroy(ptr noundef nonnull %7) #17
  %8 = ptrtoint ptr %type_names.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type_names.i, align 4
  %negset.i = getelementptr inbounds %struct.type_set, ptr %9, i32 0, i32 1
  tail call void @ebitmap_destroy(ptr noundef %negset.i) #17
  %10 = ptrtoint ptr %type_names.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type_names.i, align 4
  tail call void @kfree(ptr noundef %11) #17
  br label %constraint_expr_destroy.exit

constraint_expr_destroy.exit:                     ; preds = %if.then2.i, %if.then.i.constraint_expr_destroy.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %e.050) #17
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %constraint_expr_destroy.exit.while.end_crit_edge, label %constraint_expr_destroy.exit.if.then.i_crit_edge

constraint_expr_destroy.exit.if.then.i_crit_edge: ; preds = %constraint_expr_destroy.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

constraint_expr_destroy.exit.while.end_crit_edge: ; preds = %constraint_expr_destroy.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.end:                                        ; preds = %constraint_expr_destroy.exit.while.end_crit_edge, %while.body.while.end_crit_edge
  %next7 = getelementptr inbounds %struct.constraint_node, ptr %constraint.052, i32 0, i32 2
  %12 = ptrtoint ptr %next7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next7, align 4
  tail call void @kfree(ptr noundef nonnull %constraint.052) #17
  %tobool3.not = icmp eq ptr %13, null
  br i1 %tobool3.not, label %while.end.while.end8_crit_edge, label %while.end.while.body_crit_edge

while.end.while.body_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.end.while.end8_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end8

while.end8:                                       ; preds = %while.end.while.end8_crit_edge, %if.then.while.end8_crit_edge
  %validatetrans = getelementptr inbounds %struct.class_datum, ptr %datum, i32 0, i32 5
  %14 = ptrtoint ptr %validatetrans to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %validatetrans, align 4
  %tobool10.not55 = icmp eq ptr %15, null
  br i1 %tobool10.not55, label %while.end8.while.end19_crit_edge, label %while.end8.while.body11_crit_edge

while.end8.while.body11_crit_edge:                ; preds = %while.end8
  br label %while.body11

while.end8.while.end19_crit_edge:                 ; preds = %while.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end19

while.body11:                                     ; preds = %while.end17.while.body11_crit_edge, %while.end8.while.body11_crit_edge
  %constraint.156 = phi ptr [ %27, %while.end17.while.body11_crit_edge ], [ %15, %while.end8.while.body11_crit_edge ]
  %expr12 = getelementptr inbounds %struct.constraint_node, ptr %constraint.156, i32 0, i32 1
  %16 = ptrtoint ptr %expr12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %expr12, align 4
  %tobool14.not53 = icmp eq ptr %17, null
  br i1 %tobool14.not53, label %while.body11.while.end17_crit_edge, label %while.body11.if.then.i44_crit_edge

while.body11.if.then.i44_crit_edge:               ; preds = %while.body11
  br label %if.then.i44

while.body11.while.end17_crit_edge:               ; preds = %while.body11
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end17

if.then.i44:                                      ; preds = %constraint_expr_destroy.exit48.if.then.i44_crit_edge, %while.body11.if.then.i44_crit_edge
  %e.154 = phi ptr [ %19, %constraint_expr_destroy.exit48.if.then.i44_crit_edge ], [ %17, %while.body11.if.then.i44_crit_edge ]
  %next16 = getelementptr inbounds %struct.constraint_expr, ptr %e.154, i32 0, i32 5
  %18 = ptrtoint ptr %next16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %next16, align 4
  %names.i41 = getelementptr inbounds %struct.constraint_expr, ptr %e.154, i32 0, i32 3
  tail call void @ebitmap_destroy(ptr noundef %names.i41) #17
  %type_names.i42 = getelementptr inbounds %struct.constraint_expr, ptr %e.154, i32 0, i32 4
  %20 = ptrtoint ptr %type_names.i42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %type_names.i42, align 4
  %tobool1.not.i43 = icmp eq ptr %21, null
  br i1 %tobool1.not.i43, label %if.then.i44.constraint_expr_destroy.exit48_crit_edge, label %if.then2.i46

if.then.i44.constraint_expr_destroy.exit48_crit_edge: ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #19
  br label %constraint_expr_destroy.exit48

if.then2.i46:                                     ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ebitmap_destroy(ptr noundef nonnull %21) #17
  %22 = ptrtoint ptr %type_names.i42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %type_names.i42, align 4
  %negset.i45 = getelementptr inbounds %struct.type_set, ptr %23, i32 0, i32 1
  tail call void @ebitmap_destroy(ptr noundef %negset.i45) #17
  %24 = ptrtoint ptr %type_names.i42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %type_names.i42, align 4
  tail call void @kfree(ptr noundef %25) #17
  br label %constraint_expr_destroy.exit48

constraint_expr_destroy.exit48:                   ; preds = %if.then2.i46, %if.then.i44.constraint_expr_destroy.exit48_crit_edge
  tail call void @kfree(ptr noundef nonnull %e.154) #17
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %constraint_expr_destroy.exit48.while.end17_crit_edge, label %constraint_expr_destroy.exit48.if.then.i44_crit_edge

constraint_expr_destroy.exit48.if.then.i44_crit_edge: ; preds = %constraint_expr_destroy.exit48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i44

constraint_expr_destroy.exit48.while.end17_crit_edge: ; preds = %constraint_expr_destroy.exit48
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end17

while.end17:                                      ; preds = %constraint_expr_destroy.exit48.while.end17_crit_edge, %while.body11.while.end17_crit_edge
  %next18 = getelementptr inbounds %struct.constraint_node, ptr %constraint.156, i32 0, i32 2
  %26 = ptrtoint ptr %next18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %next18, align 4
  tail call void @kfree(ptr noundef nonnull %constraint.156) #17
  %tobool10.not = icmp eq ptr %27, null
  br i1 %tobool10.not, label %while.end17.while.end19_crit_edge, label %while.end17.while.body11_crit_edge

while.end17.while.body11_crit_edge:               ; preds = %while.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body11

while.end17.while.end19_crit_edge:                ; preds = %while.end17
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end19

while.end19:                                      ; preds = %while.end17.while.end19_crit_edge, %while.end8.while.end19_crit_edge
  %comkey = getelementptr inbounds %struct.class_datum, ptr %datum, i32 0, i32 1
  %28 = ptrtoint ptr %comkey to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %comkey, align 4
  tail call void @kfree(ptr noundef %29) #17
  br label %if.end

if.end:                                           ; preds = %while.end19, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %datum) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @role_destroy(ptr noundef %key, ptr noundef %datum, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %key) #17
  %tobool.not = icmp eq ptr %datum, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %dominates = getelementptr inbounds %struct.role_datum, ptr %datum, i32 0, i32 2
  tail call void @ebitmap_destroy(ptr noundef %dominates) #17
  %types = getelementptr inbounds %struct.role_datum, ptr %datum, i32 0, i32 3
  tail call void @ebitmap_destroy(ptr noundef %types) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %datum) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_destroy(ptr noundef %key, ptr noundef %datum, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %key) #17
  tail call void @kfree(ptr noundef %datum) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @user_destroy(ptr noundef %key, ptr noundef %datum, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %key) #17
  %tobool.not = icmp eq ptr %datum, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %roles = getelementptr inbounds %struct.user_datum, ptr %datum, i32 0, i32 2
  tail call void @ebitmap_destroy(ptr noundef %roles) #17
  %cat = getelementptr inbounds %struct.user_datum, ptr %datum, i32 0, i32 3, i32 0, i32 0, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat) #17
  %cat4 = getelementptr %struct.user_datum, ptr %datum, i32 0, i32 3, i32 0, i32 1, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat4) #17
  %cat5 = getelementptr inbounds %struct.user_datum, ptr %datum, i32 0, i32 4, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat5) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %datum) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cond_destroy_bool(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sens_destroy(ptr noundef %key, ptr noundef %datum, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %key) #17
  %tobool.not = icmp eq ptr %datum, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end5

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %datum, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %cat = getelementptr inbounds %struct.mls_level, ptr %1, i32 0, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat) #17
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %2 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %datum, align 4
  tail call void @kfree(ptr noundef %3) #17
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  tail call void @kfree(ptr noundef %datum) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cat_destroy(ptr noundef %key, ptr noundef %datum, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %key) #17
  tail call void @kfree(ptr noundef %datum) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @perm_destroy(ptr noundef %key, ptr noundef %datum, ptr nocapture noundef readnone %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %key) #17
  tail call void @kfree(ptr noundef %datum) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @avtab_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cond_policydb_init(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @symtab_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @common_read(ptr nocapture noundef readnone %p, ptr noundef %s, ptr nocapture noundef %fp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2)
  %cmp.i = icmp ult i32 %2, 16
  br i1 %cmp.i, label %if.end.common_destroy.exit_crit_edge, label %if.end4

if.end.common_destroy.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %common_destroy.exit

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fp, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %4, align 1
  %buf.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 4
  %6 = ptrtoint ptr %buf.sroa.5.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %buf.sroa.5.0.copyload = load i32, ptr %buf.sroa.5.0..sroa_idx, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 8
  %7 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %buf.sroa.7.0.copyload = load i32, ptr %buf.sroa.7.0..sroa_idx, align 1
  %buf.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 12
  %8 = ptrtoint ptr %buf.sroa.9.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %buf.sroa.9.0.copyload = load i32, ptr %buf.sroa.9.0..sroa_idx, align 1
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %2, -16
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i, ptr %len.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.5.0.copyload)
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call7.i.i, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.9.0.copyload)
  %permissions = getelementptr inbounds %struct.common_datum, ptr %call7.i.i, i32 0, i32 1
  %call7 = tail call i32 @symtab_init(ptr noundef %permissions, i32 noundef %12) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end4.common_destroy.exit_crit_edge

if.end4.common_destroy.exit_crit_edge:            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %common_destroy.exit

if.end10:                                         ; preds = %if.end4
  %13 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  %14 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.7.0.copyload)
  %nprim = getelementptr inbounds %struct.common_datum, ptr %call7.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %nprim to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %nprim, align 8
  %16 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %13, label %if.end8.i.i [
    i32 0, label %if.end10.common_destroy.exit_crit_edge
    i32 -1, label %if.end10.common_destroy.exit_crit_edge74
  ]

if.end10.common_destroy.exit_crit_edge74:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %common_destroy.exit

if.end10.common_destroy.exit_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %common_destroy.exit

if.end8.i.i:                                      ; preds = %if.end10
  %add.i = add nuw i32 %13, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 11456) #24
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.common_destroy.exit_crit_edge, label %if.end3.i

if.end8.i.i.common_destroy.exit_crit_edge:        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %common_destroy.exit

if.end3.i:                                        ; preds = %if.end8.i.i
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %13)
  %cmp.i18.i = icmp ult i32 %18, %13
  br i1 %cmp.i18.i, label %if.then6.i, label %str_read.exit

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #17
  br label %common_destroy.exit

str_read.exit:                                    ; preds = %if.end3.i
  %19 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fp, align 4
  %21 = call ptr @memcpy(ptr %call9.i.i, ptr %20, i32 %13)
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %13
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %sub.i.i = sub i32 %18, %13
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.i.i, ptr %len.i, align 4
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %13
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.9.0.copyload)
  %cmp67.not = icmp eq i32 %buf.sroa.9.0.copyload, 0
  br i1 %cmp67.not, label %str_read.exit.for.end_crit_edge, label %for.body.preheader

str_read.exit.for.end_crit_edge:                  ; preds = %str_read.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.preheader:                               ; preds = %str_read.exit
  %umax = call i32 @llvm.umax.i32(i32 %12, i32 1)
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.068 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call18 = tail call fastcc i32 @perm_read(ptr noundef %permissions, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond, label %for.body.common_destroy.exit_crit_edge

for.body.common_destroy.exit_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %common_destroy.exit

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %str_read.exit.for.end_crit_edge
  %call22 = tail call i32 @symtab_insert(ptr noundef %s, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.end.cleanup_crit_edge, label %for.end.common_destroy.exit_crit_edge

for.end.common_destroy.exit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %common_destroy.exit

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

common_destroy.exit:                              ; preds = %for.end.common_destroy.exit_crit_edge, %for.body.common_destroy.exit_crit_edge, %if.then6.i, %if.end8.i.i.common_destroy.exit_crit_edge, %if.end10.common_destroy.exit_crit_edge, %if.end10.common_destroy.exit_crit_edge74, %if.end4.common_destroy.exit_crit_edge, %if.end.common_destroy.exit_crit_edge
  %key.1 = phi ptr [ %call9.i.i, %for.end.common_destroy.exit_crit_edge ], [ null, %if.end4.common_destroy.exit_crit_edge ], [ null, %if.end.common_destroy.exit_crit_edge ], [ null, %if.then6.i ], [ null, %if.end10.common_destroy.exit_crit_edge ], [ null, %if.end10.common_destroy.exit_crit_edge74 ], [ null, %if.end8.i.i.common_destroy.exit_crit_edge ], [ %call9.i.i, %for.body.common_destroy.exit_crit_edge ]
  %rc.0 = phi i32 [ %call22, %for.end.common_destroy.exit_crit_edge ], [ %call7, %if.end4.common_destroy.exit_crit_edge ], [ -22, %if.end.common_destroy.exit_crit_edge ], [ -22, %if.then6.i ], [ -22, %if.end10.common_destroy.exit_crit_edge ], [ -22, %if.end10.common_destroy.exit_crit_edge74 ], [ -12, %if.end8.i.i.common_destroy.exit_crit_edge ], [ %call18, %for.body.common_destroy.exit_crit_edge ]
  tail call void @kfree(ptr noundef %key.1) #17
  %permissions.i = getelementptr inbounds %struct.common_datum, ptr %call7.i.i, i32 0, i32 1
  %call.i = tail call i32 @hashtab_map(ptr noundef %permissions.i, ptr noundef nonnull @perm_destroy, ptr noundef null) #17
  tail call void @hashtab_destroy(ptr noundef %permissions.i) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %common_destroy.exit, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %common_destroy.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @class_read(ptr noundef %p, ptr noundef %s, ptr noundef %fp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 40) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %2)
  %cmp.i = icmp ult i32 %2, 24
  br i1 %cmp.i, label %if.end.bad_crit_edge, label %if.end4

if.end.bad_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fp, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %4, align 1
  %buf.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 4
  %6 = ptrtoint ptr %buf.sroa.11.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %buf.sroa.11.0.copyload = load i32, ptr %buf.sroa.11.0..sroa_idx, align 1
  %buf.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 8
  %7 = ptrtoint ptr %buf.sroa.14.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %buf.sroa.14.0.copyload = load i32, ptr %buf.sroa.14.0..sroa_idx, align 1
  %buf.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 12
  %8 = ptrtoint ptr %buf.sroa.17.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %buf.sroa.17.0.copyload = load i32, ptr %buf.sroa.17.0..sroa_idx, align 1
  %buf.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 16
  %9 = ptrtoint ptr %buf.sroa.19.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %buf.sroa.19.0.copyload = load i32, ptr %buf.sroa.19.0..sroa_idx, align 1
  %buf.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 20
  %10 = ptrtoint ptr %buf.sroa.21.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %buf.sroa.21.0.copyload = load i32, ptr %buf.sroa.21.0..sroa_idx, align 1
  %add.ptr.i = getelementptr i8, ptr %4, i32 24
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %2, -24
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.i, ptr %len.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.11.0.copyload)
  %13 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.14.0.copyload)
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %call7.i.i, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.19.0.copyload)
  %permissions = getelementptr inbounds %struct.class_datum, ptr %call7.i.i, i32 0, i32 3
  %call8 = tail call i32 @symtab_init(ptr noundef %permissions, i32 noundef %15) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end4.bad_crit_edge

if.end4.bad_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end11:                                         ; preds = %if.end4
  %16 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  %17 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.17.0.copyload)
  %nprim = getelementptr inbounds %struct.class_datum, ptr %call7.i.i, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %nprim to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %nprim, align 8
  %19 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.21.0.copyload)
  %20 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %16, label %if.end8.i.i [
    i32 0, label %if.end11.bad_crit_edge
    i32 -1, label %if.end11.bad_crit_edge265
  ]

if.end11.bad_crit_edge265:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end11.bad_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end8.i.i:                                      ; preds = %if.end11
  %add.i = add nuw i32 %16, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 11456) #24
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.bad_crit_edge, label %if.end3.i

if.end8.i.i.bad_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end3.i:                                        ; preds = %if.end8.i.i
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %16)
  %cmp.i18.i = icmp ult i32 %22, %16
  br i1 %cmp.i18.i, label %if.then6.i, label %if.end18

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #17
  br label %bad

if.end18:                                         ; preds = %if.end3.i
  %23 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fp, align 4
  %25 = call ptr @memcpy(ptr %call9.i.i, ptr %24, i32 %16)
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %16
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %sub.i.i = sub i32 %22, %16
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.i.i, ptr %len.i, align 4
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %16
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.11.0.copyload)
  %tobool19.not = icmp eq i32 %buf.sroa.11.0.copyload, 0
  br i1 %tobool19.not, label %if.end18.if.end34_crit_edge, label %if.then20

if.end18.if.end34_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.then20:                                        ; preds = %if.end18
  %comkey = getelementptr inbounds %struct.class_datum, ptr %call7.i.i, i32 0, i32 1
  %28 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %12, label %if.end8.i.i170 [
    i32 0, label %if.then20.bad_crit_edge
    i32 -1, label %if.then20.bad_crit_edge266
  ]

if.then20.bad_crit_edge266:                       ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.then20.bad_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end8.i.i170:                                   ; preds = %if.then20
  %add.i145 = add nuw i32 %12, 1
  %call9.i.i169 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i145, i32 noundef 11456) #24
  %tobool.not.i172 = icmp eq ptr %call9.i.i169, null
  br i1 %tobool.not.i172, label %if.end8.i.i170.bad_crit_edge, label %if.end3.i176

if.end8.i.i170.bad_crit_edge:                     ; preds = %if.end8.i.i170
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end3.i176:                                     ; preds = %if.end8.i.i170
  %29 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %12)
  %cmp.i18.i175 = icmp ult i32 %30, %12
  br i1 %cmp.i18.i175, label %if.then6.i177, label %if.end24

if.then6.i177:                                    ; preds = %if.end3.i176
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call9.i.i169) #17
  br label %bad

if.end24:                                         ; preds = %if.end3.i176
  %31 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fp, align 4
  %33 = call ptr @memcpy(ptr %call9.i.i169, ptr %32, i32 %12)
  %add.ptr.i.i178 = getelementptr i8, ptr %32, i32 %12
  store ptr %add.ptr.i.i178, ptr %fp, align 4
  %sub.i.i179 = sub i32 %30, %12
  %34 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.i.i179, ptr %len.i, align 4
  %arrayidx.i180 = getelementptr i8, ptr %call9.i.i169, i32 %12
  %35 = ptrtoint ptr %arrayidx.i180 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %arrayidx.i180, align 1
  %36 = ptrtoint ptr %comkey to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call9.i.i169, ptr %comkey, align 4
  %symtab = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 1
  %call27 = tail call ptr @symtab_search(ptr noundef %symtab, ptr noundef nonnull %call9.i.i169) #17
  %comdatum = getelementptr inbounds %struct.class_datum, ptr %call7.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %comdatum to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call27, ptr %comdatum, align 8
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %do.end, label %if.end24.if.end34_crit_edge

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

do.end:                                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %comkey to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %comkey, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %39) #21
  br label %bad

if.end34:                                         ; preds = %if.end24.if.end34_crit_edge, %if.end18.if.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.19.0.copyload)
  %cmp258.not = icmp eq i32 %buf.sroa.19.0.copyload, 0
  br i1 %cmp258.not, label %if.end34.for.end_crit_edge, label %for.body.preheader

if.end34.for.end_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.preheader:                               ; preds = %if.end34
  %umax = call i32 @llvm.umax.i32(i32 %15, i32 1)
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0259, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0259 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call36 = tail call fastcc i32 @perm_read(ptr noundef %permissions, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %for.cond, label %for.body.bad_crit_edge

for.body.bad_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end34.for.end_crit_edge
  %constraints = getelementptr inbounds %struct.class_datum, ptr %call7.i.i, i32 0, i32 4
  %call40 = tail call fastcc i32 @read_cons_helper(ptr noundef %p, ptr noundef %constraints, i32 noundef %19, i32 noundef 0, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %for.end.bad_crit_edge

for.end.bad_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end43:                                         ; preds = %for.end
  %policyvers = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 24
  %40 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %41)
  %cmp44 = icmp ugt i32 %41, 18
  br i1 %cmp44, label %if.then45, label %if.end43.if.end82_crit_edge

if.end43.if.end82_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82

if.then45:                                        ; preds = %if.end43
  %42 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %43)
  %cmp.i185 = icmp ult i32 %43, 4
  br i1 %cmp.i185, label %if.then45.bad_crit_edge, label %if.end50

if.then45.bad_crit_edge:                          ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end50:                                         ; preds = %if.then45
  %44 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fp, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %buf.sroa.0.0.copyload209 = load i32, ptr %45, align 1
  %add.ptr.i186 = getelementptr i8, ptr %45, i32 4
  store ptr %add.ptr.i186, ptr %fp, align 4
  %sub.i187 = add i32 %43, -4
  %47 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.i187, ptr %len.i, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload209)
  %validatetrans = getelementptr inbounds %struct.class_datum, ptr %call7.i.i, i32 0, i32 5
  %call52 = tail call fastcc i32 @read_cons_helper(ptr noundef %p, ptr noundef %validatetrans, i32 noundef %48, i32 noundef 1, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end56, label %if.end50.bad_crit_edge

if.end50.bad_crit_edge:                           ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end56:                                         ; preds = %if.end50
  %49 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %.pr)
  %cmp58 = icmp ugt i32 %.pr, 26
  br i1 %cmp58, label %if.then59, label %if.end56.if.end82_crit_edge

if.end56.if.end82_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82

if.then59:                                        ; preds = %if.end56
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %51)
  %cmp.i192 = icmp ult i32 %51, 12
  br i1 %cmp.i192, label %if.then59.bad_crit_edge, label %if.end70

if.then59.bad_crit_edge:                          ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end70:                                         ; preds = %if.then59
  %52 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fp, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %buf.sroa.0.0.copyload208 = load i32, ptr %53, align 1
  %buf.sroa.11.0..sroa_idx211 = getelementptr inbounds i8, ptr %53, i32 4
  %55 = ptrtoint ptr %buf.sroa.11.0..sroa_idx211 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 4)
  %buf.sroa.11.0.copyload212 = load i32, ptr %buf.sroa.11.0..sroa_idx211, align 1
  %buf.sroa.14.0..sroa_idx214 = getelementptr inbounds i8, ptr %53, i32 8
  %56 = ptrtoint ptr %buf.sroa.14.0..sroa_idx214 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 4)
  %buf.sroa.14.0.copyload215 = load i32, ptr %buf.sroa.14.0..sroa_idx214, align 1
  %add.ptr.i193 = getelementptr i8, ptr %53, i32 12
  store ptr %add.ptr.i193, ptr %fp, align 4
  %sub.i194 = add i32 %51, -12
  %57 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub.i194, ptr %len.i, align 4
  %58 = lshr i32 %buf.sroa.0.0.copyload208, 24
  %conv = trunc i32 %58 to i8
  %default_user = getelementptr inbounds %struct.class_datum, ptr %call7.i.i, i32 0, i32 6
  %59 = ptrtoint ptr %default_user to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv, ptr %default_user, align 4
  %60 = lshr i32 %buf.sroa.11.0.copyload212, 24
  %conv67 = trunc i32 %60 to i8
  %default_role = getelementptr inbounds %struct.class_datum, ptr %call7.i.i, i32 0, i32 7
  %61 = ptrtoint ptr %default_role to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv67, ptr %default_role, align 1
  %62 = lshr i32 %buf.sroa.14.0.copyload215, 24
  %conv69 = trunc i32 %62 to i8
  %default_range = getelementptr inbounds %struct.class_datum, ptr %call7.i.i, i32 0, i32 9
  %63 = ptrtoint ptr %default_range to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv69, ptr %default_range, align 1
  %64 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pr251 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %.pr251)
  %cmp72 = icmp ugt i32 %.pr251, 27
  br i1 %cmp72, label %if.then74, label %if.end70.if.end82_crit_edge

if.end70.if.end82_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end82

if.then74:                                        ; preds = %if.end70
  %65 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %66)
  %cmp.i199 = icmp ult i32 %66, 4
  br i1 %cmp.i199, label %if.then74.bad_crit_edge, label %if.end79

if.then74.bad_crit_edge:                          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end79:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #19
  %67 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fp, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %buf.sroa.0.0.copyload210 = load i32, ptr %68, align 1
  %add.ptr.i200 = getelementptr i8, ptr %68, i32 4
  store ptr %add.ptr.i200, ptr %fp, align 4
  %sub.i201 = add i32 %66, -4
  %70 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %sub.i201, ptr %len.i, align 4
  %71 = lshr i32 %buf.sroa.0.0.copyload210, 24
  %conv81 = trunc i32 %71 to i8
  %default_type = getelementptr inbounds %struct.class_datum, ptr %call7.i.i, i32 0, i32 8
  %72 = ptrtoint ptr %default_type to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv81, ptr %default_type, align 2
  br label %if.end82

if.end82:                                         ; preds = %if.end79, %if.end70.if.end82_crit_edge, %if.end56.if.end82_crit_edge, %if.end43.if.end82_crit_edge
  %call83 = tail call i32 @symtab_insert(ptr noundef %s, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end82.cleanup_crit_edge, label %if.end82.bad_crit_edge

if.end82.bad_crit_edge:                           ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

bad:                                              ; preds = %if.end82.bad_crit_edge, %if.then74.bad_crit_edge, %if.then59.bad_crit_edge, %if.end50.bad_crit_edge, %if.then45.bad_crit_edge, %for.end.bad_crit_edge, %for.body.bad_crit_edge, %do.end, %if.then6.i177, %if.end8.i.i170.bad_crit_edge, %if.then20.bad_crit_edge, %if.then20.bad_crit_edge266, %if.then6.i, %if.end8.i.i.bad_crit_edge, %if.end11.bad_crit_edge, %if.end11.bad_crit_edge265, %if.end4.bad_crit_edge, %if.end.bad_crit_edge
  %key.1 = phi ptr [ %call9.i.i, %if.end82.bad_crit_edge ], [ %call9.i.i, %if.end50.bad_crit_edge ], [ %call9.i.i, %for.end.bad_crit_edge ], [ %call9.i.i, %do.end ], [ null, %if.end4.bad_crit_edge ], [ null, %if.end.bad_crit_edge ], [ %call9.i.i, %if.then45.bad_crit_edge ], [ %call9.i.i, %if.then59.bad_crit_edge ], [ %call9.i.i, %if.then74.bad_crit_edge ], [ null, %if.then6.i ], [ null, %if.end11.bad_crit_edge ], [ null, %if.end11.bad_crit_edge265 ], [ null, %if.end8.i.i.bad_crit_edge ], [ %call9.i.i, %if.then6.i177 ], [ %call9.i.i, %if.then20.bad_crit_edge ], [ %call9.i.i, %if.then20.bad_crit_edge266 ], [ %call9.i.i, %if.end8.i.i170.bad_crit_edge ], [ %call9.i.i, %for.body.bad_crit_edge ]
  %rc.0 = phi i32 [ %call83, %if.end82.bad_crit_edge ], [ %call52, %if.end50.bad_crit_edge ], [ %call40, %for.end.bad_crit_edge ], [ -22, %do.end ], [ %call8, %if.end4.bad_crit_edge ], [ -22, %if.end.bad_crit_edge ], [ -22, %if.then45.bad_crit_edge ], [ -22, %if.then59.bad_crit_edge ], [ -22, %if.then74.bad_crit_edge ], [ -22, %if.then6.i ], [ -22, %if.end11.bad_crit_edge ], [ -22, %if.end11.bad_crit_edge265 ], [ -12, %if.end8.i.i.bad_crit_edge ], [ -22, %if.then6.i177 ], [ -22, %if.then20.bad_crit_edge ], [ -22, %if.then20.bad_crit_edge266 ], [ -12, %if.end8.i.i170.bad_crit_edge ], [ %call36, %for.body.bad_crit_edge ]
  %call87 = tail call i32 @cls_destroy(ptr noundef %key.1, ptr noundef nonnull %call7.i.i, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end82.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %bad ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end82.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @role_read(ptr nocapture noundef readonly %p, ptr noundef %s, ptr noundef %fp) #2 align 64 {
entry:
  %buf = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf)
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf, align 4
  %buf.4.buf.4..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 4
  %1 = ptrtoint ptr %buf.4.buf.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %buf.4.buf.4..sroa_idx, align 4
  %buf.8.buf.8..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 8
  %2 = ptrtoint ptr %buf.8.buf.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf.8.buf.8..sroa_idx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %policyvers = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 24
  %4 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %5)
  %cmp = icmp ugt i32 %5, 23
  %spec.select = select i1 %cmp, i32 12, i32 8
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %spec.select)
  %cmp.i = icmp ult i32 %7, %spec.select
  br i1 %cmp.i, label %if.end.role_destroy.exit_crit_edge, label %if.end6

if.end.role_destroy.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %role_destroy.exit

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fp, align 4
  %10 = call ptr @memcpy(ptr %buf, ptr %9, i32 %spec.select)
  %add.ptr.i = getelementptr i8, ptr %9, i32 %spec.select
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = sub i32 %7, %spec.select
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.i, ptr %len.i, align 4
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %buf.0.buf.0. = load i32, ptr %buf, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %buf.0.buf.0.)
  %14 = ptrtoint ptr %buf.4.buf.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %buf.4.buf.4. = load i32, ptr %buf.4.buf.4..sroa_idx, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %buf.4.buf.4.)
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %call7.i.i, align 8
  %17 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %18)
  %cmp9 = icmp ugt i32 %18, 23
  br i1 %cmp9, label %if.then10, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %buf.8.buf.8..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %buf.8.buf.8. = load i32, ptr %buf.8.buf.8..sroa_idx, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %buf.8.buf.8.)
  %bounds = getelementptr inbounds %struct.role_datum, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %bounds to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bounds, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end6.if.end12_crit_edge
  %22 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %13, label %if.end8.i.i [
    i32 0, label %if.end12.role_destroy.exit_crit_edge
    i32 -1, label %if.end12.role_destroy.exit_crit_edge77
  ]

if.end12.role_destroy.exit_crit_edge77:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %role_destroy.exit

if.end12.role_destroy.exit_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %role_destroy.exit

if.end8.i.i:                                      ; preds = %if.end12
  %add.i = add nuw i32 %13, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 11456) #24
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.role_destroy.exit_crit_edge, label %if.end3.i

if.end8.i.i.role_destroy.exit_crit_edge:          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %role_destroy.exit

if.end3.i:                                        ; preds = %if.end8.i.i
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %13)
  %cmp.i18.i = icmp ult i32 %24, %13
  br i1 %cmp.i18.i, label %if.then6.i, label %if.end16

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #17
  br label %role_destroy.exit

if.end16:                                         ; preds = %if.end3.i
  %25 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fp, align 4
  %27 = call ptr @memcpy(ptr %call9.i.i, ptr %26, i32 %13)
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %13
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %sub.i.i = sub i32 %24, %13
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.i.i, ptr %len.i, align 4
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %13
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx.i, align 1
  %dominates = getelementptr inbounds %struct.role_datum, ptr %call7.i.i, i32 0, i32 2
  %call17 = tail call i32 @ebitmap_read(ptr noundef %dominates, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.role_destroy.exit_crit_edge

if.end16.role_destroy.exit_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %role_destroy.exit

if.end20:                                         ; preds = %if.end16
  %types = getelementptr inbounds %struct.role_datum, ptr %call7.i.i, i32 0, i32 3
  %call21 = tail call i32 @ebitmap_read(ptr noundef %types, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.role_destroy.exit_crit_edge

if.end20.role_destroy.exit_crit_edge:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %role_destroy.exit

if.end24:                                         ; preds = %if.end20
  %call25 = tail call i32 @strcmp(ptr noundef nonnull %call9.i.i, ptr noundef nonnull dereferenceable(9) @.str.53) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then27, label %if.end34

if.then27:                                        ; preds = %if.end24
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp29.not = icmp eq i32 %31, 1
  br i1 %cmp29.not, label %if.then27.role_destroy.exit_crit_edge, label %do.end

if.then27.role_destroy.exit_crit_edge:            ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #19
  br label %role_destroy.exit

do.end:                                           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #19
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.53, i32 noundef %31) #21
  br label %role_destroy.exit

if.end34:                                         ; preds = %if.end24
  %call35 = tail call i32 @symtab_insert(ptr noundef %s, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end34.cleanup_crit_edge, label %if.end34.role_destroy.exit_crit_edge

if.end34.role_destroy.exit_crit_edge:             ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %role_destroy.exit

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

role_destroy.exit:                                ; preds = %if.end34.role_destroy.exit_crit_edge, %do.end, %if.then27.role_destroy.exit_crit_edge, %if.end20.role_destroy.exit_crit_edge, %if.end16.role_destroy.exit_crit_edge, %if.then6.i, %if.end8.i.i.role_destroy.exit_crit_edge, %if.end12.role_destroy.exit_crit_edge, %if.end12.role_destroy.exit_crit_edge77, %if.end.role_destroy.exit_crit_edge
  %key.1 = phi ptr [ %call9.i.i, %if.then27.role_destroy.exit_crit_edge ], [ %call9.i.i, %do.end ], [ %call9.i.i, %if.end34.role_destroy.exit_crit_edge ], [ %call9.i.i, %if.end20.role_destroy.exit_crit_edge ], [ %call9.i.i, %if.end16.role_destroy.exit_crit_edge ], [ null, %if.end.role_destroy.exit_crit_edge ], [ null, %if.then6.i ], [ null, %if.end12.role_destroy.exit_crit_edge ], [ null, %if.end12.role_destroy.exit_crit_edge77 ], [ null, %if.end8.i.i.role_destroy.exit_crit_edge ]
  %rc.0 = phi i32 [ 0, %if.then27.role_destroy.exit_crit_edge ], [ -22, %do.end ], [ %call35, %if.end34.role_destroy.exit_crit_edge ], [ %call21, %if.end20.role_destroy.exit_crit_edge ], [ %call17, %if.end16.role_destroy.exit_crit_edge ], [ -22, %if.end.role_destroy.exit_crit_edge ], [ -22, %if.then6.i ], [ -22, %if.end12.role_destroy.exit_crit_edge ], [ -22, %if.end12.role_destroy.exit_crit_edge77 ], [ -12, %if.end8.i.i.role_destroy.exit_crit_edge ]
  tail call void @kfree(ptr noundef %key.1) #17
  %dominates.i = getelementptr inbounds %struct.role_datum, ptr %call7.i.i, i32 0, i32 2
  tail call void @ebitmap_destroy(ptr noundef %dominates.i) #17
  %types.i = getelementptr inbounds %struct.role_datum, ptr %call7.i.i, i32 0, i32 3
  tail call void @ebitmap_destroy(ptr noundef %types.i) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %role_destroy.exit, %if.end34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %role_destroy.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_read(ptr nocapture noundef readonly %p, ptr noundef %s, ptr nocapture noundef %fp) #2 align 64 {
entry:
  %buf = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf)
  %buf.4.buf.4..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 4
  %buf.8.buf.8..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 8
  %buf.12.buf.12..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 12
  %0 = call ptr @memset(ptr %buf, i32 255, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 12) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %policyvers = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 24
  %2 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %3)
  %cmp = icmp ugt i32 %3, 23
  %spec.select = select i1 %cmp, i32 16, i32 12
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %spec.select)
  %cmp.i = icmp ult i32 %5, %spec.select
  br i1 %cmp.i, label %if.end.bad_crit_edge, label %if.end6

if.end.bad_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fp, align 4
  %8 = call ptr @memcpy(ptr %buf, ptr %7, i32 %spec.select)
  %add.ptr.i = getelementptr i8, ptr %7, i32 %spec.select
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = sub i32 %5, %spec.select
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i, ptr %len.i, align 4
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %buf.0.buf.0. = load i32, ptr %buf, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %buf.0.buf.0.)
  %12 = ptrtoint ptr %buf.4.buf.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %buf.4.buf.4. = load i32, ptr %buf.4.buf.4..sroa_idx, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %buf.4.buf.4.)
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %call7.i.i, align 8
  %15 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %16)
  %cmp9 = icmp ugt i32 %16, 23
  %17 = ptrtoint ptr %buf.8.buf.8..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %buf.8.buf.8. = load i32, ptr %buf.8.buf.8..sroa_idx, align 4
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  %18 = tail call i32 @llvm.bswap.i32(i32 %buf.8.buf.8.)
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.then10.if.end14_crit_edge, label %if.then13

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  %primary = getelementptr inbounds %struct.type_datum, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %primary to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %primary, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.then10.if.end14_crit_edge
  %and15 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  %attribute = getelementptr inbounds %struct.type_datum, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %attribute to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %attribute, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end14.if.end18_crit_edge
  %21 = ptrtoint ptr %buf.12.buf.12..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %buf.12.buf.12. = load i32, ptr %buf.12.buf.12..sroa_idx, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %buf.12.buf.12.)
  %bounds = getelementptr inbounds %struct.type_datum, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %bounds to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %bounds, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %24 = lshr i32 %buf.8.buf.8., 24
  %conv = trunc i32 %24 to i8
  %primary21 = getelementptr inbounds %struct.type_datum, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %primary21 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv, ptr %primary21, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end18
  %26 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %11, label %if.end8.i.i [
    i32 0, label %if.end22.bad_crit_edge
    i32 -1, label %if.end22.bad_crit_edge68
  ]

if.end22.bad_crit_edge68:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end22.bad_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end8.i.i:                                      ; preds = %if.end22
  %add.i = add nuw i32 %11, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 11456) #24
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.bad_crit_edge, label %if.end3.i

if.end8.i.i.bad_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end3.i:                                        ; preds = %if.end8.i.i
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %11)
  %cmp.i18.i = icmp ult i32 %28, %11
  br i1 %cmp.i18.i, label %if.then6.i, label %if.end26

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #17
  br label %bad

if.end26:                                         ; preds = %if.end3.i
  %29 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fp, align 4
  %31 = call ptr @memcpy(ptr %call9.i.i, ptr %30, i32 %11)
  %add.ptr.i.i = getelementptr i8, ptr %30, i32 %11
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %sub.i.i = sub i32 %28, %11
  %32 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub.i.i, ptr %len.i, align 4
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %11
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx.i, align 1
  %call27 = tail call i32 @symtab_insert(ptr noundef %s, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %if.end26.bad_crit_edge

if.end26.bad_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

bad:                                              ; preds = %if.end26.bad_crit_edge, %if.then6.i, %if.end8.i.i.bad_crit_edge, %if.end22.bad_crit_edge, %if.end22.bad_crit_edge68, %if.end.bad_crit_edge
  %key.1 = phi ptr [ %call9.i.i, %if.end26.bad_crit_edge ], [ null, %if.end.bad_crit_edge ], [ null, %if.then6.i ], [ null, %if.end22.bad_crit_edge ], [ null, %if.end22.bad_crit_edge68 ], [ null, %if.end8.i.i.bad_crit_edge ]
  %rc.0 = phi i32 [ %call27, %if.end26.bad_crit_edge ], [ -22, %if.end.bad_crit_edge ], [ -22, %if.then6.i ], [ -22, %if.end22.bad_crit_edge ], [ -22, %if.end22.bad_crit_edge68 ], [ -12, %if.end8.i.i.bad_crit_edge ]
  tail call void @kfree(ptr noundef %key.1) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end26.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %bad ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @user_read(ptr nocapture noundef readonly %p, ptr noundef %s, ptr noundef %fp) #2 align 64 {
entry:
  %buf = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf)
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf, align 4
  %buf.4.buf.4..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 4
  %1 = ptrtoint ptr %buf.4.buf.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %buf.4.buf.4..sroa_idx, align 4
  %buf.8.buf.8..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 8
  %2 = ptrtoint ptr %buf.8.buf.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %buf.8.buf.8..sroa_idx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 52) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %policyvers = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 24
  %4 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %5)
  %cmp = icmp ugt i32 %5, 23
  %spec.select = select i1 %cmp, i32 12, i32 8
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %spec.select)
  %cmp.i = icmp ult i32 %7, %spec.select
  br i1 %cmp.i, label %if.end.user_destroy.exit_crit_edge, label %if.end6

if.end.user_destroy.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %user_destroy.exit

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fp, align 4
  %10 = call ptr @memcpy(ptr %buf, ptr %9, i32 %spec.select)
  %add.ptr.i = getelementptr i8, ptr %9, i32 %spec.select
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = sub i32 %7, %spec.select
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.i, ptr %len.i, align 4
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %buf.0.buf.0. = load i32, ptr %buf, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %buf.0.buf.0.)
  %14 = ptrtoint ptr %buf.4.buf.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %buf.4.buf.4. = load i32, ptr %buf.4.buf.4..sroa_idx, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %buf.4.buf.4.)
  %16 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %call7.i.i, align 8
  %17 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %18)
  %cmp9 = icmp ugt i32 %18, 23
  br i1 %cmp9, label %if.then10, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %19 = ptrtoint ptr %buf.8.buf.8..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %buf.8.buf.8. = load i32, ptr %buf.8.buf.8..sroa_idx, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %buf.8.buf.8.)
  %bounds = getelementptr inbounds %struct.user_datum, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %bounds to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bounds, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end6.if.end12_crit_edge
  %22 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %13, label %if.end8.i.i [
    i32 0, label %if.end12.user_destroy.exit_crit_edge
    i32 -1, label %if.end12.user_destroy.exit_crit_edge77
  ]

if.end12.user_destroy.exit_crit_edge77:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %user_destroy.exit

if.end12.user_destroy.exit_crit_edge:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  br label %user_destroy.exit

if.end8.i.i:                                      ; preds = %if.end12
  %add.i = add nuw i32 %13, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 11456) #24
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.user_destroy.exit_crit_edge, label %if.end3.i

if.end8.i.i.user_destroy.exit_crit_edge:          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %user_destroy.exit

if.end3.i:                                        ; preds = %if.end8.i.i
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %13)
  %cmp.i18.i = icmp ult i32 %24, %13
  br i1 %cmp.i18.i, label %if.then6.i, label %if.end16

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #17
  br label %user_destroy.exit

if.end16:                                         ; preds = %if.end3.i
  %25 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fp, align 4
  %27 = call ptr @memcpy(ptr %call9.i.i, ptr %26, i32 %13)
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %13
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %sub.i.i = sub i32 %24, %13
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.i.i, ptr %len.i, align 4
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %13
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %arrayidx.i, align 1
  %roles = getelementptr inbounds %struct.user_datum, ptr %call7.i.i, i32 0, i32 2
  %call17 = tail call i32 @ebitmap_read(ptr noundef %roles, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.user_destroy.exit_crit_edge

if.end16.user_destroy.exit_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %user_destroy.exit

if.end20:                                         ; preds = %if.end16
  %30 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %31)
  %cmp22 = icmp ugt i32 %31, 18
  br i1 %cmp22, label %if.then23, label %if.end20.if.end32_crit_edge

if.end20.if.end32_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then23:                                        ; preds = %if.end20
  %range = getelementptr inbounds %struct.user_datum, ptr %call7.i.i, i32 0, i32 3
  %call24 = tail call fastcc i32 @mls_read_range_helper(ptr noundef %range, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.then23.user_destroy.exit_crit_edge

if.then23.user_destroy.exit_crit_edge:            ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  br label %user_destroy.exit

if.end27:                                         ; preds = %if.then23
  %dfltlevel = getelementptr inbounds %struct.user_datum, ptr %call7.i.i, i32 0, i32 4
  %call28 = tail call fastcc i32 @mls_read_level(ptr noundef %dfltlevel, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end27.if.end32_crit_edge, label %if.end27.user_destroy.exit_crit_edge

if.end27.user_destroy.exit_crit_edge:             ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %user_destroy.exit

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.end32:                                         ; preds = %if.end27.if.end32_crit_edge, %if.end20.if.end32_crit_edge
  %call33 = tail call i32 @symtab_insert(ptr noundef %s, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end32.cleanup_crit_edge, label %if.end32.user_destroy.exit_crit_edge

if.end32.user_destroy.exit_crit_edge:             ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %user_destroy.exit

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

user_destroy.exit:                                ; preds = %if.end32.user_destroy.exit_crit_edge, %if.end27.user_destroy.exit_crit_edge, %if.then23.user_destroy.exit_crit_edge, %if.end16.user_destroy.exit_crit_edge, %if.then6.i, %if.end8.i.i.user_destroy.exit_crit_edge, %if.end12.user_destroy.exit_crit_edge, %if.end12.user_destroy.exit_crit_edge77, %if.end.user_destroy.exit_crit_edge
  %key.1 = phi ptr [ %call9.i.i, %if.end32.user_destroy.exit_crit_edge ], [ %call9.i.i, %if.end27.user_destroy.exit_crit_edge ], [ %call9.i.i, %if.then23.user_destroy.exit_crit_edge ], [ %call9.i.i, %if.end16.user_destroy.exit_crit_edge ], [ null, %if.end.user_destroy.exit_crit_edge ], [ null, %if.then6.i ], [ null, %if.end12.user_destroy.exit_crit_edge ], [ null, %if.end12.user_destroy.exit_crit_edge77 ], [ null, %if.end8.i.i.user_destroy.exit_crit_edge ]
  %rc.0 = phi i32 [ %call33, %if.end32.user_destroy.exit_crit_edge ], [ %call28, %if.end27.user_destroy.exit_crit_edge ], [ %call24, %if.then23.user_destroy.exit_crit_edge ], [ %call17, %if.end16.user_destroy.exit_crit_edge ], [ -22, %if.end.user_destroy.exit_crit_edge ], [ -22, %if.then6.i ], [ -22, %if.end12.user_destroy.exit_crit_edge ], [ -22, %if.end12.user_destroy.exit_crit_edge77 ], [ -12, %if.end8.i.i.user_destroy.exit_crit_edge ]
  tail call void @kfree(ptr noundef %key.1) #17
  %roles.i = getelementptr inbounds %struct.user_datum, ptr %call7.i.i, i32 0, i32 2
  tail call void @ebitmap_destroy(ptr noundef %roles.i) #17
  %cat.i = getelementptr inbounds %struct.user_datum, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 0, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat.i) #17
  %cat4.i = getelementptr %struct.user_datum, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat4.i) #17
  %cat5.i = getelementptr inbounds %struct.user_datum, ptr %call7.i.i, i32 0, i32 4, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat5.i) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %user_destroy.exit, %if.end32.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %user_destroy.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cond_read_bool(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sens_read(ptr nocapture noundef readnone %p, ptr noundef %s, ptr noundef %fp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 8) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp.i = icmp ult i32 %2, 8
  br i1 %cmp.i, label %if.end.if.then.i_crit_edge, label %if.end4

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fp, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %4, align 1
  %buf.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 4
  %6 = ptrtoint ptr %buf.sroa.5.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %buf.sroa.5.0.copyload = load i32, ptr %buf.sroa.5.0..sroa_idx, align 1
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %2, -8
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.i, ptr %len.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  %9 = lshr i32 %buf.sroa.5.0.copyload, 24
  %conv = trunc i32 %9 to i8
  %isalias = getelementptr inbounds %struct.level_datum, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %isalias to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %isalias, align 4
  %11 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %8, label %if.end8.i.i [
    i32 0, label %if.end4.if.then.i_crit_edge
    i32 -1, label %if.end4.if.then.i_crit_edge65
  ]

if.end4.if.then.i_crit_edge65:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.end4.if.then.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.end8.i.i:                                      ; preds = %if.end4
  %add.i = add nuw i32 %8, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 10784) #24
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.if.then.i_crit_edge, label %if.end3.i

if.end8.i.i.if.then.i_crit_edge:                  ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.end3.i:                                        ; preds = %if.end8.i.i
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %8)
  %cmp.i18.i = icmp ult i32 %13, %8
  br i1 %cmp.i18.i, label %if.then6.i, label %if.end9

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #17
  br label %if.then.i

if.end9:                                          ; preds = %if.end3.i
  %14 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fp, align 4
  %16 = call ptr @memcpy(ptr %call9.i.i, ptr %15, i32 %8)
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %8
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %sub.i.i = sub i32 %13, %8
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.i.i, ptr %len.i, align 4
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %8
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 2592, i32 noundef 12) #22
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %call7.i.i, align 8
  %tobool12.not = icmp eq ptr %call7.i, null
  br i1 %tobool12.not, label %if.end9.if.then.i_crit_edge, label %if.end14

if.end9.if.then.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.end14:                                         ; preds = %if.end9
  %21 = call ptr @memset(ptr %call7.i, i32 0, i32 12)
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp.i.i45 = icmp ult i32 %23, 4
  br i1 %cmp.i.i45, label %if.end14.mls_read_level.exit_crit_edge, label %if.end.i48

if.end14.mls_read_level.exit_crit_edge:           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %mls_read_level.exit

if.end.i48:                                       ; preds = %if.end14
  %24 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fp, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %buf.sroa.0.0.copyload.i = load i32, ptr %25, align 1
  %add.ptr.i.i46 = getelementptr i8, ptr %25, i32 4
  store ptr %add.ptr.i.i46, ptr %fp, align 4
  %sub.i.i47 = add i32 %23, -4
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.i.i47, ptr %len.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload.i) #17
  %29 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %call7.i, align 8
  %cat.i = getelementptr inbounds %struct.mls_level, ptr %call7.i, i32 0, i32 1
  %call2.i = tail call i32 @ebitmap_read(ptr noundef %cat.i, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end19, label %if.end.i48.mls_read_level.exit_crit_edge

if.end.i48.mls_read_level.exit_crit_edge:         ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #19
  br label %mls_read_level.exit

mls_read_level.exit:                              ; preds = %if.end.i48.mls_read_level.exit_crit_edge, %if.end14.mls_read_level.exit_crit_edge
  %.str.75.sink.i = phi ptr [ @.str.72, %if.end14.mls_read_level.exit_crit_edge ], [ @.str.75, %if.end.i48.mls_read_level.exit_crit_edge ]
  %retval.0.ph.i = phi i32 [ -22, %if.end14.mls_read_level.exit_crit_edge ], [ %call2.i, %if.end.i48.mls_read_level.exit_crit_edge ]
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.75.sink.i) #21
  br label %if.then.i

if.end19:                                         ; preds = %if.end.i48
  %call20 = tail call i32 @symtab_insert(ptr noundef %s, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end19.if.then.i_crit_edge

if.end19.if.then.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i:                                        ; preds = %if.end19.if.then.i_crit_edge, %mls_read_level.exit, %if.end9.if.then.i_crit_edge, %if.then6.i, %if.end8.i.i.if.then.i_crit_edge, %if.end4.if.then.i_crit_edge, %if.end4.if.then.i_crit_edge65, %if.end.if.then.i_crit_edge
  %key.1 = phi ptr [ %call9.i.i, %if.end9.if.then.i_crit_edge ], [ %call9.i.i, %if.end19.if.then.i_crit_edge ], [ %call9.i.i, %mls_read_level.exit ], [ null, %if.end.if.then.i_crit_edge ], [ null, %if.then6.i ], [ null, %if.end4.if.then.i_crit_edge ], [ null, %if.end4.if.then.i_crit_edge65 ], [ null, %if.end8.i.i.if.then.i_crit_edge ]
  %rc.0 = phi i32 [ -12, %if.end9.if.then.i_crit_edge ], [ %call20, %if.end19.if.then.i_crit_edge ], [ %retval.0.ph.i, %mls_read_level.exit ], [ -22, %if.end.if.then.i_crit_edge ], [ -22, %if.then6.i ], [ -22, %if.end4.if.then.i_crit_edge ], [ -22, %if.end4.if.then.i_crit_edge65 ], [ -12, %if.end8.i.i.if.then.i_crit_edge ]
  tail call void @kfree(ptr noundef %key.1) #17
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i.i, align 8
  %tobool1.not.i = icmp eq ptr %31, null
  br i1 %tobool1.not.i, label %if.then.i.sens_destroy.exit_crit_edge, label %if.then2.i

if.then.i.sens_destroy.exit_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sens_destroy.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %cat.i51 = getelementptr inbounds %struct.mls_level, ptr %31, i32 0, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat.i51) #17
  br label %sens_destroy.exit

sens_destroy.exit:                                ; preds = %if.then2.i, %if.then.i.sens_destroy.exit_crit_edge
  %32 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef %33) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %sens_destroy.exit, %if.end19.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %sens_destroy.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cat_read(ptr nocapture noundef readnone %p, ptr noundef %s, ptr nocapture noundef %fp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 8) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %cmp.i = icmp ult i32 %2, 12
  br i1 %cmp.i, label %if.end.bad_crit_edge, label %if.end4

if.end.bad_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fp, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %4, align 1
  %buf.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 4
  %6 = ptrtoint ptr %buf.sroa.5.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %buf.sroa.5.0.copyload = load i32, ptr %buf.sroa.5.0..sroa_idx, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 8
  %7 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %buf.sroa.7.0.copyload = load i32, ptr %buf.sroa.7.0..sroa_idx, align 1
  %add.ptr.i = getelementptr i8, ptr %4, i32 12
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %2, -12
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i, ptr %len.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  %10 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.5.0.copyload)
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call7.i.i, align 8
  %12 = lshr i32 %buf.sroa.7.0.copyload, 24
  %conv = trunc i32 %12 to i8
  %isalias = getelementptr inbounds %struct.cat_datum, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %isalias to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %isalias, align 4
  %14 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %9, label %if.end8.i.i [
    i32 0, label %if.end4.bad_crit_edge
    i32 -1, label %if.end4.bad_crit_edge43
  ]

if.end4.bad_crit_edge43:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end4.bad_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end8.i.i:                                      ; preds = %if.end4
  %add.i = add nuw i32 %9, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 10784) #24
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.bad_crit_edge, label %if.end3.i

if.end8.i.i.bad_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end3.i:                                        ; preds = %if.end8.i.i
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %9)
  %cmp.i18.i = icmp ult i32 %16, %9
  br i1 %cmp.i18.i, label %if.then6.i, label %if.end10

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #17
  br label %bad

if.end10:                                         ; preds = %if.end3.i
  %17 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fp, align 4
  %19 = call ptr @memcpy(ptr %call9.i.i, ptr %18, i32 %9)
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 %9
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %sub.i.i = sub i32 %16, %9
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.i.i, ptr %len.i, align 4
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %9
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx.i, align 1
  %call11 = tail call i32 @symtab_insert(ptr noundef %s, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end10.bad_crit_edge

if.end10.bad_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

bad:                                              ; preds = %if.end10.bad_crit_edge, %if.then6.i, %if.end8.i.i.bad_crit_edge, %if.end4.bad_crit_edge, %if.end4.bad_crit_edge43, %if.end.bad_crit_edge
  %key.1 = phi ptr [ %call9.i.i, %if.end10.bad_crit_edge ], [ null, %if.end.bad_crit_edge ], [ null, %if.then6.i ], [ null, %if.end4.bad_crit_edge ], [ null, %if.end4.bad_crit_edge43 ], [ null, %if.end8.i.i.bad_crit_edge ]
  %rc.0 = phi i32 [ %call11, %if.end10.bad_crit_edge ], [ -22, %if.end.bad_crit_edge ], [ -22, %if.then6.i ], [ -22, %if.end4.bad_crit_edge ], [ -22, %if.end4.bad_crit_edge43 ], [ -12, %if.end8.i.i.bad_crit_edge ]
  tail call void @kfree(ptr noundef %key.1) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end10.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %bad ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @perm_read(ptr noundef %s, ptr nocapture noundef %fp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %2)
  %cmp.i = icmp ult i32 %2, 8
  br i1 %cmp.i, label %if.end.bad_crit_edge, label %if.end4

if.end.bad_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fp, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %4, align 1
  %buf.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %4, i32 4
  %6 = ptrtoint ptr %buf.sroa.5.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %buf.sroa.5.0.copyload = load i32, ptr %buf.sroa.5.0..sroa_idx, align 1
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %2, -8
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.i, ptr %len.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  %9 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.5.0.copyload)
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call7.i.i, align 8
  %11 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %8, label %if.end8.i.i [
    i32 0, label %if.end4.bad_crit_edge
    i32 -1, label %if.end4.bad_crit_edge14
  ]

if.end4.bad_crit_edge14:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end4.bad_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end8.i.i:                                      ; preds = %if.end4
  %add.i = add nuw i32 %8, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add.i, i32 noundef 11456) #24
  %tobool.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not.i, label %if.end8.i.i.bad_crit_edge, label %if.end3.i

if.end8.i.i.bad_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end3.i:                                        ; preds = %if.end8.i.i
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %8)
  %cmp.i18.i = icmp ult i32 %13, %8
  br i1 %cmp.i18.i, label %if.then6.i, label %if.end9

if.then6.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #17
  br label %bad

if.end9:                                          ; preds = %if.end3.i
  %14 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fp, align 4
  %16 = call ptr @memcpy(ptr %call9.i.i, ptr %15, i32 %8)
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %8
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %sub.i.i = sub i32 %13, %8
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.i.i, ptr %len.i, align 4
  %arrayidx.i = getelementptr i8, ptr %call9.i.i, i32 %8
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx.i, align 1
  %call10 = tail call i32 @symtab_insert(ptr noundef %s, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end9.bad_crit_edge

if.end9.bad_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

bad:                                              ; preds = %if.end9.bad_crit_edge, %if.then6.i, %if.end8.i.i.bad_crit_edge, %if.end4.bad_crit_edge, %if.end4.bad_crit_edge14, %if.end.bad_crit_edge
  %key.1 = phi ptr [ %call9.i.i, %if.end9.bad_crit_edge ], [ null, %if.end.bad_crit_edge ], [ null, %if.then6.i ], [ null, %if.end4.bad_crit_edge ], [ null, %if.end4.bad_crit_edge14 ], [ null, %if.end8.i.i.bad_crit_edge ]
  %rc.0 = phi i32 [ %call10, %if.end9.bad_crit_edge ], [ -22, %if.end.bad_crit_edge ], [ -22, %if.then6.i ], [ -22, %if.end4.bad_crit_edge ], [ -22, %if.end4.bad_crit_edge14 ], [ -12, %if.end8.i.i.bad_crit_edge ]
  tail call void @kfree(ptr noundef %key.1) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %bad, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %bad ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_cons_helper(ptr nocapture noundef readonly %p, ptr nocapture noundef writeonly %nodep, i32 noundef %ncons, i32 noundef %allowxtarget, ptr noundef %fp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ncons)
  %cmp164 = icmp sgt i32 %ncons, 0
  br i1 %cmp164, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %allowxtarget)
  %tobool42.not = icmp eq i32 %allowxtarget, 0
  %policyvers = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 24
  br label %for.body

for.cond:                                         ; preds = %for.end
  %inc74 = add nuw nsw i32 %i.0166, 1
  %exitcond173.not = icmp eq i32 %inc74, %ncons
  br i1 %exitcond173.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0166 = phi i32 [ 0, %for.body.lr.ph ], [ %inc74, %for.cond.for.body_crit_edge ]
  %lc.0165 = phi ptr [ null, %for.body.lr.ph ], [ %call7.i.i, %for.cond.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #22
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %for.body
  %tobool1.not = icmp eq ptr %lc.0165, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %next = getelementptr inbounds %struct.constraint_node, ptr %lc.0165, i32 0, i32 2
  %1 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %next, align 8
  br label %if.end3

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %nodep to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %nodep, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp.i = icmp ult i32 %4, 8
  br i1 %cmp.i, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %5 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fp, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %buf.sroa.0.0.copyload136 = load i32, ptr %6, align 1
  %buf.sroa.7.0..sroa_idx137 = getelementptr inbounds i8, ptr %6, i32 4
  %8 = ptrtoint ptr %buf.sroa.7.0..sroa_idx137 to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %buf.sroa.7.0.copyload138 = load i32, ptr %buf.sroa.7.0..sroa_idx137, align 1
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %4, -8
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.i, ptr %len.i, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload136)
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.7.0.copyload138)
  %cmp10159.not = icmp eq i32 %buf.sroa.7.0.copyload138, 0
  br i1 %cmp10159.not, label %if.end7.cleanup_crit_edge, label %for.body11.lr.ph

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body11.lr.ph:                                 ; preds = %if.end7
  %12 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.7.0.copyload138)
  %expr = getelementptr inbounds %struct.constraint_node, ptr %call7.i.i, i32 0, i32 1
  %umax = call i32 @llvm.umax.i32(i32 %12, i32 1)
  br label %for.body11

for.body11:                                       ; preds = %sw.epilog.for.body11_crit_edge, %for.body11.lr.ph
  %depth.0162 = phi i32 [ -1, %for.body11.lr.ph ], [ %depth.1, %sw.epilog.for.body11_crit_edge ]
  %j.0161 = phi i32 [ 0, %for.body11.lr.ph ], [ %inc69, %sw.epilog.for.body11_crit_edge ]
  %le.0160 = phi ptr [ null, %for.body11.lr.ph ], [ %call7.i.i124, %sw.epilog.for.body11_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i124 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 28) #22
  %tobool13.not = icmp eq ptr %call7.i.i124, null
  br i1 %tobool13.not, label %for.body11.cleanup_crit_edge, label %if.end15

for.body11.cleanup_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end15:                                         ; preds = %for.body11
  %tobool16.not = icmp eq ptr %le.0160, null
  br i1 %tobool16.not, label %if.else19, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %next18 = getelementptr inbounds %struct.constraint_expr, ptr %le.0160, i32 0, i32 5
  %14 = ptrtoint ptr %next18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i124, ptr %next18, align 8
  br label %if.end20

if.else19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %expr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i124, ptr %expr, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else19, %if.then17
  %16 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %17)
  %cmp.i126 = icmp ult i32 %17, 12
  br i1 %cmp.i126, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  %18 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fp, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %19, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %19, i32 4
  %21 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %buf.sroa.7.0.copyload = load i32, ptr %buf.sroa.7.0..sroa_idx, align 1
  %buf.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %19, i32 8
  %22 = ptrtoint ptr %buf.sroa.10.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %buf.sroa.10.0.copyload = load i32, ptr %buf.sroa.10.0..sroa_idx, align 1
  %add.ptr.i127 = getelementptr i8, ptr %19, i32 12
  store ptr %add.ptr.i127, ptr %fp, align 4
  %sub.i128 = add i32 %17, -12
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub.i128, ptr %len.i, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  %25 = ptrtoint ptr %call7.i.i124 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %call7.i.i124, align 8
  %26 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.7.0.copyload)
  %attr = getelementptr inbounds %struct.constraint_expr, ptr %call7.i.i124, i32 0, i32 1
  %27 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %attr, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.10.0.copyload)
  %op = getelementptr inbounds %struct.constraint_expr, ptr %call7.i.i124, i32 0, i32 2
  %29 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %op, align 8
  %30 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %24, label %if.end25.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %if.end25.sw.bb33_crit_edge
    i32 3, label %if.end25.sw.bb33_crit_edge182
    i32 4, label %sw.bb37
    i32 5, label %sw.bb41
  ]

if.end25.sw.bb33_crit_edge182:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb33

if.end25.sw.bb33_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb33

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth.0162)
  %cmp30 = icmp slt i32 %depth.0162, 0
  br i1 %cmp30, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb33:                                          ; preds = %if.end25.sw.bb33_crit_edge, %if.end25.sw.bb33_crit_edge182
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %depth.0162)
  %cmp34 = icmp slt i32 %depth.0162, 1
  br i1 %cmp34, label %sw.bb33.cleanup_crit_edge, label %if.end36

sw.bb33.cleanup_crit_edge:                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end36:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #19
  %dec = add nsw i32 %depth.0162, -1
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %depth.0162)
  %cmp38 = icmp eq i32 %depth.0162, 4
  br i1 %cmp38, label %sw.bb37.cleanup_crit_edge, label %if.end40

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end40:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #19
  %inc = add i32 %depth.0162, 1
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end25
  br i1 %tobool42.not, label %land.lhs.true, label %if.end46

land.lhs.true:                                    ; preds = %sw.bb41
  %and = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %depth.0162)
  %cmp47 = icmp eq i32 %depth.0162, 4
  %or.cond = select i1 %tobool44.not, i1 true, i1 %cmp47
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end46:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %depth.0162)
  %cmp47.old = icmp eq i32 %depth.0162, 4
  br i1 %cmp47.old, label %if.end46.cleanup_crit_edge, label %if.end46.if.end49_crit_edge

if.end46.if.end49_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end49

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end49:                                         ; preds = %if.end46.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge
  %inc50 = add i32 %depth.0162, 1
  %names = getelementptr inbounds %struct.constraint_expr, ptr %call7.i.i124, i32 0, i32 3
  %call51 = tail call i32 @ebitmap_read(ptr noundef %names, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  %31 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %32)
  %cmp55 = icmp ugt i32 %32, 28
  br i1 %cmp55, label %if.then56, label %if.end54.sw.epilog_crit_edge

if.end54.sw.epilog_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.epilog

if.then56:                                        ; preds = %if.end54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i132 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 20) #22
  %type_names = getelementptr inbounds %struct.constraint_expr, ptr %call7.i.i124, i32 0, i32 4
  %34 = ptrtoint ptr %type_names to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i132, ptr %type_names, align 4
  %tobool59.not = icmp eq ptr %call7.i.i132, null
  br i1 %tobool59.not, label %if.then56.cleanup_crit_edge, label %if.end61

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end61:                                         ; preds = %if.then56
  %35 = call ptr @memset(ptr %call7.i.i132, i32 0, i32 16)
  %call.i = tail call i32 @ebitmap_read(ptr noundef nonnull %call7.i.i132, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i133, label %if.end61.cleanup_crit_edge

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i133:                                      ; preds = %if.end61
  %negset.i = getelementptr inbounds %struct.type_set, ptr %call7.i.i132, i32 0, i32 1
  %call1.i = tail call i32 @ebitmap_read(ptr noundef %negset.i, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i133.cleanup_crit_edge

if.end.i133.cleanup_crit_edge:                    ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i133
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %cmp.i.i = icmp ult i32 %37, 4
  br i1 %cmp.i.i, label %if.end4.i.cleanup_crit_edge, label %type_set_read.exit

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

type_set_read.exit:                               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fp, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 4)
  %buf.sroa.0.0.copyload.i = load i32, ptr %39, align 1
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 4
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %sub.i.i = add i32 %37, -4
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub.i.i, ptr %len.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload.i) #17
  %flags.i = getelementptr inbounds %struct.type_set, ptr %call7.i.i132, i32 0, i32 2
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %flags.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %type_set_read.exit, %if.end54.sw.epilog_crit_edge, %if.end40, %if.end36, %sw.bb.sw.epilog_crit_edge
  %depth.1 = phi i32 [ %inc50, %type_set_read.exit ], [ %inc50, %if.end54.sw.epilog_crit_edge ], [ %inc, %if.end40 ], [ %dec, %if.end36 ], [ %depth.0162, %sw.bb.sw.epilog_crit_edge ]
  %inc69 = add nuw i32 %j.0161, 1
  %exitcond.not = icmp eq i32 %inc69, %umax
  br i1 %exitcond.not, label %for.end, label %sw.epilog.for.body11_crit_edge

sw.epilog.for.body11_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body11

for.end:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth.1)
  %cmp70.not = icmp eq i32 %depth.1, 0
  br i1 %cmp70.not, label %for.cond, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.end.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i133.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sw.bb37.cleanup_crit_edge, %sw.bb33.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %for.body11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end4.i.cleanup_crit_edge ], [ -22, %if.end.i133.cleanup_crit_edge ], [ -22, %if.end61.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ -22, %if.end25.cleanup_crit_edge ], [ -12, %if.then56.cleanup_crit_edge ], [ %call51, %if.end49.cleanup_crit_edge ], [ -22, %if.end46.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %sw.bb37.cleanup_crit_edge ], [ -22, %sw.bb33.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -12, %for.body11.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -12, %for.body.cleanup_crit_edge ], [ -22, %for.end.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mls_read_range_helper(ptr noundef %r, ptr noundef %fp) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf)
  %buf.4.buf.4..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 4
  %0 = ptrtoint ptr %buf.4.buf.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %buf.4.buf.4..sroa_idx, align 4
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp.i = icmp ult i32 %2, 4
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fp, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %4, align 1
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %buf, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %2, -4
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i, ptr %len.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp ugt i32 %9, 2
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58) #21
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mul = shl nuw nsw i32 %9, 2
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mul)
  %cmp.i96 = icmp ult i32 %11, %mul
  br i1 %cmp.i96, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #19
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #21
  br label %cleanup

if.end13:                                         ; preds = %if.end3
  %12 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fp, align 4
  %14 = call ptr @memcpy(ptr %buf, ptr %13, i32 %mul)
  %add.ptr.i97 = getelementptr i8, ptr %13, i32 %mul
  store ptr %add.ptr.i97, ptr %fp, align 4
  %sub.i98 = sub i32 %11, %mul
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i98, ptr %len.i, align 4
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %buf.0.buf.0.102 = load i32, ptr %buf, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %buf.0.buf.0.102)
  %18 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %r, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp16 = icmp ugt i32 %9, 1
  br i1 %cmp16, label %if.end28, label %if.end28.thread

if.end28:                                         ; preds = %if.end13
  %19 = ptrtoint ptr %buf.4.buf.4..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %buf.4.buf.4. = load i32, ptr %buf.4.buf.4..sroa_idx, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %buf.4.buf.4.)
  %arrayidx20 = getelementptr [2 x %struct.mls_level], ptr %r, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx20, align 4
  %cat = getelementptr inbounds %struct.mls_level, ptr %r, i32 0, i32 1
  %call31 = tail call i32 @ebitmap_read(ptr noundef %cat, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then41, label %if.end28.do.end36_crit_edge

if.end28.do.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end36

if.end28.thread:                                  ; preds = %if.end13
  %arrayidx26 = getelementptr [2 x %struct.mls_level], ptr %r, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %17, ptr %arrayidx26, align 4
  %cat108 = getelementptr inbounds %struct.mls_level, ptr %r, i32 0, i32 1
  %call31109 = tail call i32 @ebitmap_read(ptr noundef %cat108, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31109)
  %tobool32.not110 = icmp eq i32 %call31109, 0
  br i1 %tobool32.not110, label %if.else54, label %if.end28.thread.do.end36_crit_edge

if.end28.thread.do.end36_crit_edge:               ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end36

do.end36:                                         ; preds = %if.end28.thread.do.end36_crit_edge, %if.end28.do.end36_crit_edge
  %call31112 = phi i32 [ %call31109, %if.end28.thread.do.end36_crit_edge ], [ %call31, %if.end28.do.end36_crit_edge ]
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #21
  br label %cleanup

if.then41:                                        ; preds = %if.end28
  %cat44 = getelementptr [2 x %struct.mls_level], ptr %r, i32 0, i32 1, i32 1
  %call45 = tail call i32 @ebitmap_read(ptr noundef %cat44, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then41.cleanup_crit_edge, label %if.then41.bad_high_crit_edge

if.then41.bad_high_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad_high

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else54:                                        ; preds = %if.end28.thread
  %cat57 = getelementptr [2 x %struct.mls_level], ptr %r, i32 0, i32 1, i32 1
  %call61 = tail call i32 @ebitmap_cpy(ptr noundef %cat57, ptr noundef %cat108) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.else54.cleanup_crit_edge, label %if.else54.bad_high_crit_edge

if.else54.bad_high_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #19
  br label %bad_high

if.else54.cleanup_crit_edge:                      ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

bad_high:                                         ; preds = %if.else54.bad_high_crit_edge, %if.then41.bad_high_crit_edge
  %.str.70.sink = phi ptr [ @.str.67, %if.then41.bad_high_crit_edge ], [ @.str.70, %if.else54.bad_high_crit_edge ]
  %cat111114 = phi ptr [ %cat, %if.then41.bad_high_crit_edge ], [ %cat108, %if.else54.bad_high_crit_edge ]
  %rc.0 = phi i32 [ %call45, %if.then41.bad_high_crit_edge ], [ %call61, %if.else54.bad_high_crit_edge ]
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.70.sink) #21
  tail call void @ebitmap_destroy(ptr noundef %cat111114) #17
  br label %cleanup

cleanup:                                          ; preds = %bad_high, %if.else54.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %do.end36, %do.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.else54.cleanup_crit_edge ], [ 0, %if.then41.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.end10 ], [ %call31112, %do.end36 ], [ %rc.0, %bad_high ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mls_read_level(ptr noundef %lp, ptr noundef %fp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %lp, i32 0, i32 12)
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp.i = icmp ult i32 %2, 4
  br i1 %cmp.i, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fp, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %4, align 1
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %2, -4
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub.i, ptr %len.i, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  %8 = ptrtoint ptr %lp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lp, align 4
  %cat = getelementptr inbounds %struct.mls_level, ptr %lp, i32 0, i32 1
  %call2 = tail call i32 @ebitmap_read(ptr noundef %cat, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.75.sink = phi ptr [ @.str.72, %entry.cleanup.sink.split_crit_edge ], [ @.str.75, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -22, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.75.sink) #21
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebitmap_cpy(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hashtab_insert(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cond_init_bool_indexes(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @common_index(ptr noundef %key, ptr nocapture noundef readonly %datum, ptr nocapture noundef readonly %datap) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nprim = getelementptr inbounds %struct.policydb, ptr %datap, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %sym_val_to_name = getelementptr inbounds %struct.policydb, ptr %datap, i32 0, i32 2
  %4 = ptrtoint ptr %sym_val_to_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sym_val_to_name, align 4
  %sub = add i32 %1, -1
  %arrayidx4 = getelementptr ptr, ptr %5, i32 %sub
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %key, ptr %arrayidx4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @class_index(ptr noundef %key, ptr noundef %datum, ptr nocapture noundef readonly %datap) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nprim = getelementptr %struct.policydb, ptr %datap, i32 0, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx2 = getelementptr %struct.policydb, ptr %datap, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx2, align 4
  %sub = add i32 %1, -1
  %arrayidx4 = getelementptr ptr, ptr %5, i32 %sub
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %key, ptr %arrayidx4, align 4
  %class_val_to_struct = getelementptr inbounds %struct.policydb, ptr %datap, i32 0, i32 3
  %7 = ptrtoint ptr %class_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class_val_to_struct, align 4
  %9 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %datum, align 4
  %sub6 = add i32 %10, -1
  %arrayidx7 = getelementptr ptr, ptr %8, i32 %sub6
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %datum, ptr %arrayidx7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @role_index(ptr noundef %key, ptr noundef %datum, ptr nocapture noundef readonly %datap) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nprim = getelementptr %struct.policydb, ptr %datap, i32 0, i32 1, i32 2, i32 1
  %2 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %bounds = getelementptr inbounds %struct.role_datum, ptr %datum, i32 0, i32 1
  %4 = ptrtoint ptr %bounds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bounds, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp6 = icmp ugt i32 %5, %3
  br i1 %cmp6, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx7 = getelementptr %struct.policydb, ptr %datap, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  %sub = add i32 %1, -1
  %arrayidx9 = getelementptr ptr, ptr %7, i32 %sub
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %key, ptr %arrayidx9, align 4
  %role_val_to_struct = getelementptr inbounds %struct.policydb, ptr %datap, i32 0, i32 4
  %9 = ptrtoint ptr %role_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %role_val_to_struct, align 4
  %11 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %datum, align 4
  %sub11 = add i32 %12, -1
  %arrayidx12 = getelementptr ptr, ptr %10, i32 %sub11
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %datum, ptr %arrayidx12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @type_index(ptr noundef %key, ptr noundef %datum, ptr nocapture noundef readonly %datap) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %primary = getelementptr inbounds %struct.type_datum, ptr %datum, i32 0, i32 2
  %0 = ptrtoint ptr %primary to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %primary, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %nprim = getelementptr %struct.policydb, ptr %datap, i32 0, i32 1, i32 3, i32 1
  %4 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %bounds = getelementptr inbounds %struct.type_datum, ptr %datum, i32 0, i32 1
  %6 = ptrtoint ptr %bounds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bounds, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp7 = icmp ugt i32 %7, %5
  br i1 %cmp7, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx9 = getelementptr %struct.policydb, ptr %datap, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  %sub = add i32 %3, -1
  %arrayidx11 = getelementptr ptr, ptr %9, i32 %sub
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %key, ptr %arrayidx11, align 4
  %type_val_to_struct = getelementptr inbounds %struct.policydb, ptr %datap, i32 0, i32 6
  %11 = ptrtoint ptr %type_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type_val_to_struct, align 4
  %13 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %datum, align 4
  %sub13 = add i32 %14, -1
  %arrayidx14 = getelementptr ptr, ptr %12, i32 %sub13
  %15 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %datum, ptr %arrayidx14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @user_index(ptr noundef %key, ptr noundef %datum, ptr nocapture noundef readonly %datap) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %datum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nprim = getelementptr %struct.policydb, ptr %datap, i32 0, i32 1, i32 4, i32 1
  %2 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %bounds = getelementptr inbounds %struct.user_datum, ptr %datum, i32 0, i32 1
  %4 = ptrtoint ptr %bounds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bounds, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp6 = icmp ugt i32 %5, %3
  br i1 %cmp6, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx7 = getelementptr %struct.policydb, ptr %datap, i32 0, i32 2, i32 4
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  %sub = add i32 %1, -1
  %arrayidx9 = getelementptr ptr, ptr %7, i32 %sub
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %key, ptr %arrayidx9, align 4
  %user_val_to_struct = getelementptr inbounds %struct.policydb, ptr %datap, i32 0, i32 5
  %9 = ptrtoint ptr %user_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %user_val_to_struct, align 4
  %11 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %datum, align 4
  %sub11 = add i32 %12, -1
  %arrayidx12 = getelementptr ptr, ptr %10, i32 %sub11
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %datum, ptr %arrayidx12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cond_index_bool(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sens_index(ptr noundef %key, ptr nocapture noundef readonly %datum, ptr nocapture noundef readonly %datap) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %isalias = getelementptr inbounds %struct.level_datum, ptr %datum, i32 0, i32 1
  %0 = ptrtoint ptr %isalias to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %isalias, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %datum, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %nprim = getelementptr %struct.policydb, ptr %datap, i32 0, i32 1, i32 6, i32 1
  %6 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ugt i32 %5, %7
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx5 = getelementptr %struct.policydb, ptr %datap, i32 0, i32 2, i32 6
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  %sub = add i32 %5, -1
  %arrayidx8 = getelementptr ptr, ptr %9, i32 %sub
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %key, ptr %arrayidx8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cat_index(ptr noundef %key, ptr nocapture noundef readonly %datum, ptr nocapture noundef readonly %datap) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %isalias = getelementptr inbounds %struct.cat_datum, ptr %datum, i32 0, i32 1
  %0 = ptrtoint ptr %isalias to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %isalias, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %datum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %lor.lhs.false

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then
  %nprim = getelementptr %struct.policydb, ptr %datap, i32 0, i32 1, i32 7, i32 1
  %4 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nprim, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx4 = getelementptr %struct.policydb, ptr %datap, i32 0, i32 2, i32 7
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %sub = add i32 %3, -1
  %arrayidx6 = getelementptr ptr, ptr %7, i32 %sub
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %key, ptr %arrayidx6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @context_read_and_validate(ptr noundef %c, ptr noundef %p, ptr noundef %fp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1)
  %cmp.i = icmp ult i32 %1, 12
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89) #21
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fp, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %buf.sroa.0.0.copyload = load i32, ptr %3, align 1
  %buf.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 4
  %5 = ptrtoint ptr %buf.sroa.5.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %buf.sroa.5.0.copyload = load i32, ptr %buf.sroa.5.0..sroa_idx, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %3, i32 8
  %6 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %buf.sroa.7.0.copyload = load i32, ptr %buf.sroa.7.0..sroa_idx, align 1
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %1, -12
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub.i, ptr %len.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  %9 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %c, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.5.0.copyload)
  %role = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 1
  %11 = ptrtoint ptr %role to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %role, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.7.0.copyload)
  %type = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 2
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %type, align 4
  %policyvers = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 24
  %14 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %15)
  %cmp = icmp ugt i32 %15, 18
  br i1 %cmp, label %if.then4, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then4:                                         ; preds = %if.end
  %range = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 4
  %call5 = tail call fastcc i32 @mls_read_range_helper(ptr noundef %range, ptr noundef %fp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.if.end14_crit_edge, label %do.end10

if.then4.if.end14_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

do.end10:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #21
  br label %out

if.end14:                                         ; preds = %if.then4.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %call15 = tail call i32 @policydb_context_isvalid(ptr noundef %p, ptr noundef %c)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.end20, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #21
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %type, align 4
  %17 = ptrtoint ptr %role to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %role, align 4
  %18 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %c, align 4
  %str.i = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 5
  %19 = ptrtoint ptr %str.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %str.i, align 4
  tail call void @kfree(ptr noundef %20) #17
  %21 = ptrtoint ptr %str.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %str.i, align 4
  %len.i33 = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 3
  %22 = ptrtoint ptr %len.i33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %len.i33, align 4
  %cat.i.i = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 4, i32 0, i32 0, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat.i.i) #17
  %cat4.i.i = getelementptr %struct.context, ptr %c, i32 0, i32 4, i32 0, i32 1, i32 1
  tail call void @ebitmap_destroy(ptr noundef %cat4.i.i) #17
  %range.i.i.i = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 4
  %23 = call ptr @memset(ptr %range.i.i.i, i32 0, i32 24)
  br label %out

out:                                              ; preds = %do.end20, %if.end14.out_crit_edge, %do.end10, %do.end
  %rc.0 = phi i32 [ -22, %do.end ], [ %call5, %do.end10 ], [ -22, %do.end20 ], [ 0, %if.end14.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mls_range_isvalid(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @user_bounds_sanity_check(ptr noundef %key, ptr nocapture noundef readonly %datum, ptr nocapture noundef readonly %datap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bounds69 = getelementptr inbounds %struct.user_datum, ptr %datum, i32 0, i32 1
  %0 = ptrtoint ptr %bounds69 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bounds69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not70 = icmp eq i32 %1, 0
  br i1 %tobool.not70, label %entry.cleanup24_crit_edge, label %while.body.lr.ph

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup24

while.body.lr.ph:                                 ; preds = %entry
  %user_val_to_struct = getelementptr inbounds %struct.policydb, ptr %datap, i32 0, i32 5
  %roles = getelementptr inbounds %struct.user_datum, ptr %datum, i32 0, i32 2
  %highbit.i = getelementptr inbounds %struct.user_datum, ptr %datum, i32 0, i32 2, i32 1
  br label %while.body

while.cond.loopexit:                              ; preds = %ebitmap_next_positive.exit.while.cond.loopexit_crit_edge, %ebitmap_start_positive.exit.while.cond.loopexit_crit_edge
  %bounds = getelementptr inbounds %struct.user_datum, ptr %8, i32 0, i32 1
  %2 = ptrtoint ptr %bounds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bounds, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %while.cond.loopexit.cleanup24_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.cond.loopexit.cleanup24_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup24

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %1, %while.body.lr.ph ], [ %3, %while.cond.loopexit.while.body_crit_edge ]
  %depth.071 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.cond.loopexit.while.body_crit_edge ]
  %inc = add nuw nsw i32 %depth.071, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp = icmp eq i32 %inc, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %key) #21
  br label %cleanup24

if.end:                                           ; preds = %while.body
  %5 = ptrtoint ptr %user_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %user_val_to_struct, align 4
  %sub = add i32 %4, -1
  %arrayidx = getelementptr ptr, ptr %6, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %roles to i32
  call void @__asan_load4_noabort(i32 %9)
  %storemerge8.i = load ptr, ptr %roles, align 4
  %tobool.not9.i = icmp eq ptr %storemerge8.i, null
  br i1 %tobool.not9.i, label %if.end.for.end.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %node.0 = phi ptr [ %storemerge.i, %for.inc.i.for.body.i_crit_edge ], [ %storemerge8.i, %if.end.for.body.i_crit_edge ]
  %maps.i = getelementptr inbounds %struct.ebitmap_node, ptr %node.0, i32 0, i32 1
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %maps.i, i32 noundef 192) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 192
  br i1 %cmp.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %startbit.i = getelementptr inbounds %struct.ebitmap_node, ptr %node.0, i32 0, i32 2
  %10 = ptrtoint ptr %startbit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %startbit.i, align 4
  %add.i = add i32 %11, %call.i
  br label %ebitmap_start_positive.exit

for.inc.i:                                        ; preds = %for.body.i
  %12 = ptrtoint ptr %node.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %storemerge.i = load ptr, ptr %node.0, align 4
  %tobool.not.i = icmp eq ptr %storemerge.i, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %13 = ptrtoint ptr %highbit.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %highbit.i, align 4
  br label %ebitmap_start_positive.exit

ebitmap_start_positive.exit:                      ; preds = %for.end.i, %if.then.i
  %node.2 = phi ptr [ null, %for.end.i ], [ %node.0, %if.then.i ]
  %retval.0.i = phi i32 [ %14, %for.end.i ], [ %add.i, %if.then.i ]
  %15 = ptrtoint ptr %highbit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %highbit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %16)
  %cmp466 = icmp ult i32 %retval.0.i, %16
  br i1 %cmp466, label %for.body.lr.ph, label %ebitmap_start_positive.exit.while.cond.loopexit_crit_edge

ebitmap_start_positive.exit.while.cond.loopexit_crit_edge: ; preds = %ebitmap_start_positive.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.loopexit

for.body.lr.ph:                                   ; preds = %ebitmap_start_positive.exit
  %roles5 = getelementptr inbounds %struct.user_datum, ptr %8, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %ebitmap_next_positive.exit.for.body_crit_edge, %for.body.lr.ph
  %bit.068 = phi i32 [ %retval.0.i, %for.body.lr.ph ], [ %retval.0.i55, %ebitmap_next_positive.exit.for.body_crit_edge ]
  %node.367 = phi ptr [ %node.2, %for.body.lr.ph ], [ %node.5, %ebitmap_next_positive.exit.for.body_crit_edge ]
  %call6 = tail call i32 @ebitmap_get_bit(ptr noundef %roles5, i32 noundef %bit.068) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end12, label %for.inc

do.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %datum, align 4
  %sub14 = add i32 %18, -1
  %arrayidx.i = getelementptr %struct.policydb, ptr %datap, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr ptr, ptr %20, i32 %sub14
  %21 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx1.i, align 4
  %arrayidx.i40 = getelementptr %struct.policydb, ptr %datap, i32 0, i32 2, i32 2
  %23 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i40, align 4
  %arrayidx1.i41 = getelementptr ptr, ptr %24, i32 %bit.068
  %25 = ptrtoint ptr %arrayidx1.i41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx1.i41, align 4
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %8, align 4
  %sub18 = add i32 %28, -1
  %arrayidx1.i43 = getelementptr ptr, ptr %20, i32 %sub18
  %29 = ptrtoint ptr %arrayidx1.i43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx1.i43, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %22, ptr noundef %26, ptr noundef %30) #21
  br label %cleanup24

for.inc:                                          ; preds = %for.body
  %maps.i44 = getelementptr inbounds %struct.ebitmap_node, ptr %node.367, i32 0, i32 1
  %startbit.i45 = getelementptr inbounds %struct.ebitmap_node, ptr %node.367, i32 0, i32 2
  %31 = ptrtoint ptr %startbit.i45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %startbit.i45, align 4
  %sub.i = add nuw i32 %bit.068, 1
  %add.i46 = sub i32 %sub.i, %32
  %call.i47 = tail call i32 @_find_next_bit_be(ptr noundef %maps.i44, i32 noundef 192, i32 noundef %add.i46) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i47)
  %cmp.i48 = icmp ult i32 %call.i47, 192
  br i1 %cmp.i48, label %if.then.i49, label %for.inc.for.cond.i_crit_edge

for.inc.for.cond.i_crit_edge:                     ; preds = %for.inc
  br label %for.cond.i

if.then.i49:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %startbit.i45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %startbit.i45, align 4
  %add2.i = add i32 %34, %call.i47
  br label %ebitmap_next_positive.exit

for.cond.i:                                       ; preds = %for.body.i52.for.cond.i_crit_edge, %for.inc.for.cond.i_crit_edge
  %node.4 = phi ptr [ %storemerge.i50, %for.body.i52.for.cond.i_crit_edge ], [ %node.367, %for.inc.for.cond.i_crit_edge ]
  %35 = ptrtoint ptr %node.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %storemerge.i50 = load ptr, ptr %node.4, align 4
  %tobool.not.i51 = icmp eq ptr %storemerge.i50, null
  br i1 %tobool.not.i51, label %for.end.i54, label %for.body.i52

for.body.i52:                                     ; preds = %for.cond.i
  %maps3.i = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i50, i32 0, i32 1
  %call5.i = tail call i32 @_find_first_bit_be(ptr noundef %maps3.i, i32 noundef 192) #17
  %cmp6.i = icmp ult i32 %call5.i, 192
  br i1 %cmp6.i, label %if.then7.i, label %for.body.i52.for.cond.i_crit_edge

for.body.i52.for.cond.i_crit_edge:                ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

if.then7.i:                                       ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #19
  %startbit8.i = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i50, i32 0, i32 2
  %36 = ptrtoint ptr %startbit8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %startbit8.i, align 4
  %add9.i = add i32 %37, %call5.i
  br label %ebitmap_next_positive.exit

for.end.i54:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %highbit.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %highbit.i, align 4
  br label %ebitmap_next_positive.exit

ebitmap_next_positive.exit:                       ; preds = %for.end.i54, %if.then7.i, %if.then.i49
  %node.5 = phi ptr [ %node.367, %if.then.i49 ], [ null, %for.end.i54 ], [ %storemerge.i50, %if.then7.i ]
  %retval.0.i55 = phi i32 [ %add2.i, %if.then.i49 ], [ %39, %for.end.i54 ], [ %add9.i, %if.then7.i ]
  %40 = ptrtoint ptr %highbit.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %highbit.i, align 4
  %cmp4 = icmp ult i32 %retval.0.i55, %41
  br i1 %cmp4, label %ebitmap_next_positive.exit.for.body_crit_edge, label %ebitmap_next_positive.exit.while.cond.loopexit_crit_edge

ebitmap_next_positive.exit.while.cond.loopexit_crit_edge: ; preds = %ebitmap_next_positive.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.loopexit

ebitmap_next_positive.exit.for.body_crit_edge:    ; preds = %ebitmap_next_positive.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup24:                                        ; preds = %do.end12, %do.end, %while.cond.loopexit.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.2 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ 0, %entry.cleanup24_crit_edge ], [ 0, %while.cond.loopexit.cleanup24_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @role_bounds_sanity_check(ptr noundef %key, ptr nocapture noundef readonly %datum, ptr nocapture noundef readonly %datap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %bounds69 = getelementptr inbounds %struct.role_datum, ptr %datum, i32 0, i32 1
  %0 = ptrtoint ptr %bounds69 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bounds69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not70 = icmp eq i32 %1, 0
  br i1 %tobool.not70, label %entry.cleanup24_crit_edge, label %while.body.lr.ph

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup24

while.body.lr.ph:                                 ; preds = %entry
  %role_val_to_struct = getelementptr inbounds %struct.policydb, ptr %datap, i32 0, i32 4
  %types = getelementptr inbounds %struct.role_datum, ptr %datum, i32 0, i32 3
  %highbit.i = getelementptr inbounds %struct.role_datum, ptr %datum, i32 0, i32 3, i32 1
  br label %while.body

while.cond.loopexit:                              ; preds = %ebitmap_next_positive.exit.while.cond.loopexit_crit_edge, %ebitmap_start_positive.exit.while.cond.loopexit_crit_edge
  %bounds = getelementptr inbounds %struct.role_datum, ptr %8, i32 0, i32 1
  %2 = ptrtoint ptr %bounds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bounds, align 4
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %while.cond.loopexit.cleanup24_crit_edge, label %while.cond.loopexit.while.body_crit_edge

while.cond.loopexit.while.body_crit_edge:         ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

while.cond.loopexit.cleanup24_crit_edge:          ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup24

while.body:                                       ; preds = %while.cond.loopexit.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %1, %while.body.lr.ph ], [ %3, %while.cond.loopexit.while.body_crit_edge ]
  %depth.071 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.cond.loopexit.while.body_crit_edge ]
  %inc = add nuw nsw i32 %depth.071, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %inc)
  %cmp = icmp eq i32 %inc, 4
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %key) #21
  br label %cleanup24

if.end:                                           ; preds = %while.body
  %5 = ptrtoint ptr %role_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %role_val_to_struct, align 4
  %sub = add i32 %4, -1
  %arrayidx = getelementptr ptr, ptr %6, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %types to i32
  call void @__asan_load4_noabort(i32 %9)
  %storemerge8.i = load ptr, ptr %types, align 4
  %tobool.not9.i = icmp eq ptr %storemerge8.i, null
  br i1 %tobool.not9.i, label %if.end.for.end.i_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %node.0 = phi ptr [ %storemerge.i, %for.inc.i.for.body.i_crit_edge ], [ %storemerge8.i, %if.end.for.body.i_crit_edge ]
  %maps.i = getelementptr inbounds %struct.ebitmap_node, ptr %node.0, i32 0, i32 1
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %maps.i, i32 noundef 192) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 192
  br i1 %cmp.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %startbit.i = getelementptr inbounds %struct.ebitmap_node, ptr %node.0, i32 0, i32 2
  %10 = ptrtoint ptr %startbit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %startbit.i, align 4
  %add.i = add i32 %11, %call.i
  br label %ebitmap_start_positive.exit

for.inc.i:                                        ; preds = %for.body.i
  %12 = ptrtoint ptr %node.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %storemerge.i = load ptr, ptr %node.0, align 4
  %tobool.not.i = icmp eq ptr %storemerge.i, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %13 = ptrtoint ptr %highbit.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %highbit.i, align 4
  br label %ebitmap_start_positive.exit

ebitmap_start_positive.exit:                      ; preds = %for.end.i, %if.then.i
  %node.2 = phi ptr [ null, %for.end.i ], [ %node.0, %if.then.i ]
  %retval.0.i = phi i32 [ %14, %for.end.i ], [ %add.i, %if.then.i ]
  %15 = ptrtoint ptr %highbit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %highbit.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %16)
  %cmp466 = icmp ult i32 %retval.0.i, %16
  br i1 %cmp466, label %for.body.lr.ph, label %ebitmap_start_positive.exit.while.cond.loopexit_crit_edge

ebitmap_start_positive.exit.while.cond.loopexit_crit_edge: ; preds = %ebitmap_start_positive.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.loopexit

for.body.lr.ph:                                   ; preds = %ebitmap_start_positive.exit
  %types5 = getelementptr inbounds %struct.role_datum, ptr %8, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %ebitmap_next_positive.exit.for.body_crit_edge, %for.body.lr.ph
  %bit.068 = phi i32 [ %retval.0.i, %for.body.lr.ph ], [ %retval.0.i55, %ebitmap_next_positive.exit.for.body_crit_edge ]
  %node.367 = phi ptr [ %node.2, %for.body.lr.ph ], [ %node.5, %ebitmap_next_positive.exit.for.body_crit_edge ]
  %call6 = tail call i32 @ebitmap_get_bit(ptr noundef %types5, i32 noundef %bit.068) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end12, label %for.inc

do.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %17 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %datum, align 4
  %sub14 = add i32 %18, -1
  %arrayidx.i = getelementptr %struct.policydb, ptr %datap, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr ptr, ptr %20, i32 %sub14
  %21 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx1.i, align 4
  %arrayidx.i40 = getelementptr %struct.policydb, ptr %datap, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i40, align 4
  %arrayidx1.i41 = getelementptr ptr, ptr %24, i32 %bit.068
  %25 = ptrtoint ptr %arrayidx1.i41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx1.i41, align 4
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %8, align 4
  %sub18 = add i32 %28, -1
  %arrayidx1.i43 = getelementptr ptr, ptr %20, i32 %sub18
  %29 = ptrtoint ptr %arrayidx1.i43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx1.i43, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %22, ptr noundef %26, ptr noundef %30) #21
  br label %cleanup24

for.inc:                                          ; preds = %for.body
  %maps.i44 = getelementptr inbounds %struct.ebitmap_node, ptr %node.367, i32 0, i32 1
  %startbit.i45 = getelementptr inbounds %struct.ebitmap_node, ptr %node.367, i32 0, i32 2
  %31 = ptrtoint ptr %startbit.i45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %startbit.i45, align 4
  %sub.i = add nuw i32 %bit.068, 1
  %add.i46 = sub i32 %sub.i, %32
  %call.i47 = tail call i32 @_find_next_bit_be(ptr noundef %maps.i44, i32 noundef 192, i32 noundef %add.i46) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i47)
  %cmp.i48 = icmp ult i32 %call.i47, 192
  br i1 %cmp.i48, label %if.then.i49, label %for.inc.for.cond.i_crit_edge

for.inc.for.cond.i_crit_edge:                     ; preds = %for.inc
  br label %for.cond.i

if.then.i49:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %startbit.i45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %startbit.i45, align 4
  %add2.i = add i32 %34, %call.i47
  br label %ebitmap_next_positive.exit

for.cond.i:                                       ; preds = %for.body.i52.for.cond.i_crit_edge, %for.inc.for.cond.i_crit_edge
  %node.4 = phi ptr [ %storemerge.i50, %for.body.i52.for.cond.i_crit_edge ], [ %node.367, %for.inc.for.cond.i_crit_edge ]
  %35 = ptrtoint ptr %node.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %storemerge.i50 = load ptr, ptr %node.4, align 4
  %tobool.not.i51 = icmp eq ptr %storemerge.i50, null
  br i1 %tobool.not.i51, label %for.end.i54, label %for.body.i52

for.body.i52:                                     ; preds = %for.cond.i
  %maps3.i = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i50, i32 0, i32 1
  %call5.i = tail call i32 @_find_first_bit_be(ptr noundef %maps3.i, i32 noundef 192) #17
  %cmp6.i = icmp ult i32 %call5.i, 192
  br i1 %cmp6.i, label %if.then7.i, label %for.body.i52.for.cond.i_crit_edge

for.body.i52.for.cond.i_crit_edge:                ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

if.then7.i:                                       ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #19
  %startbit8.i = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i50, i32 0, i32 2
  %36 = ptrtoint ptr %startbit8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %startbit8.i, align 4
  %add9.i = add i32 %37, %call5.i
  br label %ebitmap_next_positive.exit

for.end.i54:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  %38 = ptrtoint ptr %highbit.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %highbit.i, align 4
  br label %ebitmap_next_positive.exit

ebitmap_next_positive.exit:                       ; preds = %for.end.i54, %if.then7.i, %if.then.i49
  %node.5 = phi ptr [ %node.367, %if.then.i49 ], [ null, %for.end.i54 ], [ %storemerge.i50, %if.then7.i ]
  %retval.0.i55 = phi i32 [ %add2.i, %if.then.i49 ], [ %39, %for.end.i54 ], [ %add9.i, %if.then7.i ]
  %40 = ptrtoint ptr %highbit.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %highbit.i, align 4
  %cmp4 = icmp ult i32 %retval.0.i55, %41
  br i1 %cmp4, label %ebitmap_next_positive.exit.for.body_crit_edge, label %ebitmap_next_positive.exit.while.cond.loopexit_crit_edge

ebitmap_next_positive.exit.while.cond.loopexit_crit_edge: ; preds = %ebitmap_next_positive.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.loopexit

ebitmap_next_positive.exit.for.body_crit_edge:    ; preds = %ebitmap_next_positive.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup24:                                        ; preds = %do.end12, %do.end, %while.cond.loopexit.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.2 = phi i32 [ -22, %do.end ], [ -22, %do.end12 ], [ 0, %entry.cleanup24_crit_edge ], [ 0, %while.cond.loopexit.cleanup24_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_bounds_sanity_check(ptr noundef %key, ptr nocapture noundef readonly %datum, ptr nocapture noundef readonly %datap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %type_val_to_struct = getelementptr inbounds %struct.policydb, ptr %datap, i32 0, i32 6
  %bounds = getelementptr inbounds %struct.type_datum, ptr %datum, i32 0, i32 1
  %0 = ptrtoint ptr %bounds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bounds, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.body:                                       ; preds = %entry
  %2 = ptrtoint ptr %type_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type_val_to_struct, align 4
  %sub = add i32 %1, -1
  %arrayidx = getelementptr ptr, ptr %3, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %while.body.do.body8_crit_edge, label %do.end16, !prof !229

while.body.do.body8_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body8

do.end:                                           ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef %key) #21
  br label %cleanup

do.body8:                                         ; preds = %while.body.2.do.body8_crit_edge, %while.body.1.do.body8_crit_edge, %while.body.do.body8_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22security/selinux/ss/policydb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1744, 0\0A.popsection", ""() #17, !srcloc !231
  unreachable

do.end16:                                         ; preds = %while.body
  %attribute = getelementptr inbounds %struct.type_datum, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %attribute to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %attribute, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool17.not = icmp eq i8 %7, 0
  br i1 %tobool17.not, label %while.cond.1, label %do.end16.do.end21_crit_edge

do.end16.do.end21_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end21

while.cond.1:                                     ; preds = %do.end16
  %bounds.1 = getelementptr inbounds %struct.type_datum, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %bounds.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bounds.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1 = icmp eq i32 %9, 0
  br i1 %tobool.not.1, label %while.cond.1.cleanup_crit_edge, label %while.body.1

while.cond.1.cleanup_crit_edge:                   ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.body.1:                                     ; preds = %while.cond.1
  %10 = ptrtoint ptr %type_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %type_val_to_struct, align 4
  %sub.1 = add i32 %9, -1
  %arrayidx.1 = getelementptr ptr, ptr %11, i32 %sub.1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  %tobool3.not.1 = icmp eq ptr %13, null
  br i1 %tobool3.not.1, label %while.body.1.do.body8_crit_edge, label %do.end16.1, !prof !229

while.body.1.do.body8_crit_edge:                  ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body8

do.end16.1:                                       ; preds = %while.body.1
  %attribute.1 = getelementptr inbounds %struct.type_datum, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %attribute.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %attribute.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool17.not.1 = icmp eq i8 %15, 0
  br i1 %tobool17.not.1, label %while.cond.2, label %do.end16.1.do.end21_crit_edge

do.end16.1.do.end21_crit_edge:                    ; preds = %do.end16.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end21

while.cond.2:                                     ; preds = %do.end16.1
  %bounds.2 = getelementptr inbounds %struct.type_datum, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %bounds.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bounds.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.2 = icmp eq i32 %17, 0
  br i1 %tobool.not.2, label %while.cond.2.cleanup_crit_edge, label %while.body.2

while.cond.2.cleanup_crit_edge:                   ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

while.body.2:                                     ; preds = %while.cond.2
  %18 = ptrtoint ptr %type_val_to_struct to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %type_val_to_struct, align 4
  %sub.2 = add i32 %17, -1
  %arrayidx.2 = getelementptr ptr, ptr %19, i32 %sub.2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.2, align 4
  %tobool3.not.2 = icmp eq ptr %21, null
  br i1 %tobool3.not.2, label %while.body.2.do.body8_crit_edge, label %do.end16.2, !prof !229

while.body.2.do.body8_crit_edge:                  ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body8

do.end16.2:                                       ; preds = %while.body.2
  %attribute.2 = getelementptr inbounds %struct.type_datum, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %attribute.2 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %attribute.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not.2 = icmp eq i8 %23, 0
  br i1 %tobool17.not.2, label %while.cond.3, label %do.end16.2.do.end21_crit_edge

do.end16.2.do.end21_crit_edge:                    ; preds = %do.end16.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end21

while.cond.3:                                     ; preds = %do.end16.2
  %bounds.3 = getelementptr inbounds %struct.type_datum, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %bounds.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bounds.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.3 = icmp eq i32 %25, 0
  br i1 %tobool.not.3, label %while.cond.3.cleanup_crit_edge, label %do.end

while.cond.3.cleanup_crit_edge:                   ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end21:                                         ; preds = %do.end16.2.do.end21_crit_edge, %do.end16.1.do.end21_crit_edge, %do.end16.do.end21_crit_edge
  %.lcssa36 = phi ptr [ %5, %do.end16.do.end21_crit_edge ], [ %13, %do.end16.1.do.end21_crit_edge ], [ %21, %do.end16.2.do.end21_crit_edge ]
  %26 = ptrtoint ptr %.lcssa36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %.lcssa36, align 4
  %sub23 = add i32 %27, -1
  %arrayidx.i = getelementptr %struct.policydb, ptr %datap, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr ptr, ptr %29, i32 %sub23
  %30 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx1.i, align 4
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %key, ptr noundef %31) #21
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %while.cond.3.cleanup_crit_edge, %while.cond.2.cleanup_crit_edge, %while.cond.1.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end21 ], [ 0, %while.cond.3.cleanup_crit_edge ], [ 0, %while.cond.2.cleanup_crit_edge ], [ 0, %while.cond.1.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @common_write(ptr nocapture noundef readonly %vkey, ptr noundef %datum, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fp1 = getelementptr inbounds %struct.policy_data, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %fp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp1, align 4
  %call = tail call i32 @strlen(ptr noundef %vkey) #23
  %2 = tail call i32 @llvm.bswap.i32(i32 %call)
  %3 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %datum, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %permissions = getelementptr inbounds %struct.common_datum, ptr %datum, i32 0, i32 1
  %nprim = getelementptr inbounds %struct.common_datum, ptr %datum, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nprim, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %nel = getelementptr inbounds %struct.common_datum, ptr %datum, i32 0, i32 1, i32 0, i32 2
  %9 = ptrtoint ptr %nel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nel, align 4
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %2, ptr %13, align 1
  %buf.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %13, i32 4
  %15 = ptrtoint ptr %buf.sroa.5.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %5, ptr %buf.sroa.5.0..sroa_idx, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %13, i32 8
  %16 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %8, ptr %buf.sroa.7.0..sroa_idx, align 1
  %buf.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %13, i32 12
  %17 = ptrtoint ptr %buf.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %11, ptr %buf.sroa.9.0..sroa_idx, align 1
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 16
  store ptr %add.ptr.i, ptr %1, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %20, -16
  store i32 %sub.i, ptr %len2.i, align 4
  %21 = call ptr @memcpy(ptr %add.ptr.i, ptr %vkey, i32 %call)
  %22 = load ptr, ptr %1, align 4
  %add.ptr.i35 = getelementptr i8, ptr %22, i32 %call
  store ptr %add.ptr.i35, ptr %1, align 4
  %23 = load i32, ptr %len2.i, align 4
  %sub.i37 = sub i32 %23, %call
  store i32 %sub.i37, ptr %len2.i, align 4
  %call13 = tail call i32 @hashtab_map(ptr noundef %permissions, ptr noundef nonnull @perm_write, ptr noundef %1) #17
  ret i32 %call13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @class_write(ptr nocapture noundef readonly %vkey, ptr noundef %datum, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fp1 = getelementptr inbounds %struct.policy_data, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %fp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp1, align 4
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptr, align 4
  %call = tail call i32 @strlen(ptr noundef %vkey) #23
  %comkey = getelementptr inbounds %struct.class_datum, ptr %datum, i32 0, i32 1
  %4 = ptrtoint ptr %comkey to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %comkey, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call4 = tail call i32 @strlen(ptr noundef nonnull %5) #23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len2.0 = phi i32 [ %call4, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %constraints = getelementptr inbounds %struct.class_datum, ptr %datum, i32 0, i32 4
  %6 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %6)
  %c.0169 = load ptr, ptr %constraints, align 4
  %tobool5.not170 = icmp eq ptr %c.0169, null
  br i1 %tobool5.not170, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %c.0172 = phi ptr [ %c.0, %for.body.for.body_crit_edge ], [ %c.0169, %if.end.for.body_crit_edge ]
  %ncons.0171 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %inc = add i32 %ncons.0171, 1
  %next = getelementptr inbounds %struct.constraint_node, ptr %c.0172, i32 0, i32 2
  %7 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %7)
  %c.0 = load ptr, ptr %next, align 4
  %tobool5.not = icmp eq ptr %c.0, null
  br i1 %tobool5.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %ncons.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  %8 = tail call i32 @llvm.bswap.i32(i32 %call)
  %9 = tail call i32 @llvm.bswap.i32(i32 %len2.0)
  %10 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %datum, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %permissions = getelementptr inbounds %struct.class_datum, ptr %datum, i32 0, i32 3
  %nprim = getelementptr inbounds %struct.class_datum, ptr %datum, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %nprim to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nprim, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %nel = getelementptr inbounds %struct.class_datum, ptr %datum, i32 0, i32 3, i32 0, i32 2
  %16 = ptrtoint ptr %nel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nel, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = tail call i32 @llvm.bswap.i32(i32 %ncons.0.lcssa)
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %8, ptr %21, align 1
  %buf.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %21, i32 4
  %23 = ptrtoint ptr %buf.sroa.11.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %9, ptr %buf.sroa.11.0..sroa_idx, align 1
  %buf.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %21, i32 8
  %24 = ptrtoint ptr %buf.sroa.14.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %12, ptr %buf.sroa.14.0..sroa_idx, align 1
  %buf.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %21, i32 12
  %25 = ptrtoint ptr %buf.sroa.17.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %15, ptr %buf.sroa.17.0..sroa_idx, align 1
  %buf.sroa.19.0..sroa_idx = getelementptr inbounds i8, ptr %21, i32 16
  %26 = ptrtoint ptr %buf.sroa.19.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %18, ptr %buf.sroa.19.0..sroa_idx, align 1
  %buf.sroa.21.0..sroa_idx = getelementptr inbounds i8, ptr %21, i32 20
  %27 = ptrtoint ptr %buf.sroa.21.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %19, ptr %buf.sroa.21.0..sroa_idx, align 1
  %28 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %28, i32 24
  store ptr %add.ptr.i, ptr %1, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %30, -24
  store i32 %sub.i, ptr %len2.i, align 4
  %31 = call ptr @memcpy(ptr %add.ptr.i, ptr %vkey, i32 %call)
  %32 = load ptr, ptr %1, align 4
  %add.ptr.i146 = getelementptr i8, ptr %32, i32 %call
  store ptr %add.ptr.i146, ptr %1, align 4
  %33 = load i32, ptr %len2.i, align 4
  %sub.i148 = sub i32 %33, %call
  store i32 %sub.i148, ptr %len2.i, align 4
  %34 = ptrtoint ptr %comkey to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %comkey, align 4
  %tobool21.not = icmp eq ptr %35, null
  br i1 %tobool21.not, label %for.end.if.end28_crit_edge, label %if.then22

for.end.if.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end28

if.then22:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %36 = call ptr @memcpy(ptr %add.ptr.i146, ptr %35, i32 %len2.0)
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %add.ptr.i149 = getelementptr i8, ptr %38, i32 %len2.0
  store ptr %add.ptr.i149, ptr %1, align 4
  %39 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len2.i, align 4
  %sub.i151 = sub i32 %40, %len2.0
  store i32 %sub.i151, ptr %len2.i, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then22, %for.end.if.end28_crit_edge
  %call31 = tail call i32 @hashtab_map(ptr noundef %permissions, ptr noundef nonnull @perm_write, ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end34:                                         ; preds = %if.end28
  %41 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %constraints, align 4
  %call36 = tail call fastcc i32 @write_cons_helper(ptr noundef %3, ptr noundef %42, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %validatetrans = getelementptr inbounds %struct.class_datum, ptr %datum, i32 0, i32 5
  %43 = ptrtoint ptr %validatetrans to i32
  call void @__asan_load4_noabort(i32 %43)
  %c.1173 = load ptr, ptr %validatetrans, align 4
  %tobool41.not174 = icmp eq ptr %c.1173, null
  br i1 %tobool41.not174, label %if.end39.for.end46_crit_edge, label %if.end39.for.body42_crit_edge

if.end39.for.body42_crit_edge:                    ; preds = %if.end39
  br label %for.body42

if.end39.for.end46_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end46

for.body42:                                       ; preds = %for.body42.for.body42_crit_edge, %if.end39.for.body42_crit_edge
  %c.1176 = phi ptr [ %c.1, %for.body42.for.body42_crit_edge ], [ %c.1173, %if.end39.for.body42_crit_edge ]
  %ncons.1175 = phi i32 [ %inc43, %for.body42.for.body42_crit_edge ], [ 0, %if.end39.for.body42_crit_edge ]
  %inc43 = add i32 %ncons.1175, 1
  %next45 = getelementptr inbounds %struct.constraint_node, ptr %c.1176, i32 0, i32 2
  %44 = ptrtoint ptr %next45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %c.1 = load ptr, ptr %next45, align 4
  %tobool41.not = icmp eq ptr %c.1, null
  br i1 %tobool41.not, label %for.body42.for.end46_crit_edge, label %for.body42.for.body42_crit_edge

for.body42.for.body42_crit_edge:                  ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body42

for.body42.for.end46_crit_edge:                   ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end46

for.end46:                                        ; preds = %for.body42.for.end46_crit_edge, %if.end39.for.end46_crit_edge
  %ncons.1.lcssa = phi i32 [ 0, %if.end39.for.end46_crit_edge ], [ %inc43, %for.body42.for.end46_crit_edge ]
  %45 = tail call i32 @llvm.bswap.i32(i32 %ncons.1.lcssa)
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %45, ptr %47, align 1
  %49 = load ptr, ptr %1, align 4
  %add.ptr.i152 = getelementptr i8, ptr %49, i32 4
  store ptr %add.ptr.i152, ptr %1, align 4
  %50 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len2.i, align 4
  %sub.i154 = add i32 %51, -4
  store i32 %sub.i154, ptr %len2.i, align 4
  %52 = ptrtoint ptr %validatetrans to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %validatetrans, align 4
  %call54 = tail call fastcc i32 @write_cons_helper(ptr noundef %3, ptr noundef %53, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %for.end46.cleanup_crit_edge

for.end46.cleanup_crit_edge:                      ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end57:                                         ; preds = %for.end46
  %policyvers = getelementptr inbounds %struct.policydb, ptr %3, i32 0, i32 24
  %54 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %55)
  %cmp = icmp ugt i32 %55, 26
  br i1 %cmp, label %if.end69, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end69:                                         ; preds = %if.end57
  %default_user = getelementptr inbounds %struct.class_datum, ptr %datum, i32 0, i32 6
  %56 = ptrtoint ptr %default_user to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %default_user, align 4
  %conv = zext i8 %57 to i32
  %58 = shl nuw i32 %conv, 24
  %default_role = getelementptr inbounds %struct.class_datum, ptr %datum, i32 0, i32 7
  %59 = ptrtoint ptr %default_role to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %default_role, align 1
  %conv60 = zext i8 %60 to i32
  %61 = shl nuw i32 %conv60, 24
  %default_range = getelementptr inbounds %struct.class_datum, ptr %datum, i32 0, i32 9
  %62 = ptrtoint ptr %default_range to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %default_range, align 1
  %conv62 = zext i8 %63 to i32
  %64 = shl nuw i32 %conv62, 24
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %58, ptr %66, align 1
  %buf.sroa.11.0..sroa_idx164 = getelementptr inbounds i8, ptr %66, i32 4
  %68 = ptrtoint ptr %buf.sroa.11.0..sroa_idx164 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %61, ptr %buf.sroa.11.0..sroa_idx164, align 1
  %buf.sroa.14.0..sroa_idx166 = getelementptr inbounds i8, ptr %66, i32 8
  %69 = ptrtoint ptr %buf.sroa.14.0..sroa_idx166 to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %64, ptr %buf.sroa.14.0..sroa_idx166, align 1
  %70 = load ptr, ptr %1, align 4
  %add.ptr.i155 = getelementptr i8, ptr %70, i32 12
  store ptr %add.ptr.i155, ptr %1, align 4
  %71 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len2.i, align 4
  %sub.i157 = add i32 %72, -12
  store i32 %sub.i157, ptr %len2.i, align 4
  %73 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %73)
  %.pr = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %.pr)
  %cmp71 = icmp ugt i32 %.pr, 27
  br i1 %cmp71, label %if.then73, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then73:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #19
  %default_type = getelementptr inbounds %struct.class_datum, ptr %datum, i32 0, i32 8
  %74 = ptrtoint ptr %default_type to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %default_type, align 2
  %conv74 = zext i8 %75 to i32
  %76 = shl nuw i32 %conv74, 24
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_storeN_noabort(i32 %79, i32 4)
  store i32 %76, ptr %78, align 1
  %80 = load ptr, ptr %1, align 4
  %add.ptr.i158 = getelementptr i8, ptr %80, i32 4
  store ptr %add.ptr.i158, ptr %1, align 4
  %81 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len2.i, align 4
  %sub.i160 = add i32 %82, -4
  store i32 %sub.i160, ptr %len2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then73, %if.end69.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %for.end46.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end28.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.end28.cleanup_crit_edge ], [ %call36, %if.end34.cleanup_crit_edge ], [ %call54, %for.end46.cleanup_crit_edge ], [ 0, %if.then73 ], [ 0, %if.end69.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @role_write(ptr nocapture noundef readonly %vkey, ptr noundef %datum, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  %buf = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fp1 = getelementptr inbounds %struct.policy_data, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %fp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp1, align 4
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf)
  %buf.4.buf.4..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 4
  %buf.8.buf.8..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 8
  %4 = ptrtoint ptr %buf.8.buf.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %buf.8.buf.8..sroa_idx, align 4
  %call = tail call i32 @strlen(ptr noundef %vkey) #23
  %5 = tail call i32 @llvm.bswap.i32(i32 %call)
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %buf, align 4
  %7 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %datum, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %buf.4.buf.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %buf.4.buf.4..sroa_idx, align 4
  %policyvers = getelementptr inbounds %struct.policydb, ptr %3, i32 0, i32 24
  %11 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %12)
  %cmp = icmp ugt i32 %12, 23
  br i1 %cmp, label %if.then, label %entry.do.end16_crit_edge

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end16

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %bounds = getelementptr inbounds %struct.role_datum, ptr %datum, i32 0, i32 1
  %13 = ptrtoint ptr %bounds to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bounds, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %buf.8.buf.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %buf.8.buf.8..sroa_idx, align 4
  br label %do.end16

do.end16:                                         ; preds = %if.then, %entry.do.end16_crit_edge
  %items.0 = phi i32 [ 12, %if.then ], [ 8, %entry.do.end16_crit_edge ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %19 = call ptr @memcpy(ptr %18, ptr %buf, i32 %items.0)
  %20 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %items.0
  store ptr %add.ptr.i, ptr %1, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len2.i, align 4
  %sub.i = sub i32 %22, %items.0
  store i32 %sub.i, ptr %len2.i, align 4
  %23 = call ptr @memcpy(ptr %add.ptr.i, ptr %vkey, i32 %call)
  %24 = load ptr, ptr %1, align 4
  %add.ptr.i61 = getelementptr i8, ptr %24, i32 %call
  store ptr %add.ptr.i61, ptr %1, align 4
  %25 = load i32, ptr %len2.i, align 4
  %sub.i63 = sub i32 %25, %call
  store i32 %sub.i63, ptr %len2.i, align 4
  %dominates = getelementptr inbounds %struct.role_datum, ptr %datum, i32 0, i32 2
  %call25 = tail call i32 @ebitmap_write(ptr noundef %dominates, ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %do.end16.cleanup_crit_edge

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end28:                                         ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #19
  %types = getelementptr inbounds %struct.role_datum, ptr %datum, i32 0, i32 3
  %call29 = tail call i32 @ebitmap_write(ptr noundef %types, ptr noundef %1) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %do.end16.cleanup_crit_edge ], [ %call29, %if.end28 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf)
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @type_write(ptr nocapture noundef readonly %vkey, ptr nocapture noundef readonly %datum, ptr nocapture noundef readonly %ptr) #15 align 64 {
entry:
  %buf = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %fp2 = getelementptr inbounds %struct.policy_data, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %fp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fp2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf)
  %buf.4.buf.4..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 4
  %4 = getelementptr inbounds i8, ptr %buf, i32 12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4
  %call = tail call i32 @strlen(ptr noundef %vkey) #23
  %6 = tail call i32 @llvm.bswap.i32(i32 %call)
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %buf, align 4
  %8 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %datum, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %buf.4.buf.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %buf.4.buf.4..sroa_idx, align 4
  %policyvers = getelementptr inbounds %struct.policydb, ptr %1, i32 0, i32 24
  %12 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %13)
  %cmp = icmp ugt i32 %13, 23
  %primary = getelementptr inbounds %struct.type_datum, ptr %datum, i32 0, i32 2
  %14 = ptrtoint ptr %primary to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %primary, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %buf.12.buf.12..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.not = icmp eq i8 %15, 0
  %attribute = getelementptr inbounds %struct.type_datum, ptr %datum, i32 0, i32 3
  %16 = ptrtoint ptr %attribute to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %attribute, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not = icmp eq i8 %17, 0
  %18 = select i1 %tobool.not.not, i32 0, i32 16777216
  %19 = or i32 %18, 33554432
  %20 = select i1 %tobool6.not, i32 %18, i32 %19
  %bounds = getelementptr inbounds %struct.type_datum, ptr %datum, i32 0, i32 1
  %21 = ptrtoint ptr %bounds to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bounds, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %buf.12.buf.12..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %buf.12.buf.12..sroa_idx, align 4
  br label %do.end29

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i8 %15 to i32
  %25 = shl nuw i32 %conv, 24
  br label %do.end29

do.end29:                                         ; preds = %if.else, %if.then
  %.sink = phi i32 [ %20, %if.then ], [ %25, %if.else ]
  %items.0 = phi i32 [ 16, %if.then ], [ 12, %if.else ]
  %buf.8.buf.8..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 8
  %26 = ptrtoint ptr %buf.8.buf.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %buf.8.buf.8..sroa_idx, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %3, align 4
  %29 = call ptr @memcpy(ptr %28, ptr %buf, i32 %items.0)
  %30 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 %items.0
  store ptr %add.ptr.i, ptr %3, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %3, i32 0, i32 1
  %31 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len2.i, align 4
  %sub.i = sub i32 %32, %items.0
  store i32 %sub.i, ptr %len2.i, align 4
  %33 = call ptr @memcpy(ptr %add.ptr.i, ptr %vkey, i32 %call)
  %34 = load ptr, ptr %3, align 4
  %add.ptr.i65 = getelementptr i8, ptr %34, i32 %call
  store ptr %add.ptr.i65, ptr %3, align 4
  %35 = load i32, ptr %len2.i, align 4
  %sub.i67 = sub i32 %35, %call
  store i32 %sub.i67, ptr %len2.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @user_write(ptr nocapture noundef readonly %vkey, ptr noundef %datum, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  %buf.i = alloca [3 x i32], align 4
  %buf = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %fp2 = getelementptr inbounds %struct.policy_data, ptr %ptr, i32 0, i32 1
  %2 = ptrtoint ptr %fp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fp2, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf)
  %buf.4.buf.4..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 4
  %buf.8.buf.8..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 8
  %4 = ptrtoint ptr %buf.8.buf.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %buf.8.buf.8..sroa_idx, align 4
  %call = tail call i32 @strlen(ptr noundef %vkey) #23
  %5 = tail call i32 @llvm.bswap.i32(i32 %call)
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %buf, align 4
  %7 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %datum, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %buf.4.buf.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %buf.4.buf.4..sroa_idx, align 4
  %policyvers = getelementptr inbounds %struct.policydb, ptr %1, i32 0, i32 24
  %11 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %12)
  %cmp = icmp ugt i32 %12, 23
  br i1 %cmp, label %if.then, label %entry.do.end16_crit_edge

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end16

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %bounds = getelementptr inbounds %struct.user_datum, ptr %datum, i32 0, i32 1
  %13 = ptrtoint ptr %bounds to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bounds, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %buf.8.buf.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %buf.8.buf.8..sroa_idx, align 4
  br label %do.end16

do.end16:                                         ; preds = %if.then, %entry.do.end16_crit_edge
  %items.0 = phi i32 [ 12, %if.then ], [ 8, %entry.do.end16_crit_edge ]
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %19 = call ptr @memcpy(ptr %18, ptr %buf, i32 %items.0)
  %20 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 %items.0
  store ptr %add.ptr.i, ptr %3, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len2.i, align 4
  %sub.i = sub i32 %22, %items.0
  store i32 %sub.i, ptr %len2.i, align 4
  %23 = call ptr @memcpy(ptr %add.ptr.i, ptr %vkey, i32 %call)
  %24 = load ptr, ptr %3, align 4
  %add.ptr.i69 = getelementptr i8, ptr %24, i32 %call
  store ptr %add.ptr.i69, ptr %3, align 4
  %25 = load i32, ptr %len2.i, align 4
  %sub.i71 = sub i32 %25, %call
  store i32 %sub.i71, ptr %len2.i, align 4
  %roles = getelementptr inbounds %struct.user_datum, ptr %datum, i32 0, i32 2
  %call25 = tail call i32 @ebitmap_write(ptr noundef %roles, ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %do.end16.cleanup_crit_edge

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end28:                                         ; preds = %do.end16
  %range = getelementptr inbounds %struct.user_datum, ptr %datum, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf.i)
  %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 4
  %buf.i.8.buf.i.8.buf.8.buf.8..sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 8
  %26 = ptrtoint ptr %buf.i.8.buf.i.8.buf.8.buf.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %buf.i.8.buf.i.8.buf.8.buf.8..sroa_idx, align 4
  %arrayidx.i = getelementptr %struct.user_datum, ptr %datum, i32 0, i32 3, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %29 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %range, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp.i.i = icmp eq i32 %28, %30
  br i1 %cmp.i.i, label %mls_level_eq.exit.i, label %if.end28.if.then8.i_crit_edge

if.end28.if.then8.i_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8.i

mls_level_eq.exit.i:                              ; preds = %if.end28
  %cat.i.i = getelementptr %struct.user_datum, ptr %datum, i32 0, i32 3, i32 0, i32 1, i32 1
  %cat2.i.i = getelementptr inbounds %struct.user_datum, ptr %datum, i32 0, i32 3, i32 0, i32 0, i32 1
  %call.i.i = tail call i32 @ebitmap_cmp(ptr noundef %cat.i.i, ptr noundef %cat2.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i, label %mls_level_eq.exit.i.if.then8.i_crit_edge, label %31

mls_level_eq.exit.i.if.then8.i_crit_edge:         ; preds = %mls_level_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8.i

31:                                               ; preds = %mls_level_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %32 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 16777216, ptr %buf.i, align 4
  br label %do.end23.i

if.then8.i:                                       ; preds = %mls_level_eq.exit.i.if.then8.i_crit_edge, %if.end28.if.then8.i_crit_edge
  %33 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 33554432, ptr %buf.i, align 4
  %34 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %range, align 4
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #17
  %37 = ptrtoint ptr %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx, align 4
  br label %do.end23.i

do.end23.i:                                       ; preds = %if.then8.i, %31
  %r.sink.i = phi ptr [ %range, %31 ], [ %arrayidx.i, %if.then8.i ]
  %buf.4.buf.4..sroa_idx.sink.i = phi ptr [ %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx, %31 ], [ %buf.i.8.buf.i.8.buf.8.buf.8..sroa_idx, %if.then8.i ]
  %38 = phi i32 [ 8, %31 ], [ 12, %if.then8.i ]
  %39 = phi i1 [ false, %31 ], [ true, %if.then8.i ]
  %40 = ptrtoint ptr %r.sink.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %r.sink.i, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #17
  %43 = ptrtoint ptr %buf.4.buf.4..sroa_idx.sink.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %buf.4.buf.4..sroa_idx.sink.i, align 4
  %44 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %3, align 4
  %46 = call ptr @memcpy(ptr %45, ptr %buf.i, i32 %38)
  %47 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 %38
  store ptr %add.ptr.i.i, ptr %3, align 4
  %48 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len2.i, align 4
  %sub.i.i = sub i32 %49, %38
  store i32 %sub.i.i, ptr %len2.i, align 4
  %cat.i = getelementptr inbounds %struct.user_datum, ptr %datum, i32 0, i32 3, i32 0, i32 0, i32 1
  %call30.i = tail call i32 @ebitmap_write(ptr noundef %cat.i, ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %do.end23.i.mls_write_range_helper.exit.thread_crit_edge

do.end23.i.mls_write_range_helper.exit.thread_crit_edge: ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mls_write_range_helper.exit.thread

if.end33.i:                                       ; preds = %do.end23.i
  br i1 %39, label %if.then35.i, label %if.end33.i.if.end32_crit_edge

if.end33.i.if.end32_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then35.i:                                      ; preds = %if.end33.i
  %cat38.i = getelementptr %struct.user_datum, ptr %datum, i32 0, i32 3, i32 0, i32 1, i32 1
  %call39.i = tail call i32 @ebitmap_write(ptr noundef %cat38.i, ptr noundef %3) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.then35.i.if.end32_crit_edge, label %if.then35.i.mls_write_range_helper.exit.thread_crit_edge

if.then35.i.mls_write_range_helper.exit.thread_crit_edge: ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mls_write_range_helper.exit.thread

if.then35.i.if.end32_crit_edge:                   ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

mls_write_range_helper.exit.thread:               ; preds = %if.then35.i.mls_write_range_helper.exit.thread_crit_edge, %do.end23.i.mls_write_range_helper.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call39.i, %if.then35.i.mls_write_range_helper.exit.thread_crit_edge ], [ %call30.i, %do.end23.i.mls_write_range_helper.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i)
  br label %cleanup

if.end32:                                         ; preds = %if.then35.i.if.end32_crit_edge, %if.end33.i.if.end32_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i)
  %dfltlevel = getelementptr inbounds %struct.user_datum, ptr %datum, i32 0, i32 4
  %50 = ptrtoint ptr %dfltlevel to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dfltlevel, align 4
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #17
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %3, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_storeN_noabort(i32 %55, i32 4)
  store i32 %52, ptr %54, align 1
  %56 = load ptr, ptr %3, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %56, i32 4
  store ptr %add.ptr.i.i72, ptr %3, align 4
  %57 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len2.i, align 4
  %sub.i.i74 = add i32 %58, -4
  store i32 %sub.i.i74, ptr %len2.i, align 4
  %cat.i75 = getelementptr inbounds %struct.user_datum, ptr %datum, i32 0, i32 4, i32 1
  %call1.i = tail call i32 @ebitmap_write(ptr noundef %cat.i75, ptr noundef %3) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %mls_write_range_helper.exit.thread, %do.end16.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %do.end16.cleanup_crit_edge ], [ %call1.i, %if.end32 ], [ %retval.0.i.ph, %mls_write_range_helper.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cond_write_bool(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sens_write(ptr nocapture noundef readonly %vkey, ptr nocapture noundef readonly %datum, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fp1 = getelementptr inbounds %struct.policy_data, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %fp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp1, align 4
  %call = tail call i32 @strlen(ptr noundef %vkey) #23
  %2 = tail call i32 @llvm.bswap.i32(i32 %call)
  %isalias = getelementptr inbounds %struct.level_datum, ptr %datum, i32 0, i32 1
  %3 = ptrtoint ptr %isalias to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %isalias, align 4
  %conv = zext i8 %4 to i32
  %5 = shl nuw i32 %conv, 24
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %2, ptr %7, align 1
  %buf.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %7, i32 4
  %9 = ptrtoint ptr %buf.sroa.5.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %5, ptr %buf.sroa.5.0..sroa_idx, align 1
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 8
  store ptr %add.ptr.i, ptr %1, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %12, -8
  store i32 %sub.i, ptr %len2.i, align 4
  %13 = call ptr @memcpy(ptr %add.ptr.i, ptr %vkey, i32 %call)
  %14 = load ptr, ptr %1, align 4
  %add.ptr.i28 = getelementptr i8, ptr %14, i32 %call
  store ptr %add.ptr.i28, ptr %1, align 4
  %15 = load i32, ptr %len2.i, align 4
  %sub.i30 = sub i32 %15, %call
  store i32 %sub.i30, ptr %len2.i, align 4
  %16 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %datum, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #17
  %21 = ptrtoint ptr %add.ptr.i28 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %add.ptr.i28, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 4
  store ptr %add.ptr.i.i, ptr %1, align 4
  %24 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len2.i, align 4
  %sub.i.i = add i32 %25, -4
  store i32 %sub.i.i, ptr %len2.i, align 4
  %cat.i = getelementptr inbounds %struct.mls_level, ptr %17, i32 0, i32 1
  %call1.i = tail call i32 @ebitmap_write(ptr noundef %cat.i, ptr noundef %1) #17
  ret i32 %call1.i
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cat_write(ptr nocapture noundef readonly %vkey, ptr nocapture noundef readonly %datum, ptr nocapture noundef readonly %ptr) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fp1 = getelementptr inbounds %struct.policy_data, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %fp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp1, align 4
  %call = tail call i32 @strlen(ptr noundef %vkey) #23
  %2 = tail call i32 @llvm.bswap.i32(i32 %call)
  %3 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %datum, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %isalias = getelementptr inbounds %struct.cat_datum, ptr %datum, i32 0, i32 1
  %6 = ptrtoint ptr %isalias to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %isalias, align 4
  %conv = zext i8 %7 to i32
  %8 = shl nuw i32 %conv, 24
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %2, ptr %10, align 1
  %buf.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 4
  %12 = ptrtoint ptr %buf.sroa.5.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %5, ptr %buf.sroa.5.0..sroa_idx, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 8
  %13 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %8, ptr %buf.sroa.7.0..sroa_idx, align 1
  %14 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 12
  store ptr %add.ptr.i, ptr %1, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %16, -12
  store i32 %sub.i, ptr %len2.i, align 4
  %17 = call ptr @memcpy(ptr %add.ptr.i, ptr %vkey, i32 %call)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i22 = getelementptr i8, ptr %18, i32 %call
  store ptr %add.ptr.i22, ptr %1, align 4
  %19 = load i32, ptr %len2.i, align 4
  %sub.i24 = sub i32 %19, %call
  store i32 %sub.i24, ptr %len2.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @perm_write(ptr nocapture noundef readonly %vkey, ptr nocapture noundef readonly %datum, ptr nocapture noundef %fp) #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %vkey) #23
  %0 = tail call i32 @llvm.bswap.i32(i32 %call)
  %1 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %datum, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fp, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %0, ptr %5, align 1
  %buf.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %5, i32 4
  %7 = ptrtoint ptr %buf.sroa.5.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %7, i32 4)
  store i32 %3, ptr %buf.sroa.5.0..sroa_idx, align 1
  %8 = load ptr, ptr %fp, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 8
  store ptr %add.ptr.i, ptr %fp, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %9 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %10, -8
  store i32 %sub.i, ptr %len2.i, align 4
  %11 = call ptr @memcpy(ptr %add.ptr.i, ptr %vkey, i32 %call)
  %12 = load ptr, ptr %fp, align 4
  %add.ptr.i17 = getelementptr i8, ptr %12, i32 %call
  store ptr %add.ptr.i17, ptr %fp, align 4
  %13 = load i32, ptr %len2.i, align 4
  %sub.i19 = sub i32 %13, %call
  store i32 %sub.i19, ptr %len2.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @write_cons_helper(ptr nocapture noundef readonly %p, ptr noundef readonly %node, ptr noundef %fp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not79 = icmp eq ptr %node, null
  br i1 %tobool.not79, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %policyvers = getelementptr inbounds %struct.policydb, ptr %p, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %for.inc32.for.body_crit_edge, %for.body.lr.ph
  %c.080 = phi ptr [ %node, %for.body.lr.ph ], [ %48, %for.inc32.for.body_crit_edge ]
  %expr = getelementptr inbounds %struct.constraint_node, ptr %c.080, i32 0, i32 1
  %0 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %0)
  %e.072 = load ptr, ptr %expr, align 4
  %tobool2.not73 = icmp eq ptr %e.072, null
  br i1 %tobool2.not73, label %for.body.for.end_crit_edge, label %for.body.for.body3_crit_edge

for.body.for.body3_crit_edge:                     ; preds = %for.body
  br label %for.body3

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body.for.body3_crit_edge
  %e.075 = phi ptr [ %e.0, %for.body3.for.body3_crit_edge ], [ %e.072, %for.body.for.body3_crit_edge ]
  %nel.074 = phi i32 [ %inc, %for.body3.for.body3_crit_edge ], [ 0, %for.body.for.body3_crit_edge ]
  %inc = add i32 %nel.074, 1
  %next = getelementptr inbounds %struct.constraint_expr, ptr %e.075, i32 0, i32 5
  %1 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %1)
  %e.0 = load ptr, ptr %next, align 4
  %tobool2.not = icmp eq ptr %e.0, null
  br i1 %tobool2.not, label %for.body3.for.end_crit_edge, label %for.body3.for.body3_crit_edge

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body3

for.body3.for.end_crit_edge:                      ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.body3.for.end_crit_edge, %for.body.for.end_crit_edge
  %nel.0.lcssa = phi i32 [ 0, %for.body.for.end_crit_edge ], [ %inc, %for.body3.for.end_crit_edge ]
  %2 = ptrtoint ptr %c.080 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c.080, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = tail call i32 @llvm.bswap.i32(i32 %nel.0.lcssa)
  %6 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fp, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %4, ptr %7, align 1
  %buf.sroa.7.0..sroa_idx67 = getelementptr inbounds i8, ptr %7, i32 4
  %9 = ptrtoint ptr %buf.sroa.7.0..sroa_idx67 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %5, ptr %buf.sroa.7.0..sroa_idx67, align 1
  %10 = load ptr, ptr %fp, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 8
  store ptr %add.ptr.i, ptr %fp, align 4
  %11 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %12, -8
  store i32 %sub.i, ptr %len2.i, align 4
  %13 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %13)
  %e.176 = load ptr, ptr %expr, align 4
  %tobool8.not77 = icmp eq ptr %e.176, null
  br i1 %tobool8.not77, label %for.end.for.inc32_crit_edge, label %for.end.for.body9_crit_edge

for.end.for.body9_crit_edge:                      ; preds = %for.end
  br label %for.body9

for.end.for.inc32_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc32

for.body9:                                        ; preds = %for.inc29.for.body9_crit_edge, %for.end.for.body9_crit_edge
  %e.178 = phi ptr [ %e.1, %for.inc29.for.body9_crit_edge ], [ %e.176, %for.end.for.body9_crit_edge ]
  %14 = ptrtoint ptr %e.178 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %e.178, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %attr = getelementptr inbounds %struct.constraint_expr, ptr %e.178, i32 0, i32 1
  %17 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %attr, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %op = getelementptr inbounds %struct.constraint_expr, ptr %e.178, i32 0, i32 2
  %20 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %op, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fp, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %16, ptr %24, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %24, i32 4
  %26 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %19, ptr %buf.sroa.7.0..sroa_idx, align 1
  %buf.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %24, i32 8
  %27 = ptrtoint ptr %buf.sroa.10.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 %22, ptr %buf.sroa.10.0..sroa_idx, align 1
  %28 = load ptr, ptr %fp, align 4
  %add.ptr.i63 = getelementptr i8, ptr %28, i32 12
  store ptr %add.ptr.i63, ptr %fp, align 4
  %29 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len2.i, align 4
  %sub.i65 = add i32 %30, -12
  store i32 %sub.i65, ptr %len2.i, align 4
  %31 = ptrtoint ptr %e.178 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %e.178, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %32)
  %cond = icmp eq i32 %32, 5
  br i1 %cond, label %sw.bb, label %for.body9.for.inc29_crit_edge

for.body9.for.inc29_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc29

sw.bb:                                            ; preds = %for.body9
  %names = getelementptr inbounds %struct.constraint_expr, ptr %e.178, i32 0, i32 3
  %call19 = tail call i32 @ebitmap_write(ptr noundef %names, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end22:                                         ; preds = %sw.bb
  %33 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %34)
  %cmp = icmp ugt i32 %34, 28
  br i1 %cmp, label %if.then23, label %if.end22.for.inc29_crit_edge

if.end22.for.inc29_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc29

if.then23:                                        ; preds = %if.end22
  %type_names = getelementptr inbounds %struct.constraint_expr, ptr %e.178, i32 0, i32 4
  %35 = ptrtoint ptr %type_names to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %type_names, align 4
  %call.i = tail call i32 @ebitmap_write(ptr noundef %36, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i:                                         ; preds = %if.then23
  %negset.i = getelementptr inbounds %struct.type_set, ptr %36, i32 0, i32 1
  %call1.i = tail call i32 @ebitmap_write(ptr noundef %negset.i, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %type_set_write.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

type_set_write.exit:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %flags.i = getelementptr inbounds %struct.type_set, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags.i, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #17
  %40 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fp, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 %39, ptr %41, align 1
  %43 = load ptr, ptr %fp, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 4
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %44 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len2.i, align 4
  %sub.i.i = add i32 %45, -4
  store i32 %sub.i.i, ptr %len2.i, align 4
  br label %for.inc29

for.inc29:                                        ; preds = %type_set_write.exit, %if.end22.for.inc29_crit_edge, %for.body9.for.inc29_crit_edge
  %next30 = getelementptr inbounds %struct.constraint_expr, ptr %e.178, i32 0, i32 5
  %46 = ptrtoint ptr %next30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %e.1 = load ptr, ptr %next30, align 4
  %tobool8.not = icmp eq ptr %e.1, null
  br i1 %tobool8.not, label %for.inc29.for.inc32_crit_edge, label %for.inc29.for.body9_crit_edge

for.inc29.for.body9_crit_edge:                    ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body9

for.inc29.for.inc32_crit_edge:                    ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc32

for.inc32:                                        ; preds = %for.inc29.for.inc32_crit_edge, %for.end.for.inc32_crit_edge
  %next33 = getelementptr inbounds %struct.constraint_node, ptr %c.080, i32 0, i32 2
  %47 = ptrtoint ptr %next33 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %next33, align 4
  %tobool.not = icmp eq ptr %48, null
  br i1 %tobool.not, label %for.inc32.cleanup_crit_edge, label %for.inc32.for.body_crit_edge

for.inc32.for.body_crit_edge:                     ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc32.cleanup_crit_edge:                      ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %for.inc32.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.then23.cleanup_crit_edge ], [ %call19, %sw.bb.cleanup_crit_edge ], [ 0, %for.inc32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ebitmap_cmp(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @role_trans_write_one(ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %datum, ptr nocapture noundef readonly %ptr) #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fp1 = getelementptr inbounds %struct.policy_data, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %fp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp1, align 4
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptr, align 4
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %type = getelementptr inbounds %struct.role_trans_key, ptr %key, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %datum, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %6, ptr %14, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 4
  %16 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %9, ptr %buf.sroa.7.0..sroa_idx, align 1
  %buf.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %14, i32 8
  %17 = ptrtoint ptr %buf.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %12, ptr %buf.sroa.9.0..sroa_idx, align 1
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 12
  store ptr %add.ptr.i, ptr %1, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %20, -12
  store i32 %sub.i, ptr %len2.i, align 4
  %policyvers = getelementptr inbounds %struct.policydb, ptr %3, i32 0, i32 24
  %21 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %22)
  %cmp = icmp ugt i32 %22, 25
  br i1 %cmp, label %if.then5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %tclass = getelementptr inbounds %struct.role_trans_key, ptr %key, i32 0, i32 2
  %23 = ptrtoint ptr %tclass to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tclass, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %add.ptr.i, align 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr.i26 = getelementptr i8, ptr %28, i32 4
  store ptr %add.ptr.i26, ptr %1, align 4
  %29 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len2.i, align 4
  %sub.i28 = add i32 %30, -4
  store i32 %sub.i28, ptr %len2.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filename_write_helper_compat(ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %data, ptr nocapture noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.filename_trans_key, ptr %key, i32 0, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #23
  %2 = tail call i32 @llvm.bswap.i32(i32 %call)
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %ptr, i32 0, i32 1
  %tclass = getelementptr inbounds %struct.filename_trans_key, ptr %key, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %entry
  %datum.0 = phi ptr [ %data, %entry ], [ %52, %for.end.do.body_crit_edge ]
  %3 = ptrtoint ptr %datum.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %storemerge8.i = load ptr, ptr %datum.0, align 4
  %tobool.not9.i = icmp eq ptr %storemerge8.i, null
  br i1 %tobool.not9.i, label %do.body.for.end.i_crit_edge, label %do.body.for.body.i_crit_edge

do.body.for.body.i_crit_edge:                     ; preds = %do.body
  br label %for.body.i

do.body.for.end.i_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body.for.body.i_crit_edge
  %node.0 = phi ptr [ %storemerge.i, %for.inc.i.for.body.i_crit_edge ], [ %storemerge8.i, %do.body.for.body.i_crit_edge ]
  %maps.i = getelementptr inbounds %struct.ebitmap_node, ptr %node.0, i32 0, i32 1
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %maps.i, i32 noundef 192) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 192
  br i1 %cmp.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %startbit.i = getelementptr inbounds %struct.ebitmap_node, ptr %node.0, i32 0, i32 2
  %4 = ptrtoint ptr %startbit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %startbit.i, align 4
  %add.i = add i32 %5, %call.i
  br label %ebitmap_start_positive.exit

for.inc.i:                                        ; preds = %for.body.i
  %6 = ptrtoint ptr %node.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %storemerge.i = load ptr, ptr %node.0, align 4
  %tobool.not.i = icmp eq ptr %storemerge.i, null
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.body.for.end.i_crit_edge
  %highbit.i = getelementptr inbounds %struct.ebitmap, ptr %datum.0, i32 0, i32 1
  %7 = ptrtoint ptr %highbit.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %highbit.i, align 4
  br label %ebitmap_start_positive.exit

ebitmap_start_positive.exit:                      ; preds = %for.end.i, %if.then.i
  %node.2 = phi ptr [ null, %for.end.i ], [ %node.0, %if.then.i ]
  %retval.0.i = phi i32 [ %8, %for.end.i ], [ %add.i, %if.then.i ]
  %highbit = getelementptr inbounds %struct.ebitmap, ptr %datum.0, i32 0, i32 1
  %9 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %highbit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %10)
  %cmp75 = icmp ult i32 %retval.0.i, %10
  br i1 %cmp75, label %for.body.lr.ph, label %ebitmap_start_positive.exit.for.end_crit_edge

ebitmap_start_positive.exit.for.end_crit_edge:    ; preds = %ebitmap_start_positive.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %ebitmap_start_positive.exit
  %otype = getelementptr inbounds %struct.filename_trans_datum, ptr %datum.0, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %ebitmap_next_positive.exit.for.body_crit_edge, %for.body.lr.ph
  %bit.077 = phi i32 [ %retval.0.i, %for.body.lr.ph ], [ %retval.0.i66, %ebitmap_next_positive.exit.for.body_crit_edge ]
  %node.376 = phi ptr [ %node.2, %for.body.lr.ph ], [ %node.5, %ebitmap_next_positive.exit.for.body_crit_edge ]
  %11 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ptr, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %2, ptr %12, align 1
  %14 = load ptr, ptr %ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  store ptr %add.ptr.i, ptr %ptr, align 4
  %15 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %16, -4
  store i32 %sub.i, ptr %len2.i, align 4
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %19 = call ptr @memcpy(ptr %add.ptr.i, ptr %18, i32 %call)
  %20 = load ptr, ptr %ptr, align 4
  %add.ptr.i48 = getelementptr i8, ptr %20, i32 %call
  store ptr %add.ptr.i48, ptr %ptr, align 4
  %21 = load i32, ptr %len2.i, align 4
  %sub.i50 = sub i32 %21, %call
  store i32 %sub.i50, ptr %len2.i, align 4
  %add = add nuw i32 %bit.077, 1
  %22 = tail call i32 @llvm.bswap.i32(i32 %add)
  %23 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %key, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %tclass to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %tclass, align 4
  %conv = zext i16 %27 to i32
  %28 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %29 = ptrtoint ptr %otype to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %otype, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %32 = ptrtoint ptr %add.ptr.i48 to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 %22, ptr %add.ptr.i48, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i48, i32 4
  %33 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 %25, ptr %buf.sroa.7.0..sroa_idx, align 1
  %buf.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i48, i32 8
  %34 = ptrtoint ptr %buf.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 %28, ptr %buf.sroa.9.0..sroa_idx, align 1
  %buf.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i48, i32 12
  %35 = ptrtoint ptr %buf.sroa.11.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %31, ptr %buf.sroa.11.0..sroa_idx, align 1
  %36 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ptr, align 4
  %add.ptr.i51 = getelementptr i8, ptr %37, i32 16
  store ptr %add.ptr.i51, ptr %ptr, align 4
  %38 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len2.i, align 4
  %sub.i53 = add i32 %39, -16
  store i32 %sub.i53, ptr %len2.i, align 4
  %maps.i54 = getelementptr inbounds %struct.ebitmap_node, ptr %node.376, i32 0, i32 1
  %startbit.i55 = getelementptr inbounds %struct.ebitmap_node, ptr %node.376, i32 0, i32 2
  %40 = ptrtoint ptr %startbit.i55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %startbit.i55, align 4
  %add.i57 = sub i32 %add, %41
  %call.i58 = tail call i32 @_find_next_bit_be(ptr noundef %maps.i54, i32 noundef 192, i32 noundef %add.i57) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %call.i58)
  %cmp.i59 = icmp ult i32 %call.i58, 192
  br i1 %cmp.i59, label %if.then.i60, label %for.body.for.cond.i_crit_edge

for.body.for.cond.i_crit_edge:                    ; preds = %for.body
  br label %for.cond.i

if.then.i60:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %42 = ptrtoint ptr %startbit.i55 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %startbit.i55, align 4
  %add2.i = add i32 %43, %call.i58
  br label %ebitmap_next_positive.exit

for.cond.i:                                       ; preds = %for.body.i63.for.cond.i_crit_edge, %for.body.for.cond.i_crit_edge
  %node.4 = phi ptr [ %storemerge.i61, %for.body.i63.for.cond.i_crit_edge ], [ %node.376, %for.body.for.cond.i_crit_edge ]
  %44 = ptrtoint ptr %node.4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %storemerge.i61 = load ptr, ptr %node.4, align 4
  %tobool.not.i62 = icmp eq ptr %storemerge.i61, null
  br i1 %tobool.not.i62, label %for.end.i65, label %for.body.i63

for.body.i63:                                     ; preds = %for.cond.i
  %maps3.i = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i61, i32 0, i32 1
  %call5.i = tail call i32 @_find_first_bit_be(ptr noundef %maps3.i, i32 noundef 192) #17
  %cmp6.i = icmp ult i32 %call5.i, 192
  br i1 %cmp6.i, label %if.then7.i, label %for.body.i63.for.cond.i_crit_edge

for.body.i63.for.cond.i_crit_edge:                ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

if.then7.i:                                       ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #19
  %startbit8.i = getelementptr inbounds %struct.ebitmap_node, ptr %storemerge.i61, i32 0, i32 2
  %45 = ptrtoint ptr %startbit8.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %startbit8.i, align 4
  %add9.i = add i32 %46, %call5.i
  br label %ebitmap_next_positive.exit

for.end.i65:                                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  %47 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %highbit, align 4
  br label %ebitmap_next_positive.exit

ebitmap_next_positive.exit:                       ; preds = %for.end.i65, %if.then7.i, %if.then.i60
  %node.5 = phi ptr [ %node.376, %if.then.i60 ], [ null, %for.end.i65 ], [ %storemerge.i61, %if.then7.i ]
  %retval.0.i66 = phi i32 [ %add2.i, %if.then.i60 ], [ %48, %for.end.i65 ], [ %add9.i, %if.then7.i ]
  %49 = ptrtoint ptr %highbit to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %highbit, align 4
  %cmp = icmp ult i32 %retval.0.i66, %50
  br i1 %cmp, label %ebitmap_next_positive.exit.for.body_crit_edge, label %ebitmap_next_positive.exit.for.end_crit_edge

ebitmap_next_positive.exit.for.end_crit_edge:     ; preds = %ebitmap_next_positive.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

ebitmap_next_positive.exit.for.body_crit_edge:    ; preds = %ebitmap_next_positive.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %ebitmap_next_positive.exit.for.end_crit_edge, %ebitmap_start_positive.exit.for.end_crit_edge
  %next = getelementptr inbounds %struct.filename_trans_datum, ptr %datum.0, i32 0, i32 2
  %51 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %next, align 4
  %tobool20.not = icmp eq ptr %52, null
  br i1 %tobool20.not, label %cleanup, label %for.end.do.body_crit_edge, !prof !228

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

cleanup:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filename_write_helper(ptr nocapture noundef readonly %key, ptr noundef %data, ptr noundef %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.filename_trans_key, ptr %key, i32 0, i32 2
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #23
  %2 = tail call i32 @llvm.bswap.i32(i32 %call)
  %3 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ptr, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %2, ptr %4, align 1
  %6 = load ptr, ptr %ptr, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 4
  store ptr %add.ptr.i, ptr %ptr, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %ptr, i32 0, i32 1
  %7 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %8, -4
  store i32 %sub.i, ptr %len2.i, align 4
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %11 = call ptr @memcpy(ptr %add.ptr.i, ptr %10, i32 %call)
  %12 = load ptr, ptr %ptr, align 4
  %add.ptr.i69 = getelementptr i8, ptr %12, i32 %call
  store ptr %add.ptr.i69, ptr %ptr, align 4
  %13 = load i32, ptr %len2.i, align 4
  %sub.i71 = sub i32 %13, %call
  store i32 %sub.i71, ptr %len2.i, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %datum.0 = phi ptr [ %data, %entry ], [ %15, %do.body.do.body_crit_edge ]
  %ndatum.0 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %inc = add i32 %ndatum.0, 1
  %next = getelementptr inbounds %struct.filename_trans_datum, ptr %datum.0, i32 0, i32 2
  %14 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %next, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %do.end, label %do.body.do.body_crit_edge, !prof !228

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.end:                                           ; preds = %do.body
  %16 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %tclass = getelementptr inbounds %struct.filename_trans_key, ptr %key, i32 0, i32 1
  %19 = ptrtoint ptr %tclass to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %tclass, align 4
  %conv = zext i16 %20 to i32
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %22 = tail call i32 @llvm.bswap.i32(i32 %inc)
  %23 = ptrtoint ptr %add.ptr.i69 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %18, ptr %add.ptr.i69, align 1
  %buf.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i69, i32 4
  %24 = ptrtoint ptr %buf.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %21, ptr %buf.sroa.9.0..sroa_idx, align 1
  %buf.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %add.ptr.i69, i32 8
  %25 = ptrtoint ptr %buf.sroa.11.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %22, ptr %buf.sroa.11.0..sroa_idx, align 1
  %26 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ptr, align 4
  %add.ptr.i72 = getelementptr i8, ptr %27, i32 12
  store ptr %add.ptr.i72, ptr %ptr, align 4
  %28 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len2.i, align 4
  %sub.i74 = add i32 %29, -12
  store i32 %sub.i74, ptr %len2.i, align 4
  br label %do.body18

do.body18:                                        ; preds = %if.end22.do.body18_crit_edge, %do.end
  %datum.1 = phi ptr [ %data, %do.end ], [ %40, %if.end22.do.body18_crit_edge ]
  %call19 = tail call i32 @ebitmap_write(ptr noundef %datum.1, ptr noundef %ptr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %do.body18.cleanup_crit_edge

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end22:                                         ; preds = %do.body18
  %otype = getelementptr inbounds %struct.filename_trans_datum, ptr %datum.1, i32 0, i32 1
  %30 = ptrtoint ptr %otype to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %otype, align 4
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ptr, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %32, ptr %34, align 1
  %36 = load ptr, ptr %ptr, align 4
  %add.ptr.i75 = getelementptr i8, ptr %36, i32 4
  store ptr %add.ptr.i75, ptr %ptr, align 4
  %37 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len2.i, align 4
  %sub.i77 = add i32 %38, -4
  store i32 %sub.i77, ptr %len2.i, align 4
  %next29 = getelementptr inbounds %struct.filename_trans_datum, ptr %datum.1, i32 0, i32 2
  %39 = ptrtoint ptr %next29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %next29, align 4
  %tobool31.not = icmp eq ptr %40, null
  br i1 %tobool31.not, label %if.end22.cleanup_crit_edge, label %if.end22.do.body18_crit_edge, !prof !228

if.end22.do.body18_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body18

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %if.end22.cleanup_crit_edge, %do.body18.cleanup_crit_edge
  ret i32 %call19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @context_write(ptr noundef %c, ptr noundef %fp) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %role = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 1
  %3 = ptrtoint ptr %role to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %role, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %type = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fp, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %2, ptr %10, align 1
  %buf.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 4
  %12 = ptrtoint ptr %buf.sroa.5.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %5, ptr %buf.sroa.5.0..sroa_idx, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %10, i32 8
  %13 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %8, ptr %buf.sroa.7.0..sroa_idx, align 1
  %14 = load ptr, ptr %fp, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 12
  store ptr %add.ptr.i, ptr %fp, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %15 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %16, -12
  store i32 %sub.i, ptr %len2.i, align 4
  %range = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf.i)
  %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 4
  %buf.i.8.buf.i.8.buf.8.buf.8..sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 8
  %17 = ptrtoint ptr %buf.i.8.buf.i.8.buf.8.buf.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %buf.i.8.buf.i.8.buf.8.buf.8..sroa_idx, align 4
  %arrayidx.i = getelementptr %struct.context, ptr %c, i32 0, i32 4, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %20 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %range, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.i.i = icmp eq i32 %19, %21
  br i1 %cmp.i.i, label %mls_level_eq.exit.i, label %entry.if.then8.i_crit_edge

entry.if.then8.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8.i

mls_level_eq.exit.i:                              ; preds = %entry
  %cat.i.i = getelementptr %struct.context, ptr %c, i32 0, i32 4, i32 0, i32 1, i32 1
  %cat2.i.i = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 4, i32 0, i32 0, i32 1
  %call.i.i = tail call i32 @ebitmap_cmp(ptr noundef %cat.i.i, ptr noundef %cat2.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i, label %mls_level_eq.exit.i.if.then8.i_crit_edge, label %22

mls_level_eq.exit.i.if.then8.i_crit_edge:         ; preds = %mls_level_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8.i

22:                                               ; preds = %mls_level_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16777216, ptr %buf.i, align 4
  br label %do.end23.i

if.then8.i:                                       ; preds = %mls_level_eq.exit.i.if.then8.i_crit_edge, %entry.if.then8.i_crit_edge
  %24 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 33554432, ptr %buf.i, align 4
  %25 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %range, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #17
  %28 = ptrtoint ptr %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx, align 4
  br label %do.end23.i

do.end23.i:                                       ; preds = %if.then8.i, %22
  %r.sink.i = phi ptr [ %range, %22 ], [ %arrayidx.i, %if.then8.i ]
  %buf.4.buf.4..sroa_idx.sink.i = phi ptr [ %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx, %22 ], [ %buf.i.8.buf.i.8.buf.8.buf.8..sroa_idx, %if.then8.i ]
  %29 = phi i32 [ 8, %22 ], [ 12, %if.then8.i ]
  %30 = phi i1 [ false, %22 ], [ true, %if.then8.i ]
  %31 = ptrtoint ptr %r.sink.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %r.sink.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #17
  %34 = ptrtoint ptr %buf.4.buf.4..sroa_idx.sink.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %buf.4.buf.4..sroa_idx.sink.i, align 4
  %35 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fp, align 4
  %37 = call ptr @memcpy(ptr %36, ptr %buf.i, i32 %29)
  %38 = load ptr, ptr %fp, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %29
  store ptr %add.ptr.i.i, ptr %fp, align 4
  %39 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len2.i, align 4
  %sub.i.i = sub i32 %40, %29
  store i32 %sub.i.i, ptr %len2.i, align 4
  %cat.i = getelementptr inbounds %struct.context, ptr %c, i32 0, i32 4, i32 0, i32 0, i32 1
  %call30.i = tail call i32 @ebitmap_write(ptr noundef %cat.i, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %do.end23.i.mls_write_range_helper.exit_crit_edge

do.end23.i.mls_write_range_helper.exit_crit_edge: ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mls_write_range_helper.exit

if.end33.i:                                       ; preds = %do.end23.i
  br i1 %30, label %if.then35.i, label %if.end33.i.if.end43.i_crit_edge

if.end33.i.if.end43.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43.i

if.then35.i:                                      ; preds = %if.end33.i
  %cat38.i = getelementptr %struct.context, ptr %c, i32 0, i32 4, i32 0, i32 1, i32 1
  %call39.i = tail call i32 @ebitmap_write(ptr noundef %cat38.i, ptr noundef %fp) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.then35.i.if.end43.i_crit_edge, label %if.then35.i.mls_write_range_helper.exit_crit_edge

if.then35.i.mls_write_range_helper.exit_crit_edge: ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mls_write_range_helper.exit

if.then35.i.if.end43.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then35.i.if.end43.i_crit_edge, %if.end33.i.if.end43.i_crit_edge
  br label %mls_write_range_helper.exit

mls_write_range_helper.exit:                      ; preds = %if.end43.i, %if.then35.i.mls_write_range_helper.exit_crit_edge, %do.end23.i.mls_write_range_helper.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end43.i ], [ %call30.i, %do.end23.i.mls_write_range_helper.exit_crit_edge ], [ %call39.i, %if.then35.i.mls_write_range_helper.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i)
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @range_write_helper(ptr nocapture noundef readonly %key, ptr noundef %data, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  %buf.i = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %fp1 = getelementptr inbounds %struct.policy_data, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %fp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fp1, align 4
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptr, align 4
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %target_type = getelementptr inbounds %struct.range_trans, ptr %key, i32 0, i32 1
  %7 = ptrtoint ptr %target_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %target_type, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %6, ptr %11, align 1
  %buf.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %11, i32 4
  %13 = ptrtoint ptr %buf.sroa.7.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %9, ptr %buf.sroa.7.0..sroa_idx, align 1
  %14 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 8
  store ptr %add.ptr.i, ptr %1, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %16, -8
  store i32 %sub.i, ptr %len2.i, align 4
  %policyvers = getelementptr inbounds %struct.policydb, ptr %3, i32 0, i32 24
  %17 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %policyvers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %18)
  %cmp = icmp ugt i32 %18, 20
  br i1 %cmp, label %if.then4, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end11

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %target_class = getelementptr inbounds %struct.range_trans, ptr %key, i32 0, i32 2
  %19 = ptrtoint ptr %target_class to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %target_class, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %22 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 %21, ptr %add.ptr.i, align 1
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr.i32 = getelementptr i8, ptr %24, i32 4
  store ptr %add.ptr.i32, ptr %1, align 4
  %25 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len2.i, align 4
  %sub.i34 = add i32 %26, -4
  store i32 %sub.i34, ptr %len2.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %entry.if.end11_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %buf.i)
  %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 4
  %buf.i.8.buf.i.8.buf.8.buf.8..sroa_idx = getelementptr inbounds i8, ptr %buf.i, i32 8
  %27 = ptrtoint ptr %buf.i.8.buf.i.8.buf.8.buf.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %buf.i.8.buf.i.8.buf.8.buf.8..sroa_idx, align 4
  %arrayidx.i = getelementptr [2 x %struct.mls_level], ptr %data, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.i.i = icmp eq i32 %29, %31
  br i1 %cmp.i.i, label %mls_level_eq.exit.i, label %if.end11.if.then8.i_crit_edge

if.end11.if.then8.i_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8.i

mls_level_eq.exit.i:                              ; preds = %if.end11
  %cat.i.i = getelementptr [2 x %struct.mls_level], ptr %data, i32 0, i32 1, i32 1
  %cat2.i.i = getelementptr inbounds %struct.mls_level, ptr %data, i32 0, i32 1
  %call.i.i = tail call i32 @ebitmap_cmp(ptr noundef %cat.i.i, ptr noundef %cat2.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.i.i, label %mls_level_eq.exit.i.if.then8.i_crit_edge, label %32

mls_level_eq.exit.i.if.then8.i_crit_edge:         ; preds = %mls_level_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then8.i

32:                                               ; preds = %mls_level_eq.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %33 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16777216, ptr %buf.i, align 4
  br label %do.end23.i

if.then8.i:                                       ; preds = %mls_level_eq.exit.i.if.then8.i_crit_edge, %if.end11.if.then8.i_crit_edge
  %34 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 33554432, ptr %buf.i, align 4
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %data, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #17
  %38 = ptrtoint ptr %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx, align 4
  br label %do.end23.i

do.end23.i:                                       ; preds = %if.then8.i, %32
  %r.sink.i = phi ptr [ %data, %32 ], [ %arrayidx.i, %if.then8.i ]
  %buf.4.buf.4..sroa_idx.sink.i = phi ptr [ %buf.i.4.buf.i.4.buf.4.buf.4..sroa_idx, %32 ], [ %buf.i.8.buf.i.8.buf.8.buf.8..sroa_idx, %if.then8.i ]
  %39 = phi i32 [ 8, %32 ], [ 12, %if.then8.i ]
  %40 = phi i1 [ false, %32 ], [ true, %if.then8.i ]
  %41 = ptrtoint ptr %r.sink.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %r.sink.i, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #17
  %44 = ptrtoint ptr %buf.4.buf.4..sroa_idx.sink.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %buf.4.buf.4..sroa_idx.sink.i, align 4
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %47 = call ptr @memcpy(ptr %46, ptr %buf.i, i32 %39)
  %48 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 %39
  store ptr %add.ptr.i.i, ptr %1, align 4
  %49 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len2.i, align 4
  %sub.i.i = sub i32 %50, %39
  store i32 %sub.i.i, ptr %len2.i, align 4
  %cat.i = getelementptr inbounds %struct.mls_level, ptr %data, i32 0, i32 1
  %call30.i = tail call i32 @ebitmap_write(ptr noundef %cat.i, ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %do.end23.i.mls_write_range_helper.exit_crit_edge

do.end23.i.mls_write_range_helper.exit_crit_edge: ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mls_write_range_helper.exit

if.end33.i:                                       ; preds = %do.end23.i
  br i1 %40, label %if.then35.i, label %if.end33.i.if.end43.i_crit_edge

if.end33.i.if.end43.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43.i

if.then35.i:                                      ; preds = %if.end33.i
  %cat38.i = getelementptr [2 x %struct.mls_level], ptr %data, i32 0, i32 1, i32 1
  %call39.i = tail call i32 @ebitmap_write(ptr noundef %cat38.i, ptr noundef %1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.then35.i.if.end43.i_crit_edge, label %if.then35.i.mls_write_range_helper.exit_crit_edge

if.then35.i.mls_write_range_helper.exit_crit_edge: ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mls_write_range_helper.exit

if.then35.i.if.end43.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.then35.i.if.end43.i_crit_edge, %if.end33.i.if.end43.i_crit_edge
  br label %mls_write_range_helper.exit

mls_write_range_helper.exit:                      ; preds = %if.end43.i, %if.then35.i.mls_write_range_helper.exit_crit_edge, %do.end23.i.mls_write_range_helper.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end43.i ], [ %call30.i, %do.end23.i.mls_write_range_helper.exit_crit_edge ], [ %call39.i, %if.then35.i.mls_write_range_helper.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %buf.i)
  ret i32 %retval.0.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { cold nounwind }
attributes #22 = { nounwind allocsize(2) }
attributes #23 = { nobuiltin }
attributes #24 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !59, !60, !62, !64, !65, !66, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153, !155, !156, !158, !159, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !190, !192, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !215, !216, !217}
!llvm.module.flags = !{!219, !220, !221, !222, !223, !224, !225, !226}
!llvm.ident = !{!227}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/selinux/ss/policydb.c", i32 794, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/selinux/ss/policydb.c", i32 876, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @policydb_load_isids._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @policydb_load_isids._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../security/selinux/ss/policydb.c", i32 886, i32 4}
!9 = !{ptr @policydb_load_isids._entry.3, !8, !"_entry", i1 false, i1 false}
!10 = !{ptr @policydb_load_isids._entry_ptr.5, !8, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../security/selinux/ss/policydb.c", i32 897, i32 4}
!13 = !{ptr @policydb_load_isids._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @policydb_load_isids._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../security/selinux/ss/policydb.c", i32 2423, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @policydb_read._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @policydb_read._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../security/selinux/ss/policydb.c", i32 2432, i32 3}
!22 = !{ptr @policydb_read._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @policydb_read._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../security/selinux/ss/policydb.c", i32 2441, i32 3}
!26 = !{ptr @policydb_read._entry.14, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @policydb_read._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../security/selinux/ss/policydb.c", i32 2448, i32 3}
!30 = !{ptr @policydb_read._entry.17, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @policydb_read._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../security/selinux/ss/policydb.c", i32 2455, i32 27}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/selinux/ss/policydb.c", i32 2456, i32 3}
!36 = !{ptr @policydb_read._entry.21, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @policydb_read._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.25, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/selinux/ss/policydb.c", i32 2474, i32 3}
!40 = !{ptr @policydb_read._entry.24, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @policydb_read._entry_ptr.26, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/selinux/ss/policydb.c", i32 2485, i32 4}
!44 = !{ptr @policydb_read._entry.27, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @policydb_read._entry_ptr.29, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.31, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/selinux/ss/policydb.c", i32 2509, i32 3}
!48 = !{ptr @policydb_read._entry.30, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @policydb_read._entry_ptr.32, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.34, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../security/selinux/ss/policydb.c", i32 2517, i32 3}
!52 = !{ptr @policydb_read._entry.33, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @policydb_read._entry_ptr.35, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../security/selinux/ss/policydb.c", i32 2551, i32 49}
!56 = !{ptr @.str.38, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../security/selinux/ss/policydb.c", i32 2553, i32 3}
!58 = !{ptr @policydb_read._entry.37, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @policydb_read._entry_ptr.39, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.40, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../security/selinux/ss/policydb.c", i32 2652, i32 48}
!62 = !{ptr @.str.42, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../security/selinux/ss/policydb.c", i32 2654, i32 3}
!64 = !{ptr @policydb_read._entry.41, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @policydb_read._entry_ptr.43, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.44, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../security/selinux/ss/policydb.c", i32 2658, i32 48}
!68 = !{ptr @.str.46, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../security/selinux/ss/policydb.c", i32 2660, i32 3}
!70 = !{ptr @policydb_read._entry.45, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @policydb_read._entry_ptr.47, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.48, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../security/selinux/ss/policydb.c", i32 3625, i32 3}
!74 = !{ptr @.str.49, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @policydb_write._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @policydb_write._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.51, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../security/selinux/ss/policydb.c", i32 3654, i32 3}
!79 = !{ptr @policydb_write._entry.50, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @policydb_write._entry_ptr.52, !78, !"_entry_ptr", i1 false, i1 false}
!81 = distinct !{null, !82, !"filenametr_key_params", i1 false, i1 false}
!82 = !{!"../security/selinux/ss/policydb.c", i32 447, i32 40}
!83 = distinct !{null, !84, !"rangetr_key_params", i1 false, i1 false}
!84 = !{!"../security/selinux/ss/policydb.c", i32 484, i32 40}
!85 = distinct !{null, !86, !"roletr_key_params", i1 false, i1 false}
!86 = !{!"../security/selinux/ss/policydb.c", i32 518, i32 40}
!87 = distinct !{null, !88, !"destroy_f", i1 false, i1 false}
!88 = !{!"../security/selinux/ss/policydb.c", i32 319, i32 14}
!89 = !{ptr @policydb_compat, !90, !"policydb_compat", i1 false, i1 false}
!90 = !{!"../security/selinux/ss/policydb.c", i32 66, i32 36}
!91 = !{ptr @.str.53, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../security/selinux/ss/policydb.c", i32 399, i32 16}
!93 = !{ptr @read_f, !94, !"read_f", i1 false, i1 false}
!94 = !{!"../security/selinux/ss/policydb.c", i32 1644, i32 14}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../security/selinux/ss/policydb.c", i32 1336, i32 4}
!97 = !{ptr @.str.55, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @class_read._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @class_read._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../security/selinux/ss/policydb.c", i32 1429, i32 4}
!102 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @role_read._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @role_read._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../security/selinux/ss/policydb.c", i32 989, i32 3}
!107 = !{ptr @.str.59, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @mls_read_range_helper._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @mls_read_range_helper._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.61, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../security/selinux/ss/policydb.c", i32 995, i32 3}
!112 = !{ptr @mls_read_range_helper._entry.60, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @mls_read_range_helper._entry_ptr.62, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../security/selinux/ss/policydb.c", i32 1007, i32 3}
!116 = !{ptr @mls_read_range_helper._entry.63, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @mls_read_range_helper._entry_ptr.65, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.67, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../security/selinux/ss/policydb.c", i32 1013, i32 4}
!120 = !{ptr @mls_read_range_helper._entry.66, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @mls_read_range_helper._entry_ptr.68, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.70, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../security/selinux/ss/policydb.c", i32 1019, i32 4}
!124 = !{ptr @mls_read_range_helper._entry.69, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @mls_read_range_helper._entry_ptr.71, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.72, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../security/selinux/ss/policydb.c", i32 1507, i32 3}
!128 = !{ptr @.str.73, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @mls_read_level._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @mls_read_level._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.75, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../security/selinux/ss/policydb.c", i32 1514, i32 3}
!133 = !{ptr @mls_read_level._entry.74, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @mls_read_level._entry_ptr.76, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.77, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../security/selinux/ss/hashtab.h", i32 67, i32 2}
!137 = distinct !{null, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../security/selinux/ss/policydb.c", i32 2099, i32 32}
!139 = !{ptr @.str.79, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../security/selinux/ss/policydb.c", i32 2002, i32 3}
!141 = !{ptr @.str.80, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @filename_trans_read_helper._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @filename_trans_read_helper._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.82, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../security/selinux/ss/policydb.c", i32 2043, i32 3}
!146 = !{ptr @filename_trans_read_helper._entry.81, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @filename_trans_read_helper._entry_ptr.83, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.84, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../security/selinux/ss/policydb.c", i32 723, i32 3}
!150 = !{ptr @.str.85, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.86, !149, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @policydb_index.__UNIQUE_ID_ddebug484, !149, !"__UNIQUE_ID_ddebug484", i1 false, i1 false}
!153 = !{ptr @.str.87, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../security/selinux/ss/policydb.c", i32 727, i32 3}
!155 = !{ptr @policydb_index.__UNIQUE_ID_ddebug485, !154, !"__UNIQUE_ID_ddebug485", i1 false, i1 false}
!156 = !{ptr @.str.88, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../security/selinux/ss/policydb.c", i32 731, i32 2}
!158 = !{ptr @policydb_index.__UNIQUE_ID_ddebug486, !157, !"__UNIQUE_ID_ddebug486", i1 false, i1 false}
!159 = !{ptr @index_f, !160, !"index_f", i1 false, i1 false}
!160 = !{!"../security/selinux/ss/policydb.c", i32 675, i32 14}
!161 = !{ptr @.str.89, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../security/selinux/ss/policydb.c", i32 1044, i32 3}
!163 = !{ptr @.str.90, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @context_read_and_validate._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @context_read_and_validate._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.92, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../security/selinux/ss/policydb.c", i32 1053, i32 4}
!168 = !{ptr @context_read_and_validate._entry.91, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @context_read_and_validate._entry_ptr.93, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.95, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../security/selinux/ss/policydb.c", i32 1060, i32 3}
!172 = !{ptr @context_read_and_validate._entry.94, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @context_read_and_validate._entry_ptr.96, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.97, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../security/selinux/ss/policydb.c", i32 2137, i32 5}
!176 = !{ptr @.str.98, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @genfs_read._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @genfs_read._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.100, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../security/selinux/ss/policydb.c", i32 2187, i32 6}
!181 = !{ptr @genfs_read._entry.99, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @genfs_read._entry_ptr.101, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.102, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../security/selinux/ss/policydb.c", i32 1870, i32 4}
!185 = !{ptr @.str.103, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @range_read._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @range_read._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = distinct !{null, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../security/selinux/ss/policydb.c", i32 1881, i32 26}
!190 = !{ptr @.str.105, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../security/selinux/ss/policydb.c", i32 1668, i32 4}
!192 = !{ptr @.str.106, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @user_bounds_sanity_check._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @user_bounds_sanity_check._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.108, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../security/selinux/ss/policydb.c", i32 1679, i32 4}
!197 = !{ptr @user_bounds_sanity_check._entry.107, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @user_bounds_sanity_check._entry_ptr.109, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.110, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../security/selinux/ss/policydb.c", i32 1704, i32 4}
!201 = !{ptr @.str.111, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @role_bounds_sanity_check._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @role_bounds_sanity_check._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.113, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../security/selinux/ss/policydb.c", i32 1715, i32 4}
!206 = !{ptr @role_bounds_sanity_check._entry.112, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @role_bounds_sanity_check._entry_ptr.114, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.115, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../security/selinux/ss/policydb.c", i32 1737, i32 4}
!210 = !{ptr @.str.116, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @type_bounds_sanity_check._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @type_bounds_sanity_check._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.118, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../security/selinux/ss/policydb.c", i32 1747, i32 4}
!215 = !{ptr @type_bounds_sanity_check._entry.117, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @type_bounds_sanity_check._entry_ptr.119, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @write_f, !218, !"write_f", i1 false, i1 false}
!218 = !{!"../security/selinux/ss/policydb.c", i32 3246, i32 14}
!219 = !{i32 1, !"wchar_size", i32 2}
!220 = !{i32 1, !"min_enum_size", i32 4}
!221 = !{i32 8, !"branch-target-enforcement", i32 0}
!222 = !{i32 8, !"sign-return-address", i32 0}
!223 = !{i32 8, !"sign-return-address-all", i32 0}
!224 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!225 = !{i32 7, !"uwtable", i32 1}
!226 = !{i32 7, !"frame-pointer", i32 2}
!227 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!228 = !{!"branch_weights", i32 2000, i32 1}
!229 = !{!"branch_weights", i32 1, i32 2000}
!230 = !{i64 2148766725, i64 2148766730, i64 2148766743, i64 2148766787, i64 2148766821, i64 2148766842}
!231 = !{i64 2157310663, i64 2157311159, i64 2157310700, i64 2157310756, i64 2157310790, i64 2157310814, i64 2157310855, i64 2157310876, i64 2157310904, i64 2157310938}
