; ModuleID = '/llk/IR_all_yes/security/selinux/ss/avtab.c_pt.bc'
source_filename = "../security/selinux/ss/avtab.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.avtab_key = type { i16, i16, i16, i16 }
%struct.avtab = type { ptr, i32, i32, i32 }
%struct.avtab_node = type { %struct.avtab_key, %struct.avtab_datum, ptr }
%struct.avtab_datum = type { %union.anon }
%union.anon = type { i32 }
%struct.avtab_extended_perms = type { i8, i8, %struct.extended_perms_data }
%struct.extended_perms_data = type { [8 x i32] }
%struct.policydb = type { i32, [8 x %struct.symtab], [8 x ptr], ptr, ptr, ptr, ptr, %struct.avtab, %struct.hashtab, %struct.ebitmap, %struct.hashtab, i32, ptr, %struct.avtab, ptr, i32, ptr, [9 x ptr], ptr, %struct.hashtab, ptr, %struct.ebitmap, %struct.ebitmap, i32, i32, i8, i16, i32 }
%struct.symtab = type { %struct.hashtab, i32 }
%struct.hashtab = type { ptr, i32, i32 }
%struct.ebitmap = type { ptr, i32 }
%struct.policy_file = type { ptr, i32 }

@avtab_xperms_cachep = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@avtab_node_cachep = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@avtab_alloc.__UNIQUE_ID_ddebug480 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"selinux\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"avtab_alloc\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"security/selinux/ss/avtab.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SELinux: %d avtab hash slots, %d rules.\0A\00", [55 x i8] zeroinitializer }, align 32
@avtab_hash_eval.__UNIQUE_ID_ddebug481 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"avtab_hash_eval\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"SELinux: %s:  %d entries and %d/%d buckets used, longest chain length %d sum of chain length^2 %llu\0A\00", [59 x i8] zeroinitializer }, align 32
@avtab_read_item._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013SELinux: avtab: truncated entry\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"avtab_read_item\00", [16 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr = internal global ptr @avtab_read_item._entry, section ".printk_index", align 4
@avtab_read_item._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013SELinux: avtab: entry overflow\0A\00", [62 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.10 = internal global ptr @avtab_read_item._entry.8, section ".printk_index", align 4
@avtab_read_item._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.12 = internal global ptr @avtab_read_item._entry.11, section ".printk_index", align 4
@avtab_read_item._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013SELinux: avtab: truncated source type\0A\00", [55 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.15 = internal global ptr @avtab_read_item._entry.13, section ".printk_index", align 4
@avtab_read_item._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013SELinux: avtab: truncated target type\0A\00", [55 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.18 = internal global ptr @avtab_read_item._entry.16, section ".printk_index", align 4
@avtab_read_item._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str.2, i32 452, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013SELinux: avtab: truncated target class\0A\00", [54 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.21 = internal global ptr @avtab_read_item._entry.19, section ".printk_index", align 4
@avtab_read_item._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.7, ptr @.str.2, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013SELinux: avtab: null entry\0A\00", [34 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.24 = internal global ptr @avtab_read_item._entry.22, section ".printk_index", align 4
@avtab_read_item._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.7, ptr @.str.2, i32 465, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013SELinux: avtab: entry has both access vectors and types\0A\00", [37 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.27 = internal global ptr @avtab_read_item._entry.25, section ".printk_index", align 4
@avtab_read_item._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.7, ptr @.str.2, i32 469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013SELinux: avtab: entry has extended permissions\0A\00", [46 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.30 = internal global ptr @avtab_read_item._entry.28, section ".printk_index", align 4
@spec_order = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 1, i16 4, i16 2, i16 16, i16 64, i16 32, i16 256, i16 512, i16 1024], [46 x i8] zeroinitializer }, align 32
@avtab_read_item._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.7, ptr @.str.2, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013SELinux: avtab: entry only had %d items, expected %d\0A\00", [40 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.33 = internal global ptr @avtab_read_item._entry.31, section ".printk_index", align 4
@avtab_read_item._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.35 = internal global ptr @avtab_read_item._entry.34, section ".printk_index", align 4
@avtab_read_item._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.7, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013SELinux: avtab: invalid type or class\0A\00", [55 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.38 = internal global ptr @avtab_read_item._entry.36, section ".printk_index", align 4
@avtab_read_item._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.7, ptr @.str.2, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013SELinux:  avtab:  more than one specifier\0A\00", [51 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.41 = internal global ptr @avtab_read_item._entry.39, section ".printk_index", align 4
@avtab_read_item._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.7, ptr @.str.2, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [105 x i8], [55 x i8] } { [105 x i8] c"\013SELinux:  avtab:  policy version %u does not support extended permissions rules and one was specified\0A\00", [55 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.44 = internal global ptr @avtab_read_item._entry.42, section ".printk_index", align 4
@avtab_read_item._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.46 = internal global ptr @avtab_read_item._entry.45, section ".printk_index", align 4
@avtab_read_item._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.48 = internal global ptr @avtab_read_item._entry.47, section ".printk_index", align 4
@avtab_read_item._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.50 = internal global ptr @avtab_read_item._entry.49, section ".printk_index", align 4
@avtab_read_item._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.52 = internal global ptr @avtab_read_item._entry.51, section ".printk_index", align 4
@avtab_read_item._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.7, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013SELinux: avtab: invalid type\0A\00", [32 x i8] zeroinitializer }, align 32
@avtab_read_item._entry_ptr.55 = internal global ptr @avtab_read_item._entry.53, section ".printk_index", align 4
@avtab_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013SELinux: avtab: truncated table\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"avtab_read\00", [21 x i8] zeroinitializer }, align 32
@avtab_read._entry_ptr = internal global ptr @avtab_read._entry, section ".printk_index", align 4
@avtab_read._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.2, i32 582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013SELinux: avtab: table is empty\0A\00", [62 x i8] zeroinitializer }, align 32
@avtab_read._entry_ptr.60 = internal global ptr @avtab_read._entry.58, section ".printk_index", align 4
@avtab_read._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013SELinux: avtab: out of memory\0A\00", [63 x i8] zeroinitializer }, align 32
@avtab_read._entry_ptr.63 = internal global ptr @avtab_read._entry.61, section ".printk_index", align 4
@avtab_read._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013SELinux: avtab: duplicate entry\0A\00", [61 x i8] zeroinitializer }, align 32
@avtab_read._entry_ptr.66 = internal global ptr @avtab_read._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"avtab_node\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"avtab_extended_perms\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967279, i64 4294967284]
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 348, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 382, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 421, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 426, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 432, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 440, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 446, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 452, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 460, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 465, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 469, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant [11 x i8] c"spec_order\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 388, i32 17 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 484, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 493, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 506, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 516, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 522, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 530, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 535, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 540, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 549, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 556, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 577, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 582, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 595, i32 5 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 597, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 673, i32 40 }
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.220 = private constant [31 x i8] c"../security/selinux/ss/avtab.c\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 676, i32 42 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @avtab_read._entry, ptr @avtab_read._entry.58, ptr @avtab_read._entry.61, ptr @avtab_read._entry.64, ptr @avtab_read._entry_ptr, ptr @avtab_read._entry_ptr.60, ptr @avtab_read._entry_ptr.63, ptr @avtab_read._entry_ptr.66, ptr @avtab_read_item._entry, ptr @avtab_read_item._entry.11, ptr @avtab_read_item._entry.13, ptr @avtab_read_item._entry.16, ptr @avtab_read_item._entry.19, ptr @avtab_read_item._entry.22, ptr @avtab_read_item._entry.25, ptr @avtab_read_item._entry.28, ptr @avtab_read_item._entry.31, ptr @avtab_read_item._entry.34, ptr @avtab_read_item._entry.36, ptr @avtab_read_item._entry.39, ptr @avtab_read_item._entry.42, ptr @avtab_read_item._entry.45, ptr @avtab_read_item._entry.47, ptr @avtab_read_item._entry.49, ptr @avtab_read_item._entry.51, ptr @avtab_read_item._entry.53, ptr @avtab_read_item._entry.8, ptr @avtab_read_item._entry_ptr, ptr @avtab_read_item._entry_ptr.10, ptr @avtab_read_item._entry_ptr.12, ptr @avtab_read_item._entry_ptr.15, ptr @avtab_read_item._entry_ptr.18, ptr @avtab_read_item._entry_ptr.21, ptr @avtab_read_item._entry_ptr.24, ptr @avtab_read_item._entry_ptr.27, ptr @avtab_read_item._entry_ptr.30, ptr @avtab_read_item._entry_ptr.33, ptr @avtab_read_item._entry_ptr.35, ptr @avtab_read_item._entry_ptr.38, ptr @avtab_read_item._entry_ptr.41, ptr @avtab_read_item._entry_ptr.44, ptr @avtab_read_item._entry_ptr.46, ptr @avtab_read_item._entry_ptr.48, ptr @avtab_read_item._entry_ptr.50, ptr @avtab_read_item._entry_ptr.52, ptr @avtab_read_item._entry_ptr.55, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @spec_order, ptr @.str.32, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spec_order to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 105, i32 160, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read_item._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avtab_read._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @avtab_insert_nonunique(ptr noundef %h, ptr nocapture noundef readonly %key, ptr nocapture noundef readonly %datum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %specified1 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 3
  %0 = ptrtoint ptr %specified1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %specified1, align 2
  %2 = and i16 %1, 32767
  %tobool.not = icmp eq ptr %h, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nslot = getelementptr inbounds %struct.avtab, ptr %h, i32 0, i32 2
  %3 = ptrtoint ptr %nslot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nslot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mask = getelementptr inbounds %struct.avtab, ptr %h, i32 0, i32 3
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  %target_class.i = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 2
  %7 = ptrtoint ptr %target_class.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %target_class.i, align 2
  %conv.i = zext i16 %8 to i32
  %mul.i = mul i32 %conv.i, -862048943
  %shl.i = mul i32 %conv.i, 380141568
  %shr.i = lshr i32 %mul.i, 17
  %or.i = or i32 %shr.i, %shl.i
  %mul1.i = mul i32 %or.i, 461845907
  %shl2.i = mul i32 %or.i, -424517632
  %shr3.i = lshr i32 %mul1.i, 19
  %or4.i = or i32 %shr3.i, %shl2.i
  %mul5.i = mul i32 %or4.i, 5
  %add.i = add i32 %mul5.i, -430675100
  %target_type.i = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 1
  %9 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %target_type.i, align 2
  %conv7.i = zext i16 %10 to i32
  %mul8.i = mul i32 %conv7.i, -862048943
  %shl9.i = mul i32 %conv7.i, 380141568
  %shr10.i = lshr i32 %mul8.i, 17
  %or11.i = or i32 %shr10.i, %shl9.i
  %mul12.i = mul i32 %or11.i, 461845907
  %xor13.i = xor i32 %add.i, %mul12.i
  %or16.i = tail call i32 @llvm.fshl.i32(i32 %xor13.i, i32 %xor13.i, i32 13) #11
  %mul17.i = mul i32 %or16.i, 5
  %add18.i = add i32 %mul17.i, -430675100
  %11 = ptrtoint ptr %key to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %key, align 2
  %conv20.i = zext i16 %12 to i32
  %mul21.i = mul i32 %conv20.i, -862048943
  %shl22.i = mul i32 %conv20.i, 380141568
  %shr23.i = lshr i32 %mul21.i, 17
  %or24.i = or i32 %shr23.i, %shl22.i
  %mul25.i = mul i32 %or24.i, 461845907
  %xor26.i = xor i32 %add18.i, %mul25.i
  %or29.i = tail call i32 @llvm.fshl.i32(i32 %xor26.i, i32 %xor26.i, i32 13) #11
  %mul30.i = mul i32 %or29.i, 5
  %add31.i = add i32 %mul30.i, -430675100
  %shr32.i = lshr i32 %add31.i, 16
  %xor33.i = xor i32 %shr32.i, %add31.i
  %mul34.i = mul i32 %xor33.i, -2048144789
  %shr35.i = lshr i32 %mul34.i, 13
  %xor36.i = xor i32 %shr35.i, %mul34.i
  %mul37.i = mul i32 %xor36.i, -1028477387
  %shr38.i = lshr i32 %mul37.i, 16
  %xor39.i = xor i32 %shr38.i, %mul37.i
  %and.i = and i32 %xor39.i, %6
  %13 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %h, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %and.i
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %cur.0119 = load ptr, ptr %arrayidx, align 4
  %tobool4.not120 = icmp eq ptr %cur.0119, null
  br i1 %tobool4.not120, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %cur.0124 = phi ptr [ %cur.0, %for.inc.for.body_crit_edge ], [ %cur.0119, %if.end.for.body_crit_edge ]
  %prev.0121 = phi ptr [ %cur.0124, %for.inc.for.body_crit_edge ], [ null, %if.end.for.body_crit_edge ]
  %16 = ptrtoint ptr %cur.0124 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cur.0124, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %17)
  %cmp = icmp eq i16 %12, %17
  br i1 %cmp, label %land.lhs.true, label %if.end31.thread

land.lhs.true:                                    ; preds = %for.body
  %target_type12 = getelementptr inbounds %struct.avtab_key, ptr %cur.0124, i32 0, i32 1
  %18 = ptrtoint ptr %target_type12 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %target_type12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %19)
  %cmp14 = icmp eq i16 %10, %19
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true.land.lhs.true48_crit_edge

land.lhs.true.land.lhs.true48_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48

land.lhs.true16:                                  ; preds = %land.lhs.true
  %target_class19 = getelementptr inbounds %struct.avtab_key, ptr %cur.0124, i32 0, i32 2
  %20 = ptrtoint ptr %target_class19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %target_class19, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %21)
  %cmp21 = icmp eq i16 %8, %21
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true16.land.lhs.true48_crit_edge

land.lhs.true16.land.lhs.true48_crit_edge:        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48

land.lhs.true23:                                  ; preds = %land.lhs.true16
  %specified26 = getelementptr inbounds %struct.avtab_key, ptr %cur.0124, i32 0, i32 3
  %22 = ptrtoint ptr %specified26 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %specified26, align 2
  %and28116 = and i16 %2, %23
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and28116)
  %tobool29.not.not = icmp eq i16 %and28116, 0
  br i1 %tobool29.not.not, label %land.lhs.true23.land.lhs.true48_crit_edge, label %land.lhs.true23.for.end_crit_edge

land.lhs.true23.for.end_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true23.land.lhs.true48_crit_edge:        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48

if.end31.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %17)
  %cmp37117 = icmp ult i16 %12, %17
  br i1 %cmp37117, label %if.end31.thread.for.end_crit_edge, label %if.end31.thread.for.inc_crit_edge

if.end31.thread.for.inc_crit_edge:                ; preds = %if.end31.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end31.thread.for.end_crit_edge:                ; preds = %if.end31.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true48:                                  ; preds = %land.lhs.true23.land.lhs.true48_crit_edge, %land.lhs.true16.land.lhs.true48_crit_edge, %land.lhs.true.land.lhs.true48_crit_edge
  %24 = ptrtoint ptr %target_type12 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %target_type12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %25)
  %cmp54 = icmp ult i16 %10, %25
  br i1 %cmp54, label %land.lhs.true48.for.end_crit_edge, label %land.lhs.true65

land.lhs.true48.for.end_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true65:                                  ; preds = %land.lhs.true48
  %26 = ptrtoint ptr %target_type12 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %target_type12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %27)
  %cmp71 = icmp eq i16 %10, %27
  br i1 %cmp71, label %land.lhs.true73, label %land.lhs.true65.for.inc_crit_edge

land.lhs.true65.for.inc_crit_edge:                ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true73:                                  ; preds = %land.lhs.true65
  %target_class77 = getelementptr inbounds %struct.avtab_key, ptr %cur.0124, i32 0, i32 2
  %28 = ptrtoint ptr %target_class77 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %target_class77, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %29)
  %cmp79 = icmp ult i16 %8, %29
  br i1 %cmp79, label %land.lhs.true73.for.end_crit_edge, label %land.lhs.true73.for.inc_crit_edge

land.lhs.true73.for.inc_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true73.for.end_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true73.for.inc_crit_edge, %land.lhs.true65.for.inc_crit_edge, %if.end31.thread.for.inc_crit_edge
  %next = getelementptr inbounds %struct.avtab_node, ptr %cur.0124, i32 0, i32 2
  %30 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %30)
  %cur.0 = load ptr, ptr %next, align 4
  %tobool4.not = icmp eq ptr %cur.0, null
  br i1 %tobool4.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true73.for.end_crit_edge, %land.lhs.true48.for.end_crit_edge, %if.end31.thread.for.end_crit_edge, %land.lhs.true23.for.end_crit_edge, %if.end.for.end_crit_edge
  %prev.0.lcssa = phi ptr [ null, %if.end.for.end_crit_edge ], [ %cur.0124, %for.inc.for.end_crit_edge ], [ %prev.0121, %land.lhs.true23.for.end_crit_edge ], [ %prev.0121, %land.lhs.true48.for.end_crit_edge ], [ %prev.0121, %land.lhs.true73.for.end_crit_edge ], [ %prev.0121, %if.end31.thread.for.end_crit_edge ]
  %31 = load ptr, ptr @avtab_node_cachep, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %31, i32 noundef 3520) #11
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %for.end.cleanup_crit_edge, label %if.end.i

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %for.end
  %32 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %key, align 2
  %34 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %33, ptr %call.i.i, align 8
  %35 = and i64 %33, 1792
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool.not.i = icmp eq i64 %35, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %36 = load ptr, ptr @avtab_xperms_cachep, align 4
  %call.i1.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %36, i32 noundef 3520) #11
  %cmp4.i = icmp eq ptr %call.i1.i, null
  br i1 %cmp4.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = load ptr, ptr @avtab_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %37, ptr noundef nonnull %call.i.i) #11
  br label %cleanup

if.end7.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %datum, align 4
  %40 = call ptr @memcpy(ptr %call.i1.i, ptr %39, i32 36)
  %datum8.i = getelementptr inbounds %struct.avtab_node, ptr %call.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %datum8.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i1.i, ptr %datum8.i, align 8
  br label %if.end13.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %datum, align 4
  %datum11.i = getelementptr inbounds %struct.avtab_node, ptr %call.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %datum11.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %datum11.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else.i, %if.end7.i
  %tobool14.not.i = icmp eq ptr %prev.0.lcssa, null
  br i1 %tobool14.not.i, label %if.else18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %next.i = getelementptr inbounds %struct.avtab_node, ptr %prev.0.lcssa, i32 0, i32 2
  br label %if.end20.i

if.else18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %h, align 4
  %arrayidx.i = getelementptr ptr, ptr %46, i32 %and.i
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else18.i, %if.then15.i
  %arrayidx.sink2.i = phi ptr [ %arrayidx.i, %if.else18.i ], [ %next.i, %if.then15.i ]
  %47 = ptrtoint ptr %arrayidx.sink2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.sink2.i, align 4
  %next19.i = getelementptr inbounds %struct.avtab_node, ptr %call.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %next19.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %next19.i, align 4
  store ptr %call.i.i, ptr %arrayidx.sink2.i, align 4
  %nel.i = getelementptr inbounds %struct.avtab, ptr %h, i32 0, i32 1
  %50 = ptrtoint ptr %nel.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nel.i, align 4
  %inc.i = add i32 %51, 1
  store i32 %inc.i, ptr %nel.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20.i, %if.then6.i, %for.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.then6.i ], [ %call.i.i, %if.end20.i ], [ null, %for.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @avtab_search(ptr noundef readonly %h, ptr nocapture noundef readonly %key) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %specified1 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 3
  %0 = ptrtoint ptr %specified1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %specified1, align 2
  %2 = and i16 %1, 32767
  %tobool.not = icmp eq ptr %h, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nslot = getelementptr inbounds %struct.avtab, ptr %h, i32 0, i32 2
  %3 = ptrtoint ptr %nslot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nslot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mask = getelementptr inbounds %struct.avtab, ptr %h, i32 0, i32 3
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  %target_class.i = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 2
  %7 = ptrtoint ptr %target_class.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %target_class.i, align 2
  %conv.i = zext i16 %8 to i32
  %mul.i = mul i32 %conv.i, -862048943
  %shl.i = mul i32 %conv.i, 380141568
  %shr.i = lshr i32 %mul.i, 17
  %or.i = or i32 %shr.i, %shl.i
  %mul1.i = mul i32 %or.i, 461845907
  %shl2.i = mul i32 %or.i, -424517632
  %shr3.i = lshr i32 %mul1.i, 19
  %or4.i = or i32 %shr3.i, %shl2.i
  %mul5.i = mul i32 %or4.i, 5
  %add.i = add i32 %mul5.i, -430675100
  %target_type.i = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 1
  %9 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %target_type.i, align 2
  %conv7.i = zext i16 %10 to i32
  %mul8.i = mul i32 %conv7.i, -862048943
  %shl9.i = mul i32 %conv7.i, 380141568
  %shr10.i = lshr i32 %mul8.i, 17
  %or11.i = or i32 %shr10.i, %shl9.i
  %mul12.i = mul i32 %or11.i, 461845907
  %xor13.i = xor i32 %add.i, %mul12.i
  %or16.i = tail call i32 @llvm.fshl.i32(i32 %xor13.i, i32 %xor13.i, i32 13) #11
  %mul17.i = mul i32 %or16.i, 5
  %add18.i = add i32 %mul17.i, -430675100
  %11 = ptrtoint ptr %key to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %key, align 2
  %conv20.i = zext i16 %12 to i32
  %mul21.i = mul i32 %conv20.i, -862048943
  %shl22.i = mul i32 %conv20.i, 380141568
  %shr23.i = lshr i32 %mul21.i, 17
  %or24.i = or i32 %shr23.i, %shl22.i
  %mul25.i = mul i32 %or24.i, 461845907
  %xor26.i = xor i32 %add18.i, %mul25.i
  %or29.i = tail call i32 @llvm.fshl.i32(i32 %xor26.i, i32 %xor26.i, i32 13) #11
  %mul30.i = mul i32 %or29.i, 5
  %add31.i = add i32 %mul30.i, -430675100
  %shr32.i = lshr i32 %add31.i, 16
  %xor33.i = xor i32 %shr32.i, %add31.i
  %mul34.i = mul i32 %xor33.i, -2048144789
  %shr35.i = lshr i32 %mul34.i, 13
  %xor36.i = xor i32 %shr35.i, %mul34.i
  %mul37.i = mul i32 %xor36.i, -1028477387
  %shr38.i = lshr i32 %mul37.i, 16
  %xor39.i = xor i32 %shr38.i, %mul37.i
  %and.i = and i32 %xor39.i, %6
  %13 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %h, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %and.i
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %cur.0113 = load ptr, ptr %arrayidx, align 4
  %tobool4.not114 = icmp eq ptr %cur.0113, null
  br i1 %tobool4.not114, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %cur.0115 = phi ptr [ %cur.0, %for.inc.for.body_crit_edge ], [ %cur.0113, %if.end.for.body_crit_edge ]
  %16 = ptrtoint ptr %cur.0115 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cur.0115, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %17)
  %cmp = icmp eq i16 %12, %17
  br i1 %cmp, label %land.lhs.true, label %if.end31.thread

land.lhs.true:                                    ; preds = %for.body
  %target_type12 = getelementptr inbounds %struct.avtab_key, ptr %cur.0115, i32 0, i32 1
  %18 = ptrtoint ptr %target_type12 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %target_type12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %19)
  %cmp14 = icmp eq i16 %10, %19
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true.land.lhs.true48.critedge_crit_edge

land.lhs.true.land.lhs.true48.critedge_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48.critedge

land.lhs.true16:                                  ; preds = %land.lhs.true
  %target_class19 = getelementptr inbounds %struct.avtab_key, ptr %cur.0115, i32 0, i32 2
  %20 = ptrtoint ptr %target_class19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %target_class19, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %21)
  %cmp21 = icmp eq i16 %8, %21
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true16.land.lhs.true48.critedge_crit_edge

land.lhs.true16.land.lhs.true48.critedge_crit_edge: ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48.critedge

land.lhs.true23:                                  ; preds = %land.lhs.true16
  %specified26 = getelementptr inbounds %struct.avtab_key, ptr %cur.0115, i32 0, i32 3
  %22 = ptrtoint ptr %specified26 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %specified26, align 2
  %and28110 = and i16 %2, %23
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and28110)
  %tobool29.not = icmp eq i16 %and28110, 0
  br i1 %tobool29.not, label %land.lhs.true23.land.lhs.true48.critedge_crit_edge, label %if.then30

land.lhs.true23.land.lhs.true48.critedge_crit_edge: ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48.critedge

if.then30:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  %datum = getelementptr inbounds %struct.avtab_node, ptr %cur.0115, i32 0, i32 1
  br label %cleanup

if.end31.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %17)
  %cmp37111 = icmp ult i16 %12, %17
  br i1 %cmp37111, label %if.end31.thread.cleanup_crit_edge, label %if.end31.thread.for.inc_crit_edge

if.end31.thread.for.inc_crit_edge:                ; preds = %if.end31.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end31.thread.cleanup_crit_edge:                ; preds = %if.end31.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true48.critedge:                         ; preds = %land.lhs.true23.land.lhs.true48.critedge_crit_edge, %land.lhs.true16.land.lhs.true48.critedge_crit_edge, %land.lhs.true.land.lhs.true48.critedge_crit_edge
  %24 = ptrtoint ptr %target_type12 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %target_type12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %25)
  %cmp54 = icmp ult i16 %10, %25
  br i1 %cmp54, label %land.lhs.true48.critedge.cleanup_crit_edge, label %land.lhs.true65

land.lhs.true48.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true48.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true65:                                  ; preds = %land.lhs.true48.critedge
  %26 = ptrtoint ptr %target_type12 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %target_type12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %27)
  %cmp71 = icmp eq i16 %10, %27
  br i1 %cmp71, label %land.lhs.true73, label %land.lhs.true65.for.inc_crit_edge

land.lhs.true65.for.inc_crit_edge:                ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true73:                                  ; preds = %land.lhs.true65
  %target_class77 = getelementptr inbounds %struct.avtab_key, ptr %cur.0115, i32 0, i32 2
  %28 = ptrtoint ptr %target_class77 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %target_class77, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %29)
  %cmp79 = icmp ult i16 %8, %29
  br i1 %cmp79, label %land.lhs.true73.cleanup_crit_edge, label %land.lhs.true73.for.inc_crit_edge

land.lhs.true73.for.inc_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true73.cleanup_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true73.for.inc_crit_edge, %land.lhs.true65.for.inc_crit_edge, %if.end31.thread.for.inc_crit_edge
  %next = getelementptr inbounds %struct.avtab_node, ptr %cur.0115, i32 0, i32 2
  %30 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %30)
  %cur.0 = load ptr, ptr %next, align 4
  %tobool4.not = icmp eq ptr %cur.0, null
  br i1 %tobool4.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true73.cleanup_crit_edge, %land.lhs.true48.critedge.cleanup_crit_edge, %if.end31.thread.cleanup_crit_edge, %if.then30, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %datum, %if.then30 ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end31.thread.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ null, %land.lhs.true48.critedge.cleanup_crit_edge ], [ null, %land.lhs.true73.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @avtab_search_node(ptr noundef readonly %h, ptr nocapture noundef readonly %key) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %specified1 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 3
  %0 = ptrtoint ptr %specified1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %specified1, align 2
  %2 = and i16 %1, 32767
  %tobool.not = icmp eq ptr %h, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %nslot = getelementptr inbounds %struct.avtab, ptr %h, i32 0, i32 2
  %3 = ptrtoint ptr %nslot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nslot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mask = getelementptr inbounds %struct.avtab, ptr %h, i32 0, i32 3
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  %target_class.i = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 2
  %7 = ptrtoint ptr %target_class.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %target_class.i, align 2
  %conv.i = zext i16 %8 to i32
  %mul.i = mul i32 %conv.i, -862048943
  %shl.i = mul i32 %conv.i, 380141568
  %shr.i = lshr i32 %mul.i, 17
  %or.i = or i32 %shr.i, %shl.i
  %mul1.i = mul i32 %or.i, 461845907
  %shl2.i = mul i32 %or.i, -424517632
  %shr3.i = lshr i32 %mul1.i, 19
  %or4.i = or i32 %shr3.i, %shl2.i
  %mul5.i = mul i32 %or4.i, 5
  %add.i = add i32 %mul5.i, -430675100
  %target_type.i = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 1
  %9 = ptrtoint ptr %target_type.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %target_type.i, align 2
  %conv7.i = zext i16 %10 to i32
  %mul8.i = mul i32 %conv7.i, -862048943
  %shl9.i = mul i32 %conv7.i, 380141568
  %shr10.i = lshr i32 %mul8.i, 17
  %or11.i = or i32 %shr10.i, %shl9.i
  %mul12.i = mul i32 %or11.i, 461845907
  %xor13.i = xor i32 %add.i, %mul12.i
  %or16.i = tail call i32 @llvm.fshl.i32(i32 %xor13.i, i32 %xor13.i, i32 13) #11
  %mul17.i = mul i32 %or16.i, 5
  %add18.i = add i32 %mul17.i, -430675100
  %11 = ptrtoint ptr %key to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %key, align 2
  %conv20.i = zext i16 %12 to i32
  %mul21.i = mul i32 %conv20.i, -862048943
  %shl22.i = mul i32 %conv20.i, 380141568
  %shr23.i = lshr i32 %mul21.i, 17
  %or24.i = or i32 %shr23.i, %shl22.i
  %mul25.i = mul i32 %or24.i, 461845907
  %xor26.i = xor i32 %add18.i, %mul25.i
  %or29.i = tail call i32 @llvm.fshl.i32(i32 %xor26.i, i32 %xor26.i, i32 13) #11
  %mul30.i = mul i32 %or29.i, 5
  %add31.i = add i32 %mul30.i, -430675100
  %shr32.i = lshr i32 %add31.i, 16
  %xor33.i = xor i32 %shr32.i, %add31.i
  %mul34.i = mul i32 %xor33.i, -2048144789
  %shr35.i = lshr i32 %mul34.i, 13
  %xor36.i = xor i32 %shr35.i, %mul34.i
  %mul37.i = mul i32 %xor36.i, -1028477387
  %shr38.i = lshr i32 %mul37.i, 16
  %xor39.i = xor i32 %shr38.i, %mul37.i
  %and.i = and i32 %xor39.i, %6
  %13 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %h, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %and.i
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %cur.0112 = load ptr, ptr %arrayidx, align 4
  %tobool4.not113 = icmp eq ptr %cur.0112, null
  br i1 %tobool4.not113, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %cur.0114 = phi ptr [ %cur.0, %for.inc.for.body_crit_edge ], [ %cur.0112, %if.end.for.body_crit_edge ]
  %16 = ptrtoint ptr %cur.0114 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cur.0114, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %17)
  %cmp = icmp eq i16 %12, %17
  br i1 %cmp, label %land.lhs.true, label %if.end31.thread

land.lhs.true:                                    ; preds = %for.body
  %target_type12 = getelementptr inbounds %struct.avtab_key, ptr %cur.0114, i32 0, i32 1
  %18 = ptrtoint ptr %target_type12 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %target_type12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %19)
  %cmp14 = icmp eq i16 %10, %19
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true.land.lhs.true48.critedge_crit_edge

land.lhs.true.land.lhs.true48.critedge_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48.critedge

land.lhs.true16:                                  ; preds = %land.lhs.true
  %target_class19 = getelementptr inbounds %struct.avtab_key, ptr %cur.0114, i32 0, i32 2
  %20 = ptrtoint ptr %target_class19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %target_class19, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %21)
  %cmp21 = icmp eq i16 %8, %21
  br i1 %cmp21, label %land.lhs.true23, label %land.lhs.true16.land.lhs.true48.critedge_crit_edge

land.lhs.true16.land.lhs.true48.critedge_crit_edge: ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48.critedge

land.lhs.true23:                                  ; preds = %land.lhs.true16
  %specified26 = getelementptr inbounds %struct.avtab_key, ptr %cur.0114, i32 0, i32 3
  %22 = ptrtoint ptr %specified26 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %specified26, align 2
  %and28110 = and i16 %2, %23
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and28110)
  %tobool29.not = icmp eq i16 %and28110, 0
  br i1 %tobool29.not, label %land.lhs.true23.land.lhs.true48.critedge_crit_edge, label %land.lhs.true23.cleanup_crit_edge

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true23.land.lhs.true48.critedge_crit_edge: ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true48.critedge

if.end31.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %17)
  %cmp37111 = icmp ult i16 %12, %17
  br i1 %cmp37111, label %if.end31.thread.cleanup_crit_edge, label %if.end31.thread.for.inc_crit_edge

if.end31.thread.for.inc_crit_edge:                ; preds = %if.end31.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end31.thread.cleanup_crit_edge:                ; preds = %if.end31.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true48.critedge:                         ; preds = %land.lhs.true23.land.lhs.true48.critedge_crit_edge, %land.lhs.true16.land.lhs.true48.critedge_crit_edge, %land.lhs.true.land.lhs.true48.critedge_crit_edge
  %24 = ptrtoint ptr %target_type12 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %target_type12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %25)
  %cmp54 = icmp ult i16 %10, %25
  br i1 %cmp54, label %land.lhs.true48.critedge.cleanup_crit_edge, label %land.lhs.true65

land.lhs.true48.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true48.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true65:                                  ; preds = %land.lhs.true48.critedge
  %26 = ptrtoint ptr %target_type12 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %target_type12, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %27)
  %cmp71 = icmp eq i16 %10, %27
  br i1 %cmp71, label %land.lhs.true73, label %land.lhs.true65.for.inc_crit_edge

land.lhs.true65.for.inc_crit_edge:                ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true73:                                  ; preds = %land.lhs.true65
  %target_class77 = getelementptr inbounds %struct.avtab_key, ptr %cur.0114, i32 0, i32 2
  %28 = ptrtoint ptr %target_class77 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %target_class77, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %29)
  %cmp79 = icmp ult i16 %8, %29
  br i1 %cmp79, label %land.lhs.true73.cleanup_crit_edge, label %land.lhs.true73.for.inc_crit_edge

land.lhs.true73.for.inc_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true73.cleanup_crit_edge:                ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true73.for.inc_crit_edge, %land.lhs.true65.for.inc_crit_edge, %if.end31.thread.for.inc_crit_edge
  %next = getelementptr inbounds %struct.avtab_node, ptr %cur.0114, i32 0, i32 2
  %30 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %30)
  %cur.0 = load ptr, ptr %next, align 4
  %tobool4.not = icmp eq ptr %cur.0, null
  br i1 %tobool4.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true73.cleanup_crit_edge, %land.lhs.true48.critedge.cleanup_crit_edge, %if.end31.thread.cleanup_crit_edge, %land.lhs.true23.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end31.thread.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ null, %land.lhs.true48.critedge.cleanup_crit_edge ], [ null, %land.lhs.true73.cleanup_crit_edge ], [ %cur.0114, %land.lhs.true23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @avtab_search_node_next(ptr noundef readonly %node, i32 noundef %specified) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %specified, 32767
  %target_type49 = getelementptr inbounds %struct.avtab_key, ptr %node, i32 0, i32 1
  %target_class77 = getelementptr inbounds %struct.avtab_key, ptr %node, i32 0, i32 2
  %cur.0.in111 = getelementptr inbounds %struct.avtab_node, ptr %node, i32 0, i32 2
  %0 = ptrtoint ptr %cur.0.in111 to i32
  call void @__asan_load4_noabort(i32 %0)
  %cur.0112 = load ptr, ptr %cur.0.in111, align 4
  %tobool1.not113 = icmp eq ptr %cur.0112, null
  br i1 %tobool1.not113, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %node, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cur.0114 = phi ptr [ %cur.0112, %for.body.lr.ph ], [ %cur.0, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %cur.0114 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %cur.0114, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %4)
  %cmp = icmp eq i16 %2, %4
  br i1 %cmp, label %land.lhs.true, label %if.end28.thread

land.lhs.true:                                    ; preds = %for.body
  %5 = ptrtoint ptr %target_type49 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %target_type49, align 2
  %target_type9 = getelementptr inbounds %struct.avtab_key, ptr %cur.0114, i32 0, i32 1
  %7 = ptrtoint ptr %target_type9 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %target_type9, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp11 = icmp eq i16 %6, %8
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true.land.lhs.true47.critedge_crit_edge

land.lhs.true.land.lhs.true47.critedge_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true47.critedge

land.lhs.true13:                                  ; preds = %land.lhs.true
  %9 = ptrtoint ptr %target_class77 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %target_class77, align 4
  %target_class17 = getelementptr inbounds %struct.avtab_key, ptr %cur.0114, i32 0, i32 2
  %11 = ptrtoint ptr %target_class17 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %target_class17, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp19 = icmp eq i16 %10, %12
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true13.land.lhs.true47.critedge_crit_edge

land.lhs.true13.land.lhs.true47.critedge_crit_edge: ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true47.critedge

land.lhs.true21:                                  ; preds = %land.lhs.true13
  %specified23 = getelementptr inbounds %struct.avtab_key, ptr %cur.0114, i32 0, i32 3
  %13 = ptrtoint ptr %specified23 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %specified23, align 2
  %conv24 = zext i16 %14 to i32
  %and25 = and i32 %and, %conv24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %land.lhs.true21.land.lhs.true47.critedge_crit_edge, label %land.lhs.true21.cleanup_crit_edge

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true21.land.lhs.true47.critedge_crit_edge: ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true47.critedge

if.end28.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp2(i16 %2, i16 %4)
  %cmp35110 = icmp ult i16 %2, %4
  br i1 %cmp35110, label %if.end28.thread.cleanup_crit_edge, label %if.end28.thread.for.inc_crit_edge

if.end28.thread.for.inc_crit_edge:                ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end28.thread.cleanup_crit_edge:                ; preds = %if.end28.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true47.critedge:                         ; preds = %land.lhs.true21.land.lhs.true47.critedge_crit_edge, %land.lhs.true13.land.lhs.true47.critedge_crit_edge, %land.lhs.true.land.lhs.true47.critedge_crit_edge
  %15 = ptrtoint ptr %target_type49 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %target_type49, align 2
  %17 = ptrtoint ptr %target_type9 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %target_type9, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp54 = icmp ult i16 %16, %18
  br i1 %cmp54, label %land.lhs.true47.critedge.cleanup_crit_edge, label %land.lhs.true66

land.lhs.true47.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true47.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true66:                                  ; preds = %land.lhs.true47.critedge
  %19 = ptrtoint ptr %target_type49 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %target_type49, align 2
  %21 = ptrtoint ptr %target_type9 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %target_type9, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %20, i16 %22)
  %cmp73 = icmp eq i16 %20, %22
  br i1 %cmp73, label %land.lhs.true75, label %land.lhs.true66.for.inc_crit_edge

land.lhs.true66.for.inc_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true75:                                  ; preds = %land.lhs.true66
  %23 = ptrtoint ptr %target_class77 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %target_class77, align 4
  %target_class80 = getelementptr inbounds %struct.avtab_key, ptr %cur.0114, i32 0, i32 2
  %25 = ptrtoint ptr %target_class80 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %target_class80, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %26)
  %cmp82 = icmp ult i16 %24, %26
  br i1 %cmp82, label %land.lhs.true75.cleanup_crit_edge, label %land.lhs.true75.for.inc_crit_edge

land.lhs.true75.for.inc_crit_edge:                ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true75.cleanup_crit_edge:                ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true75.for.inc_crit_edge, %land.lhs.true66.for.inc_crit_edge, %if.end28.thread.for.inc_crit_edge
  %cur.0.in = getelementptr inbounds %struct.avtab_node, ptr %cur.0114, i32 0, i32 2
  %27 = ptrtoint ptr %cur.0.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %cur.0 = load ptr, ptr %cur.0.in, align 4
  %tobool1.not = icmp eq ptr %cur.0, null
  br i1 %tobool1.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true75.cleanup_crit_edge, %land.lhs.true47.critedge.cleanup_crit_edge, %if.end28.thread.cleanup_crit_edge, %land.lhs.true21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end28.thread.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ null, %land.lhs.true47.critedge.cleanup_crit_edge ], [ null, %land.lhs.true75.cleanup_crit_edge ], [ %cur.0114, %land.lhs.true21.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @avtab_destroy(ptr noundef %h) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %h, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nslot = getelementptr inbounds %struct.avtab, ptr %h, i32 0, i32 2
  %0 = ptrtoint ptr %nslot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nslot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp26.not = icmp eq i32 %1, 0
  br i1 %cmp26.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.027 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %2 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %h, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.027
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool1.not23 = icmp eq ptr %5, null
  br i1 %tobool1.not23, label %for.body.for.inc_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

while.body:                                       ; preds = %if.end4.while.body_crit_edge, %for.body.while.body_crit_edge
  %cur.024 = phi ptr [ %7, %if.end4.while.body_crit_edge ], [ %5, %for.body.while.body_crit_edge ]
  %next = getelementptr inbounds %struct.avtab_node, ptr %cur.024, i32 0, i32 2
  %6 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next, align 4
  %specified = getelementptr inbounds %struct.avtab_key, ptr %cur.024, i32 0, i32 3
  %8 = ptrtoint ptr %specified to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %specified, align 2
  %10 = and i16 %9, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool2.not = icmp eq i16 %10, 0
  br i1 %tobool2.not, label %while.body.if.end4_crit_edge, label %if.then3

while.body.if.end4_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %11 = load ptr, ptr @avtab_xperms_cachep, align 4
  %datum = getelementptr inbounds %struct.avtab_node, ptr %cur.024, i32 0, i32 1
  %12 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %datum, align 4
  tail call void @kmem_cache_free(ptr noundef %11, ptr noundef %13) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %while.body.if.end4_crit_edge
  %14 = load ptr, ptr @avtab_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef nonnull %cur.024) #11
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end4.for.inc_crit_edge, label %if.end4.while.body_crit_edge

if.end4.while.body_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end4.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.027, 1
  %15 = ptrtoint ptr %nslot to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nslot, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %17 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %h, align 4
  tail call void @kvfree(ptr noundef %18) #11
  %19 = call ptr @memset(ptr %h, i32 0, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @avtab_init(ptr nocapture noundef writeonly %h) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %h, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avtab_alloc(ptr nocapture noundef writeonly %h, i32 noundef %nrules) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nrules)
  %cmp.not = icmp eq i32 %nrules, 0
  br i1 %cmp.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %nrules)
  %tobool.not28 = icmp ult i32 %nrules, 8
  br i1 %tobool.not28, label %if.then.while.end_crit_edge, label %while.body.preheader

if.then.while.end_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.preheader:                             ; preds = %if.then
  %shr = lshr i32 %nrules, 3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %work.030 = phi i32 [ %shr1, %while.body.while.body_crit_edge ], [ %shr, %while.body.preheader ]
  %shift.029 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 1, %while.body.preheader ]
  %shr1 = lshr i32 %work.030, 1
  %inc = add nuw nsw i32 %shift.029, 1
  %tobool.not = icmp ult i32 %work.030, 2
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.then.while.end_crit_edge
  %shift.0.lcssa = phi i32 [ 1, %if.then.while.end_crit_edge ], [ %inc, %while.body.while.end_crit_edge ]
  %shl = shl nuw i32 1, %shift.0.lcssa
  %0 = tail call i32 @llvm.umin.i32(i32 %shl, i32 65536)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %while.end.do.body_crit_edge, label %kvcalloc.exit.i

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

kvcalloc.exit.i:                                  ; preds = %while.end
  %1 = shl nuw nsw i32 %0, 2
  %call.i.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %1, i32 noundef 3520, i32 noundef -1) #14
  %2 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i.i.i, ptr %h, align 4
  %tobool2.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i, label %kvcalloc.exit.i.cleanup15_crit_edge, label %if.end4.i

kvcalloc.exit.i.cleanup15_crit_edge:              ; preds = %kvcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup15

if.end4.i:                                        ; preds = %kvcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %nslot5.i = getelementptr inbounds %struct.avtab, ptr %h, i32 0, i32 2
  %3 = ptrtoint ptr %nslot5.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %nslot5.i, align 4
  %sub.i = add nsw i32 %0, -1
  %mask.i = getelementptr inbounds %struct.avtab, ptr %h, i32 0, i32 3
  %4 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub.i, ptr %mask.i, align 4
  br label %do.body

do.body:                                          ; preds = %if.end4.i, %while.end.do.body_crit_edge, %entry.do.body_crit_edge
  %nslot.0 = phi i32 [ 0, %entry.do.body_crit_edge ], [ %0, %if.end4.i ], [ 0, %while.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avtab_alloc.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@avtab_alloc, %if.then13)) #11
          to label %cleanup15 [label %if.then13], !srcloc !129

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @avtab_alloc.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.3, i32 noundef %nslot.0, i32 noundef %nrules) #11
  br label %cleanup15

cleanup15:                                        ; preds = %if.then13, %do.body, %kvcalloc.exit.i.cleanup15_crit_edge
  %retval.1 = phi i32 [ 0, %if.then13 ], [ -12, %kvcalloc.exit.i.cleanup15_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avtab_alloc_dup(ptr nocapture noundef writeonly %new, ptr nocapture noundef readonly %orig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nslot = getelementptr inbounds %struct.avtab, ptr %orig, i32 0, i32 2
  %0 = ptrtoint ptr %nslot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nslot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %entry.avtab_alloc_common.exit_crit_edge, label %if.end.i

entry.avtab_alloc_common.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %avtab_alloc_common.exit

if.end.i:                                         ; preds = %entry
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #11
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %kvcalloc.exit.thread.i, label %kvcalloc.exit.i, !prof !130

kvcalloc.exit.thread.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %new, align 4
  br label %avtab_alloc_common.exit

kvcalloc.exit.i:                                  ; preds = %if.end.i
  %5 = extractvalue { i32, i1 } %2, 0
  %call.i.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %5, i32 noundef 3520, i32 noundef -1) #14
  %6 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i.i.i.i, ptr %new, align 4
  %tobool2.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool2.not.i, label %kvcalloc.exit.i.avtab_alloc_common.exit_crit_edge, label %if.end4.i

kvcalloc.exit.i.avtab_alloc_common.exit_crit_edge: ; preds = %kvcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %avtab_alloc_common.exit

if.end4.i:                                        ; preds = %kvcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %nslot5.i = getelementptr inbounds %struct.avtab, ptr %new, i32 0, i32 2
  %7 = ptrtoint ptr %nslot5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %1, ptr %nslot5.i, align 4
  %sub.i = add nsw i32 %1, -1
  %mask.i = getelementptr inbounds %struct.avtab, ptr %new, i32 0, i32 3
  %8 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub.i, ptr %mask.i, align 4
  br label %avtab_alloc_common.exit

avtab_alloc_common.exit:                          ; preds = %if.end4.i, %kvcalloc.exit.i.avtab_alloc_common.exit_crit_edge, %kvcalloc.exit.thread.i, %entry.avtab_alloc_common.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end4.i ], [ 0, %entry.avtab_alloc_common.exit_crit_edge ], [ -12, %kvcalloc.exit.i.avtab_alloc_common.exit_crit_edge ], [ -12, %kvcalloc.exit.thread.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @avtab_hash_eval(ptr nocapture noundef readonly %h, ptr noundef %tag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nslot = getelementptr inbounds %struct.avtab, ptr %h, i32 0, i32 2
  %0 = ptrtoint ptr %nslot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nslot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp31.not = icmp eq i32 %1, 0
  br i1 %cmp31.not, label %entry.do.body_crit_edge, label %for.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %h, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc6, %for.inc.for.body_crit_edge ]
  %chain2_len_sum.034 = phi i64 [ 0, %for.body.lr.ph ], [ %chain2_len_sum.1, %for.inc.for.body_crit_edge ]
  %max_chain_len.033 = phi i32 [ 0, %for.body.lr.ph ], [ %max_chain_len.2, %for.inc.for.body_crit_edge ]
  %slots_used.032 = phi i32 [ 0, %for.body.lr.ph ], [ %slots_used.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.035
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %for.body.while.body_crit_edge

for.body.while.body_crit_edge:                    ; preds = %for.body
  br label %while.body

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.body.while.body_crit_edge
  %chain_len.030 = phi i32 [ %inc2, %while.body.while.body_crit_edge ], [ 0, %for.body.while.body_crit_edge ]
  %cur.029 = phi ptr [ %7, %while.body.while.body_crit_edge ], [ %5, %for.body.while.body_crit_edge ]
  %inc2 = add i32 %chain_len.030, 1
  %next = getelementptr inbounds %struct.avtab_node, ptr %cur.029, i32 0, i32 2
  %6 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %next, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %while.cond.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add i32 %slots_used.032, 1
  %8 = tail call i32 @llvm.smax.i32(i32 %inc2, i32 %max_chain_len.033)
  %mul = mul i32 %inc2, %inc2
  %conv = sext i32 %mul to i64
  %add = add i64 %chain2_len_sum.034, %conv
  br label %for.inc

for.inc:                                          ; preds = %while.cond.while.end_crit_edge, %for.body.for.inc_crit_edge
  %slots_used.1 = phi i32 [ %inc, %while.cond.while.end_crit_edge ], [ %slots_used.032, %for.body.for.inc_crit_edge ]
  %max_chain_len.2 = phi i32 [ %8, %while.cond.while.end_crit_edge ], [ %max_chain_len.033, %for.body.for.inc_crit_edge ]
  %chain2_len_sum.1 = phi i64 [ %add, %while.cond.while.end_crit_edge ], [ %chain2_len_sum.034, %for.body.for.inc_crit_edge ]
  %inc6 = add nuw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc6, %1
  br i1 %exitcond.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %slots_used.0.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ %slots_used.1, %for.inc.do.body_crit_edge ]
  %max_chain_len.0.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ %max_chain_len.2, %for.inc.do.body_crit_edge ]
  %chain2_len_sum.0.lcssa = phi i64 [ 0, %entry.do.body_crit_edge ], [ %chain2_len_sum.1, %for.inc.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avtab_hash_eval.__UNIQUE_ID_ddebug481, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@avtab_hash_eval, %if.then10)) #11
          to label %do.end [label %if.then10], !srcloc !129

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %nel = getelementptr inbounds %struct.avtab, ptr %h, i32 0, i32 1
  %9 = ptrtoint ptr %nel to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nel, align 4
  %11 = ptrtoint ptr %nslot to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nslot, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @avtab_hash_eval.__UNIQUE_ID_ddebug481, ptr noundef nonnull @.str.5, ptr noundef %tag, i32 noundef %10, i32 noundef %slots_used.0.lcssa, i32 noundef %12, i32 noundef %max_chain_len.0.lcssa, i64 noundef %chain2_len_sum.0.lcssa) #11
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avtab_read_item(ptr noundef %a, ptr noundef %fp, ptr noundef %pol, ptr nocapture noundef readonly %insertf, ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %key = alloca %struct.avtab_key, align 8
  %datum = alloca %struct.avtab_datum, align 4
  %xperms = alloca %struct.avtab_extended_perms, align 4
  %buf32 = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %policyvers = getelementptr inbounds %struct.policydb, ptr %pol, i32 0, i32 24
  %0 = ptrtoint ptr %policyvers to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %policyvers, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %key) #11
  %2 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 1
  %3 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 2
  %4 = getelementptr inbounds %struct.avtab_key, ptr %key, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %datum) #11
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xperms) #11
  %5 = call ptr @memset(ptr %xperms, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf32) #11
  %6 = getelementptr inbounds [8 x i32], ptr %buf32, i32 0, i32 1
  %7 = getelementptr inbounds [8 x i32], ptr %buf32, i32 0, i32 2
  %8 = getelementptr inbounds [8 x i32], ptr %buf32, i32 0, i32 3
  %9 = getelementptr inbounds [8 x i32], ptr %buf32, i32 0, i32 4
  %10 = getelementptr inbounds [8 x i32], ptr %buf32, i32 0, i32 5
  %11 = getelementptr inbounds [8 x i32], ptr %buf32, i32 0, i32 6
  %12 = getelementptr inbounds [8 x i32], ptr %buf32, i32 0, i32 7
  %13 = getelementptr inbounds i8, ptr %buf32, i32 4
  %14 = call ptr @memset(ptr %13, i32 255, i32 28)
  %15 = ptrtoint ptr %key to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %key, align 8
  %16 = ptrtoint ptr %datum to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %datum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp = icmp ult i32 %1, 20
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %17 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i, align 4
  br i1 %cmp, label %if.then, label %if.end122

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp.i = icmp ult i32 %18, 4
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  %19 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fp, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %20, align 1
  %23 = ptrtoint ptr %buf32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %buf32, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 4
  store ptr %add.ptr.i, ptr %fp, align 4
  %sub.i = add i32 %18, -4
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub.i, ptr %len.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %25)
  %cmp3 = icmp ugt i32 %25, 8
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #15
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %mul = shl nuw nsw i32 %25, 2
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %mul)
  %cmp.i362 = icmp ult i32 %27, %mul
  br i1 %cmp.i362, label %do.end17, label %if.end20

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %28 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fp, align 4
  %30 = call ptr @memcpy(ptr %buf32, ptr %29, i32 %mul)
  %add.ptr.i363 = getelementptr i8, ptr %29, i32 %mul
  store ptr %add.ptr.i363, ptr %fp, align 4
  %sub.i364 = sub i32 %27, %mul
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub.i364, ptr %len.i, align 4
  %32 = ptrtoint ptr %buf32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %buf32, align 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %conv = trunc i32 %34 to i16
  %35 = ptrtoint ptr %key to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv, ptr %key, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %34)
  %36 = icmp ult i32 %34, 65536
  br i1 %36, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #15
  br label %cleanup

if.end32:                                         ; preds = %if.end20
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %6, align 4
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %conv35 = trunc i32 %39 to i16
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv35, ptr %2, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %39)
  %41 = icmp ult i32 %39, 65536
  br i1 %41, label %if.end46, label %do.end43

do.end43:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #15
  br label %cleanup

if.end46:                                         ; preds = %if.end32
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %7, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %conv49 = trunc i32 %44 to i16
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv49, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %44)
  %46 = icmp ult i32 %44, 65536
  br i1 %46, label %if.end60, label %do.end57

do.end57:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #15
  br label %cleanup

if.end60:                                         ; preds = %if.end46
  %47 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %8, align 4
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = lshr i32 %49, 16
  %and65 = and i32 %49, 119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %do.end70, label %if.end73

do.end70:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #15
  br label %cleanup

if.end73:                                         ; preds = %if.end60
  %and74 = and i32 %49, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %and76 = and i32 %49, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  %or.cond = or i1 %tobool75.not, %tobool77.not
  br i1 %or.cond, label %if.end84, label %do.end81

do.end81:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #15
  br label %cleanup

if.end84:                                         ; preds = %if.end73
  %and85 = and i32 %49, 1792
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %for.cond.preheader, label %do.end90

for.cond.preheader:                               ; preds = %if.end84
  %51 = trunc i32 %50 to i16
  %52 = and i16 %51, -32768
  br label %for.body

do.end90:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #13
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #15
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %items.0431 = phi i32 [ 4, %for.cond.preheader ], [ %items.1, %for.inc.for.body_crit_edge ]
  %i.0430 = phi i32 [ 0, %for.cond.preheader ], [ %inc112, %for.inc.for.body_crit_edge ]
  %arrayidx96 = getelementptr [9 x i16], ptr @spec_order, i32 0, i32 %i.0430
  %53 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx96, align 2
  %conv97 = zext i16 %54 to i32
  %and98 = and i32 %49, %conv97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %for.body.for.inc_crit_edge, label %if.then100

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then100:                                       ; preds = %for.body
  %conv104 = or i16 %54, %52
  %55 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv104, ptr %4, align 2
  %inc105 = add i32 %items.0431, 1
  %arrayidx106 = getelementptr [8 x i32], ptr %buf32, i32 0, i32 %items.0431
  %56 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx106, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57)
  %59 = ptrtoint ptr %datum to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %datum, align 4
  %call107 = call i32 %insertf(ptr noundef %a, ptr noundef nonnull %key, ptr noundef nonnull %datum, ptr noundef %p) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then100.for.inc_crit_edge, label %if.then100.cleanup_crit_edge

if.then100.cleanup_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then100.for.inc_crit_edge:                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.then100.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %items.1 = phi i32 [ %inc105, %if.then100.for.inc_crit_edge ], [ %items.0431, %for.body.for.inc_crit_edge ]
  %inc112 = add nuw nsw i32 %i.0430, 1
  %exitcond.not = icmp eq i32 %inc112, 9
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_cmp4(i32 %items.1, i32 %25)
  %cmp113.not = icmp eq i32 %items.1, %25
  br i1 %cmp113.not, label %for.end.cleanup_crit_edge, label %do.end118

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end118:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %25, i32 noundef %items.1) #15
  br label %cleanup

if.end122:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %cmp.i369 = icmp ult i32 %18, 8
  br i1 %cmp.i369, label %do.end129, label %if.end132

do.end129:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %cleanup

if.end132:                                        ; preds = %if.end122
  %60 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %fp, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %buf16.sroa.0.0.copyload = load i16, ptr %61, align 1
  %buf16.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %61, i32 2
  %63 = ptrtoint ptr %buf16.sroa.5.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %63, i32 2)
  %buf16.sroa.5.0.copyload = load i16, ptr %buf16.sroa.5.0..sroa_idx, align 1
  %buf16.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %61, i32 4
  %64 = ptrtoint ptr %buf16.sroa.7.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %buf16.sroa.7.0.copyload = load i16, ptr %buf16.sroa.7.0..sroa_idx, align 1
  %buf16.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %61, i32 6
  %65 = ptrtoint ptr %buf16.sroa.9.0..sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %65, i32 2)
  %buf16.sroa.9.0.copyload = load i16, ptr %buf16.sroa.9.0..sroa_idx, align 1
  %add.ptr.i370 = getelementptr i8, ptr %61, i32 8
  store ptr %add.ptr.i370, ptr %fp, align 4
  %sub.i371 = add i32 %18, -8
  %66 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %sub.i371, ptr %len.i, align 4
  %67 = tail call i16 @llvm.bswap.i16(i16 %buf16.sroa.0.0.copyload)
  %68 = ptrtoint ptr %key to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %key, align 8
  %69 = tail call i16 @llvm.bswap.i16(i16 %buf16.sroa.5.0.copyload)
  %70 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %2, align 2
  %71 = tail call i16 @llvm.bswap.i16(i16 %buf16.sroa.7.0.copyload)
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %71, ptr %3, align 4
  %73 = tail call i16 @llvm.bswap.i16(i16 %buf16.sroa.9.0.copyload)
  %74 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %4, align 2
  %conv146 = zext i16 %67 to i32
  %call147 = tail call i32 @policydb_type_isvalid(ptr noundef %pol, i32 noundef %conv146) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end132.do.end161_crit_edge, label %lor.lhs.false

if.end132.do.end161_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end161

lor.lhs.false:                                    ; preds = %if.end132
  %75 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %2, align 2
  %conv150 = zext i16 %76 to i32
  %call151 = tail call i32 @policydb_type_isvalid(ptr noundef %pol, i32 noundef %conv150) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %lor.lhs.false.do.end161_crit_edge, label %lor.lhs.false153

lor.lhs.false.do.end161_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end161

lor.lhs.false153:                                 ; preds = %lor.lhs.false
  %77 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %3, align 4
  %conv155 = zext i16 %78 to i32
  %call156 = tail call i32 @policydb_class_isvalid(ptr noundef %pol, i32 noundef %conv155) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %lor.lhs.false153.do.end161_crit_edge, label %for.cond165.preheader

lor.lhs.false153.do.end161_crit_edge:             ; preds = %lor.lhs.false153
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end161

for.cond165.preheader:                            ; preds = %lor.lhs.false153
  %79 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %4, align 2
  %and173360 = and i16 %80, 1
  %and173360.1 = lshr i16 %80, 2
  %and173360.1.lobit = and i16 %and173360.1, 1
  %narrow = add nuw nsw i16 %and173360, %and173360.1.lobit
  %and173360.2 = lshr i16 %80, 1
  %and173360.2.lobit = and i16 %and173360.2, 1
  %narrow432 = add nuw nsw i16 %narrow, %and173360.2.lobit
  %and173360.3 = lshr i16 %80, 4
  %and173360.3.lobit = and i16 %and173360.3, 1
  %narrow433 = add nuw nsw i16 %narrow432, %and173360.3.lobit
  %and173360.4 = lshr i16 %80, 6
  %and173360.4.lobit = and i16 %and173360.4, 1
  %narrow434 = add nuw nsw i16 %narrow433, %and173360.4.lobit
  %and173360.5 = lshr i16 %80, 5
  %and173360.5.lobit = and i16 %and173360.5, 1
  %narrow435 = add nuw nsw i16 %narrow434, %and173360.5.lobit
  %and173360.6 = lshr i16 %80, 8
  %and173360.6.lobit = and i16 %and173360.6, 1
  %narrow436 = add nuw nsw i16 %narrow435, %and173360.6.lobit
  %spec.select.6 = zext i16 %narrow436 to i32
  %and173360.7 = lshr i16 %80, 9
  %and173360.7.lobit = and i16 %and173360.7, 1
  %81 = zext i16 %and173360.7.lobit to i32
  %spec.select.7 = add nuw nsw i32 %spec.select.6, %81
  %and173360.8 = lshr i16 %80, 10
  %and173360.8.lobit = and i16 %and173360.8, 1
  %82 = zext i16 %and173360.8.lobit to i32
  %spec.select.8 = add nuw nsw i32 %spec.select.7, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select.8)
  %cond = icmp eq i32 %spec.select.8, 1
  br i1 %cond, label %if.end191, label %do.end188

do.end161:                                        ; preds = %lor.lhs.false153.do.end161_crit_edge, %lor.lhs.false.do.end161_crit_edge, %if.end132.do.end161_crit_edge
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #15
  br label %cleanup

do.end188:                                        ; preds = %for.cond165.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #15
  br label %cleanup

if.end191:                                        ; preds = %for.cond165.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %1)
  %cmp192 = icmp ult i32 %1, 30
  br i1 %cmp192, label %land.lhs.true194, label %if.end191.if.else_crit_edge

if.end191.if.else_crit_edge:                      ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true194:                                 ; preds = %if.end191
  %83 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %4, align 2
  %85 = and i16 %84, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool198.not = icmp eq i16 %85, 0
  br i1 %tobool198.not, label %land.lhs.true194.if.else_crit_edge, label %do.end202

land.lhs.true194.if.else_crit_edge:               ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

do.end202:                                        ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #13
  %call204 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %1) #15
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true194.if.else_crit_edge, %if.end191.if.else_crit_edge
  %86 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %4, align 2
  %88 = and i16 %87, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %88)
  %tobool208.not = icmp eq i16 %88, 0
  br i1 %tobool208.not, label %if.else250, label %if.then209

if.then209:                                       ; preds = %if.else
  %89 = ptrtoint ptr %xperms to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %xperms, align 4
  %90 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp.i376 = icmp eq i32 %91, 0
  br i1 %cmp.i376, label %do.end216, label %if.end219

do.end216:                                        ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #13
  %call218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %cleanup

if.end219:                                        ; preds = %if.then209
  %92 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fp, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %93, align 1
  %96 = ptrtoint ptr %xperms to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %xperms, align 4
  %add.ptr.i377 = getelementptr i8, ptr %93, i32 1
  store ptr %add.ptr.i377, ptr %fp, align 4
  %sub.i378 = add i32 %91, -1
  %97 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %sub.i378, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i378)
  %cmp.i383 = icmp eq i32 %sub.i378, 0
  br i1 %cmp.i383, label %do.end225, label %if.end228

do.end225:                                        ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #13
  %call227 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %cleanup

if.end228:                                        ; preds = %if.end219
  %driver = getelementptr inbounds %struct.avtab_extended_perms, ptr %xperms, i32 0, i32 1
  %98 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %fp, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %99, align 1
  %102 = ptrtoint ptr %driver to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %driver, align 1
  %add.ptr.i384 = getelementptr i8, ptr %99, i32 1
  store ptr %add.ptr.i384, ptr %fp, align 4
  %sub.i385 = add i32 %91, -2
  %103 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %sub.i385, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i385)
  %cmp.i390 = icmp ult i32 %sub.i385, 32
  br i1 %cmp.i390, label %do.end235, label %next_entry.exit395

next_entry.exit395:                               ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %fp, align 4
  %106 = call ptr @memcpy(ptr %buf32, ptr %105, i32 32)
  %add.ptr.i391 = getelementptr i8, ptr %105, i32 32
  store ptr %add.ptr.i391, ptr %fp, align 4
  %sub.i392 = add i32 %91, -34
  %107 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %sub.i392, ptr %len.i, align 4
  %perms = getelementptr inbounds %struct.avtab_extended_perms, ptr %xperms, i32 0, i32 2
  %108 = ptrtoint ptr %buf32 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %buf32, align 4
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  %111 = ptrtoint ptr %perms to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %perms, align 4
  %112 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %6, align 4
  %114 = tail call i32 @llvm.bswap.i32(i32 %113)
  %arrayidx245.1 = getelementptr inbounds %struct.avtab_extended_perms, ptr %xperms, i32 0, i32 2, i32 0, i32 1
  %115 = ptrtoint ptr %arrayidx245.1 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %arrayidx245.1, align 4
  %116 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %7, align 4
  %118 = tail call i32 @llvm.bswap.i32(i32 %117)
  %arrayidx245.2 = getelementptr inbounds %struct.avtab_extended_perms, ptr %xperms, i32 0, i32 2, i32 0, i32 2
  %119 = ptrtoint ptr %arrayidx245.2 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %arrayidx245.2, align 4
  %120 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %8, align 4
  %122 = tail call i32 @llvm.bswap.i32(i32 %121)
  %arrayidx245.3 = getelementptr inbounds %struct.avtab_extended_perms, ptr %xperms, i32 0, i32 2, i32 0, i32 3
  %123 = ptrtoint ptr %arrayidx245.3 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %arrayidx245.3, align 4
  %124 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %9, align 4
  %126 = tail call i32 @llvm.bswap.i32(i32 %125)
  %arrayidx245.4 = getelementptr inbounds %struct.avtab_extended_perms, ptr %xperms, i32 0, i32 2, i32 0, i32 4
  %127 = ptrtoint ptr %arrayidx245.4 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %arrayidx245.4, align 4
  %128 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %10, align 4
  %130 = tail call i32 @llvm.bswap.i32(i32 %129)
  %arrayidx245.5 = getelementptr inbounds %struct.avtab_extended_perms, ptr %xperms, i32 0, i32 2, i32 0, i32 5
  %131 = ptrtoint ptr %arrayidx245.5 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %arrayidx245.5, align 4
  %132 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %11, align 4
  %134 = tail call i32 @llvm.bswap.i32(i32 %133)
  %arrayidx245.6 = getelementptr inbounds %struct.avtab_extended_perms, ptr %xperms, i32 0, i32 2, i32 0, i32 6
  %135 = ptrtoint ptr %arrayidx245.6 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %arrayidx245.6, align 4
  %136 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %12, align 4
  %138 = tail call i32 @llvm.bswap.i32(i32 %137)
  %arrayidx245.7 = getelementptr inbounds %struct.avtab_extended_perms, ptr %xperms, i32 0, i32 2, i32 0, i32 7
  %139 = ptrtoint ptr %arrayidx245.7 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %arrayidx245.7, align 4
  %140 = ptrtoint ptr %datum to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %xperms, ptr %datum, align 4
  br label %if.end264

do.end235:                                        ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #13
  %call237 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %cleanup

if.else250:                                       ; preds = %if.else
  %141 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %142)
  %cmp.i397 = icmp ult i32 %142, 4
  br i1 %cmp.i397, label %do.end257, label %if.end260

do.end257:                                        ; preds = %if.else250
  call void @__sanitizer_cov_trace_pc() #13
  %call259 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #15
  br label %cleanup

if.end260:                                        ; preds = %if.else250
  call void @__sanitizer_cov_trace_pc() #13
  %143 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %fp, align 4
  %145 = ptrtoint ptr %144 to i32
  call void @__asan_loadN_noabort(i32 %145, i32 4)
  %146 = load i32, ptr %144, align 1
  %147 = ptrtoint ptr %buf32 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %buf32, align 4
  %add.ptr.i398 = getelementptr i8, ptr %144, i32 4
  store ptr %add.ptr.i398, ptr %fp, align 4
  %sub.i399 = add i32 %142, -4
  %148 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %sub.i399, ptr %len.i, align 4
  %149 = tail call i32 @llvm.bswap.i32(i32 %146)
  %150 = ptrtoint ptr %datum to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %datum, align 4
  br label %if.end264

if.end264:                                        ; preds = %if.end260, %next_entry.exit395
  %151 = and i16 %87, 112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %151)
  %tobool268.not = icmp eq i16 %151, 0
  br i1 %tobool268.not, label %if.end264.if.end279_crit_edge, label %land.lhs.true269

if.end264.if.end279_crit_edge:                    ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end279

land.lhs.true269:                                 ; preds = %if.end264
  %152 = ptrtoint ptr %datum to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %datum, align 4
  %call271 = call i32 @policydb_type_isvalid(ptr noundef %pol, i32 noundef %153) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271)
  %tobool272.not = icmp eq i32 %call271, 0
  br i1 %tobool272.not, label %do.end276, label %land.lhs.true269.if.end279_crit_edge

land.lhs.true269.if.end279_crit_edge:             ; preds = %land.lhs.true269
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end279

do.end276:                                        ; preds = %land.lhs.true269
  call void @__sanitizer_cov_trace_pc() #13
  %call278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #15
  br label %cleanup

if.end279:                                        ; preds = %land.lhs.true269.if.end279_crit_edge, %if.end264.if.end279_crit_edge
  %call280 = call i32 %insertf(ptr noundef %a, ptr noundef nonnull %key, ptr noundef nonnull %datum, ptr noundef %p) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end279, %do.end276, %do.end257, %do.end235, %do.end225, %do.end216, %do.end202, %do.end188, %do.end161, %do.end129, %do.end118, %for.end.cleanup_crit_edge, %if.then100.cleanup_crit_edge, %do.end90, %do.end81, %do.end70, %do.end57, %do.end43, %do.end29, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ -22, %do.end17 ], [ -22, %do.end29 ], [ -22, %do.end43 ], [ -22, %do.end57 ], [ -22, %do.end81 ], [ -22, %do.end90 ], [ -22, %do.end118 ], [ -22, %do.end70 ], [ -22, %do.end129 ], [ -22, %do.end188 ], [ -22, %do.end202 ], [ -22, %do.end216 ], [ -22, %do.end225 ], [ -22, %do.end235 ], [ %call280, %if.end279 ], [ -22, %do.end276 ], [ -22, %do.end257 ], [ -22, %do.end161 ], [ 0, %for.end.cleanup_crit_edge ], [ %call107, %if.then100.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf32) #11
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xperms) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %datum) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %key) #11
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @policydb_type_isvalid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @policydb_class_isvalid(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avtab_read(ptr noundef %a, ptr noundef %fp, ptr noundef %pol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp ult i32 %1, 4
  br i1 %cmp.i, label %entry.bad.sink.split_crit_edge, label %if.end

entry.bad.sink.split_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %bad.sink.split

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
  %6 = tail call i32 @llvm.bswap.i32(i32 %buf.sroa.0.0.copyload)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf.sroa.0.0.copyload)
  %tobool.not = icmp eq i32 %buf.sroa.0.0.copyload, 0
  br i1 %tobool.not, label %if.end.bad.sink.split_crit_edge, label %if.then.i

if.end.bad.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %bad.sink.split

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %tobool.not28.i = icmp ult i32 %6, 8
  br i1 %tobool.not28.i, label %if.then.i.while.end.i_crit_edge, label %while.body.preheader.i

if.then.i.while.end.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.preheader.i:                           ; preds = %if.then.i
  %shr.i = lshr i32 %6, 3
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.preheader.i
  %work.030.i = phi i32 [ %shr1.i, %while.body.i.while.body.i_crit_edge ], [ %shr.i, %while.body.preheader.i ]
  %shift.029.i = phi i32 [ %inc.i, %while.body.i.while.body.i_crit_edge ], [ 1, %while.body.preheader.i ]
  %shr1.i = lshr i32 %work.030.i, 1
  %inc.i = add nuw nsw i32 %shift.029.i, 1
  %tobool.not.i = icmp ult i32 %work.030.i, 2
  br i1 %tobool.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.then.i.while.end.i_crit_edge
  %shift.0.lcssa.i = phi i32 [ 1, %if.then.i.while.end.i_crit_edge ], [ %inc.i, %while.body.i.while.end.i_crit_edge ]
  %shl.i = shl nuw i32 1, %shift.0.lcssa.i
  %7 = tail call i32 @llvm.umin.i32(i32 %shl.i, i32 65536) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %while.end.i.do.body.i_crit_edge, label %kvcalloc.exit.i.i

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

kvcalloc.exit.i.i:                                ; preds = %while.end.i
  %8 = shl nuw nsw i32 %7, 2
  %call.i.i.i.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %8, i32 noundef 3520, i32 noundef -1) #14
  %9 = ptrtoint ptr %a to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i.i.i.i, ptr %a, align 4
  %tobool2.not.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool2.not.i.i, label %kvcalloc.exit.i.i.bad_crit_edge, label %if.end4.i.i

kvcalloc.exit.i.i.bad_crit_edge:                  ; preds = %kvcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bad

if.end4.i.i:                                      ; preds = %kvcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %nslot5.i.i = getelementptr inbounds %struct.avtab, ptr %a, i32 0, i32 2
  %10 = ptrtoint ptr %nslot5.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %nslot5.i.i, align 4
  %sub.i.i = add nsw i32 %7, -1
  %mask.i.i = getelementptr inbounds %struct.avtab, ptr %a, i32 0, i32 3
  %11 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.i.i, ptr %mask.i.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %if.end4.i.i, %while.end.i.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @avtab_alloc.__UNIQUE_ID_ddebug480, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@avtab_read, %if.then13.i)) #11
          to label %for.body.preheader [label %if.then13.i], !srcloc !129

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @avtab_alloc.__UNIQUE_ID_ddebug480, ptr noundef nonnull @.str.3, i32 noundef %7, i32 noundef %6) #11
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then13.i, %do.body.i
  %umax = call i32 @llvm.umax.i32(i32 %6, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.058 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call14 = tail call i32 @avtab_read_item(ptr noundef %a, ptr noundef %fp, ptr noundef %pol, ptr noundef nonnull @avtab_insertf, ptr noundef null)
  %12 = zext i32 %call14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call14, label %for.body.bad_crit_edge [
    i32 0, label %for.inc
    i32 -12, label %for.body.bad.sink.split_crit_edge
    i32 -17, label %bad.sink.split.loopexit68
  ]

for.body.bad.sink.split_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %bad.sink.split

for.body.bad_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %bad

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %for.end.i, %bad.out_crit_edge, %for.inc.out_crit_edge
  %rc.0 = phi i32 [ %rc.1, %bad.out_crit_edge ], [ %rc.1, %for.end.i ], [ 0, %for.inc.out_crit_edge ]
  ret i32 %rc.0

bad.sink.split.loopexit68:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %bad.sink.split

bad.sink.split:                                   ; preds = %bad.sink.split.loopexit68, %for.body.bad.sink.split_crit_edge, %if.end.bad.sink.split_crit_edge, %entry.bad.sink.split_crit_edge
  %.str.62.sink = phi ptr [ @.str.56, %entry.bad.sink.split_crit_edge ], [ @.str.59, %if.end.bad.sink.split_crit_edge ], [ @.str.65, %bad.sink.split.loopexit68 ], [ @.str.62, %for.body.bad.sink.split_crit_edge ]
  %rc.1.ph = phi i32 [ -22, %entry.bad.sink.split_crit_edge ], [ -22, %if.end.bad.sink.split_crit_edge ], [ %call14, %bad.sink.split.loopexit68 ], [ %call14, %for.body.bad.sink.split_crit_edge ]
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.62.sink) #15
  br label %bad

bad:                                              ; preds = %bad.sink.split, %for.body.bad_crit_edge, %kvcalloc.exit.i.i.bad_crit_edge
  %rc.1 = phi i32 [ -12, %kvcalloc.exit.i.i.bad_crit_edge ], [ %rc.1.ph, %bad.sink.split ], [ %call14, %for.body.bad_crit_edge ]
  %tobool.not.i45 = icmp eq ptr %a, null
  br i1 %tobool.not.i45, label %bad.out_crit_edge, label %for.cond.preheader.i

bad.out_crit_edge:                                ; preds = %bad
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.cond.preheader.i:                             ; preds = %bad
  %nslot.i = getelementptr inbounds %struct.avtab, ptr %a, i32 0, i32 2
  %13 = ptrtoint ptr %nslot.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nslot.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp26.not.i = icmp eq i32 %14, 0
  br i1 %cmp26.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.027.i = phi i32 [ %inc.i47, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %a, align 4
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %i.027.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %tobool1.not23.i = icmp eq ptr %18, null
  br i1 %tobool1.not23.i, label %for.body.i.for.inc.i_crit_edge, label %for.body.i.while.body.i46_crit_edge

for.body.i.while.body.i46_crit_edge:              ; preds = %for.body.i
  br label %while.body.i46

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

while.body.i46:                                   ; preds = %if.end4.i.while.body.i46_crit_edge, %for.body.i.while.body.i46_crit_edge
  %cur.024.i = phi ptr [ %20, %if.end4.i.while.body.i46_crit_edge ], [ %18, %for.body.i.while.body.i46_crit_edge ]
  %next.i = getelementptr inbounds %struct.avtab_node, ptr %cur.024.i, i32 0, i32 2
  %19 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %next.i, align 4
  %specified.i = getelementptr inbounds %struct.avtab_key, ptr %cur.024.i, i32 0, i32 3
  %21 = ptrtoint ptr %specified.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %specified.i, align 2
  %23 = and i16 %22, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool2.not.i = icmp eq i16 %23, 0
  br i1 %tobool2.not.i, label %while.body.i46.if.end4.i_crit_edge, label %if.then3.i

while.body.i46.if.end4.i_crit_edge:               ; preds = %while.body.i46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i

if.then3.i:                                       ; preds = %while.body.i46
  call void @__sanitizer_cov_trace_pc() #13
  %24 = load ptr, ptr @avtab_xperms_cachep, align 4
  %datum.i = getelementptr inbounds %struct.avtab_node, ptr %cur.024.i, i32 0, i32 1
  %25 = ptrtoint ptr %datum.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %datum.i, align 4
  tail call void @kmem_cache_free(ptr noundef %24, ptr noundef %26) #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %while.body.i46.if.end4.i_crit_edge
  %27 = load ptr, ptr @avtab_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %27, ptr noundef nonnull %cur.024.i) #11
  %tobool1.not.i = icmp eq ptr %20, null
  br i1 %tobool1.not.i, label %if.end4.i.for.inc.i_crit_edge, label %if.end4.i.while.body.i46_crit_edge

if.end4.i.while.body.i46_crit_edge:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i46

if.end4.i.for.inc.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i47 = add nuw i32 %i.027.i, 1
  %28 = ptrtoint ptr %nslot.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nslot.i, align 4
  %cmp.i48 = icmp ult i32 %inc.i47, %29
  br i1 %cmp.i48, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %30 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %a, align 4
  tail call void @kvfree(ptr noundef %31) #11
  %32 = call ptr @memset(ptr %a, i32 0, i32 16)
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @avtab_insertf(ptr noundef %a, ptr nocapture noundef readonly %k, ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %specified1.i = getelementptr inbounds %struct.avtab_key, ptr %k, i32 0, i32 3
  %0 = ptrtoint ptr %specified1.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %specified1.i, align 2
  %2 = and i16 %1, 32767
  %tobool.not.i = icmp eq ptr %a, null
  br i1 %tobool.not.i, label %entry.avtab_insert.exit_crit_edge, label %lor.lhs.false.i

entry.avtab_insert.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %avtab_insert.exit

lor.lhs.false.i:                                  ; preds = %entry
  %nslot.i = getelementptr inbounds %struct.avtab, ptr %a, i32 0, i32 2
  %3 = ptrtoint ptr %nslot.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nslot.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not.i = icmp eq i32 %4, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i.avtab_insert.exit_crit_edge, label %if.end.i

lor.lhs.false.i.avtab_insert.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %avtab_insert.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %mask.i = getelementptr inbounds %struct.avtab, ptr %a, i32 0, i32 3
  %5 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask.i, align 4
  %target_class.i.i = getelementptr inbounds %struct.avtab_key, ptr %k, i32 0, i32 2
  %7 = ptrtoint ptr %target_class.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %target_class.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %mul.i.i = mul i32 %conv.i.i, -862048943
  %shl.i.i = mul i32 %conv.i.i, 380141568
  %shr.i.i = lshr i32 %mul.i.i, 17
  %or.i.i = or i32 %shr.i.i, %shl.i.i
  %mul1.i.i = mul i32 %or.i.i, 461845907
  %shl2.i.i = mul i32 %or.i.i, -424517632
  %shr3.i.i = lshr i32 %mul1.i.i, 19
  %or4.i.i = or i32 %shr3.i.i, %shl2.i.i
  %mul5.i.i = mul i32 %or4.i.i, 5
  %add.i.i = add i32 %mul5.i.i, -430675100
  %target_type.i.i = getelementptr inbounds %struct.avtab_key, ptr %k, i32 0, i32 1
  %9 = ptrtoint ptr %target_type.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %target_type.i.i, align 2
  %conv7.i.i = zext i16 %10 to i32
  %mul8.i.i = mul i32 %conv7.i.i, -862048943
  %shl9.i.i = mul i32 %conv7.i.i, 380141568
  %shr10.i.i = lshr i32 %mul8.i.i, 17
  %or11.i.i = or i32 %shr10.i.i, %shl9.i.i
  %mul12.i.i = mul i32 %or11.i.i, 461845907
  %xor13.i.i = xor i32 %add.i.i, %mul12.i.i
  %or16.i.i = tail call i32 @llvm.fshl.i32(i32 %xor13.i.i, i32 %xor13.i.i, i32 13) #11
  %mul17.i.i = mul i32 %or16.i.i, 5
  %add18.i.i = add i32 %mul17.i.i, -430675100
  %11 = ptrtoint ptr %k to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %k, align 2
  %conv20.i.i = zext i16 %12 to i32
  %mul21.i.i = mul i32 %conv20.i.i, -862048943
  %shl22.i.i = mul i32 %conv20.i.i, 380141568
  %shr23.i.i = lshr i32 %mul21.i.i, 17
  %or24.i.i = or i32 %shr23.i.i, %shl22.i.i
  %mul25.i.i = mul i32 %or24.i.i, 461845907
  %xor26.i.i = xor i32 %add18.i.i, %mul25.i.i
  %or29.i.i = tail call i32 @llvm.fshl.i32(i32 %xor26.i.i, i32 %xor26.i.i, i32 13) #11
  %mul30.i.i = mul i32 %or29.i.i, 5
  %add31.i.i = add i32 %mul30.i.i, -430675100
  %shr32.i.i = lshr i32 %add31.i.i, 16
  %xor33.i.i = xor i32 %shr32.i.i, %add31.i.i
  %mul34.i.i = mul i32 %xor33.i.i, -2048144789
  %shr35.i.i = lshr i32 %mul34.i.i, 13
  %xor36.i.i = xor i32 %shr35.i.i, %mul34.i.i
  %mul37.i.i = mul i32 %xor36.i.i, -1028477387
  %shr38.i.i = lshr i32 %mul37.i.i, 16
  %xor39.i.i = xor i32 %shr38.i.i, %mul37.i.i
  %and.i.i = and i32 %xor39.i.i, %6
  %13 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %a, align 4
  %arrayidx.i = getelementptr ptr, ptr %14, i32 %and.i.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %cur.0130.i = load ptr, ptr %arrayidx.i, align 4
  %tobool4.not131.i = icmp eq ptr %cur.0130.i, null
  br i1 %tobool4.not131.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %cur.0133.i = phi ptr [ %cur.0.i, %for.inc.i.for.body.i_crit_edge ], [ %cur.0130.i, %if.end.i.for.body.i_crit_edge ]
  %prev.0132.i = phi ptr [ %cur.0133.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.end.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %cur.0133.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cur.0133.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %17)
  %cmp.i = icmp eq i16 %12, %17
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end36.thread.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %target_type12.i = getelementptr inbounds %struct.avtab_key, ptr %cur.0133.i, i32 0, i32 1
  %18 = ptrtoint ptr %target_type12.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %target_type12.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %19)
  %cmp14.i = icmp eq i16 %10, %19
  br i1 %cmp14.i, label %land.lhs.true16.i, label %land.lhs.true53.critedge.i.thread

land.lhs.true16.i:                                ; preds = %land.lhs.true.i
  %target_class19.i = getelementptr inbounds %struct.avtab_key, ptr %cur.0133.i, i32 0, i32 2
  %20 = ptrtoint ptr %target_class19.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %target_class19.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %21)
  %cmp21.i = icmp eq i16 %8, %21
  br i1 %cmp21.i, label %land.lhs.true23.i, label %land.lhs.true16.i.land.lhs.true78.i.critedge_crit_edge

land.lhs.true16.i.land.lhs.true78.i.critedge_crit_edge: ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true78.i.critedge

land.lhs.true23.i:                                ; preds = %land.lhs.true16.i
  %specified26.i = getelementptr inbounds %struct.avtab_key, ptr %cur.0133.i, i32 0, i32 3
  %22 = ptrtoint ptr %specified26.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %specified26.i, align 2
  %and28126.i = and i16 %2, %23
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and28126.i)
  %tobool29.not.i = icmp eq i16 %and28126.i, 0
  br i1 %tobool29.not.i, label %land.lhs.true23.i.land.lhs.true78.i.critedge_crit_edge, label %if.then30.i

land.lhs.true23.i.land.lhs.true78.i.critedge_crit_edge: ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true78.i.critedge

if.then30.i:                                      ; preds = %land.lhs.true23.i
  %24 = and i16 %1, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool33.not.i = icmp eq i16 %24, 0
  br i1 %tobool33.not.i, label %if.then30.i.avtab_insert.exit_crit_edge, label %if.then30.i.for.end.i_crit_edge

if.then30.i.for.end.i_crit_edge:                  ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

if.then30.i.avtab_insert.exit_crit_edge:          ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %avtab_insert.exit

if.end36.thread.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %17)
  %cmp42127.i = icmp ult i16 %12, %17
  br i1 %cmp42127.i, label %if.end36.thread.i.for.end.i_crit_edge, label %if.end36.thread.i.for.inc.i_crit_edge

if.end36.thread.i.for.inc.i_crit_edge:            ; preds = %if.end36.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end36.thread.i.for.end.i_crit_edge:            ; preds = %if.end36.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

land.lhs.true53.critedge.i.thread:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %19)
  %cmp59.i1 = icmp ult i16 %10, %19
  br i1 %cmp59.i1, label %land.lhs.true53.critedge.i.thread.for.end.i_crit_edge, label %land.lhs.true53.critedge.i.thread.for.inc.i_crit_edge

land.lhs.true53.critedge.i.thread.for.inc.i_crit_edge: ; preds = %land.lhs.true53.critedge.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true53.critedge.i.thread.for.end.i_crit_edge: ; preds = %land.lhs.true53.critedge.i.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

land.lhs.true78.i.critedge:                       ; preds = %land.lhs.true23.i.land.lhs.true78.i.critedge_crit_edge, %land.lhs.true16.i.land.lhs.true78.i.critedge_crit_edge
  %25 = ptrtoint ptr %target_class19.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %target_class19.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %26)
  %cmp84.i = icmp ult i16 %8, %26
  br i1 %cmp84.i, label %land.lhs.true78.i.critedge.for.end.i_crit_edge, label %land.lhs.true78.i.critedge.for.inc.i_crit_edge

land.lhs.true78.i.critedge.for.inc.i_crit_edge:   ; preds = %land.lhs.true78.i.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true78.i.critedge.for.end.i_crit_edge:   ; preds = %land.lhs.true78.i.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i:                                        ; preds = %land.lhs.true78.i.critedge.for.inc.i_crit_edge, %land.lhs.true53.critedge.i.thread.for.inc.i_crit_edge, %if.end36.thread.i.for.inc.i_crit_edge
  %next.i = getelementptr inbounds %struct.avtab_node, ptr %cur.0133.i, i32 0, i32 2
  %27 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %cur.0.i = load ptr, ptr %next.i, align 4
  %tobool4.not.i = icmp eq ptr %cur.0.i, null
  br i1 %tobool4.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.lhs.true78.i.critedge.for.end.i_crit_edge, %land.lhs.true53.critedge.i.thread.for.end.i_crit_edge, %if.end36.thread.i.for.end.i_crit_edge, %if.then30.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %prev.0129.i = phi ptr [ %prev.0132.i, %if.then30.i.for.end.i_crit_edge ], [ null, %if.end.i.for.end.i_crit_edge ], [ %prev.0132.i, %if.end36.thread.i.for.end.i_crit_edge ], [ %prev.0132.i, %land.lhs.true78.i.critedge.for.end.i_crit_edge ], [ %cur.0133.i, %for.inc.i.for.end.i_crit_edge ], [ %prev.0132.i, %land.lhs.true53.critedge.i.thread.for.end.i_crit_edge ]
  %28 = load ptr, ptr @avtab_node_cachep, align 4
  %call.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %28, i32 noundef 3520) #11
  %cmp.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp.i.i, label %for.end.i.avtab_insert.exit_crit_edge, label %if.end.i.i

for.end.i.avtab_insert.exit_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %avtab_insert.exit

if.end.i.i:                                       ; preds = %for.end.i
  %29 = ptrtoint ptr %k to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %30 = load i64, ptr %k, align 2
  %31 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %call.i.i.i, align 8
  %32 = and i64 %30, 1792
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %32)
  %tobool.not.i.i = icmp eq i64 %32, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  %33 = load ptr, ptr @avtab_xperms_cachep, align 4
  %call.i1.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %33, i32 noundef 3520) #11
  %cmp4.i.i = icmp eq ptr %call.i1.i.i, null
  br i1 %cmp4.i.i, label %if.then6.i.i, label %if.end7.i.i

if.then6.i.i:                                     ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = load ptr, ptr @avtab_node_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %34, ptr noundef nonnull %call.i.i.i) #11
  br label %avtab_insert.exit

if.end7.i.i:                                      ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %d, align 4
  %37 = call ptr @memcpy(ptr %call.i1.i.i, ptr %36, i32 36)
  %datum8.i.i = getelementptr inbounds %struct.avtab_node, ptr %call.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %datum8.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i1.i.i, ptr %datum8.i.i, align 8
  br label %if.end13.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %d, align 4
  %datum11.i.i = getelementptr inbounds %struct.avtab_node, ptr %call.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %datum11.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %datum11.i.i, align 8
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %if.else.i.i, %if.end7.i.i
  %tobool14.not.i.i = icmp eq ptr %prev.0129.i, null
  br i1 %tobool14.not.i.i, label %if.else18.i.i, label %if.then15.i.i

if.then15.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %next.i.i = getelementptr inbounds %struct.avtab_node, ptr %prev.0129.i, i32 0, i32 2
  br label %if.end20.i.i

if.else18.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %a, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %43, i32 %and.i.i
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else18.i.i, %if.then15.i.i
  %arrayidx.sink2.i.i = phi ptr [ %arrayidx.i.i, %if.else18.i.i ], [ %next.i.i, %if.then15.i.i ]
  %44 = ptrtoint ptr %arrayidx.sink2.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.sink2.i.i, align 4
  %next19.i.i = getelementptr inbounds %struct.avtab_node, ptr %call.i.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %next19.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %next19.i.i, align 4
  store ptr %call.i.i.i, ptr %arrayidx.sink2.i.i, align 4
  %nel.i.i = getelementptr inbounds %struct.avtab, ptr %a, i32 0, i32 1
  %47 = ptrtoint ptr %nel.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nel.i.i, align 4
  %inc.i.i = add i32 %48, 1
  store i32 %inc.i.i, ptr %nel.i.i, align 4
  br label %avtab_insert.exit

avtab_insert.exit:                                ; preds = %if.end20.i.i, %if.then6.i.i, %for.end.i.avtab_insert.exit_crit_edge, %if.then30.i.avtab_insert.exit_crit_edge, %lor.lhs.false.i.avtab_insert.exit_crit_edge, %entry.avtab_insert.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %lor.lhs.false.i.avtab_insert.exit_crit_edge ], [ -22, %entry.avtab_insert.exit_crit_edge ], [ -17, %if.then30.i.avtab_insert.exit_crit_edge ], [ -12, %if.then6.i.i ], [ 0, %if.end20.i.i ], [ -12, %for.end.i.avtab_insert.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avtab_write_item(ptr nocapture readnone %p, ptr nocapture noundef readonly %cur, ptr nocapture noundef %fp) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cur to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %cur, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %target_type = getelementptr inbounds %struct.avtab_key, ptr %cur, i32 0, i32 1
  %3 = ptrtoint ptr %target_type to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %target_type, align 2
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  %target_class = getelementptr inbounds %struct.avtab_key, ptr %cur, i32 0, i32 2
  %6 = ptrtoint ptr %target_class to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %target_class, align 4
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %specified = getelementptr inbounds %struct.avtab_key, ptr %cur, i32 0, i32 3
  %9 = ptrtoint ptr %specified to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %specified, align 2
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  %12 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fp, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 2)
  store i16 %2, ptr %13, align 1
  %buf16.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %13, i32 2
  %15 = ptrtoint ptr %buf16.sroa.5.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %5, ptr %buf16.sroa.5.0..sroa_idx, align 1
  %buf16.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %13, i32 4
  %16 = ptrtoint ptr %buf16.sroa.7.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %8, ptr %buf16.sroa.7.0..sroa_idx, align 1
  %buf16.sroa.9.0..sroa_idx = getelementptr inbounds i8, ptr %13, i32 6
  %17 = ptrtoint ptr %buf16.sroa.9.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 %11, ptr %buf16.sroa.9.0..sroa_idx, align 1
  %18 = load ptr, ptr %fp, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 8
  store ptr %add.ptr.i, ptr %fp, align 4
  %len2.i = getelementptr inbounds %struct.policy_file, ptr %fp, i32 0, i32 1
  %19 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len2.i, align 4
  %sub.i = add i32 %20, -8
  store i32 %sub.i, ptr %len2.i, align 4
  %21 = ptrtoint ptr %specified to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %specified, align 2
  %23 = and i16 %22, 1792
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool9.not = icmp eq i16 %23, 0
  %datum30 = getelementptr inbounds %struct.avtab_node, ptr %cur, i32 0, i32 1
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %datum30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %datum30, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %add.ptr.i, align 1
  %29 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fp, align 4
  %add.ptr.i64 = getelementptr i8, ptr %30, i32 1
  store ptr %add.ptr.i64, ptr %fp, align 4
  %31 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len2.i, align 4
  %sub.i66 = add i32 %32, -1
  store i32 %sub.i66, ptr %len2.i, align 4
  %33 = load ptr, ptr %datum30, align 4
  %driver = getelementptr inbounds %struct.avtab_extended_perms, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %driver to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %driver, align 1
  %36 = ptrtoint ptr %add.ptr.i64 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %add.ptr.i64, align 1
  %37 = load ptr, ptr %fp, align 4
  %add.ptr.i67 = getelementptr i8, ptr %37, i32 1
  store ptr %add.ptr.i67, ptr %fp, align 4
  %38 = load i32, ptr %len2.i, align 4
  %sub.i69 = add i32 %38, -1
  store i32 %sub.i69, ptr %len2.i, align 4
  %39 = load ptr, ptr %datum30, align 4
  %perms = getelementptr inbounds %struct.avtab_extended_perms, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %perms, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %arrayidx26.1 = getelementptr %struct.avtab_extended_perms, ptr %39, i32 0, i32 2, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx26.1, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %arrayidx26.2 = getelementptr %struct.avtab_extended_perms, ptr %39, i32 0, i32 2, i32 0, i32 2
  %46 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx26.2, align 4
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %arrayidx26.3 = getelementptr %struct.avtab_extended_perms, ptr %39, i32 0, i32 2, i32 0, i32 3
  %49 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx26.3, align 4
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %arrayidx26.4 = getelementptr %struct.avtab_extended_perms, ptr %39, i32 0, i32 2, i32 0, i32 4
  %52 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx26.4, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  %arrayidx26.5 = getelementptr %struct.avtab_extended_perms, ptr %39, i32 0, i32 2, i32 0, i32 5
  %55 = ptrtoint ptr %arrayidx26.5 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx26.5, align 4
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  %arrayidx26.6 = getelementptr %struct.avtab_extended_perms, ptr %39, i32 0, i32 2, i32 0, i32 6
  %58 = ptrtoint ptr %arrayidx26.6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx26.6, align 4
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  %arrayidx26.7 = getelementptr %struct.avtab_extended_perms, ptr %39, i32 0, i32 2, i32 0, i32 7
  %61 = ptrtoint ptr %arrayidx26.7 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx26.7, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %64 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 4)
  store i32 %42, ptr %add.ptr.i67, align 1
  %buf32.sroa.6.0.add.ptr.i67.sroa_idx = getelementptr i8, ptr %37, i32 5
  %65 = ptrtoint ptr %buf32.sroa.6.0.add.ptr.i67.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %65, i32 4)
  store i32 %45, ptr %buf32.sroa.6.0.add.ptr.i67.sroa_idx, align 1
  %buf32.sroa.8.0.add.ptr.i67.sroa_idx = getelementptr i8, ptr %37, i32 9
  %66 = ptrtoint ptr %buf32.sroa.8.0.add.ptr.i67.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 %48, ptr %buf32.sroa.8.0.add.ptr.i67.sroa_idx, align 1
  %buf32.sroa.10.0.add.ptr.i67.sroa_idx = getelementptr i8, ptr %37, i32 13
  %67 = ptrtoint ptr %buf32.sroa.10.0.add.ptr.i67.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %51, ptr %buf32.sroa.10.0.add.ptr.i67.sroa_idx, align 1
  %buf32.sroa.12.0.add.ptr.i67.sroa_idx = getelementptr i8, ptr %37, i32 17
  %68 = ptrtoint ptr %buf32.sroa.12.0.add.ptr.i67.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %54, ptr %buf32.sroa.12.0.add.ptr.i67.sroa_idx, align 1
  %buf32.sroa.14.0.add.ptr.i67.sroa_idx = getelementptr i8, ptr %37, i32 21
  %69 = ptrtoint ptr %buf32.sroa.14.0.add.ptr.i67.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %69, i32 4)
  store i32 %57, ptr %buf32.sroa.14.0.add.ptr.i67.sroa_idx, align 1
  %buf32.sroa.16.0.add.ptr.i67.sroa_idx = getelementptr i8, ptr %37, i32 25
  %70 = ptrtoint ptr %buf32.sroa.16.0.add.ptr.i67.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %70, i32 4)
  store i32 %60, ptr %buf32.sroa.16.0.add.ptr.i67.sroa_idx, align 1
  %buf32.sroa.18.0.add.ptr.i67.sroa_idx = getelementptr i8, ptr %37, i32 29
  %71 = ptrtoint ptr %buf32.sroa.18.0.add.ptr.i67.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %71, i32 4)
  store i32 %63, ptr %buf32.sroa.18.0.add.ptr.i67.sroa_idx, align 1
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %datum30 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %datum30, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %75, i32 4)
  store i32 %74, ptr %add.ptr.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then10
  %.sink78 = phi i32 [ 4, %if.else ], [ 32, %if.then10 ]
  %.sink77 = phi i32 [ -4, %if.else ], [ -32, %if.then10 ]
  %76 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fp, align 4
  %add.ptr.i73 = getelementptr i8, ptr %77, i32 %.sink78
  store ptr %add.ptr.i73, ptr %fp, align 4
  %78 = ptrtoint ptr %len2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len2.i, align 4
  %sub.i75 = add i32 %79, %.sink77
  store i32 %sub.i75, ptr %len2.i, align 4
  ret i32 0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avtab_write(ptr nocapture noundef readnone %p, ptr nocapture noundef readonly %a, ptr nocapture noundef %fp) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %nel = getelementptr inbounds %struct.avtab, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %nel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nel, align 4
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
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
  %nslot = getelementptr inbounds %struct.avtab, ptr %a, i32 0, i32 2
  %9 = ptrtoint ptr %nslot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nslot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp28.not = icmp eq i32 %10, 0
  br i1 %cmp28.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc9.for.body_crit_edge, %entry.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.inc9.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %11 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %a, align 4
  %arrayidx1 = getelementptr ptr, ptr %12, i32 %i.029
  %13 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %cur.025 = load ptr, ptr %arrayidx1, align 4
  %tobool3.not26 = icmp eq ptr %cur.025, null
  br i1 %tobool3.not26, label %for.body.for.inc9_crit_edge, label %for.body.for.body4_crit_edge

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body.for.inc9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc9

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %cur.027 = phi ptr [ %cur.0, %for.body4.for.body4_crit_edge ], [ %cur.025, %for.body.for.body4_crit_edge ]
  %call5 = tail call i32 @avtab_write_item(ptr undef, ptr noundef nonnull %cur.027, ptr noundef %fp)
  %next = getelementptr inbounds %struct.avtab_node, ptr %cur.027, i32 0, i32 2
  %14 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %14)
  %cur.0 = load ptr, ptr %next, align 4
  %tobool3.not = icmp eq ptr %cur.0, null
  br i1 %tobool3.not, label %for.body4.for.inc9_crit_edge, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body4

for.body4.for.inc9_crit_edge:                     ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc9

for.inc9:                                         ; preds = %for.body4.for.inc9_crit_edge, %for.body.for.inc9_crit_edge
  %inc = add nuw i32 %i.029, 1
  %15 = ptrtoint ptr %nslot to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nslot, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc9.for.body_crit_edge, label %for.inc9.cleanup_crit_edge

for.inc9.cleanup_crit_edge:                       ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc9.for.body_crit_edge:                      ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc9.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @avtab_cache_init() local_unnamed_addr #9 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.67, i32 noundef 16, i32 noundef 0, i32 noundef 262144, ptr noundef null) #11
  store ptr %call, ptr @avtab_node_cachep, align 4
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.68, i32 noundef 36, i32 noundef 0, i32 noundef 262144, ptr noundef null) #11
  store ptr %call1, ptr @avtab_xperms_cachep, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../security/selinux/ss/avtab.c", i32 348, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @avtab_alloc.__UNIQUE_ID_ddebug480, !1, !"__UNIQUE_ID_ddebug480", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../security/selinux/ss/avtab.c", i32 382, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @avtab_hash_eval.__UNIQUE_ID_ddebug481, !7, !"__UNIQUE_ID_ddebug481", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../security/selinux/ss/avtab.c", i32 421, i32 4}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @avtab_read_item._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @avtab_read_item._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../security/selinux/ss/avtab.c", i32 426, i32 4}
!17 = !{ptr @avtab_read_item._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @avtab_read_item._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @avtab_read_item._entry.11, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../security/selinux/ss/avtab.c", i32 432, i32 4}
!21 = !{ptr @avtab_read_item._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../security/selinux/ss/avtab.c", i32 440, i32 4}
!24 = !{ptr @avtab_read_item._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @avtab_read_item._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../security/selinux/ss/avtab.c", i32 446, i32 4}
!28 = !{ptr @avtab_read_item._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @avtab_read_item._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../security/selinux/ss/avtab.c", i32 452, i32 4}
!32 = !{ptr @avtab_read_item._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @avtab_read_item._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../security/selinux/ss/avtab.c", i32 460, i32 4}
!36 = !{ptr @avtab_read_item._entry.22, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @avtab_read_item._entry_ptr.24, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../security/selinux/ss/avtab.c", i32 465, i32 4}
!40 = !{ptr @avtab_read_item._entry.25, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @avtab_read_item._entry_ptr.27, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.29, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../security/selinux/ss/avtab.c", i32 469, i32 4}
!44 = !{ptr @avtab_read_item._entry.28, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @avtab_read_item._entry_ptr.30, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.32, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../security/selinux/ss/avtab.c", i32 484, i32 4}
!48 = !{ptr @avtab_read_item._entry.31, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @avtab_read_item._entry_ptr.33, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @avtab_read_item._entry.34, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../security/selinux/ss/avtab.c", i32 493, i32 3}
!52 = !{ptr @avtab_read_item._entry_ptr.35, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.37, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../security/selinux/ss/avtab.c", i32 506, i32 3}
!55 = !{ptr @avtab_read_item._entry.36, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @avtab_read_item._entry_ptr.38, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.40, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../security/selinux/ss/avtab.c", i32 516, i32 3}
!59 = !{ptr @avtab_read_item._entry.39, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @avtab_read_item._entry_ptr.41, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.43, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../security/selinux/ss/avtab.c", i32 522, i32 3}
!63 = !{ptr @avtab_read_item._entry.42, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @avtab_read_item._entry_ptr.44, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @avtab_read_item._entry.45, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../security/selinux/ss/avtab.c", i32 530, i32 4}
!67 = !{ptr @avtab_read_item._entry_ptr.46, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @avtab_read_item._entry.47, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../security/selinux/ss/avtab.c", i32 535, i32 4}
!70 = !{ptr @avtab_read_item._entry_ptr.48, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @avtab_read_item._entry.49, !72, !"_entry", i1 false, i1 false}
!72 = !{!"../security/selinux/ss/avtab.c", i32 540, i32 4}
!73 = !{ptr @avtab_read_item._entry_ptr.50, !72, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @avtab_read_item._entry.51, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../security/selinux/ss/avtab.c", i32 549, i32 4}
!76 = !{ptr @avtab_read_item._entry_ptr.52, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.54, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../security/selinux/ss/avtab.c", i32 556, i32 3}
!79 = !{ptr @avtab_read_item._entry.53, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @avtab_read_item._entry_ptr.55, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.56, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../security/selinux/ss/avtab.c", i32 577, i32 3}
!83 = !{ptr @.str.57, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @avtab_read._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @avtab_read._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.59, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../security/selinux/ss/avtab.c", i32 582, i32 3}
!88 = !{ptr @avtab_read._entry.58, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @avtab_read._entry_ptr.60, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.62, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../security/selinux/ss/avtab.c", i32 595, i32 5}
!92 = !{ptr @avtab_read._entry.61, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @avtab_read._entry_ptr.63, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.65, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../security/selinux/ss/avtab.c", i32 597, i32 5}
!96 = !{ptr @avtab_read._entry.64, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @avtab_read._entry_ptr.66, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.67, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../security/selinux/ss/avtab.c", i32 673, i32 40}
!100 = !{ptr @.str.68, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../security/selinux/ss/avtab.c", i32 676, i32 42}
!102 = !{ptr @avtab_node_cachep, !103, !"avtab_node_cachep", i1 false, i1 false}
!103 = !{!"../security/selinux/ss/avtab.c", i32 26, i32 27}
!104 = !{ptr @avtab_xperms_cachep, !105, !"avtab_xperms_cachep", i1 false, i1 false}
!105 = !{!"../security/selinux/ss/avtab.c", i32 27, i32 27}
!106 = distinct !{null, !107, !"c1", i1 false, i1 false}
!107 = !{!"../security/selinux/ss/avtab.c", i32 34, i32 19}
!108 = distinct !{null, !109, !"c2", i1 false, i1 false}
!109 = !{!"../security/selinux/ss/avtab.c", i32 35, i32 19}
!110 = distinct !{null, !111, !"r1", i1 false, i1 false}
!111 = !{!"../security/selinux/ss/avtab.c", i32 36, i32 19}
!112 = distinct !{null, !113, !"r2", i1 false, i1 false}
!113 = !{!"../security/selinux/ss/avtab.c", i32 37, i32 19}
!114 = distinct !{null, !115, !"m", i1 false, i1 false}
!115 = !{!"../security/selinux/ss/avtab.c", i32 38, i32 19}
!116 = distinct !{null, !117, !"n", i1 false, i1 false}
!117 = !{!"../security/selinux/ss/avtab.c", i32 39, i32 19}
!118 = !{ptr @spec_order, !119, !"spec_order", i1 false, i1 false}
!119 = !{!"../security/selinux/ss/avtab.c", i32 388, i32 17}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 2148706431, i64 2148706436, i64 2148706449, i64 2148706493, i64 2148706527, i64 2148706548}
!130 = !{!"branch_weights", i32 1, i32 2000}
