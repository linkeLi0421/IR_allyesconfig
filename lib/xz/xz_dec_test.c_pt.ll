; ModuleID = '/llk/IR_all_yes/lib/xz/xz_dec_test.c_pt.bc'
source_filename = "../lib/xz/xz_dec_test.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xz_buf = type { ptr, i32, i32, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@device_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xz_dec_test\00", [20 x i8] zeroinitializer }, align 32
@state = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@xz_dec_test_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016xz_dec_test: module unloaded\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xz_dec_test_exit\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lib/xz/xz_dec_test.c\00", [43 x i8] zeroinitializer }, align 32
@xz_dec_test_exit._entry_ptr = internal global ptr @xz_dec_test_exit._entry, section ".printk_index", align 4
@__initcall__kmod_xz_dec_test__202_209_xz_dec_test_init6 = internal global ptr @xz_dec_test_init, section ".initcall6.init", align 4
@__exitcall_xz_dec_test_exit = internal global ptr @xz_dec_test_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description203 = internal constant [47 x i8] c"xz_dec_test.description=XZ decompressor tester\00", section ".modinfo", align 1
@__UNIQUE_ID_version204 = internal constant [24 x i8] c"xz_dec_test.version=1.0\00", section ".modinfo", align 1
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str, ptr @.str.5 }, section "__modver", align 4
@__UNIQUE_ID_author205 = internal constant [59 x i8] c"xz_dec_test.author=Lasse Collin <lasse.collin@tukaani.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file206 = internal constant [36 x i8] c"xz_dec_test.file=lib/xz/xz_dec_test\00", section ".modinfo", align 1
@__UNIQUE_ID_license207 = internal constant [24 x i8] c"xz_dec_test.license=GPL\00", section ".modinfo", align 1
@xz_dec_test_init.fileops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr @xz_dec_test_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @xz_dec_test_open, ptr null, ptr @xz_dec_test_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@xz_dec_test_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016xz_dec_test: module loaded\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xz_dec_test_init\00", [47 x i8] zeroinitializer }, align 32
@xz_dec_test_init._entry_ptr = internal global ptr @xz_dec_test_init._entry, section ".printk_index", align 4
@xz_dec_test_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\016xz_dec_test: Create a device node with 'mknod xz_dec_test c %d 0' and write .xz files to it.\0A\00", [32 x i8] zeroinitializer }, align 32
@xz_dec_test_init._entry_ptr.10 = internal global ptr @xz_dec_test_init._entry.8, section ".printk_index", align 4
@ret = internal global { i32, [28 x i8] } zeroinitializer, align 32
@xz_dec_test_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016xz_dec_test: %zu bytes of garbage at the end of the file\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xz_dec_test_write\00", [46 x i8] zeroinitializer }, align 32
@xz_dec_test_write._entry_ptr = internal global ptr @xz_dec_test_write._entry, section ".printk_index", align 4
@xz_dec_test_write._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016xz_dec_test: decoding %zu bytes of input\0A\00", [52 x i8] zeroinitializer }, align 32
@xz_dec_test_write._entry_ptr.15 = internal global ptr @xz_dec_test_write._entry.13, section ".printk_index", align 4
@buffers = internal global { %struct.xz_buf, [40 x i8] } { %struct.xz_buf { ptr @buffer_in, i32 0, i32 0, ptr @buffer_out, i32 0, i32 1024 }, [40 x i8] zeroinitializer }, align 32
@buffer_in = internal global { [1024 x i8], [256 x i8] } zeroinitializer, align 32
@crc = internal global { i32, [28 x i8] } zeroinitializer, align 32
@buffer_out = internal global { [1024 x i8], [256 x i8] } zeroinitializer, align 32
@xz_dec_test_write._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016xz_dec_test: XZ_OK\0A\00", [42 x i8] zeroinitializer }, align 32
@xz_dec_test_write._entry_ptr.18 = internal global ptr @xz_dec_test_write._entry.16, section ".printk_index", align 4
@xz_dec_test_write._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.3, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016xz_dec_test: XZ_STREAM_END, CRC32 = 0x%08X\0A\00", [50 x i8] zeroinitializer }, align 32
@xz_dec_test_write._entry_ptr.21 = internal global ptr @xz_dec_test_write._entry.19, section ".printk_index", align 4
@xz_dec_test_write._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.3, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016xz_dec_test: XZ_MEMLIMIT_ERROR\0A\00", [62 x i8] zeroinitializer }, align 32
@xz_dec_test_write._entry_ptr.24 = internal global ptr @xz_dec_test_write._entry.22, section ".printk_index", align 4
@xz_dec_test_write._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.3, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016xz_dec_test: XZ_FORMAT_ERROR\0A\00", [32 x i8] zeroinitializer }, align 32
@xz_dec_test_write._entry_ptr.27 = internal global ptr @xz_dec_test_write._entry.25, section ".printk_index", align 4
@xz_dec_test_write._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.12, ptr @.str.3, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016xz_dec_test: XZ_OPTIONS_ERROR\0A\00", [63 x i8] zeroinitializer }, align 32
@xz_dec_test_write._entry_ptr.30 = internal global ptr @xz_dec_test_write._entry.28, section ".printk_index", align 4
@xz_dec_test_write._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.12, ptr @.str.3, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016xz_dec_test: XZ_DATA_ERROR\0A\00", [34 x i8] zeroinitializer }, align 32
@xz_dec_test_write._entry_ptr.33 = internal global ptr @xz_dec_test_write._entry.31, section ".printk_index", align 4
@xz_dec_test_write._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.12, ptr @.str.3, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016xz_dec_test: XZ_BUF_ERROR\0A\00", [35 x i8] zeroinitializer }, align 32
@xz_dec_test_write._entry_ptr.36 = internal global ptr @xz_dec_test_write._entry.34, section ".printk_index", align 4
@xz_dec_test_write._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.12, ptr @.str.3, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016xz_dec_test: Bug detected!\0A\00", [34 x i8] zeroinitializer }, align 32
@xz_dec_test_write._entry_ptr.39 = internal global ptr @xz_dec_test_write._entry.37, section ".printk_index", align 4
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@device_is_open = internal global { i1, [31 x i8] } zeroinitializer, align 32
@xz_dec_test_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016xz_dec_test: opened\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xz_dec_test_open\00", [47 x i8] zeroinitializer }, align 32
@xz_dec_test_open._entry_ptr = internal global ptr @xz_dec_test_open._entry, section ".printk_index", align 4
@xz_dec_test_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016xz_dec_test: input was truncated\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xz_dec_test_release\00", [44 x i8] zeroinitializer }, align 32
@xz_dec_test_release._entry_ptr = internal global ptr @xz_dec_test_release._entry, section ".printk_index", align 4
@xz_dec_test_release._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016xz_dec_test: closed\0A\00", [41 x i8] zeroinitializer }, align 32
@xz_dec_test_release._entry_ptr.49 = internal global ptr @xz_dec_test_release._entry.47, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"device_major\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 24, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 204, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 33, i32 23 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 206, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 213, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [8 x i8] c"fileops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 178, i32 38 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 195, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 196, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [4 x i8] c"ret\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 39, i32 20 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 109, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 116, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [8 x i8] c"buffers\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 52, i32 22 }
@___asan_gen_.116 = private unnamed_addr constant [10 x i8] c"buffer_in\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 45, i32 16 }
@___asan_gen_.119 = private unnamed_addr constant [4 x i8] c"crc\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 62, i32 17 }
@___asan_gen_.122 = private unnamed_addr constant [11 x i8] c"buffer_out\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 46, i32 16 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 139, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 143, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 148, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 152, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 156, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 160, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 164, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 168, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 156, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [15 x i8] c"device_is_open\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 79, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 88, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.199 = private constant [24 x i8] c"../lib/xz/xz_dec_test.c\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 90, i32 2 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_author205, ptr @__UNIQUE_ID_description203, ptr @__UNIQUE_ID_file206, ptr @__UNIQUE_ID_license207, ptr @__UNIQUE_ID_version204, ptr @__exitcall_xz_dec_test_exit, ptr @__initcall__kmod_xz_dec_test__202_209_xz_dec_test_init6, ptr @__modver_attr, ptr @xz_dec_test_exit, ptr @xz_dec_test_exit._entry, ptr @xz_dec_test_exit._entry_ptr, ptr @xz_dec_test_init._entry, ptr @xz_dec_test_init._entry.8, ptr @xz_dec_test_init._entry_ptr, ptr @xz_dec_test_init._entry_ptr.10, ptr @xz_dec_test_open._entry, ptr @xz_dec_test_open._entry_ptr, ptr @xz_dec_test_release._entry, ptr @xz_dec_test_release._entry.47, ptr @xz_dec_test_release._entry_ptr, ptr @xz_dec_test_release._entry_ptr.49, ptr @xz_dec_test_write._entry, ptr @xz_dec_test_write._entry.13, ptr @xz_dec_test_write._entry.16, ptr @xz_dec_test_write._entry.19, ptr @xz_dec_test_write._entry.22, ptr @xz_dec_test_write._entry.25, ptr @xz_dec_test_write._entry.28, ptr @xz_dec_test_write._entry.31, ptr @xz_dec_test_write._entry.34, ptr @xz_dec_test_write._entry.37, ptr @xz_dec_test_write._entry_ptr, ptr @xz_dec_test_write._entry_ptr.15, ptr @xz_dec_test_write._entry_ptr.18, ptr @xz_dec_test_write._entry_ptr.21, ptr @xz_dec_test_write._entry_ptr.24, ptr @xz_dec_test_write._entry_ptr.27, ptr @xz_dec_test_write._entry_ptr.30, ptr @xz_dec_test_write._entry_ptr.33, ptr @xz_dec_test_write._entry_ptr.36, ptr @xz_dec_test_write._entry_ptr.39, ptr @device_major, ptr @.str, ptr @state, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @xz_dec_test_init.fileops, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @ret, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @buffers, ptr @buffer_in, ptr @crc, ptr @buffer_out, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.42, ptr @device_is_open, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_init.fileops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ret to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_write._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_in to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_out to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_write._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_write._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_write._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_write._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_write._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_write._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_write._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_write._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_is_open to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xz_dec_test_release._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xz_dec_test_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load i32, ptr @device_major, align 4
  tail call void @__unregister_chrdev(i32 noundef %0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str) #7
  %1 = load ptr, ptr @state, align 4
  tail call void @xz_dec_end(ptr noundef %1) #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xz_dec_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xz_dec_test_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @xz_dec_init(i32 noundef 1, i32 noundef 1048576) #7
  store ptr %call, ptr @state, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__register_chrdev(i32 noundef 0, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str, ptr noundef nonnull @xz_dec_test_init.fileops) #7
  store i32 %call.i, ptr @device_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.then3, label %do.end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @state, align 4
  tail call void @xz_dec_end(ptr noundef %0) #7
  %1 = load i32, ptr @device_major, align 4
  br label %return

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  %2 = load i32, ptr @device_major, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %2) #10
  br label %return

return:                                           ; preds = %do.end, %if.then3, %entry.return_crit_edge
  %retval.0 = phi i32 [ %1, %if.then3 ], [ 0, %do.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xz_dec_test_write(ptr nocapture noundef readnone %file, ptr noundef %buf, i32 noundef %size, ptr nocapture noundef readnone %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %do.end6, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp1.not = icmp eq i32 %size, 0
  br i1 %cmp1.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %size) #10
  br label %cleanup

do.end6:                                          ; preds = %entry
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %size) #10
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %do.end6
  %remaining.0 = phi i32 [ %size, %do.end6 ], [ %remaining.1, %if.end19 ]
  %buf.addr.0 = phi ptr [ %buf, %do.end6 ], [ %buf.addr.1, %if.end19 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %remaining.0)
  %cmp9.not = icmp eq i32 %remaining.0, 0
  br i1 %cmp9.not, label %lor.lhs.false, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

lor.lhs.false:                                    ; preds = %while.cond
  %1 = load i32, ptr getelementptr inbounds (%struct.xz_buf, ptr @buffers, i32 0, i32 4), align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.xz_buf, ptr @buffers, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %2)
  %cmp10 = icmp eq i32 %1, %2
  br i1 %cmp10, label %lor.lhs.false.land.rhs_crit_edge, label %while.endthread-pre-split

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %while.cond.land.rhs_crit_edge
  %3 = load i32, ptr @ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp eq i32 %3, 0
  br i1 %cmp11, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %4 = load i32, ptr getelementptr inbounds (%struct.xz_buf, ptr @buffers, i32 0, i32 1), align 4
  %5 = load i32, ptr getelementptr inbounds (%struct.xz_buf, ptr @buffers, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %5)
  %cmp12 = icmp eq i32 %4, %5
  br i1 %cmp12, label %if.then13, label %while.body.if.end19_crit_edge

while.body.if.end19_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then13:                                        ; preds = %while.body
  store i32 0, ptr getelementptr inbounds (%struct.xz_buf, ptr @buffers, i32 0, i32 1), align 4
  %6 = tail call i32 @llvm.umin.i32(i32 %remaining.0, i32 1024)
  store i32 %6, ptr getelementptr inbounds (%struct.xz_buf, ptr @buffers, i32 0, i32 2), align 4
  tail call void @__check_object_size(ptr noundef nonnull @buffer_in, i32 noundef %6, i1 noundef zeroext false) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.42, i32 noundef 156) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %if.then13.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then13.if.end.i.i_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then13
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 %6, i32 -1226833920) #11, !srcloc !123
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.then.i1.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !124

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i1.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @buffer_in, i32 noundef %6) #7
  %8 = tail call i32 @llvm.read_register.i32(metadata !113) #7
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !125
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull @buffer_in, ptr noundef %buf.addr.0, i32 noundef %6) #7
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i1.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then13.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %6, %if.then13.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i1.i ], [ %6, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end18, label %copy_from_user.exit, !prof !124

copy_from_user.exit:                              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %6, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr @buffer_in, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end18:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %12 = load i32, ptr getelementptr inbounds (%struct.xz_buf, ptr @buffers, i32 0, i32 2), align 4
  %add.ptr = getelementptr i8, ptr %buf.addr.0, i32 %12
  %sub = sub i32 %remaining.0, %12
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %while.body.if.end19_crit_edge
  %remaining.1 = phi i32 [ %sub, %if.end18 ], [ %remaining.0, %while.body.if.end19_crit_edge ]
  %buf.addr.1 = phi ptr [ %add.ptr, %if.end18 ], [ %buf.addr.0, %while.body.if.end19_crit_edge ]
  store i32 0, ptr getelementptr inbounds (%struct.xz_buf, ptr @buffers, i32 0, i32 4), align 4
  %13 = load ptr, ptr @state, align 4
  %call20 = tail call i32 @xz_dec_run(ptr noundef %13, ptr noundef nonnull @buffers) #7
  store i32 %call20, ptr @ret, align 4
  %14 = load i32, ptr @crc, align 4
  %15 = load i32, ptr getelementptr inbounds (%struct.xz_buf, ptr @buffers, i32 0, i32 4), align 4
  %call21 = tail call i32 @crc32_le(i32 noundef %14, ptr noundef nonnull @buffer_out, i32 noundef %15) #12
  store i32 %call21, ptr @crc, align 4
  br label %while.cond

while.endthread-pre-split:                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %.pr = load i32, ptr @ret, align 4
  br label %while.end

while.end:                                        ; preds = %while.endthread-pre-split, %land.rhs.while.end_crit_edge
  %16 = phi i32 [ %.pr, %while.endthread-pre-split ], [ %3, %land.rhs.while.end_crit_edge ]
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i32 %16, label %do.end68 [
    i32 0, label %do.end24
    i32 1, label %do.end30
    i32 4, label %do.end39
    i32 5, label %do.end45
    i32 6, label %do.end51
    i32 7, label %do.end57
    i32 8, label %do.end63
  ]

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #10
  br label %cleanup

do.end30:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = load i32, ptr @crc, align 4
  %neg = xor i32 %18, -1
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %neg) #10
  %19 = load i32, ptr getelementptr inbounds (%struct.xz_buf, ptr @buffers, i32 0, i32 2), align 4
  %20 = load i32, ptr getelementptr inbounds (%struct.xz_buf, ptr @buffers, i32 0, i32 1), align 4
  %21 = add i32 %remaining.0, %19
  %sub33 = sub i32 %size, %21
  %sub35 = add i32 %sub33, %20
  br label %cleanup

do.end39:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  br label %cleanup

do.end45:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #10
  br label %cleanup

do.end51:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %cleanup

do.end57:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #10
  br label %cleanup

do.end63:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %cleanup

do.end68:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %do.end63, %do.end57, %do.end51, %do.end45, %do.end39, %do.end30, %do.end24, %copy_from_user.exit, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub35, %do.end30 ], [ %size, %do.end24 ], [ -28, %do.end ], [ -28, %if.then.cleanup_crit_edge ], [ -14, %copy_from_user.exit ], [ -5, %do.end68 ], [ -5, %do.end63 ], [ -5, %do.end57 ], [ -5, %do.end51 ], [ -5, %do.end45 ], [ -5, %do.end39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xz_dec_test_open(ptr nocapture noundef readnone %i, ptr nocapture noundef readnone %f) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %.b1 = load i1, ptr @device_is_open, align 1
  br i1 %.b1, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @device_is_open, align 1
  %0 = load ptr, ptr @state, align 4
  tail call void @xz_dec_reset(ptr noundef %0) #7
  store i32 0, ptr @ret, align 4
  store i32 -1, ptr @crc, align 4
  store i32 0, ptr getelementptr inbounds (%struct.xz_buf, ptr @buffers, i32 0, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.xz_buf, ptr @buffers, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.xz_buf, ptr @buffers, i32 0, i32 4), align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xz_dec_test_release(ptr nocapture noundef readnone %i, ptr nocapture noundef readnone %f) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 false, ptr @device_is_open, align 1
  %0 = load i32, ptr @ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.do.end2_crit_edge

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #10
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xz_dec_init(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xz_dec_run(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @xz_dec_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !21, !23, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !87, !89, !91, !93, !95, !97, !99, !100, !101, !102, !104, !106, !107, !108, !109, !111, !112}
!llvm.named.register.sp = !{!113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/xz/xz_dec_test.c", i32 204, i32 34}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/xz/xz_dec_test.c", i32 206, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @xz_dec_test_exit._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @xz_dec_test_exit._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__initcall__kmod_xz_dec_test__202_209_xz_dec_test_init6, !9, !"__initcall__kmod_xz_dec_test__202_209_xz_dec_test_init6", i1 false, i1 false}
!9 = !{!"../lib/xz/xz_dec_test.c", i32 209, i32 1}
!10 = !{ptr @__exitcall_xz_dec_test_exit, !11, !"__exitcall_xz_dec_test_exit", i1 false, i1 false}
!11 = !{!"../lib/xz/xz_dec_test.c", i32 210, i32 1}
!12 = !{ptr @__UNIQUE_ID_description203, !13, !"__UNIQUE_ID_description203", i1 false, i1 false}
!13 = !{!"../lib/xz/xz_dec_test.c", i32 212, i32 1}
!14 = !{ptr @__UNIQUE_ID_version204, !15, !"__UNIQUE_ID_version204", i1 false, i1 false}
!15 = !{!"../lib/xz/xz_dec_test.c", i32 213, i32 1}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__modver_attr, !15, !"__modver_attr", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_author205, !20, !"__UNIQUE_ID_author205", i1 false, i1 false}
!20 = !{!"../lib/xz/xz_dec_test.c", i32 214, i32 1}
!21 = !{ptr @__UNIQUE_ID_file206, !22, !"__UNIQUE_ID_file206", i1 false, i1 false}
!22 = !{!"../lib/xz/xz_dec_test.c", i32 220, i32 1}
!23 = !{ptr @__UNIQUE_ID_license207, !22, !"__UNIQUE_ID_license207", i1 false, i1 false}
!24 = !{ptr @device_major, !25, !"device_major", i1 false, i1 false}
!25 = !{!"../lib/xz/xz_dec_test.c", i32 24, i32 12}
!26 = !{ptr @state, !27, !"state", i1 false, i1 false}
!27 = !{!"../lib/xz/xz_dec_test.c", i32 33, i32 23}
!28 = !{ptr @xz_dec_test_init.fileops, !29, !"fileops", i1 false, i1 false}
!29 = !{!"../lib/xz/xz_dec_test.c", i32 178, i32 38}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../lib/xz/xz_dec_test.c", i32 195, i32 2}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @xz_dec_test_init._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @xz_dec_test_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/xz/xz_dec_test.c", i32 196, i32 2}
!37 = !{ptr @xz_dec_test_init._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @xz_dec_test_init._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../lib/xz/xz_dec_test.c", i32 109, i32 4}
!41 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @xz_dec_test_write._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @xz_dec_test_write._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/xz/xz_dec_test.c", i32 116, i32 2}
!46 = !{ptr @xz_dec_test_write._entry.13, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @xz_dec_test_write._entry_ptr.15, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/xz/xz_dec_test.c", i32 139, i32 3}
!50 = !{ptr @xz_dec_test_write._entry.16, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @xz_dec_test_write._entry_ptr.18, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../lib/xz/xz_dec_test.c", i32 143, i32 3}
!54 = !{ptr @xz_dec_test_write._entry.19, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @xz_dec_test_write._entry_ptr.21, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../lib/xz/xz_dec_test.c", i32 148, i32 3}
!58 = !{ptr @xz_dec_test_write._entry.22, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @xz_dec_test_write._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../lib/xz/xz_dec_test.c", i32 152, i32 3}
!62 = !{ptr @xz_dec_test_write._entry.25, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @xz_dec_test_write._entry_ptr.27, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../lib/xz/xz_dec_test.c", i32 156, i32 3}
!66 = !{ptr @xz_dec_test_write._entry.28, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @xz_dec_test_write._entry_ptr.30, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../lib/xz/xz_dec_test.c", i32 160, i32 3}
!70 = !{ptr @xz_dec_test_write._entry.31, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @xz_dec_test_write._entry_ptr.33, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../lib/xz/xz_dec_test.c", i32 164, i32 3}
!74 = !{ptr @xz_dec_test_write._entry.34, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @xz_dec_test_write._entry_ptr.36, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../lib/xz/xz_dec_test.c", i32 168, i32 3}
!78 = !{ptr @xz_dec_test_write._entry.37, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @xz_dec_test_write._entry_ptr.39, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @ret, !81, !"ret", i1 false, i1 false}
!81 = !{!"../lib/xz/xz_dec_test.c", i32 39, i32 20}
!82 = !{ptr @buffers, !83, !"buffers", i1 false, i1 false}
!83 = !{!"../lib/xz/xz_dec_test.c", i32 52, i32 22}
!84 = distinct !{null, !85, !"__already_done", i1 false, i1 false}
!85 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!86 = distinct !{null, !85, !"<string literal>", i1 false, i1 false}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!91 = !{ptr @buffer_in, !92, !"buffer_in", i1 false, i1 false}
!92 = !{!"../lib/xz/xz_dec_test.c", i32 45, i32 16}
!93 = !{ptr @crc, !94, !"crc", i1 false, i1 false}
!94 = !{!"../lib/xz/xz_dec_test.c", i32 62, i32 17}
!95 = !{ptr @buffer_out, !96, !"buffer_out", i1 false, i1 false}
!96 = !{!"../lib/xz/xz_dec_test.c", i32 46, i32 16}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../lib/xz/xz_dec_test.c", i32 79, i32 2}
!99 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @xz_dec_test_open._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @xz_dec_test_open._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = distinct !{null, !103, !"device_is_open", i1 false, i1 false}
!103 = !{!"../lib/xz/xz_dec_test.c", i32 30, i32 13}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../lib/xz/xz_dec_test.c", i32 88, i32 3}
!106 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @xz_dec_test_release._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @xz_dec_test_release._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../lib/xz/xz_dec_test.c", i32 90, i32 2}
!111 = !{ptr @xz_dec_test_release._entry.47, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @xz_dec_test_release._entry_ptr.49, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{!"sp"}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i64 2152407985, i64 2152408010}
!124 = !{!"branch_weights", i32 2000, i32 1}
!125 = !{i64 4903540}
!126 = !{i64 4903737}
!127 = !{i64 2152388970}
