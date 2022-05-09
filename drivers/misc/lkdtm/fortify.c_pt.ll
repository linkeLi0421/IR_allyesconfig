; ModuleID = '/llk/IR_all_yes/drivers/misc/lkdtm/fortify.c_pt.bc'
source_filename = "../drivers/misc/lkdtm/fortify.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon = type { %union.anon }
%union.anon = type { [10 x i8] }
%struct.target = type { [10 x i8] }
%struct.target.0 = type { [10 x i8], [10 x i8] }

@lkdtm_FORTIFIED_OBJECT._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 25, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016lkdtm: trying to read past the end of a struct\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"lkdtm_FORTIFIED_OBJECT\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/misc/lkdtm/fortify.c\00", [35 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_OBJECT._entry_ptr = internal global ptr @lkdtm_FORTIFIED_OBJECT._entry, section ".printk_index", align 4
@fortify_scratch_space = internal global { i32, [28 x i8] } zeroinitializer, align 32
@lkdtm_FORTIFIED_OBJECT._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013lkdtm: FAIL: fortify did not block an object overread!\0A\00", [38 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_OBJECT._entry_ptr.5 = internal global ptr @lkdtm_FORTIFIED_OBJECT._entry.3, section ".printk_index", align 4
@lkdtm_FORTIFIED_OBJECT._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\014lkdtm: This is probably expected, since this %s was built *without* CONFIG_FORTIFY_SOURCE=y\0A\00", [33 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_OBJECT._entry_ptr.8 = internal global ptr @lkdtm_FORTIFIED_OBJECT._entry.6, section ".printk_index", align 4
@lkdtm_kernel_info = external dso_local local_unnamed_addr global ptr, align 4
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"over ten bytes\00", [17 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_SUBOBJECT._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016lkdtm: trying to strcpy past the end of a member of a struct\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lkdtm_FORTIFIED_SUBOBJECT\00", [38 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_SUBOBJECT._entry_ptr = internal global ptr @lkdtm_FORTIFIED_SUBOBJECT._entry, section ".printk_index", align 4
@lkdtm_FORTIFIED_SUBOBJECT._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013lkdtm: FAIL: fortify did not block an sub-object overrun!\0A\00", [35 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_SUBOBJECT._entry_ptr.14 = internal global ptr @lkdtm_FORTIFIED_SUBOBJECT._entry.12, section ".printk_index", align 4
@lkdtm_FORTIFIED_SUBOBJECT._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.11, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_SUBOBJECT._entry_ptr.16 = internal global ptr @lkdtm_FORTIFIED_SUBOBJECT._entry.15, section ".printk_index", align 4
@__const.lkdtm_FORTIFIED_STRSCPY.weird = private unnamed_addr constant %struct.anon { %union.anon { [10 x i8] c"hello!\00\00\00\00" } }, align 1
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"foobar\00", [25 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_STRSCPY._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014lkdtm: FAIL: strscpy() of 0 length did not return -E2BIG\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"lkdtm_FORTIFIED_STRSCPY\00", [40 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_STRSCPY._entry_ptr = internal global ptr @lkdtm_FORTIFIED_STRSCPY._entry, section ".printk_index", align 4
@lkdtm_FORTIFIED_STRSCPY._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014lkdtm: FAIL: strscpy() did not return -E2BIG while src is truncated\0A\00", [57 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_STRSCPY._entry_ptr.22 = internal global ptr @lkdtm_FORTIFIED_STRSCPY._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"foob\00", [27 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_STRSCPY._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.2, i32 99, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014lkdtm: FAIL: after strscpy() dst does not contain \22foob\22 but \22%s\22\0A\00", [59 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_STRSCPY._entry_ptr.26 = internal global ptr @lkdtm_FORTIFIED_STRSCPY._entry.24, section ".printk_index", align 4
@lkdtm_FORTIFIED_STRSCPY._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.19, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\014lkdtm: FAIL: strscpy() did not return 3 while src was copied entirely truncated\0A\00", [45 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_STRSCPY._entry_ptr.29 = internal global ptr @lkdtm_FORTIFIED_STRSCPY._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"foo\00", [28 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_STRSCPY._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.19, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\014lkdtm: FAIL: after strscpy() dst does not contain \22foo\22 but \22%s\22\0A\00", [60 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_STRSCPY._entry_ptr.33 = internal global ptr @lkdtm_FORTIFIED_STRSCPY._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hello\00", [26 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_STRSCPY._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.19, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\014lkdtm: FAIL: after strscpy() weird_dst does not contain \22hello\22 but \22%s\22\0A\00", [52 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_STRSCPY._entry_ptr.37 = internal global ptr @lkdtm_FORTIFIED_STRSCPY._entry.35, section ".printk_index", align 4
@lkdtm_FORTIFIED_STRSCPY._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.19, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013lkdtm: FAIL: strscpy() overflow not detected!\0A\00", [47 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_STRSCPY._entry_ptr.40 = internal global ptr @lkdtm_FORTIFIED_STRSCPY._entry.38, section ".printk_index", align 4
@lkdtm_FORTIFIED_STRSCPY._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.19, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@lkdtm_FORTIFIED_STRSCPY._entry_ptr.42 = internal global ptr @lkdtm_FORTIFIED_STRSCPY._entry.41, section ".printk_index", align 4
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 25, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [22 x i8] c"fortify_scratch_space\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 11, i32 21 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 30, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 31, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 44, i32 15 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 47, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 59, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 60, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 83, i32 16 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 90, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 94, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 97, i32 19 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 98, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 109, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 112, i32 19 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 113, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 119, i32 24 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 120, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 132, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private constant [32 x i8] c"../drivers/misc/lkdtm/fortify.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 133, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @lkdtm_FORTIFIED_OBJECT._entry, ptr @lkdtm_FORTIFIED_OBJECT._entry.3, ptr @lkdtm_FORTIFIED_OBJECT._entry.6, ptr @lkdtm_FORTIFIED_OBJECT._entry_ptr, ptr @lkdtm_FORTIFIED_OBJECT._entry_ptr.5, ptr @lkdtm_FORTIFIED_OBJECT._entry_ptr.8, ptr @lkdtm_FORTIFIED_STRSCPY._entry, ptr @lkdtm_FORTIFIED_STRSCPY._entry.20, ptr @lkdtm_FORTIFIED_STRSCPY._entry.24, ptr @lkdtm_FORTIFIED_STRSCPY._entry.27, ptr @lkdtm_FORTIFIED_STRSCPY._entry.31, ptr @lkdtm_FORTIFIED_STRSCPY._entry.35, ptr @lkdtm_FORTIFIED_STRSCPY._entry.38, ptr @lkdtm_FORTIFIED_STRSCPY._entry.41, ptr @lkdtm_FORTIFIED_STRSCPY._entry_ptr, ptr @lkdtm_FORTIFIED_STRSCPY._entry_ptr.22, ptr @lkdtm_FORTIFIED_STRSCPY._entry_ptr.26, ptr @lkdtm_FORTIFIED_STRSCPY._entry_ptr.29, ptr @lkdtm_FORTIFIED_STRSCPY._entry_ptr.33, ptr @lkdtm_FORTIFIED_STRSCPY._entry_ptr.37, ptr @lkdtm_FORTIFIED_STRSCPY._entry_ptr.40, ptr @lkdtm_FORTIFIED_STRSCPY._entry_ptr.42, ptr @lkdtm_FORTIFIED_SUBOBJECT._entry, ptr @lkdtm_FORTIFIED_SUBOBJECT._entry.12, ptr @lkdtm_FORTIFIED_SUBOBJECT._entry.15, ptr @lkdtm_FORTIFIED_SUBOBJECT._entry_ptr, ptr @lkdtm_FORTIFIED_SUBOBJECT._entry_ptr.14, ptr @lkdtm_FORTIFIED_SUBOBJECT._entry_ptr.16, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @fortify_scratch_space, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_FORTIFIED_OBJECT._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fortify_scratch_space to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_FORTIFIED_OBJECT._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_FORTIFIED_OBJECT._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_FORTIFIED_SUBOBJECT._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_FORTIFIED_SUBOBJECT._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_FORTIFIED_SUBOBJECT._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_FORTIFIED_STRSCPY._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_FORTIFIED_STRSCPY._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_FORTIFIED_STRSCPY._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_FORTIFIED_STRSCPY._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_FORTIFIED_STRSCPY._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_FORTIFIED_STRSCPY._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_FORTIFIED_STRSCPY._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lkdtm_FORTIFIED_STRSCPY._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_FORTIFIED_OBJECT() local_unnamed_addr #0 align 64 {
entry:
  %target = alloca [2 x %struct.target], align 1
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %target) #7
  %0 = call ptr @memset(ptr %target, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size)
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %size, align 4
  store volatile i32 11, ptr %size, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  %arrayidx1 = getelementptr inbounds [2 x %struct.target], ptr %target, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %size.0.size.0.size.0. = load volatile i32, ptr %size, align 4
  %call2 = call i32 @memcmp(ptr noundef nonnull %target, ptr noundef %arrayidx1, i32 noundef %size.0.size.0.size.0.) #11
  store volatile i32 %call2, ptr @fortify_scratch_space, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %3 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %3) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %target) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_FORTIFIED_SUBOBJECT() local_unnamed_addr #0 align 64 {
entry:
  %target = alloca %struct.target.0, align 1
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %target)
  %0 = call ptr @memset(ptr %target, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size)
  %1 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 -1, ptr %size, align 4
  store volatile i32 20, ptr %size, align 4
  %size.0.size.0.size.0. = load volatile i32, ptr %size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size.0.size.0.size.0., i32 noundef 3264) #12
  %target.3.target.3.target.3..sroa_idx = getelementptr inbounds i8, ptr %target, i32 3
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %size.0.size.0.size.0.18 = load volatile i32, ptr %size, align 4
  %call1 = tail call i32 @strscpy(ptr noundef %call9.i, ptr noundef nonnull @.str.9, i32 noundef %size.0.size.0.size.0.18) #7
  %call2 = tail call i32 @strlen(ptr noundef %call9.i) #11
  %add = add i32 %call2, 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 %add, ptr %size, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %size.0.size.0.size.0.19 = load volatile i32, ptr %size, align 4
  %5 = call ptr @memcpy(ptr %target, ptr %call9.i, i32 %size.0.size.0.size.0.19)
  %6 = ptrtoint ptr %target.3.target.3.target.3..sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %target.3.target.3.target.3. = load i8, ptr %target.3.target.3.target.3..sroa_idx, align 1
  %conv = zext i8 %target.3.target.3.target.3. to i32
  store volatile i32 %conv, ptr @fortify_scratch_space, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %7 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %7) #10
  tail call void @kfree(ptr noundef %call9.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %target)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lkdtm_FORTIFIED_STRSCPY() local_unnamed_addr #0 align 64 {
entry:
  %dst = alloca [5 x i8], align 1
  %weird = alloca %struct.anon, align 1
  %weird_dst = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %dst) #7
  %0 = call ptr @memset(ptr %dst, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %weird) #7
  %1 = call ptr @memcpy(ptr %weird, ptr @__const.lkdtm_FORTIFIED_STRSCPY.weird, i32 10)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %weird_dst) #7
  %2 = call ptr @memset(ptr %weird_dst, i32 255, i32 6)
  %call = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.17, i32 noundef 3264) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @strscpy(ptr noundef nonnull %dst, ptr noundef nonnull %call, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, -7
  br i1 %cmp2.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %call7 = call i32 @strscpy(ptr noundef nonnull %dst, ptr noundef nonnull %call, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, -7
  br i1 %cmp8.not, label %if.end5.if.end15_crit_edge, label %do.end12

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %if.end5.if.end15_crit_edge
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %dst, ptr noundef nonnull dereferenceable(5) @.str.23, i32 5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp18.not = icmp eq i32 %bcmp, 0
  br i1 %cmp18.not, label %if.end15.if.end26_crit_edge, label %do.end22

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull %dst) #10
  br label %if.end26

if.end26:                                         ; preds = %do.end22, %if.end15.if.end26_crit_edge
  %arrayidx = getelementptr i8, ptr %call, i32 3
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx, align 1
  %call28 = call i32 @strscpy(ptr noundef nonnull %dst, ptr noundef nonnull %call, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 3
  br i1 %cmp29.not, label %if.end26.if.end36_crit_edge, label %do.end33

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.end26.if.end36_crit_edge
  %bcmp87 = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %dst, ptr noundef nonnull dereferenceable(4) @.str.30, i32 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp87)
  %cmp39.not = icmp eq i32 %bcmp87, 0
  br i1 %cmp39.not, label %if.end36.if.end47_crit_edge, label %do.end43

if.end36.if.end47_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull %dst) #10
  br label %if.end47

if.end47:                                         ; preds = %do.end43, %if.end36.if.end47_crit_edge
  %call50 = call i32 @strscpy(ptr noundef nonnull %weird_dst, ptr noundef nonnull %weird, i32 noundef 6) #7
  %bcmp88 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %weird_dst, ptr noundef nonnull dereferenceable(6) @.str.34, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp88)
  %cmp53.not = icmp eq i32 %bcmp88, 0
  br i1 %cmp53.not, label %if.end47.if.end61_crit_edge, label %do.end57

if.end47.if.end61_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

do.end57:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull %weird_dst) #10
  br label %if.end61

if.end61:                                         ; preds = %do.end57, %if.end47.if.end61_crit_edge
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 98, ptr %arrayidx, align 1
  %call64 = call i32 @strlen(ptr noundef nonnull %call) #11
  %call65 = call i32 @strscpy(ptr noundef nonnull %dst, ptr noundef nonnull %call, i32 noundef %call64) #7
  %call70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lkdtm_kernel_info to i32))
  %5 = load ptr, ptr @lkdtm_kernel_info, align 4
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %5) #10
  call void @kfree(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %weird_dst) #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %weird) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %dst) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !65, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/misc/lkdtm/fortify.c", i32 25, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @lkdtm_FORTIFIED_OBJECT._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @lkdtm_FORTIFIED_OBJECT._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/misc/lkdtm/fortify.c", i32 30, i32 2}
!8 = !{ptr @lkdtm_FORTIFIED_OBJECT._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @lkdtm_FORTIFIED_OBJECT._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/lkdtm/fortify.c", i32 31, i32 2}
!12 = !{ptr @lkdtm_FORTIFIED_OBJECT._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @lkdtm_FORTIFIED_OBJECT._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/misc/lkdtm/fortify.c", i32 44, i32 15}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/misc/lkdtm/fortify.c", i32 47, i32 2}
!18 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @lkdtm_FORTIFIED_SUBOBJECT._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @lkdtm_FORTIFIED_SUBOBJECT._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/lkdtm/fortify.c", i32 59, i32 2}
!23 = !{ptr @lkdtm_FORTIFIED_SUBOBJECT._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @lkdtm_FORTIFIED_SUBOBJECT._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @lkdtm_FORTIFIED_SUBOBJECT._entry.15, !26, !"_entry", i1 false, i1 false}
!26 = !{!"../drivers/misc/lkdtm/fortify.c", i32 60, i32 2}
!27 = !{ptr @lkdtm_FORTIFIED_SUBOBJECT._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/misc/lkdtm/fortify.c", i32 83, i32 16}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/misc/lkdtm/fortify.c", i32 90, i32 3}
!32 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @lkdtm_FORTIFIED_STRSCPY._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @lkdtm_FORTIFIED_STRSCPY._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/misc/lkdtm/fortify.c", i32 94, i32 3}
!37 = !{ptr @lkdtm_FORTIFIED_STRSCPY._entry.20, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @lkdtm_FORTIFIED_STRSCPY._entry_ptr.22, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/misc/lkdtm/fortify.c", i32 97, i32 19}
!41 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/misc/lkdtm/fortify.c", i32 98, i32 3}
!43 = !{ptr @lkdtm_FORTIFIED_STRSCPY._entry.24, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @lkdtm_FORTIFIED_STRSCPY._entry_ptr.26, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.28, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/lkdtm/fortify.c", i32 109, i32 3}
!47 = !{ptr @lkdtm_FORTIFIED_STRSCPY._entry.27, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @lkdtm_FORTIFIED_STRSCPY._entry_ptr.29, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.30, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/misc/lkdtm/fortify.c", i32 112, i32 19}
!51 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/misc/lkdtm/fortify.c", i32 113, i32 3}
!53 = !{ptr @lkdtm_FORTIFIED_STRSCPY._entry.31, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @lkdtm_FORTIFIED_STRSCPY._entry_ptr.33, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/misc/lkdtm/fortify.c", i32 119, i32 24}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/misc/lkdtm/fortify.c", i32 120, i32 3}
!59 = !{ptr @lkdtm_FORTIFIED_STRSCPY._entry.35, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @lkdtm_FORTIFIED_STRSCPY._entry_ptr.37, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.39, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/misc/lkdtm/fortify.c", i32 132, i32 2}
!63 = !{ptr @lkdtm_FORTIFIED_STRSCPY._entry.38, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @lkdtm_FORTIFIED_STRSCPY._entry_ptr.40, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @lkdtm_FORTIFIED_STRSCPY._entry.41, !66, !"_entry", i1 false, i1 false}
!66 = !{!"../drivers/misc/lkdtm/fortify.c", i32 133, i32 2}
!67 = !{ptr @lkdtm_FORTIFIED_STRSCPY._entry_ptr.42, !66, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @fortify_scratch_space, !69, !"fortify_scratch_space", i1 false, i1 false}
!69 = !{!"../drivers/misc/lkdtm/fortify.c", i32 11, i32 21}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
