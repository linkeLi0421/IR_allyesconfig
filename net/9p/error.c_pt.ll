; ModuleID = '/llk/IR_all_yes/net/9p/error.c_pt.bc'
source_filename = "../net/9p/error.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+p9_error_init\22, \22a\22\09"
module asm "\09.weak\09__crc_p9_error_init\09\09\09\09"
module asm "\09.long\09__crc_p9_error_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_p9_error_init:\09\09\09\09\09"
module asm "\09.asciz \09\22p9_error_init\22\09\09\09\09\09"
module asm "__kstrtabns_p9_error_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+p9_errstr2errno\22, \22a\22\09"
module asm "\09.weak\09__crc_p9_errstr2errno\09\09\09\09"
module asm "\09.long\09__crc_p9_errstr2errno\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_p9_errstr2errno:\09\09\09\09\09"
module asm "\09.asciz \09\22p9_errstr2errno\22\09\09\09\09\09"
module asm "__kstrtabns_p9_errstr2errno:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.hlist_head = type { ptr }
%struct.errormap = type { ptr, i32, i32, %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@hash_errmap = internal global { [32 x %struct.hlist_head], [32 x i8] } zeroinitializer, align 32
@errmap = internal global { [126 x %struct.errormap], [616 x i8] } { [126 x %struct.errormap] [%struct.errormap { ptr @.str.3, i32 1, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.4, i32 1, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.5, i32 2, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.6, i32 2, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.7, i32 2, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.8, i32 4, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.9, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.10, i32 6, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.11, i32 7, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.12, i32 9, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.13, i32 11, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.14, i32 12, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.15, i32 13, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.16, i32 14, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.17, i32 15, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.18, i32 16, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.19, i32 17, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.20, i32 18, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.21, i32 19, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.22, i32 20, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.23, i32 21, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.24, i32 22, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.25, i32 23, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.26, i32 24, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.27, i32 26, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.28, i32 27, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.29, i32 28, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.30, i32 29, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.31, i32 30, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.32, i32 31, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.33, i32 32, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.34, i32 33, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.35, i32 34, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.36, i32 35, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.37, i32 36, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.38, i32 37, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.39, i32 38, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.40, i32 39, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.41, i32 40, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.42, i32 42, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.43, i32 43, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.44, i32 61, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.45, i32 64, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.46, i32 65, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.47, i32 66, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.48, i32 67, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.49, i32 70, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.50, i32 71, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.51, i32 74, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.52, i32 77, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.53, i32 86, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.54, i32 87, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.55, i32 88, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.56, i32 90, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.57, i32 92, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.58, i32 93, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.59, i32 94, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.60, i32 95, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.61, i32 96, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.62, i32 100, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.63, i32 101, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.64, i32 102, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.65, i32 103, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.66, i32 104, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.67, i32 105, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.68, i32 106, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.69, i32 107, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.70, i32 108, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.71, i32 110, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.72, i32 111, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.73, i32 112, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.74, i32 113, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.75, i32 114, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.76, i32 115, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.77, i32 120, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.78, i32 121, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.79, i32 122, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.80, i32 9, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.81, i32 13, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.82, i32 2, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.83, i32 111, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.84, i32 29, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.85, i32 9, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.86, i32 1, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.87, i32 39, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.88, i32 17, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.89, i32 17, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.90, i32 17, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.91, i32 9, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.92, i32 26, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.93, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.94, i32 26, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.95, i32 22, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.96, i32 36, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.97, i32 20, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.98, i32 1, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.99, i32 13, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.100, i32 13, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.101, i32 30, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.102, i32 1, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.103, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.104, i32 22, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.105, i32 22, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.106, i32 71, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.107, i32 11, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.108, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.109, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.110, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.111, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.112, i32 22, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.113, i32 2, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.114, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.115, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.116, i32 71, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.117, i32 28, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.118, i32 11, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.119, i32 2, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.120, i32 30, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.121, i32 43, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.122, i32 1, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.123, i32 1, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.124, i32 27, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.125, i32 5, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.126, i32 0, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr @.str.127, i32 0, i32 0, %struct.hlist_node zeroinitializer }, %struct.errormap { ptr null, i32 -1, i32 0, %struct.hlist_node zeroinitializer }], [616 x i8] zeroinitializer }, align 32
@__kstrtab_p9_error_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_p9_error_init = external dso_local constant [0 x i8], align 1
@__ksymtab_p9_error_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @p9_error_init to i32), ptr @__kstrtab_p9_error_init, ptr @__kstrtabns_p9_error_init }, section "___ksymtab+p9_error_init", align 4
@p9_errstr2errno._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 224, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\0139pnet: %s: server reported unknown error %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"p9_errstr2errno\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/9p/error.c\00", [17 x i8] zeroinitializer }, align 32
@p9_errstr2errno._entry_ptr = internal global ptr @p9_errstr2errno._entry, section ".printk_index", align 4
@__kstrtab_p9_errstr2errno = external dso_local constant [0 x i8], align 1
@__kstrtabns_p9_errstr2errno = external dso_local constant [0 x i8], align 1
@__ksymtab_p9_errstr2errno = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @p9_errstr2errno to i32), ptr @__kstrtab_p9_errstr2errno, ptr @__kstrtabns_p9_errstr2errno }, section "___ksymtab+p9_errstr2errno", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Operation not permitted\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wstat prohibited\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No such file or directory\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"directory entry not found\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"file not found\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Interrupted system call\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Input/output error\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No such device or address\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Argument list too long\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bad file descriptor\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Resource temporarily unavailable\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot allocate memory\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Permission denied\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Bad address\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Block device required\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Device or resource busy\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"File exists\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid cross-device link\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"No such device\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Not a directory\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Is a directory\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid argument\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Too many open files in system\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Too many open files\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Text file busy\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"File too large\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No space left on device\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Illegal seek\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Read-only file system\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Too many links\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Broken pipe\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Numerical argument out of domain\00", [63 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Numerical result out of range\00", [34 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Resource deadlock avoided\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"File name too long\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No locks available\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Function not implemented\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Directory not empty\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Too many levels of symbolic links\00", [62 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No message of desired type\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Identifier removed\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No data available\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Machine is not on the network\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Package not installed\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Object is remote\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Link has been severed\00", [42 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Communication error on send\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Protocol error\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Bad message\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"File descriptor in bad state\00", [35 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Streams pipe error\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Too many users\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Socket operation on non-socket\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Message too long\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Protocol not available\00", [41 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Protocol not supported\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Socket type not supported\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Operation not supported\00", [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Protocol family not supported\00", [34 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Network is down\00", [16 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Network is unreachable\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Network dropped connection on reset\00", [60 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Software caused connection abort\00", [63 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Connection reset by peer\00", [39 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No buffer space available\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Transport endpoint is already connected\00", [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Transport endpoint is not connected\00", [60 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Cannot send after transport endpoint shutdown\00", [50 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Connection timed out\00", [43 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Connection refused\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Host is down\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No route to host\00", [47 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Operation already in progress\00", [34 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Operation now in progress\00", [38 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Is a named type file\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Remote I/O error\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Disk quota exceeded\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fid unknown or out of range\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"permission denied\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"file does not exist\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"authentication failed\00", [42 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"bad offset in directory read\00", [35 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bad use of fid\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"wstat can't convert between files and directories\00", [46 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"directory is not empty\00", [41 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"file exists\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"file already exists\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"file or directory already exists\00", [63 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fid already in use\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"file in use\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i/o error\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"file already open for I/O\00", [38 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"illegal mode\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"illegal name\00", [19 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"not a directory\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"not a member of proposed group\00", [33 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"not owner\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"only owner can change group in wstat\00", [59 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read only file system\00", [42 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no access to special file\00", [38 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i/o count too large\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unknown group\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unknown user\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bogus wstat buffer\00", [45 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"exclusive use file already open\00", [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"corrupted directory entry\00", [38 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"corrupted file entry\00", [43 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"corrupted block label\00", [42 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"corrupted meta data\00", [44 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"illegal offset\00", [17 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"illegal path element\00", [43 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"root of file system is corrupted\00", [63 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"corrupted super block\00", [42 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"protocol botch\00", [17 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"file system is full\00", [44 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"file is in use\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"directory entry is not allocated\00", [63 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"file is read only\00", [46 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"file has been removed\00", [42 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"only support truncation to zero length\00", [57 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cannot remove root\00", [45 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"file too big\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"venti i/o error\00", [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"u9fs rhostsauth: no authentication required\00", [52 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"u9fs authnone: no authentication required\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@___asan_gen_.128 = private unnamed_addr constant [12 x i8] c"hash_errmap\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 37, i32 26 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"errmap\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 40, i32 24 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 223, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 41, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 42, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 43, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 44, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 45, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 46, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 47, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 48, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 49, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 50, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 51, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 52, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 53, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 54, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 55, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 56, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 57, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 58, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 59, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 60, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 61, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 62, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 63, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 64, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 65, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 66, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 67, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 68, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 69, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 70, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 71, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 72, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 73, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 74, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 75, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 76, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 77, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 78, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 79, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 80, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 81, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 82, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 83, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 84, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 85, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 86, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 87, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 88, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 89, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 90, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 91, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 92, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 93, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 94, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 95, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 96, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 97, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 98, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 99, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 100, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 101, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 102, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 103, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 104, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 105, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 106, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 107, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 108, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 109, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 110, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 111, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 112, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 113, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 114, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 115, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 116, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 117, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 119, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 120, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 121, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 122, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 123, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 124, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 125, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 126, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 127, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 128, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 129, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 130, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 131, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 132, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 133, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 134, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 135, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 136, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 137, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 138, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 139, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 140, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 141, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 142, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 143, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 144, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 145, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 146, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 147, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 148, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 149, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 150, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 151, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 152, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 153, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 154, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 155, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 156, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 157, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 158, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 159, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 160, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 161, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 162, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 163, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 164, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 166, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.519 = private constant [18 x i8] c"../net/9p/error.c\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 167, i32 3 }
@llvm.compiler.used = appending global [134 x ptr] [ptr @__ksymtab_p9_error_init, ptr @__ksymtab_p9_errstr2errno, ptr @p9_errstr2errno._entry, ptr @p9_errstr2errno._entry_ptr, ptr @hash_errmap, ptr @errmap, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127], section "llvm.metadata"
@0 = internal global [131 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hash_errmap to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @errmap to i32), i32 2520, i32 3136, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_errstr2errno._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p9_error_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @hash_errmap, i32 0, i32 128)
  %1 = load ptr, ptr @errmap, align 4
  %tobool.not23 = icmp eq ptr %1, null
  br i1 %tobool.not23, label %entry.for.end10_crit_edge, label %entry.for.body2_crit_edge

entry.for.body2_crit_edge:                        ; preds = %entry
  br label %for.body2

entry.for.end10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end10

for.body2:                                        ; preds = %hlist_add_head.exit.for.body2_crit_edge, %entry.for.body2_crit_edge
  %2 = phi ptr [ %11, %hlist_add_head.exit.for.body2_crit_edge ], [ %1, %entry.for.body2_crit_edge ]
  %c.024 = phi ptr [ %incdec.ptr, %hlist_add_head.exit.for.body2_crit_edge ], [ @errmap, %entry.for.body2_crit_edge ]
  %call = tail call i32 @strlen(ptr noundef nonnull %2) #10
  %namelen = getelementptr inbounds %struct.errormap, ptr %c.024, i32 0, i32 2
  %3 = ptrtoint ptr %namelen to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %namelen, align 4
  %call6 = tail call fastcc i32 @jhash(ptr noundef nonnull %2, i32 noundef %call)
  %rem = and i32 %call6, 31
  %list = getelementptr inbounds %struct.errormap, ptr %c.024, i32 0, i32 3
  %pprev.i = getelementptr inbounds %struct.errormap, ptr %c.024, i32 0, i32 3, i32 1
  %arrayidx8 = getelementptr [32 x %struct.hlist_head], ptr @hash_errmap, i32 0, i32 %rem
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx8, align 4
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %list, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body2.hlist_add_head.exit_crit_edge, label %do.body12.i

for.body2.hlist_add_head.exit_crit_edge:          ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #9
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %for.body2
  call void @__sanitizer_cov_trace_pc() #9
  %pprev.i21 = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %pprev.i21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %list, ptr %pprev.i21, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %for.body2.hlist_add_head.exit_crit_edge
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list, ptr %arrayidx8, align 4
  %9 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %arrayidx8, ptr %pprev.i, align 4
  %incdec.ptr = getelementptr %struct.errormap, ptr %c.024, i32 1
  %10 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %hlist_add_head.exit.for.end10_crit_edge, label %hlist_add_head.exit.for.body2_crit_edge

hlist_add_head.exit.for.body2_crit_edge:          ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body2

hlist_add_head.exit.for.end10_crit_edge:          ; preds = %hlist_add_head.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end10

for.end10:                                        ; preds = %hlist_add_head.exit.for.end10_crit_edge, %entry.for.end10_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @jhash(ptr nocapture noundef readonly %key, i32 noundef %length) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %length, -559038737
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %length)
  %cmp13 = icmp ugt i32 %length, 12
  br i1 %cmp13, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %k.018 = phi ptr [ %add.ptr31, %while.body.while.body_crit_edge ], [ %key, %entry.while.body_crit_edge ]
  %c.017 = phi i32 [ %xor28, %while.body.while.body_crit_edge ], [ %add, %entry.while.body_crit_edge ]
  %b.016 = phi i32 [ %add29, %while.body.while.body_crit_edge ], [ %add, %entry.while.body_crit_edge ]
  %a.015 = phi i32 [ %add25, %while.body.while.body_crit_edge ], [ %add, %entry.while.body_crit_edge ]
  %length.addr.014 = phi i32 [ %sub30, %while.body.while.body_crit_edge ], [ %length, %entry.while.body_crit_edge ]
  %0 = ptrtoint ptr %k.018 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %k.018, align 1
  %add2 = add i32 %1, %a.015
  %add.ptr = getelementptr i8, ptr %k.018, i32 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %add.ptr, align 1
  %add4 = add i32 %3, %b.016
  %add.ptr5 = getelementptr i8, ptr %k.018, i32 8
  %4 = ptrtoint ptr %add.ptr5 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr5, align 1
  %add7 = add i32 %5, %c.017
  %sub = sub i32 %add2, %add7
  %or.i = tail call i32 @llvm.fshl.i32(i32 %add7, i32 %add7, i32 4) #7
  %xor = xor i32 %sub, %or.i
  %add9 = add i32 %add7, %add4
  %sub10 = sub i32 %add4, %xor
  %or.i1 = tail call i32 @llvm.fshl.i32(i32 %xor, i32 %xor, i32 6) #7
  %xor12 = xor i32 %sub10, %or.i1
  %add13 = add i32 %xor, %add9
  %sub14 = sub i32 %add9, %xor12
  %or.i2 = tail call i32 @llvm.fshl.i32(i32 %xor12, i32 %xor12, i32 8) #7
  %xor16 = xor i32 %sub14, %or.i2
  %add17 = add i32 %xor12, %add13
  %sub18 = sub i32 %add13, %xor16
  %or.i3 = tail call i32 @llvm.fshl.i32(i32 %xor16, i32 %xor16, i32 16) #7
  %xor20 = xor i32 %sub18, %or.i3
  %add21 = add i32 %xor16, %add17
  %sub22 = sub i32 %add17, %xor20
  %or.i4 = tail call i32 @llvm.fshl.i32(i32 %xor20, i32 %xor20, i32 19) #7
  %xor24 = xor i32 %sub22, %or.i4
  %add25 = add i32 %xor20, %add21
  %sub26 = sub i32 %add21, %xor24
  %or.i5 = tail call i32 @llvm.fshl.i32(i32 %xor24, i32 %xor24, i32 4) #7
  %xor28 = xor i32 %sub26, %or.i5
  %add29 = add i32 %xor24, %add25
  %sub30 = add i32 %length.addr.014, -12
  %add.ptr31 = getelementptr i8, ptr %k.018, i32 12
  %cmp = icmp ugt i32 %sub30, 12
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %length.addr.0.lcssa = phi i32 [ %length, %entry.while.end_crit_edge ], [ %sub30, %while.body.while.end_crit_edge ]
  %a.0.lcssa = phi i32 [ %add, %entry.while.end_crit_edge ], [ %add25, %while.body.while.end_crit_edge ]
  %b.0.lcssa = phi i32 [ %add, %entry.while.end_crit_edge ], [ %add29, %while.body.while.end_crit_edge ]
  %c.0.lcssa = phi i32 [ %add, %entry.while.end_crit_edge ], [ %xor28, %while.body.while.end_crit_edge ]
  %k.0.lcssa = phi ptr [ %key, %entry.while.end_crit_edge ], [ %add.ptr31, %while.body.while.end_crit_edge ]
  %6 = zext i32 %length.addr.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %length.addr.0.lcssa, label %while.end.sw.epilog_crit_edge [
    i32 12, label %sw.bb
    i32 11, label %while.end.sw.bb33_crit_edge
    i32 10, label %while.end.sw.bb38_crit_edge
    i32 9, label %while.end.sw.bb43_crit_edge
    i32 8, label %while.end.sw.bb47_crit_edge
    i32 7, label %while.end.sw.bb52_crit_edge
    i32 6, label %while.end.sw.bb57_crit_edge
    i32 5, label %while.end.sw.bb62_crit_edge
    i32 4, label %while.end.sw.bb66_crit_edge
    i32 3, label %while.end.sw.bb71_crit_edge
    i32 2, label %while.end.sw.bb76_crit_edge
    i32 1, label %while.end.sw.bb81_crit_edge
  ]

while.end.sw.bb81_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb81

while.end.sw.bb76_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb76

while.end.sw.bb71_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb71

while.end.sw.bb66_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb66

while.end.sw.bb62_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

while.end.sw.bb57_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb57

while.end.sw.bb52_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb52

while.end.sw.bb47_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb47

while.end.sw.bb43_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb43

while.end.sw.bb38_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb38

while.end.sw.bb33_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb33

while.end.sw.epilog_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %k.0.lcssa, i32 11
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %shl = shl nuw i32 %conv, 24
  %add32 = add i32 %shl, %c.0.lcssa
  br label %sw.bb33

sw.bb33:                                          ; preds = %sw.bb, %while.end.sw.bb33_crit_edge
  %c.1 = phi i32 [ %c.0.lcssa, %while.end.sw.bb33_crit_edge ], [ %add32, %sw.bb ]
  %arrayidx34 = getelementptr i8, ptr %k.0.lcssa, i32 10
  %9 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %10 to i32
  %shl36 = shl nuw nsw i32 %conv35, 16
  %add37 = add i32 %shl36, %c.1
  br label %sw.bb38

sw.bb38:                                          ; preds = %sw.bb33, %while.end.sw.bb38_crit_edge
  %c.2 = phi i32 [ %c.0.lcssa, %while.end.sw.bb38_crit_edge ], [ %add37, %sw.bb33 ]
  %arrayidx39 = getelementptr i8, ptr %k.0.lcssa, i32 9
  %11 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %12 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %add42 = add i32 %shl41, %c.2
  br label %sw.bb43

sw.bb43:                                          ; preds = %sw.bb38, %while.end.sw.bb43_crit_edge
  %c.3 = phi i32 [ %c.0.lcssa, %while.end.sw.bb43_crit_edge ], [ %add42, %sw.bb38 ]
  %arrayidx44 = getelementptr i8, ptr %k.0.lcssa, i32 8
  %13 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %14 to i32
  %add46 = add i32 %c.3, %conv45
  br label %sw.bb47

sw.bb47:                                          ; preds = %sw.bb43, %while.end.sw.bb47_crit_edge
  %c.4 = phi i32 [ %c.0.lcssa, %while.end.sw.bb47_crit_edge ], [ %add46, %sw.bb43 ]
  %arrayidx48 = getelementptr i8, ptr %k.0.lcssa, i32 7
  %15 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %16 to i32
  %shl50 = shl nuw i32 %conv49, 24
  %add51 = add i32 %shl50, %b.0.lcssa
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb47, %while.end.sw.bb52_crit_edge
  %b.1 = phi i32 [ %b.0.lcssa, %while.end.sw.bb52_crit_edge ], [ %add51, %sw.bb47 ]
  %c.5 = phi i32 [ %c.0.lcssa, %while.end.sw.bb52_crit_edge ], [ %c.4, %sw.bb47 ]
  %arrayidx53 = getelementptr i8, ptr %k.0.lcssa, i32 6
  %17 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx53, align 1
  %conv54 = zext i8 %18 to i32
  %shl55 = shl nuw nsw i32 %conv54, 16
  %add56 = add i32 %shl55, %b.1
  br label %sw.bb57

sw.bb57:                                          ; preds = %sw.bb52, %while.end.sw.bb57_crit_edge
  %b.2 = phi i32 [ %b.0.lcssa, %while.end.sw.bb57_crit_edge ], [ %add56, %sw.bb52 ]
  %c.6 = phi i32 [ %c.0.lcssa, %while.end.sw.bb57_crit_edge ], [ %c.5, %sw.bb52 ]
  %arrayidx58 = getelementptr i8, ptr %k.0.lcssa, i32 5
  %19 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx58, align 1
  %conv59 = zext i8 %20 to i32
  %shl60 = shl nuw nsw i32 %conv59, 8
  %add61 = add i32 %shl60, %b.2
  br label %sw.bb62

sw.bb62:                                          ; preds = %sw.bb57, %while.end.sw.bb62_crit_edge
  %b.3 = phi i32 [ %b.0.lcssa, %while.end.sw.bb62_crit_edge ], [ %add61, %sw.bb57 ]
  %c.7 = phi i32 [ %c.0.lcssa, %while.end.sw.bb62_crit_edge ], [ %c.6, %sw.bb57 ]
  %arrayidx63 = getelementptr i8, ptr %k.0.lcssa, i32 4
  %21 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx63, align 1
  %conv64 = zext i8 %22 to i32
  %add65 = add i32 %b.3, %conv64
  br label %sw.bb66

sw.bb66:                                          ; preds = %sw.bb62, %while.end.sw.bb66_crit_edge
  %b.4 = phi i32 [ %b.0.lcssa, %while.end.sw.bb66_crit_edge ], [ %add65, %sw.bb62 ]
  %c.8 = phi i32 [ %c.0.lcssa, %while.end.sw.bb66_crit_edge ], [ %c.7, %sw.bb62 ]
  %arrayidx67 = getelementptr i8, ptr %k.0.lcssa, i32 3
  %23 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx67, align 1
  %conv68 = zext i8 %24 to i32
  %shl69 = shl nuw i32 %conv68, 24
  %add70 = add i32 %shl69, %a.0.lcssa
  br label %sw.bb71

sw.bb71:                                          ; preds = %sw.bb66, %while.end.sw.bb71_crit_edge
  %a.1 = phi i32 [ %a.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %add70, %sw.bb66 ]
  %b.5 = phi i32 [ %b.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %b.4, %sw.bb66 ]
  %c.9 = phi i32 [ %c.0.lcssa, %while.end.sw.bb71_crit_edge ], [ %c.8, %sw.bb66 ]
  %arrayidx72 = getelementptr i8, ptr %k.0.lcssa, i32 2
  %25 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %26 to i32
  %shl74 = shl nuw nsw i32 %conv73, 16
  %add75 = add i32 %shl74, %a.1
  br label %sw.bb76

sw.bb76:                                          ; preds = %sw.bb71, %while.end.sw.bb76_crit_edge
  %a.2 = phi i32 [ %a.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %add75, %sw.bb71 ]
  %b.6 = phi i32 [ %b.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %b.5, %sw.bb71 ]
  %c.10 = phi i32 [ %c.0.lcssa, %while.end.sw.bb76_crit_edge ], [ %c.9, %sw.bb71 ]
  %arrayidx77 = getelementptr i8, ptr %k.0.lcssa, i32 1
  %27 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx77, align 1
  %conv78 = zext i8 %28 to i32
  %shl79 = shl nuw nsw i32 %conv78, 8
  %add80 = add i32 %shl79, %a.2
  br label %sw.bb81

sw.bb81:                                          ; preds = %sw.bb76, %while.end.sw.bb81_crit_edge
  %a.3 = phi i32 [ %a.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %add80, %sw.bb76 ]
  %b.7 = phi i32 [ %b.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %b.6, %sw.bb76 ]
  %c.11 = phi i32 [ %c.0.lcssa, %while.end.sw.bb81_crit_edge ], [ %c.10, %sw.bb76 ]
  %29 = ptrtoint ptr %k.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %k.0.lcssa, align 1
  %conv83 = zext i8 %30 to i32
  %add84 = add i32 %a.3, %conv83
  %xor85 = xor i32 %c.11, %b.7
  %or.i6 = tail call i32 @llvm.fshl.i32(i32 %b.7, i32 %b.7, i32 14) #7
  %sub87 = sub i32 %xor85, %or.i6
  %xor88 = xor i32 %add84, %sub87
  %or.i7 = tail call i32 @llvm.fshl.i32(i32 %sub87, i32 %sub87, i32 11) #7
  %sub90 = sub i32 %xor88, %or.i7
  %xor91 = xor i32 %sub90, %b.7
  %or.i8 = tail call i32 @llvm.fshl.i32(i32 %sub90, i32 %sub90, i32 25) #7
  %sub93 = sub i32 %xor91, %or.i8
  %xor94 = xor i32 %sub93, %sub87
  %or.i9 = tail call i32 @llvm.fshl.i32(i32 %sub93, i32 %sub93, i32 16) #7
  %sub96 = sub i32 %xor94, %or.i9
  %xor97 = xor i32 %sub96, %sub90
  %or.i10 = tail call i32 @llvm.fshl.i32(i32 %sub96, i32 %sub96, i32 4) #7
  %sub99 = sub i32 %xor97, %or.i10
  %xor100 = xor i32 %sub99, %sub93
  %or.i11 = tail call i32 @llvm.fshl.i32(i32 %sub99, i32 %sub99, i32 14) #7
  %sub102 = sub i32 %xor100, %or.i11
  %xor103 = xor i32 %sub102, %sub96
  %or.i12 = tail call i32 @llvm.fshl.i32(i32 %sub102, i32 %sub102, i32 24) #7
  %sub105 = sub i32 %xor103, %or.i12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb81, %while.end.sw.epilog_crit_edge
  %c.12 = phi i32 [ %c.0.lcssa, %while.end.sw.epilog_crit_edge ], [ %sub105, %sw.bb81 ]
  ret i32 %c.12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @p9_errstr2errno(ptr noundef %errstr, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @jhash(ptr noundef %errstr, i32 noundef %len)
  %rem = and i32 %call, 31
  %arrayidx = getelementptr [32 x %struct.hlist_head], ptr @hash_errmap, i32 0, i32 %rem
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -12
  %tobool2.not4145 = icmp eq ptr %add.ptr, null
  %tobool2.not41 = or i1 %tobool.not, %tobool2.not4145
  br i1 %tobool2.not41, label %entry.if.then16_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.then16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %c.042 = phi ptr [ %add.ptr11, %for.inc.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %namelen = getelementptr inbounds %struct.errormap, ptr %c.042, i32 0, i32 2
  %2 = ptrtoint ptr %namelen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %namelen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %len)
  %cmp = icmp eq i32 %3, %len
  br i1 %cmp, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %4 = ptrtoint ptr %c.042 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c.042, align 4
  %bcmp = tail call i32 @bcmp(ptr %5, ptr %errstr, i32 %len) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool4.not = icmp eq i32 %bcmp, 0
  br i1 %tobool4.not, label %for.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %list = getelementptr inbounds %struct.errormap, ptr %c.042, i32 0, i32 3
  %6 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %list, align 4
  %tobool7.not = icmp eq ptr %7, null
  %add.ptr11 = getelementptr i8, ptr %7, i32 -12
  %tobool2.not47 = icmp eq ptr %add.ptr11, null
  %tobool2.not = or i1 %tobool7.not, %tobool2.not47
  br i1 %tobool2.not, label %for.inc.if.then16_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.then16_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

for.end:                                          ; preds = %land.lhs.true
  %val = getelementptr inbounds %struct.errormap, ptr %c.042, i32 0, i32 1
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp15 = icmp eq i32 %9, 0
  br i1 %cmp15, label %for.end.if.then16_crit_edge, label %for.end.if.end20_crit_edge

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

for.end.if.then16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.then16:                                        ; preds = %for.end.if.then16_crit_edge, %for.inc.if.then16_crit_edge, %entry.if.then16_crit_edge
  %arrayidx17 = getelementptr i8, ptr %errstr, i32 %len
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx17, align 1
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %errstr) #11
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %for.end.if.end20_crit_edge
  %errno.1 = phi i32 [ 526, %if.then16 ], [ %9, %for.end.if.end20_crit_edge ]
  %sub = sub i32 0, %errno.1
  ret i32 %sub
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262}
!llvm.module.flags = !{!264, !265, !266, !267, !268, !269, !270, !271}
!llvm.ident = !{!272}

!0 = !{ptr @__ksymtab_p9_error_init, !1, !"__ksymtab_p9_error_init", i1 false, i1 false}
!1 = !{!"../net/9p/error.c", i32 195, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/9p/error.c", i32 223, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @p9_errstr2errno._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @p9_errstr2errno._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_p9_errstr2errno, !9, !"__ksymtab_p9_errstr2errno", i1 false, i1 false}
!9 = !{!"../net/9p/error.c", i32 230, i32 1}
!10 = !{ptr @hash_errmap, !11, !"hash_errmap", i1 false, i1 false}
!11 = !{!"../net/9p/error.c", i32 37, i32 26}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/9p/error.c", i32 41, i32 3}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/9p/error.c", i32 42, i32 3}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/9p/error.c", i32 43, i32 3}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/9p/error.c", i32 44, i32 3}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/9p/error.c", i32 45, i32 3}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/9p/error.c", i32 46, i32 3}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/9p/error.c", i32 47, i32 3}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/9p/error.c", i32 48, i32 3}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/9p/error.c", i32 49, i32 3}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/9p/error.c", i32 50, i32 3}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/9p/error.c", i32 51, i32 3}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/9p/error.c", i32 52, i32 3}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/9p/error.c", i32 53, i32 3}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/9p/error.c", i32 54, i32 3}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/9p/error.c", i32 55, i32 3}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/9p/error.c", i32 56, i32 3}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/9p/error.c", i32 57, i32 3}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/9p/error.c", i32 58, i32 3}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/9p/error.c", i32 59, i32 3}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/9p/error.c", i32 60, i32 3}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/9p/error.c", i32 61, i32 3}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/9p/error.c", i32 62, i32 3}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/9p/error.c", i32 63, i32 3}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/9p/error.c", i32 64, i32 3}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/9p/error.c", i32 65, i32 3}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/9p/error.c", i32 66, i32 3}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/9p/error.c", i32 67, i32 3}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/9p/error.c", i32 68, i32 3}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../net/9p/error.c", i32 69, i32 3}
!70 = !{ptr @.str.32, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/9p/error.c", i32 70, i32 3}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/9p/error.c", i32 71, i32 3}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/9p/error.c", i32 72, i32 3}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../net/9p/error.c", i32 73, i32 3}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/9p/error.c", i32 74, i32 3}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/9p/error.c", i32 75, i32 3}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/9p/error.c", i32 76, i32 3}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/9p/error.c", i32 77, i32 3}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/9p/error.c", i32 78, i32 3}
!88 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/9p/error.c", i32 79, i32 3}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/9p/error.c", i32 80, i32 3}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/9p/error.c", i32 81, i32 3}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/9p/error.c", i32 82, i32 3}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/9p/error.c", i32 83, i32 3}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/9p/error.c", i32 84, i32 3}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/9p/error.c", i32 85, i32 3}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/9p/error.c", i32 86, i32 3}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/9p/error.c", i32 87, i32 3}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/9p/error.c", i32 88, i32 3}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/9p/error.c", i32 89, i32 3}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/9p/error.c", i32 90, i32 3}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/9p/error.c", i32 91, i32 3}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/9p/error.c", i32 92, i32 3}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/9p/error.c", i32 93, i32 3}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/9p/error.c", i32 94, i32 3}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/9p/error.c", i32 95, i32 3}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/9p/error.c", i32 96, i32 3}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/9p/error.c", i32 97, i32 3}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/9p/error.c", i32 98, i32 3}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/9p/error.c", i32 99, i32 3}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/9p/error.c", i32 100, i32 3}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/9p/error.c", i32 101, i32 3}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../net/9p/error.c", i32 102, i32 3}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/9p/error.c", i32 103, i32 3}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../net/9p/error.c", i32 104, i32 3}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../net/9p/error.c", i32 105, i32 3}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/9p/error.c", i32 106, i32 3}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/9p/error.c", i32 107, i32 3}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../net/9p/error.c", i32 108, i32 3}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/9p/error.c", i32 109, i32 3}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../net/9p/error.c", i32 110, i32 3}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../net/9p/error.c", i32 111, i32 3}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../net/9p/error.c", i32 112, i32 3}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../net/9p/error.c", i32 113, i32 3}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../net/9p/error.c", i32 114, i32 3}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../net/9p/error.c", i32 115, i32 3}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/9p/error.c", i32 116, i32 3}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../net/9p/error.c", i32 117, i32 3}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/9p/error.c", i32 119, i32 3}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../net/9p/error.c", i32 120, i32 3}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../net/9p/error.c", i32 121, i32 3}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../net/9p/error.c", i32 122, i32 3}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/9p/error.c", i32 123, i32 3}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../net/9p/error.c", i32 124, i32 3}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../net/9p/error.c", i32 125, i32 3}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../net/9p/error.c", i32 126, i32 3}
!182 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../net/9p/error.c", i32 127, i32 3}
!184 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../net/9p/error.c", i32 128, i32 3}
!186 = !{ptr @.str.90, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../net/9p/error.c", i32 129, i32 3}
!188 = !{ptr @.str.91, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../net/9p/error.c", i32 130, i32 3}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../net/9p/error.c", i32 131, i32 3}
!192 = !{ptr @.str.93, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../net/9p/error.c", i32 132, i32 3}
!194 = !{ptr @.str.94, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../net/9p/error.c", i32 133, i32 3}
!196 = !{ptr @.str.95, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../net/9p/error.c", i32 134, i32 3}
!198 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../net/9p/error.c", i32 135, i32 3}
!200 = !{ptr @.str.97, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../net/9p/error.c", i32 136, i32 3}
!202 = !{ptr @.str.98, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../net/9p/error.c", i32 137, i32 3}
!204 = !{ptr @.str.99, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../net/9p/error.c", i32 138, i32 3}
!206 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../net/9p/error.c", i32 139, i32 3}
!208 = !{ptr @.str.101, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../net/9p/error.c", i32 140, i32 3}
!210 = !{ptr @.str.102, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../net/9p/error.c", i32 141, i32 3}
!212 = !{ptr @.str.103, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../net/9p/error.c", i32 142, i32 3}
!214 = !{ptr @.str.104, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../net/9p/error.c", i32 143, i32 3}
!216 = !{ptr @.str.105, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../net/9p/error.c", i32 144, i32 3}
!218 = !{ptr @.str.106, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../net/9p/error.c", i32 145, i32 3}
!220 = !{ptr @.str.107, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../net/9p/error.c", i32 146, i32 3}
!222 = !{ptr @.str.108, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../net/9p/error.c", i32 147, i32 3}
!224 = !{ptr @.str.109, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../net/9p/error.c", i32 148, i32 3}
!226 = !{ptr @.str.110, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../net/9p/error.c", i32 149, i32 3}
!228 = !{ptr @.str.111, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../net/9p/error.c", i32 150, i32 3}
!230 = !{ptr @.str.112, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../net/9p/error.c", i32 151, i32 3}
!232 = !{ptr @.str.113, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../net/9p/error.c", i32 152, i32 3}
!234 = !{ptr @.str.114, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../net/9p/error.c", i32 153, i32 3}
!236 = !{ptr @.str.115, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../net/9p/error.c", i32 154, i32 3}
!238 = !{ptr @.str.116, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../net/9p/error.c", i32 155, i32 3}
!240 = !{ptr @.str.117, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../net/9p/error.c", i32 156, i32 3}
!242 = !{ptr @.str.118, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../net/9p/error.c", i32 157, i32 3}
!244 = !{ptr @.str.119, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../net/9p/error.c", i32 158, i32 3}
!246 = !{ptr @.str.120, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../net/9p/error.c", i32 159, i32 3}
!248 = !{ptr @.str.121, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../net/9p/error.c", i32 160, i32 3}
!250 = !{ptr @.str.122, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../net/9p/error.c", i32 161, i32 3}
!252 = !{ptr @.str.123, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../net/9p/error.c", i32 162, i32 3}
!254 = !{ptr @.str.124, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../net/9p/error.c", i32 163, i32 3}
!256 = !{ptr @.str.125, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../net/9p/error.c", i32 164, i32 3}
!258 = !{ptr @.str.126, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../net/9p/error.c", i32 166, i32 3}
!260 = !{ptr @.str.127, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../net/9p/error.c", i32 167, i32 3}
!262 = !{ptr @errmap, !263, !"errmap", i1 false, i1 false}
!263 = !{!"../net/9p/error.c", i32 40, i32 24}
!264 = !{i32 1, !"wchar_size", i32 2}
!265 = !{i32 1, !"min_enum_size", i32 4}
!266 = !{i32 8, !"branch-target-enforcement", i32 0}
!267 = !{i32 8, !"sign-return-address", i32 0}
!268 = !{i32 8, !"sign-return-address-all", i32 0}
!269 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!270 = !{i32 7, !"uwtable", i32 1}
!271 = !{i32 7, !"frame-pointer", i32 2}
!272 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
