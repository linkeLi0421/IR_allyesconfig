; ModuleID = '/llk/IR_all_yes/fs/unicode/utf8-selftest.c_pt.bc'
source_filename = "../fs/unicode/utf8-selftest.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon = type { [10 x i8], [10 x i8] }
%struct.anon.0 = type { [30 x i8], [30 x i8] }
%struct.qstr = type { %union.anon, ptr }
%union.anon = type { i64 }
%struct.utf8cursor = type { ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i16, i16, [12 x i8] }
%struct.anon.1 = type { i32, i32 }

@__initcall__kmod_utf8_selftest__161_306_init_test_ucd6 = internal global ptr @init_test_ucd, section ".initcall6.init", align 4
@__exitcall_exit_test_ucd = internal global ptr @exit_test_ucd, section ".exitcall.exit", align 4
@__UNIQUE_ID_author162 = internal constant [71 x i8] c"utf8_selftest.author=Gabriel Krisman Bertazi <krisman@collabora.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_file163 = internal constant [44 x i8] c"utf8_selftest.file=fs/unicode/utf8-selftest\00", section ".modinfo", align 1
@__UNIQUE_ID_license164 = internal constant [26 x i8] c"utf8_selftest.license=GPL\00", section ".modinfo", align 1
@failed_tests = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@total_tests = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@init_test_ucd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013utf8_selftest: %s: Unable to load utf8 table.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_test_ucd\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fs/unicode/utf8-selftest.c\00", [37 x i8] zeroinitializer }, align 32
@init_test_ucd._entry_ptr = internal global ptr @init_test_ucd._entry, section ".printk_index", align 4
@init_test_ucd._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016utf8_selftest: All %u tests passed\0A\00", [58 x i8] zeroinitializer }, align 32
@init_test_ucd._entry_ptr.5 = internal global ptr @init_test_ucd._entry.3, section ".printk_index", align 4
@init_test_ucd._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013utf8_selftest: %u out of %u tests failed\0A\00", [52 x i8] zeroinitializer }, align 32
@init_test_ucd._entry_ptr.8 = internal global ptr @init_test_ucd._entry.6, section ".printk_index", align 4
@check_supported_versions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013utf8_selftest: test %s:%d Failed: %s%s\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"check_supported_versions\00", [39 x i8] zeroinitializer }, align 32
@check_supported_versions._entry_ptr = internal global ptr @check_supported_versions._entry, section ".printk_index", align 4
@.str.11 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"utf8version_is_supported(um, (((unsigned int)(7) << 16) | ((unsigned int)(0) << 8) | ((unsigned int)(0))))\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@check_supported_versions._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013utf8_selftest: \00", [46 x i8] zeroinitializer }, align 32
@check_supported_versions._entry_ptr.17 = internal global ptr @check_supported_versions._entry.15, section ".printk_index", align 4
@check_supported_versions._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_supported_versions._entry_ptr.19 = internal global ptr @check_supported_versions._entry.18, section ".printk_index", align 4
@.str.20 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"utf8version_is_supported(um, (((unsigned int)(9) << 16) | ((unsigned int)(0) << 8) | ((unsigned int)(0))))\00", [53 x i8] zeroinitializer }, align 32
@check_supported_versions._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_supported_versions._entry_ptr.22 = internal global ptr @check_supported_versions._entry.21, section ".printk_index", align 4
@check_supported_versions._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_supported_versions._entry_ptr.24 = internal global ptr @check_supported_versions._entry.23, section ".printk_index", align 4
@.str.25 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"utf8version_is_supported(um, (((unsigned int)(12) << 16) | ((unsigned int)(1) << 8) | ((unsigned int)(0))))\00", [52 x i8] zeroinitializer }, align 32
@check_supported_versions._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_supported_versions._entry_ptr.27 = internal global ptr @check_supported_versions._entry.26, section ".printk_index", align 4
@check_supported_versions._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_supported_versions._entry_ptr.29 = internal global ptr @check_supported_versions._entry.28, section ".printk_index", align 4
@.str.30 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"!utf8version_is_supported(um, (((unsigned int)(13) << 16) | ((unsigned int)(0) << 8) | ((unsigned int)(0))))\00", [51 x i8] zeroinitializer }, align 32
@check_supported_versions._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_supported_versions._entry_ptr.32 = internal global ptr @check_supported_versions._entry.31, section ".printk_index", align 4
@check_supported_versions._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_supported_versions._entry_ptr.34 = internal global ptr @check_supported_versions._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"!utf8version_is_supported(um, (((unsigned int)(0) << 16) | ((unsigned int)(0) << 8) | ((unsigned int)(0))))\00", [52 x i8] zeroinitializer }, align 32
@check_supported_versions._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_supported_versions._entry_ptr.37 = internal global ptr @check_supported_versions._entry.36, section ".printk_index", align 4
@check_supported_versions._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_supported_versions._entry_ptr.39 = internal global ptr @check_supported_versions._entry.38, section ".printk_index", align 4
@.str.40 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"!utf8version_is_supported(um, (((unsigned int)(-1) << 16) | ((unsigned int)(-1) << 8) | ((unsigned int)(-1))))\00", [49 x i8] zeroinitializer }, align 32
@check_supported_versions._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_supported_versions._entry_ptr.42 = internal global ptr @check_supported_versions._entry.41, section ".printk_index", align 4
@check_utf8_nfdi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.43, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"check_utf8_nfdi\00", [16 x i8] zeroinitializer }, align 32
@check_utf8_nfdi._entry_ptr = internal global ptr @check_utf8_nfdi._entry, section ".printk_index", align 4
@.str.44 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(utf8len(um, UTF8_NFDI, nfdi_test_data[i].str) == nlen)\00", [40 x i8] zeroinitializer }, align 32
@check_utf8_nfdi._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.43, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_utf8_nfdi._entry_ptr.46 = internal global ptr @check_utf8_nfdi._entry.45, section ".printk_index", align 4
@check_utf8_nfdi._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.43, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_utf8_nfdi._entry_ptr.48 = internal global ptr @check_utf8_nfdi._entry.47, section ".printk_index", align 4
@.str.49 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"(utf8nlen(um, UTF8_NFDI, nfdi_test_data[i].str, len) == nlen)\00", [34 x i8] zeroinitializer }, align 32
@check_utf8_nfdi._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.43, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_utf8_nfdi._entry_ptr.51 = internal global ptr @check_utf8_nfdi._entry.50, section ".printk_index", align 4
@check_utf8_nfdi._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.43, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013utf8_selftest: can't create cursor\0A\00", [58 x i8] zeroinitializer }, align 32
@check_utf8_nfdi._entry_ptr.54 = internal global ptr @check_utf8_nfdi._entry.52, section ".printk_index", align 4
@check_utf8_nfdi._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.43, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_utf8_nfdi._entry_ptr.56 = internal global ptr @check_utf8_nfdi._entry.55, section ".printk_index", align 4
@.str.57 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(c == nfdi_test_data[i].dec[j])\00", [32 x i8] zeroinitializer }, align 32
@check_utf8_nfdi._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.43, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013utf8_selftest: Unexpected byte 0x%x should be 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@check_utf8_nfdi._entry_ptr.61 = internal global ptr @check_utf8_nfdi._entry.59, section ".printk_index", align 4
@check_utf8_nfdi._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.43, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_utf8_nfdi._entry_ptr.63 = internal global ptr @check_utf8_nfdi._entry.62, section ".printk_index", align 4
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(j == nlen)\00", [20 x i8] zeroinitializer }, align 32
@check_utf8_nfdi._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.43, ptr @.str.2, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_utf8_nfdi._entry_ptr.66 = internal global ptr @check_utf8_nfdi._entry.65, section ".printk_index", align 4
@nfdi_test_data = internal constant { <{ %struct.anon, { <{ i8, i8, [8 x i8] }>, <{ i8, i8, [8 x i8] }> }, { <{ i8, i8, [8 x i8] }>, [10 x i8] }, { <{ i8, i8, [8 x i8] }>, <{ i8, i8, [8 x i8] }> }, { <{ i8, i8, [8 x i8] }>, <{ i8, i8, [8 x i8] }> }, %struct.anon, %struct.anon }>, [52 x i8] } { <{ %struct.anon, { <{ i8, i8, [8 x i8] }>, <{ i8, i8, [8 x i8] }> }, { <{ i8, i8, [8 x i8] }>, [10 x i8] }, { <{ i8, i8, [8 x i8] }>, <{ i8, i8, [8 x i8] }> }, { <{ i8, i8, [8 x i8] }>, <{ i8, i8, [8 x i8] }> }, %struct.anon, %struct.anon }> <{ %struct.anon { [10 x i8] c"aBba\00\00\00\00\00\00", [10 x i8] c"aBba\00\00\00\00\00\00" }, { <{ i8, i8, [8 x i8] }>, <{ i8, i8, [8 x i8] }> } { <{ i8, i8, [8 x i8] }> <{ i8 -62, i8 -68, [8 x i8] zeroinitializer }>, <{ i8, i8, [8 x i8] }> <{ i8 -62, i8 -68, [8 x i8] zeroinitializer }> }, { <{ i8, i8, [8 x i8] }>, [10 x i8] } { <{ i8, i8, [8 x i8] }> <{ i8 -61, i8 -92, [8 x i8] zeroinitializer }>, [10 x i8] c"a\CC\88\00\00\00\00\00\00\00" }, { <{ i8, i8, [8 x i8] }>, <{ i8, i8, [8 x i8] }> } { <{ i8, i8, [8 x i8] }> <{ i8 -57, i8 -119, [8 x i8] zeroinitializer }>, <{ i8, i8, [8 x i8] }> <{ i8 -57, i8 -119, [8 x i8] zeroinitializer }> }, { <{ i8, i8, [8 x i8] }>, <{ i8, i8, [8 x i8] }> } { <{ i8, i8, [8 x i8] }> <{ i8 -50, i8 -121, [8 x i8] zeroinitializer }>, <{ i8, i8, [8 x i8] }> <{ i8 -62, i8 -73, [8 x i8] zeroinitializer }> }, %struct.anon { [10 x i8] c"A\CC\81\CC\A8\00\00\00\00\00", [10 x i8] c"A\CC\A8\CC\81\00\00\00\00\00" }, %struct.anon { [10 x i8] c"\C3\A4\CC\A8\00\00\00\00\00\00", [10 x i8] c"a\CC\A8\CC\88\00\00\00\00\00" } }>, [52 x i8] zeroinitializer }, align 32
@check_utf8_nfdicf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.68, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check_utf8_nfdicf\00", [46 x i8] zeroinitializer }, align 32
@check_utf8_nfdicf._entry_ptr = internal global ptr @check_utf8_nfdicf._entry, section ".printk_index", align 4
@.str.69 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"(utf8len(um, UTF8_NFDICF, nfdicf_test_data[i].str) == nlen)\00", [36 x i8] zeroinitializer }, align 32
@check_utf8_nfdicf._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.68, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_utf8_nfdicf._entry_ptr.71 = internal global ptr @check_utf8_nfdicf._entry.70, section ".printk_index", align 4
@check_utf8_nfdicf._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.68, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_utf8_nfdicf._entry_ptr.73 = internal global ptr @check_utf8_nfdicf._entry.72, section ".printk_index", align 4
@.str.74 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"(utf8nlen(um, UTF8_NFDICF, nfdicf_test_data[i].str, len) == nlen)\00", [62 x i8] zeroinitializer }, align 32
@check_utf8_nfdicf._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.68, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_utf8_nfdicf._entry_ptr.76 = internal global ptr @check_utf8_nfdicf._entry.75, section ".printk_index", align 4
@check_utf8_nfdicf._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.68, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_utf8_nfdicf._entry_ptr.78 = internal global ptr @check_utf8_nfdicf._entry.77, section ".printk_index", align 4
@check_utf8_nfdicf._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.68, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_utf8_nfdicf._entry_ptr.80 = internal global ptr @check_utf8_nfdicf._entry.79, section ".printk_index", align 4
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(c == nfdicf_test_data[i].ncf[j])\00", [62 x i8] zeroinitializer }, align 32
@check_utf8_nfdicf._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.68, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_utf8_nfdicf._entry_ptr.83 = internal global ptr @check_utf8_nfdicf._entry.82, section ".printk_index", align 4
@check_utf8_nfdicf._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.68, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_utf8_nfdicf._entry_ptr.85 = internal global ptr @check_utf8_nfdicf._entry.84, section ".printk_index", align 4
@check_utf8_nfdicf._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.68, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_utf8_nfdicf._entry_ptr.87 = internal global ptr @check_utf8_nfdicf._entry.86, section ".printk_index", align 4
@nfdicf_test_data = internal constant { <{ { <{ i8, i8, i8, i8, [26 x i8] }>, <{ i8, i8, i8, i8, [26 x i8] }> }, %struct.anon.0, { <{ i8, i8, [28 x i8] }>, <{ i8, i8, [28 x i8] }> }, { <{ i8, i8, [28 x i8] }>, <{ i8, i8, i8, [27 x i8] }> }, { <{ i8, i8, i8, [27 x i8] }>, <{ i8, i8, i8, [27 x i8] }> }, { <{ i8, i8, i8, [27 x i8] }>, <{ i8, i8, i8, [27 x i8] }> }, { <{ i8, i8, i8, i8, [26 x i8] }>, <{ i8, i8, i8, i8, [26 x i8] }> }, { <{ i8, i8, i8, i8, [26 x i8] }>, <{ i8, i8, i8, i8, [26 x i8] }> }, { <{ i8, i8, i8, [27 x i8] }>, <{ i8, i8, [28 x i8] }> }, { <{ i8, i8, i8, [27 x i8] }>, <{ i8, i8, i8, [27 x i8] }> } }>, [136 x i8] } { <{ { <{ i8, i8, i8, i8, [26 x i8] }>, <{ i8, i8, i8, i8, [26 x i8] }> }, %struct.anon.0, { <{ i8, i8, [28 x i8] }>, <{ i8, i8, [28 x i8] }> }, { <{ i8, i8, [28 x i8] }>, <{ i8, i8, i8, [27 x i8] }> }, { <{ i8, i8, i8, [27 x i8] }>, <{ i8, i8, i8, [27 x i8] }> }, { <{ i8, i8, i8, [27 x i8] }>, <{ i8, i8, i8, [27 x i8] }> }, { <{ i8, i8, i8, i8, [26 x i8] }>, <{ i8, i8, i8, i8, [26 x i8] }> }, { <{ i8, i8, i8, i8, [26 x i8] }>, <{ i8, i8, i8, i8, [26 x i8] }> }, { <{ i8, i8, i8, [27 x i8] }>, <{ i8, i8, [28 x i8] }> }, { <{ i8, i8, i8, [27 x i8] }>, <{ i8, i8, i8, [27 x i8] }> } }> <{ { <{ i8, i8, i8, i8, [26 x i8] }>, <{ i8, i8, i8, i8, [26 x i8] }> } { <{ i8, i8, i8, i8, [26 x i8] }> <{ i8 65, i8 66, i8 98, i8 97, [26 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [26 x i8] }> <{ i8 97, i8 98, i8 98, i8 97, [26 x i8] zeroinitializer }> }, %struct.anon.0 { [30 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ0.1\00", [30 x i8] c"abcdefghijklmnopqrstuvwxyz0.1\00" }, { <{ i8, i8, [28 x i8] }>, <{ i8, i8, [28 x i8] }> } { <{ i8, i8, [28 x i8] }> <{ i8 -61, i8 -97, [28 x i8] zeroinitializer }>, <{ i8, i8, [28 x i8] }> <{ i8 115, i8 115, [28 x i8] zeroinitializer }> }, { <{ i8, i8, [28 x i8] }>, <{ i8, i8, i8, [27 x i8] }> } { <{ i8, i8, [28 x i8] }> <{ i8 -61, i8 -123, [28 x i8] zeroinitializer }>, <{ i8, i8, i8, [27 x i8] }> <{ i8 97, i8 -52, i8 -118, [27 x i8] zeroinitializer }> }, { <{ i8, i8, i8, [27 x i8] }>, <{ i8, i8, i8, [27 x i8] }> } { <{ i8, i8, i8, [27 x i8] }> <{ i8 -22, i8 -83, i8 -80, [27 x i8] zeroinitializer }>, <{ i8, i8, i8, [27 x i8] }> <{ i8 -31, i8 -114, i8 -96, [27 x i8] zeroinitializer }> }, { <{ i8, i8, i8, [27 x i8] }>, <{ i8, i8, i8, [27 x i8] }> } { <{ i8, i8, i8, [27 x i8] }> <{ i8 -31, i8 -113, i8 -72, [27 x i8] zeroinitializer }>, <{ i8, i8, i8, [27 x i8] }> <{ i8 -31, i8 -113, i8 -80, [27 x i8] zeroinitializer }> }, { <{ i8, i8, i8, i8, [26 x i8] }>, <{ i8, i8, i8, i8, [26 x i8] }> } { <{ i8, i8, i8, i8, [26 x i8] }> <{ i8 -16, i8 -112, i8 -78, i8 -125, [26 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [26 x i8] }> <{ i8 -16, i8 -112, i8 -77, i8 -125, [26 x i8] zeroinitializer }> }, { <{ i8, i8, i8, i8, [26 x i8] }>, <{ i8, i8, i8, i8, [26 x i8] }> } { <{ i8, i8, i8, i8, [26 x i8] }> <{ i8 -16, i8 -112, i8 -110, i8 -75, [26 x i8] zeroinitializer }>, <{ i8, i8, i8, i8, [26 x i8] }> <{ i8 -16, i8 -112, i8 -109, i8 -99, [26 x i8] zeroinitializer }> }, { <{ i8, i8, i8, [27 x i8] }>, <{ i8, i8, [28 x i8] }> } { <{ i8, i8, i8, [27 x i8] }> <{ i8 -22, i8 -98, i8 -82, [27 x i8] zeroinitializer }>, <{ i8, i8, [28 x i8] }> <{ i8 -55, i8 -86, [28 x i8] zeroinitializer }> }, { <{ i8, i8, i8, [27 x i8] }>, <{ i8, i8, i8, [27 x i8] }> } { <{ i8, i8, i8, [27 x i8] }> <{ i8 -31, i8 -78, i8 -112, [27 x i8] zeroinitializer }>, <{ i8, i8, i8, [27 x i8] }> <{ i8 -31, i8 -125, i8 -112, [27 x i8] zeroinitializer }> } }>, [136 x i8] zeroinitializer }, align 32
@check_utf8_comparisons._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.89, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"check_utf8_comparisons\00", [41 x i8] zeroinitializer }, align 32
@check_utf8_comparisons._entry_ptr = internal global ptr @check_utf8_comparisons._entry, section ".printk_index", align 4
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"!utf8_strncmp(table, &s1, &s2)\00", [33 x i8] zeroinitializer }, align 32
@check_utf8_comparisons._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.89, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013utf8_selftest: %s %s comparison mismatch\0A\00", [52 x i8] zeroinitializer }, align 32
@check_utf8_comparisons._entry_ptr.94 = internal global ptr @check_utf8_comparisons._entry.92, section ".printk_index", align 4
@check_utf8_comparisons._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.89, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_utf8_comparisons._entry_ptr.98 = internal global ptr @check_utf8_comparisons._entry.97, section ".printk_index", align 4
@.str.99 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"!utf8_strncasecmp(table, &s1, &s2)\00", [61 x i8] zeroinitializer }, align 32
@check_utf8_comparisons._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.89, ptr @.str.2, i32 254, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_utf8_comparisons._entry_ptr.101 = internal global ptr @check_utf8_comparisons._entry.100, section ".printk_index", align 4
@___asan_gen_.102 = private unnamed_addr constant [13 x i8] c"failed_tests\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 17, i32 14 }
@___asan_gen_.105 = private unnamed_addr constant [12 x i8] c"total_tests\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 18, i32 14 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 284, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 294, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 296, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 261, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 264, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 267, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 270, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 271, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 272, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 184, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 185, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 189, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 192, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 198, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [15 x i8] c"nfdi_test_data\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 40, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 213, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 215, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 220, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 223, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 229, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"nfdicf_test_data\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 94, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 243, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.313 = private constant [30 x i8] c"../fs/unicode/utf8-selftest.c\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 253, i32 3 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__UNIQUE_ID_author162, ptr @__UNIQUE_ID_file163, ptr @__UNIQUE_ID_license164, ptr @__exitcall_exit_test_ucd, ptr @__initcall__kmod_utf8_selftest__161_306_init_test_ucd6, ptr @check_supported_versions._entry, ptr @check_supported_versions._entry.15, ptr @check_supported_versions._entry.18, ptr @check_supported_versions._entry.21, ptr @check_supported_versions._entry.23, ptr @check_supported_versions._entry.26, ptr @check_supported_versions._entry.28, ptr @check_supported_versions._entry.31, ptr @check_supported_versions._entry.33, ptr @check_supported_versions._entry.36, ptr @check_supported_versions._entry.38, ptr @check_supported_versions._entry.41, ptr @check_supported_versions._entry_ptr, ptr @check_supported_versions._entry_ptr.17, ptr @check_supported_versions._entry_ptr.19, ptr @check_supported_versions._entry_ptr.22, ptr @check_supported_versions._entry_ptr.24, ptr @check_supported_versions._entry_ptr.27, ptr @check_supported_versions._entry_ptr.29, ptr @check_supported_versions._entry_ptr.32, ptr @check_supported_versions._entry_ptr.34, ptr @check_supported_versions._entry_ptr.37, ptr @check_supported_versions._entry_ptr.39, ptr @check_supported_versions._entry_ptr.42, ptr @check_utf8_comparisons._entry, ptr @check_utf8_comparisons._entry.100, ptr @check_utf8_comparisons._entry.92, ptr @check_utf8_comparisons._entry.97, ptr @check_utf8_comparisons._entry_ptr, ptr @check_utf8_comparisons._entry_ptr.101, ptr @check_utf8_comparisons._entry_ptr.94, ptr @check_utf8_comparisons._entry_ptr.98, ptr @check_utf8_nfdi._entry, ptr @check_utf8_nfdi._entry.45, ptr @check_utf8_nfdi._entry.47, ptr @check_utf8_nfdi._entry.50, ptr @check_utf8_nfdi._entry.52, ptr @check_utf8_nfdi._entry.55, ptr @check_utf8_nfdi._entry.59, ptr @check_utf8_nfdi._entry.62, ptr @check_utf8_nfdi._entry.65, ptr @check_utf8_nfdi._entry_ptr, ptr @check_utf8_nfdi._entry_ptr.46, ptr @check_utf8_nfdi._entry_ptr.48, ptr @check_utf8_nfdi._entry_ptr.51, ptr @check_utf8_nfdi._entry_ptr.54, ptr @check_utf8_nfdi._entry_ptr.56, ptr @check_utf8_nfdi._entry_ptr.61, ptr @check_utf8_nfdi._entry_ptr.63, ptr @check_utf8_nfdi._entry_ptr.66, ptr @check_utf8_nfdicf._entry, ptr @check_utf8_nfdicf._entry.70, ptr @check_utf8_nfdicf._entry.72, ptr @check_utf8_nfdicf._entry.75, ptr @check_utf8_nfdicf._entry.77, ptr @check_utf8_nfdicf._entry.79, ptr @check_utf8_nfdicf._entry.82, ptr @check_utf8_nfdicf._entry.84, ptr @check_utf8_nfdicf._entry.86, ptr @check_utf8_nfdicf._entry_ptr, ptr @check_utf8_nfdicf._entry_ptr.71, ptr @check_utf8_nfdicf._entry_ptr.73, ptr @check_utf8_nfdicf._entry_ptr.76, ptr @check_utf8_nfdicf._entry_ptr.78, ptr @check_utf8_nfdicf._entry_ptr.80, ptr @check_utf8_nfdicf._entry_ptr.83, ptr @check_utf8_nfdicf._entry_ptr.85, ptr @check_utf8_nfdicf._entry_ptr.87, ptr @exit_test_ucd, ptr @init_test_ucd._entry, ptr @init_test_ucd._entry.3, ptr @init_test_ucd._entry.6, ptr @init_test_ucd._entry_ptr, ptr @init_test_ucd._entry_ptr.5, ptr @init_test_ucd._entry_ptr.8, ptr @failed_tests, ptr @total_tests, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.20, ptr @.str.25, ptr @.str.30, ptr @.str.35, ptr @.str.40, ptr @.str.43, ptr @.str.44, ptr @.str.49, ptr @.str.53, ptr @.str.57, ptr @.str.60, ptr @.str.64, ptr @nfdi_test_data, ptr @.str.68, ptr @.str.69, ptr @.str.74, ptr @.str.81, ptr @nfdicf_test_data, ptr @.str.89, ptr @.str.90, ptr @.str.93, ptr @.str.99], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @failed_tests to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @total_tests to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_test_ucd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_test_ucd._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_test_ucd._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_supported_versions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_supported_versions._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_supported_versions._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_supported_versions._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_supported_versions._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_supported_versions._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_supported_versions._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_supported_versions._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_supported_versions._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_supported_versions._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_supported_versions._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_supported_versions._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdi._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdi._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdi._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdi._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdi._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdi._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdi._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdi._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfdi_test_data to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdicf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdicf._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdicf._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdicf._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdicf._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdicf._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdicf._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdicf._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_nfdicf._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfdicf_test_data to i32), i32 600, i32 736, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_comparisons._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_comparisons._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_comparisons._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_utf8_comparisons._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @exit_test_ucd() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_test_ucd() #1 section ".init.text" align 64 {
entry:
  %s1.i = alloca %struct.qstr, align 8
  %s2.i = alloca %struct.qstr, align 8
  %s124.i = alloca %struct.qstr, align 8
  %s231.i = alloca %struct.qstr, align 8
  %u8c.i26 = alloca %struct.utf8cursor, align 4
  %u8c.i = alloca %struct.utf8cursor, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @failed_tests, align 4
  store i32 0, ptr @total_tests, align 4
  %call = tail call ptr @utf8_load(i32 noundef 786688) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @total_tests, align 4
  %inc.i = add i32 %1, 1
  store i32 %inc.i, ptr @total_tests, align 4
  %call.i = tail call i32 @utf8version_is_supported(ptr noundef %call, i32 noundef 458752) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.do.body11.i_crit_edge

if.end.do.body11.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = load i32, ptr @failed_tests, align 4
  %inc1.i = add i32 %2, 1
  store i32 %inc1.i, ptr @failed_tests, align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 261, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13) #9
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %do.body11.i

do.body11.i:                                      ; preds = %if.then.i, %if.end.do.body11.i_crit_edge
  %3 = load i32, ptr @total_tests, align 4
  %inc12.i = add i32 %3, 1
  store i32 %inc12.i, ptr @total_tests, align 4
  %call13.i = tail call i32 @utf8version_is_supported(ptr noundef %call, i32 noundef 589824) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %do.body11.i.do.body29.i_crit_edge

do.body11.i.do.body29.i_crit_edge:                ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body29.i

if.then15.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = load i32, ptr @failed_tests, align 4
  %inc16.i = add i32 %4, 1
  store i32 %inc16.i, ptr @failed_tests, align 4
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 264, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.13) #9
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %do.body29.i

do.body29.i:                                      ; preds = %if.then15.i, %do.body11.i.do.body29.i_crit_edge
  %5 = load i32, ptr @total_tests, align 4
  %inc30.i = add i32 %5, 1
  store i32 %inc30.i, ptr @total_tests, align 4
  %call31.i = tail call i32 @utf8version_is_supported(ptr noundef %call, i32 noundef 786688) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.then33.i, label %do.body29.i.do.body47.i_crit_edge

do.body29.i.do.body47.i_crit_edge:                ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body47.i

if.then33.i:                                      ; preds = %do.body29.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = load i32, ptr @failed_tests, align 4
  %inc34.i = add i32 %6, 1
  store i32 %inc34.i, ptr @failed_tests, align 4
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 267, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.13) #9
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %do.body47.i

do.body47.i:                                      ; preds = %if.then33.i, %do.body29.i.do.body47.i_crit_edge
  %7 = load i32, ptr @total_tests, align 4
  %inc48.i = add i32 %7, 1
  store i32 %inc48.i, ptr @total_tests, align 4
  %call49.i = tail call i32 @utf8version_is_supported(ptr noundef %call, i32 noundef 851968) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %do.body47.i.do.body65.i_crit_edge, label %if.then51.i

do.body47.i.do.body65.i_crit_edge:                ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body65.i

if.then51.i:                                      ; preds = %do.body47.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = load i32, ptr @failed_tests, align 4
  %inc52.i = add i32 %8, 1
  store i32 %inc52.i, ptr @failed_tests, align 4
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 270, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13) #9
  %call61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %do.body65.i

do.body65.i:                                      ; preds = %if.then51.i, %do.body47.i.do.body65.i_crit_edge
  %9 = load i32, ptr @total_tests, align 4
  %inc66.i = add i32 %9, 1
  store i32 %inc66.i, ptr @total_tests, align 4
  %call67.i = tail call i32 @utf8version_is_supported(ptr noundef %call, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %do.body65.i.do.body83.i_crit_edge, label %if.then69.i

do.body65.i.do.body83.i_crit_edge:                ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body83.i

if.then69.i:                                      ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = load i32, ptr @failed_tests, align 4
  %inc70.i = add i32 %10, 1
  store i32 %inc70.i, ptr @failed_tests, align 4
  %call74.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 271, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.13) #9
  %call79.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %do.body83.i

do.body83.i:                                      ; preds = %if.then69.i, %do.body65.i.do.body83.i_crit_edge
  %11 = load i32, ptr @total_tests, align 4
  %inc84.i = add i32 %11, 1
  store i32 %inc84.i, ptr @total_tests, align 4
  %call85.i = tail call i32 @utf8version_is_supported(ptr noundef %call, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %do.body83.i.check_supported_versions.exit_crit_edge, label %if.then87.i

do.body83.i.check_supported_versions.exit_crit_edge: ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_supported_versions.exit

if.then87.i:                                      ; preds = %do.body83.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = load i32, ptr @failed_tests, align 4
  %inc88.i = add i32 %12, 1
  store i32 %inc88.i, ptr @failed_tests, align 4
  %call92.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef 272, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.13) #9
  %call97.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %check_supported_versions.exit

check_supported_versions.exit:                    ; preds = %if.then87.i, %do.body83.i.check_supported_versions.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %u8c.i) #6
  %13 = call ptr @memset(ptr %u8c.i, i32 255, i32 48)
  br label %for.body.i

for.body.i:                                       ; preds = %do.end113.i.for.body.i_crit_edge, %check_supported_versions.exit
  %i.0138.i = phi i32 [ 0, %check_supported_versions.exit ], [ %inc114.i, %do.end113.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [7 x %struct.anon], ptr @nfdi_test_data, i32 0, i32 %i.0138.i
  %call.i22 = call i32 @strlen(ptr noundef %arrayidx.i) #10
  %dec.i = getelementptr [7 x %struct.anon], ptr @nfdi_test_data, i32 0, i32 %i.0138.i, i32 1
  %call3.i23 = call i32 @strlen(ptr noundef %dec.i) #10
  %14 = load i32, ptr @total_tests, align 4
  %inc.i24 = add i32 %14, 1
  store i32 %inc.i24, ptr @total_tests, align 4
  %call.i.i = call i32 @utf8nlen(ptr noundef %call, i32 noundef 0, ptr noundef %arrayidx.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %call3.i23)
  %cmp8.i = icmp eq i32 %call.i.i, %call3.i23
  br i1 %cmp8.i, label %for.body.i.do.body21.i_crit_edge, label %if.then.i25

for.body.i.do.body21.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body21.i

if.then.i25:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = load i32, ptr @failed_tests, align 4
  %inc9.i = add i32 %15, 1
  store i32 %inc9.i, ptr @failed_tests, align 4
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.43, i32 noundef 184, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.13) #9
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %do.body21.i

do.body21.i:                                      ; preds = %if.then.i25, %for.body.i.do.body21.i_crit_edge
  %16 = load i32, ptr @total_tests, align 4
  %inc22.i = add i32 %16, 1
  store i32 %inc22.i, ptr @total_tests, align 4
  %call26.i = call i32 @utf8nlen(ptr noundef %call, i32 noundef 0, ptr noundef %arrayidx.i, i32 noundef %call.i22) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call26.i, i32 %call3.i23)
  %cmp27.i = icmp eq i32 %call26.i, %call3.i23
  br i1 %cmp27.i, label %do.body21.i.do.end44.i_crit_edge, label %if.then28.i

do.body21.i.do.end44.i_crit_edge:                 ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44.i

if.then28.i:                                      ; preds = %do.body21.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = load i32, ptr @failed_tests, align 4
  %inc29.i = add i32 %17, 1
  store i32 %inc29.i, ptr @failed_tests, align 4
  %call34.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.43, i32 noundef 186, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.13) #9
  %call40.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %do.end44.i

do.end44.i:                                       ; preds = %if.then28.i, %do.body21.i.do.end44.i_crit_edge
  %call.i131.i = call i32 @utf8ncursor(ptr noundef nonnull %u8c.i, ptr noundef %call, i32 noundef 0, ptr noundef %arrayidx.i, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131.i)
  %cmp49.i = icmp slt i32 %call.i131.i, 0
  br i1 %cmp49.i, label %do.end53.i, label %do.end44.i.if.end56.i_crit_edge

do.end44.i.if.end56.i_crit_edge:                  ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

do.end53.i:                                       ; preds = %do.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %call55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #9
  br label %if.end56.i

if.end56.i:                                       ; preds = %do.end53.i, %do.end44.i.if.end56.i_crit_edge
  %call57132.i = call i32 @utf8byte(ptr noundef nonnull %u8c.i) #6
  %conv58133.i = and i32 %call57132.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv58133.i)
  %cmp59.not134.i = icmp eq i32 %conv58133.i, 0
  br i1 %cmp59.not134.i, label %if.end56.i.do.body93.i_crit_edge, label %if.end56.i.do.body61.i_crit_edge

if.end56.i.do.body61.i_crit_edge:                 ; preds = %if.end56.i
  br label %do.body61.i

if.end56.i.do.body93.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body93.i

do.body61.i:                                      ; preds = %do.end91.i.do.body61.i_crit_edge, %if.end56.i.do.body61.i_crit_edge
  %conv58137.i = phi i32 [ %conv58.i, %do.end91.i.do.body61.i_crit_edge ], [ %conv58133.i, %if.end56.i.do.body61.i_crit_edge ]
  %call57136.i = phi i32 [ %call57.i, %do.end91.i.do.body61.i_crit_edge ], [ %call57132.i, %if.end56.i.do.body61.i_crit_edge ]
  %j.0135.i = phi i32 [ %inc92.i, %do.end91.i.do.body61.i_crit_edge ], [ 0, %if.end56.i.do.body61.i_crit_edge ]
  %18 = load i32, ptr @total_tests, align 4
  %inc62.i = add i32 %18, 1
  store i32 %inc62.i, ptr @total_tests, align 4
  %arrayidx66.i = getelementptr [7 x %struct.anon], ptr @nfdi_test_data, i32 0, i32 %i.0138.i, i32 1, i32 %j.0135.i
  %19 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx66.i, align 1
  %21 = trunc i32 %call57136.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %21)
  %cmp68.i = icmp eq i8 %20, %21
  br i1 %cmp68.i, label %do.body61.i.do.end91.i_crit_edge, label %if.then70.i

do.body61.i.do.end91.i_crit_edge:                 ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end91.i

if.then70.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = load i32, ptr @failed_tests, align 4
  %inc71.i = add i32 %22, 1
  store i32 %inc71.i, ptr @failed_tests, align 4
  %call76.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.43, i32 noundef 194, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.13) #9
  %conv86.i = zext i8 %20 to i32
  %call87.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %conv58137.i, i32 noundef %conv86.i) #9
  br label %do.end91.i

do.end91.i:                                       ; preds = %if.then70.i, %do.body61.i.do.end91.i_crit_edge
  %inc92.i = add i32 %j.0135.i, 1
  %call57.i = call i32 @utf8byte(ptr noundef nonnull %u8c.i) #6
  %conv58.i = and i32 %call57.i, 255
  %cmp59.not.i = icmp eq i32 %conv58.i, 0
  br i1 %cmp59.not.i, label %do.end91.i.do.body93.i_crit_edge, label %do.end91.i.do.body61.i_crit_edge

do.end91.i.do.body61.i_crit_edge:                 ; preds = %do.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body61.i

do.end91.i.do.body93.i_crit_edge:                 ; preds = %do.end91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body93.i

do.body93.i:                                      ; preds = %do.end91.i.do.body93.i_crit_edge, %if.end56.i.do.body93.i_crit_edge
  %j.0.lcssa.i = phi i32 [ 0, %if.end56.i.do.body93.i_crit_edge ], [ %inc92.i, %do.end91.i.do.body93.i_crit_edge ]
  %23 = load i32, ptr @total_tests, align 4
  %inc94.i = add i32 %23, 1
  store i32 %inc94.i, ptr @total_tests, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i, i32 %call3.i23)
  %cmp95.i = icmp eq i32 %j.0.lcssa.i, %call3.i23
  br i1 %cmp95.i, label %do.body93.i.do.end113.i_crit_edge, label %if.then97.i

do.body93.i.do.end113.i_crit_edge:                ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end113.i

if.then97.i:                                      ; preds = %do.body93.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = load i32, ptr @failed_tests, align 4
  %inc98.i = add i32 %24, 1
  store i32 %inc98.i, ptr @failed_tests, align 4
  %call103.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.43, i32 noundef 198, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.13) #9
  %call109.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %do.end113.i

do.end113.i:                                      ; preds = %if.then97.i, %do.body93.i.do.end113.i_crit_edge
  %inc114.i = add nuw nsw i32 %i.0138.i, 1
  %exitcond.not.i = icmp eq i32 %inc114.i, 7
  br i1 %exitcond.not.i, label %check_utf8_nfdi.exit, label %do.end113.i.for.body.i_crit_edge

do.end113.i.for.body.i_crit_edge:                 ; preds = %do.end113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

check_utf8_nfdi.exit:                             ; preds = %do.end113.i
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %u8c.i) #6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %u8c.i26) #6
  %25 = call ptr @memset(ptr %u8c.i26, i32 255, i32 48)
  br label %for.body.i34

for.body.i34:                                     ; preds = %do.end113.i83.for.body.i34_crit_edge, %check_utf8_nfdi.exit
  %i.0138.i27 = phi i32 [ 0, %check_utf8_nfdi.exit ], [ %inc114.i81, %do.end113.i83.for.body.i34_crit_edge ]
  %arrayidx.i28 = getelementptr [10 x %struct.anon.0], ptr @nfdicf_test_data, i32 0, i32 %i.0138.i27
  %call.i29 = call i32 @strlen(ptr noundef %arrayidx.i28) #10
  %ncf.i = getelementptr [10 x %struct.anon.0], ptr @nfdicf_test_data, i32 0, i32 %i.0138.i27, i32 1
  %call3.i30 = call i32 @strlen(ptr noundef %ncf.i) #10
  %26 = load i32, ptr @total_tests, align 4
  %inc.i31 = add i32 %26, 1
  store i32 %inc.i31, ptr @total_tests, align 4
  %call.i.i32 = call i32 @utf8nlen(ptr noundef %call, i32 noundef 1, ptr noundef %arrayidx.i28, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i32, i32 %call3.i30)
  %cmp8.i33 = icmp eq i32 %call.i.i32, %call3.i30
  br i1 %cmp8.i33, label %for.body.i34.do.body21.i42_crit_edge, label %if.then.i38

for.body.i34.do.body21.i42_crit_edge:             ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body21.i42

if.then.i38:                                      ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #8
  %27 = load i32, ptr @failed_tests, align 4
  %inc9.i35 = add i32 %27, 1
  store i32 %inc9.i35, ptr @failed_tests, align 4
  %call11.i36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.68, i32 noundef 214, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.13) #9
  %call17.i37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %do.body21.i42

do.body21.i42:                                    ; preds = %if.then.i38, %for.body.i34.do.body21.i42_crit_edge
  %28 = load i32, ptr @total_tests, align 4
  %inc22.i39 = add i32 %28, 1
  store i32 %inc22.i39, ptr @total_tests, align 4
  %call26.i40 = call i32 @utf8nlen(ptr noundef %call, i32 noundef 1, ptr noundef %arrayidx.i28, i32 noundef %call.i29) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call26.i40, i32 %call3.i30)
  %cmp27.i41 = icmp eq i32 %call26.i40, %call3.i30
  br i1 %cmp27.i41, label %do.body21.i42.do.end44.i49_crit_edge, label %if.then28.i46

do.body21.i42.do.end44.i49_crit_edge:             ; preds = %do.body21.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44.i49

if.then28.i46:                                    ; preds = %do.body21.i42
  call void @__sanitizer_cov_trace_pc() #8
  %29 = load i32, ptr @failed_tests, align 4
  %inc29.i43 = add i32 %29, 1
  store i32 %inc29.i43, ptr @failed_tests, align 4
  %call34.i44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.68, i32 noundef 216, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.13) #9
  %call40.i45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %do.end44.i49

do.end44.i49:                                     ; preds = %if.then28.i46, %do.body21.i42.do.end44.i49_crit_edge
  %call.i131.i47 = call i32 @utf8ncursor(ptr noundef nonnull %u8c.i26, ptr noundef %call, i32 noundef 1, ptr noundef %arrayidx.i28, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131.i47)
  %cmp49.i48 = icmp slt i32 %call.i131.i47, 0
  br i1 %cmp49.i48, label %do.end53.i51, label %do.end44.i49.if.end56.i55_crit_edge

do.end44.i49.if.end56.i55_crit_edge:              ; preds = %do.end44.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i55

do.end53.i51:                                     ; preds = %do.end44.i49
  call void @__sanitizer_cov_trace_pc() #8
  %call55.i50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #9
  br label %if.end56.i55

if.end56.i55:                                     ; preds = %do.end53.i51, %do.end44.i49.if.end56.i55_crit_edge
  %call57132.i52 = call i32 @utf8byte(ptr noundef nonnull %u8c.i26) #6
  %conv58133.i53 = and i32 %call57132.i52, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv58133.i53)
  %cmp59.not134.i54 = icmp eq i32 %conv58133.i53, 0
  br i1 %cmp59.not134.i54, label %if.end56.i55.do.body93.i76_crit_edge, label %if.end56.i55.do.body61.i62_crit_edge

if.end56.i55.do.body61.i62_crit_edge:             ; preds = %if.end56.i55
  br label %do.body61.i62

if.end56.i55.do.body93.i76_crit_edge:             ; preds = %if.end56.i55
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body93.i76

do.body61.i62:                                    ; preds = %do.end91.i72.do.body61.i62_crit_edge, %if.end56.i55.do.body61.i62_crit_edge
  %conv58137.i56 = phi i32 [ %conv58.i70, %do.end91.i72.do.body61.i62_crit_edge ], [ %conv58133.i53, %if.end56.i55.do.body61.i62_crit_edge ]
  %call57136.i57 = phi i32 [ %call57.i69, %do.end91.i72.do.body61.i62_crit_edge ], [ %call57132.i52, %if.end56.i55.do.body61.i62_crit_edge ]
  %j.0135.i58 = phi i32 [ %inc92.i68, %do.end91.i72.do.body61.i62_crit_edge ], [ 0, %if.end56.i55.do.body61.i62_crit_edge ]
  %30 = load i32, ptr @total_tests, align 4
  %inc62.i59 = add i32 %30, 1
  store i32 %inc62.i59, ptr @total_tests, align 4
  %arrayidx66.i60 = getelementptr [10 x %struct.anon.0], ptr @nfdicf_test_data, i32 0, i32 %i.0138.i27, i32 1, i32 %j.0135.i58
  %31 = ptrtoint ptr %arrayidx66.i60 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx66.i60, align 1
  %33 = trunc i32 %call57136.i57 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %33)
  %cmp68.i61 = icmp eq i8 %32, %33
  br i1 %cmp68.i61, label %do.body61.i62.do.end91.i72_crit_edge, label %if.then70.i67

do.body61.i62.do.end91.i72_crit_edge:             ; preds = %do.body61.i62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end91.i72

if.then70.i67:                                    ; preds = %do.body61.i62
  call void @__sanitizer_cov_trace_pc() #8
  %34 = load i32, ptr @failed_tests, align 4
  %inc71.i63 = add i32 %34, 1
  store i32 %inc71.i63, ptr @failed_tests, align 4
  %call76.i64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.68, i32 noundef 225, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.13) #9
  %conv86.i65 = zext i8 %32 to i32
  %call87.i66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %conv58137.i56, i32 noundef %conv86.i65) #9
  br label %do.end91.i72

do.end91.i72:                                     ; preds = %if.then70.i67, %do.body61.i62.do.end91.i72_crit_edge
  %inc92.i68 = add i32 %j.0135.i58, 1
  %call57.i69 = call i32 @utf8byte(ptr noundef nonnull %u8c.i26) #6
  %conv58.i70 = and i32 %call57.i69, 255
  %cmp59.not.i71 = icmp eq i32 %conv58.i70, 0
  br i1 %cmp59.not.i71, label %do.end91.i72.do.body93.i76_crit_edge, label %do.end91.i72.do.body61.i62_crit_edge

do.end91.i72.do.body61.i62_crit_edge:             ; preds = %do.end91.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body61.i62

do.end91.i72.do.body93.i76_crit_edge:             ; preds = %do.end91.i72
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body93.i76

do.body93.i76:                                    ; preds = %do.end91.i72.do.body93.i76_crit_edge, %if.end56.i55.do.body93.i76_crit_edge
  %j.0.lcssa.i73 = phi i32 [ 0, %if.end56.i55.do.body93.i76_crit_edge ], [ %inc92.i68, %do.end91.i72.do.body93.i76_crit_edge ]
  %35 = load i32, ptr @total_tests, align 4
  %inc94.i74 = add i32 %35, 1
  store i32 %inc94.i74, ptr @total_tests, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0.lcssa.i73, i32 %call3.i30)
  %cmp95.i75 = icmp eq i32 %j.0.lcssa.i73, %call3.i30
  br i1 %cmp95.i75, label %do.body93.i76.do.end113.i83_crit_edge, label %if.then97.i80

do.body93.i76.do.end113.i83_crit_edge:            ; preds = %do.body93.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end113.i83

if.then97.i80:                                    ; preds = %do.body93.i76
  call void @__sanitizer_cov_trace_pc() #8
  %36 = load i32, ptr @failed_tests, align 4
  %inc98.i77 = add i32 %36, 1
  store i32 %inc98.i77, ptr @failed_tests, align 4
  %call103.i78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.68, i32 noundef 229, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.13) #9
  %call109.i79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #9
  br label %do.end113.i83

do.end113.i83:                                    ; preds = %if.then97.i80, %do.body93.i76.do.end113.i83_crit_edge
  %inc114.i81 = add nuw nsw i32 %i.0138.i27, 1
  %exitcond.not.i82 = icmp eq i32 %inc114.i81, 10
  br i1 %exitcond.not.i82, label %check_utf8_nfdicf.exit, label %do.end113.i83.for.body.i34_crit_edge

do.end113.i83.for.body.i34_crit_edge:             ; preds = %do.end113.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i34

check_utf8_nfdicf.exit:                           ; preds = %do.end113.i83
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %u8c.i26) #6
  %hash.i = getelementptr inbounds %struct.anon.1, ptr %s1.i, i32 0, i32 1
  %name.i = getelementptr inbounds %struct.qstr, ptr %s1.i, i32 0, i32 1
  %hash2.i = getelementptr inbounds %struct.anon.1, ptr %s2.i, i32 0, i32 1
  %name3.i = getelementptr inbounds %struct.qstr, ptr %s2.i, i32 0, i32 1
  br label %for.body.i89

for.cond21.preheader.i:                           ; preds = %do.end19.i
  %hash26.i = getelementptr inbounds %struct.anon.1, ptr %s124.i, i32 0, i32 1
  %name27.i = getelementptr inbounds %struct.qstr, ptr %s124.i, i32 0, i32 1
  %hash33.i = getelementptr inbounds %struct.anon.1, ptr %s231.i, i32 0, i32 1
  %name34.i = getelementptr inbounds %struct.qstr, ptr %s231.i, i32 0, i32 1
  br label %for.body23.i

for.body.i89:                                     ; preds = %do.end19.i.for.body.i89_crit_edge, %check_utf8_nfdicf.exit
  %i.071.i = phi i32 [ 0, %check_utf8_nfdicf.exit ], [ %inc20.i, %do.end19.i.for.body.i89_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %s1.i) #6
  %37 = ptrtoint ptr %name.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 -1, ptr %name.i, align 8
  %38 = ptrtoint ptr %s1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 10, ptr %s1.i, align 8
  %39 = ptrtoint ptr %hash.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %hash.i, align 4
  %arrayidx.i84 = getelementptr [7 x %struct.anon], ptr @nfdi_test_data, i32 0, i32 %i.071.i
  store ptr %arrayidx.i84, ptr %name.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %s2.i) #6
  %40 = ptrtoint ptr %name3.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 -1, ptr %name3.i, align 8
  %41 = ptrtoint ptr %s2.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 10, ptr %s2.i, align 8
  %42 = ptrtoint ptr %hash2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %hash2.i, align 4
  %dec.i85 = getelementptr [7 x %struct.anon], ptr @nfdi_test_data, i32 0, i32 %i.071.i, i32 1
  store ptr %dec.i85, ptr %name3.i, align 8
  %43 = load i32, ptr @total_tests, align 4
  %inc.i86 = add i32 %43, 1
  store i32 %inc.i86, ptr @total_tests, align 4
  %call.i87 = call i32 @utf8_strncmp(ptr noundef %call, ptr noundef nonnull %s1.i, ptr noundef nonnull %s2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool.not.i88 = icmp eq i32 %call.i87, 0
  br i1 %tobool.not.i88, label %for.body.i89.do.end19.i_crit_edge, label %if.then.i91

for.body.i89.do.end19.i_crit_edge:                ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end19.i

if.then.i91:                                      ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #8
  %44 = load i32, ptr @failed_tests, align 4
  %inc6.i = add i32 %44, 1
  store i32 %inc6.i, ptr @failed_tests, align 4
  %call8.i90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.89, i32 noundef 244, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.13) #9
  %45 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name.i, align 8
  %47 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %name3.i, align 8
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %46, ptr noundef %48) #9
  br label %do.end19.i

do.end19.i:                                       ; preds = %if.then.i91, %for.body.i89.do.end19.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %s2.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %s1.i) #6
  %inc20.i = add nuw nsw i32 %i.071.i, 1
  %exitcond.not.i92 = icmp eq i32 %inc20.i, 7
  br i1 %exitcond.not.i92, label %for.cond21.preheader.i, label %do.end19.i.for.body.i89_crit_edge

do.end19.i.for.body.i89_crit_edge:                ; preds = %do.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i89

for.body23.i:                                     ; preds = %do.end59.i.for.body23.i_crit_edge, %for.cond21.preheader.i
  %i.172.i = phi i32 [ 0, %for.cond21.preheader.i ], [ %inc61.i, %do.end59.i.for.body23.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %s124.i) #6
  %49 = ptrtoint ptr %name27.i to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 -1, ptr %name27.i, align 8
  %50 = ptrtoint ptr %s124.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 30, ptr %s124.i, align 8
  %51 = ptrtoint ptr %hash26.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %hash26.i, align 4
  %arrayidx28.i = getelementptr [10 x %struct.anon.0], ptr @nfdicf_test_data, i32 0, i32 %i.172.i
  store ptr %arrayidx28.i, ptr %name27.i, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %s231.i) #6
  %52 = ptrtoint ptr %name34.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 -1, ptr %name34.i, align 8
  %53 = ptrtoint ptr %s231.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 30, ptr %s231.i, align 8
  %54 = ptrtoint ptr %hash33.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %hash33.i, align 4
  %ncf.i93 = getelementptr [10 x %struct.anon.0], ptr @nfdicf_test_data, i32 0, i32 %i.172.i, i32 1
  store ptr %ncf.i93, ptr %name34.i, align 8
  %55 = load i32, ptr @total_tests, align 4
  %inc38.i = add i32 %55, 1
  store i32 %inc38.i, ptr @total_tests, align 4
  %call39.i = call i32 @utf8_strncasecmp(ptr noundef %call, ptr noundef nonnull %s124.i, ptr noundef nonnull %s231.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %for.body23.i.do.end59.i_crit_edge, label %if.then41.i

for.body23.i.do.end59.i_crit_edge:                ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59.i

if.then41.i:                                      ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = load i32, ptr @failed_tests, align 4
  %inc42.i = add i32 %56, 1
  store i32 %inc42.i, ptr @failed_tests, align 4
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.89, i32 noundef 254, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.13) #9
  %57 = ptrtoint ptr %name27.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name27.i, align 8
  %59 = ptrtoint ptr %name34.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name34.i, align 8
  %call55.i94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %58, ptr noundef %60) #9
  br label %do.end59.i

do.end59.i:                                       ; preds = %if.then41.i, %for.body23.i.do.end59.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %s231.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %s124.i) #6
  %inc61.i = add nuw nsw i32 %i.172.i, 1
  %exitcond73.not.i = icmp eq i32 %inc61.i, 10
  br i1 %exitcond73.not.i, label %check_utf8_comparisons.exit, label %do.end59.i.for.body23.i_crit_edge

do.end59.i.for.body23.i_crit_edge:                ; preds = %do.end59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body23.i

check_utf8_comparisons.exit:                      ; preds = %do.end59.i
  %61 = load i32, ptr @failed_tests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not = icmp eq i32 %61, 0
  %62 = load i32, ptr @total_tests, align 4
  br i1 %tobool.not, label %do.end7, label %do.end12

do.end7:                                          ; preds = %check_utf8_comparisons.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %62) #9
  br label %if.end15

do.end12:                                         ; preds = %check_utf8_comparisons.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %61, i32 noundef %62) #9
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %do.end7
  call void @utf8_unload(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ 0, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @utf8_load(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @utf8_unload(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8version_is_supported(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8nlen(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8byte(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8ncursor(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8_strncmp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8_strncasecmp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !57, !59, !60, !61, !62, !63, !65, !66, !67, !68, !69, !71, !72, !73, !74, !75, !76, !78, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !92, !93, !94, !96, !97, !98, !99, !100, !102, !104, !105, !106, !107, !108, !109, !111, !112, !113, !114, !115, !117, !118, !120, !121, !122, !123, !124, !126, !127, !128, !129, !131, !133, !134, !135, !136, !137, !138, !139, !140, !142, !143, !144, !145}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @__initcall__kmod_utf8_selftest__161_306_init_test_ucd6, !1, !"__initcall__kmod_utf8_selftest__161_306_init_test_ucd6", i1 false, i1 false}
!1 = !{!"../fs/unicode/utf8-selftest.c", i32 306, i32 1}
!2 = !{ptr @__exitcall_exit_test_ucd, !3, !"__exitcall_exit_test_ucd", i1 false, i1 false}
!3 = !{!"../fs/unicode/utf8-selftest.c", i32 307, i32 1}
!4 = !{ptr @__UNIQUE_ID_author162, !5, !"__UNIQUE_ID_author162", i1 false, i1 false}
!5 = !{!"../fs/unicode/utf8-selftest.c", i32 309, i32 1}
!6 = !{ptr @__UNIQUE_ID_file163, !7, !"__UNIQUE_ID_file163", i1 false, i1 false}
!7 = !{!"../fs/unicode/utf8-selftest.c", i32 310, i32 1}
!8 = !{ptr @__UNIQUE_ID_license164, !7, !"__UNIQUE_ID_license164", i1 false, i1 false}
!9 = !{ptr @failed_tests, !10, !"failed_tests", i1 false, i1 false}
!10 = !{!"../fs/unicode/utf8-selftest.c", i32 17, i32 14}
!11 = !{ptr @total_tests, !12, !"total_tests", i1 false, i1 false}
!12 = !{!"../fs/unicode/utf8-selftest.c", i32 18, i32 14}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../fs/unicode/utf8-selftest.c", i32 284, i32 3}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @init_test_ucd._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @init_test_ucd._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../fs/unicode/utf8-selftest.c", i32 294, i32 3}
!21 = !{ptr @init_test_ucd._entry.3, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @init_test_ucd._entry_ptr.5, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../fs/unicode/utf8-selftest.c", i32 296, i32 3}
!25 = !{ptr @init_test_ucd._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @init_test_ucd._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../fs/unicode/utf8-selftest.c", i32 261, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @check_supported_versions._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @check_supported_versions._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !28, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @check_supported_versions._entry.15, !28, !"_entry", i1 false, i1 false}
!38 = !{ptr @check_supported_versions._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @check_supported_versions._entry.18, !40, !"_entry", i1 false, i1 false}
!40 = !{!"../fs/unicode/utf8-selftest.c", i32 264, i32 2}
!41 = !{ptr @check_supported_versions._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @check_supported_versions._entry.21, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @check_supported_versions._entry_ptr.22, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @check_supported_versions._entry.23, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../fs/unicode/utf8-selftest.c", i32 267, i32 2}
!47 = !{ptr @check_supported_versions._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @check_supported_versions._entry.26, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @check_supported_versions._entry_ptr.27, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @check_supported_versions._entry.28, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../fs/unicode/utf8-selftest.c", i32 270, i32 2}
!53 = !{ptr @check_supported_versions._entry_ptr.29, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @check_supported_versions._entry.31, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @check_supported_versions._entry_ptr.32, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @check_supported_versions._entry.33, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../fs/unicode/utf8-selftest.c", i32 271, i32 2}
!59 = !{ptr @check_supported_versions._entry_ptr.34, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @check_supported_versions._entry.36, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @check_supported_versions._entry_ptr.37, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @check_supported_versions._entry.38, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../fs/unicode/utf8-selftest.c", i32 272, i32 2}
!65 = !{ptr @check_supported_versions._entry_ptr.39, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.40, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @check_supported_versions._entry.41, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @check_supported_versions._entry_ptr.42, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.43, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../fs/unicode/utf8-selftest.c", i32 184, i32 3}
!71 = !{ptr @check_utf8_nfdi._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @check_utf8_nfdi._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.44, !70, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @check_utf8_nfdi._entry.45, !70, !"_entry", i1 false, i1 false}
!75 = !{ptr @check_utf8_nfdi._entry_ptr.46, !70, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @check_utf8_nfdi._entry.47, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../fs/unicode/utf8-selftest.c", i32 185, i32 3}
!78 = !{ptr @check_utf8_nfdi._entry_ptr.48, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.49, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @check_utf8_nfdi._entry.50, !77, !"_entry", i1 false, i1 false}
!81 = !{ptr @check_utf8_nfdi._entry_ptr.51, !77, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.53, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../fs/unicode/utf8-selftest.c", i32 189, i32 4}
!84 = !{ptr @check_utf8_nfdi._entry.52, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @check_utf8_nfdi._entry_ptr.54, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @check_utf8_nfdi._entry.55, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../fs/unicode/utf8-selftest.c", i32 192, i32 4}
!88 = !{ptr @check_utf8_nfdi._entry_ptr.56, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.57, !87, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.60, !87, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @check_utf8_nfdi._entry.59, !87, !"_entry", i1 false, i1 false}
!93 = !{ptr @check_utf8_nfdi._entry_ptr.61, !87, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @check_utf8_nfdi._entry.62, !95, !"_entry", i1 false, i1 false}
!95 = !{!"../fs/unicode/utf8-selftest.c", i32 198, i32 3}
!96 = !{ptr @check_utf8_nfdi._entry_ptr.63, !95, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.64, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @check_utf8_nfdi._entry.65, !95, !"_entry", i1 false, i1 false}
!99 = !{ptr @check_utf8_nfdi._entry_ptr.66, !95, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @nfdi_test_data, !101, !"nfdi_test_data", i1 false, i1 false}
!101 = !{!"../fs/unicode/utf8-selftest.c", i32 40, i32 3}
!102 = !{ptr @.str.68, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../fs/unicode/utf8-selftest.c", i32 213, i32 3}
!104 = !{ptr @check_utf8_nfdicf._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @check_utf8_nfdicf._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.69, !103, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @check_utf8_nfdicf._entry.70, !103, !"_entry", i1 false, i1 false}
!108 = !{ptr @check_utf8_nfdicf._entry_ptr.71, !103, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @check_utf8_nfdicf._entry.72, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../fs/unicode/utf8-selftest.c", i32 215, i32 3}
!111 = !{ptr @check_utf8_nfdicf._entry_ptr.73, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.74, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @check_utf8_nfdicf._entry.75, !110, !"_entry", i1 false, i1 false}
!114 = !{ptr @check_utf8_nfdicf._entry_ptr.76, !110, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @check_utf8_nfdicf._entry.77, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../fs/unicode/utf8-selftest.c", i32 220, i32 4}
!117 = !{ptr @check_utf8_nfdicf._entry_ptr.78, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @check_utf8_nfdicf._entry.79, !119, !"_entry", i1 false, i1 false}
!119 = !{!"../fs/unicode/utf8-selftest.c", i32 223, i32 4}
!120 = !{ptr @check_utf8_nfdicf._entry_ptr.80, !119, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.81, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @check_utf8_nfdicf._entry.82, !119, !"_entry", i1 false, i1 false}
!123 = !{ptr @check_utf8_nfdicf._entry_ptr.83, !119, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @check_utf8_nfdicf._entry.84, !125, !"_entry", i1 false, i1 false}
!125 = !{!"../fs/unicode/utf8-selftest.c", i32 229, i32 3}
!126 = !{ptr @check_utf8_nfdicf._entry_ptr.85, !125, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @check_utf8_nfdicf._entry.86, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @check_utf8_nfdicf._entry_ptr.87, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @nfdicf_test_data, !130, !"nfdicf_test_data", i1 false, i1 false}
!130 = !{!"../fs/unicode/utf8-selftest.c", i32 94, i32 3}
!131 = !{ptr @.str.89, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../fs/unicode/utf8-selftest.c", i32 243, i32 3}
!133 = !{ptr @check_utf8_comparisons._entry, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @check_utf8_comparisons._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.90, !132, !"<string literal>", i1 false, i1 false}
!136 = distinct !{null, !132, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.93, !132, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @check_utf8_comparisons._entry.92, !132, !"_entry", i1 false, i1 false}
!139 = !{ptr @check_utf8_comparisons._entry_ptr.94, !132, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @check_utf8_comparisons._entry.97, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../fs/unicode/utf8-selftest.c", i32 253, i32 3}
!142 = !{ptr @check_utf8_comparisons._entry_ptr.98, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.99, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @check_utf8_comparisons._entry.100, !141, !"_entry", i1 false, i1 false}
!145 = !{ptr @check_utf8_comparisons._entry_ptr.101, !141, !"_entry_ptr", i1 false, i1 false}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
