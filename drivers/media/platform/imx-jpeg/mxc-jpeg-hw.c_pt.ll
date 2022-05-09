; ModuleID = '/llk/IR_all_yes/drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c_pt.bc'
source_filename = "../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.mxc_jpeg_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@print_descriptor_info.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 6, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mxc_jpeg_encdec\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"print_descriptor_info\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" MXC JPEG NEXT_DESCPT_PTR 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@print_descriptor_info.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" MXC JPEG BUF_BASE0 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@print_descriptor_info.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 6, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" MXC JPEG BUF_BASE1 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@print_descriptor_info.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" MXC JPEG LINE_PITCH %d\0A\00", [39 x i8] zeroinitializer }, align 32
@print_descriptor_info.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c" MXC JPEG STM_BUFBASE 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@print_descriptor_info.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 7, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" MXC JPEG STM_BUFSIZE %d\0A\00", [38 x i8] zeroinitializer }, align 32
@print_descriptor_info.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" MXC JPEG IMGSIZE %x (%d x %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@print_descriptor_info.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c" MXC JPEG STM_CTRL 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"print_cast_status\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CAST IP status regs:\0A\00", [42 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 9, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Wrapper reg %s = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CAST_STATUS0\00", [19 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CAST_STATUS1\00", [19 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 10, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CAST_STATUS2\00", [19 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CAST_STATUS3\00", [19 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CAST_STATUS4\00", [19 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CAST_STATUS5\00", [19 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CAST_STATUS6\00", [19 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 11, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CAST_STATUS7\00", [19 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CAST_STATUS8\00", [19 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CAST_STATUS9\00", [19 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 12, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CAST_STATUS10\00", [18 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CAST_STATUS11\00", [18 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CAST_STATUS12\00", [18 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CAST_STATUS13\00", [18 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CAST_STATUS14\00", [18 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CAST_STATUS15\00", [18 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CAST_STATUS16\00", [18 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CAST_STATUS17\00", [18 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CAST_STATUS18\00", [18 x i8] zeroinitializer }, align 32
@print_cast_status.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CAST_STATUS19\00", [18 x i8] zeroinitializer }, align 32
@print_wrapper_info.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"print_wrapper_info\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Wrapper regs:\0A\00", [17 x i8] zeroinitializer }, align 32
@print_wrapper_info.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.13, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"GLB_CTRL\00", [23 x i8] zeroinitializer }, align 32
@print_wrapper_info.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.13, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"COM_STATUS\00", [21 x i8] zeroinitializer }, align 32
@print_wrapper_info.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.13, i8 0, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BUF_BASE0\00", [22 x i8] zeroinitializer }, align 32
@print_wrapper_info.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.13, i8 0, i8 17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"BUF_BASE1\00", [22 x i8] zeroinitializer }, align 32
@print_wrapper_info.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.13, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LINE_PITCH\00", [21 x i8] zeroinitializer }, align 32
@print_wrapper_info.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.13, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STM_BUFBASE\00", [20 x i8] zeroinitializer }, align 32
@print_wrapper_info.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.13, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"STM_BUFSIZE\00", [20 x i8] zeroinitializer }, align 32
@print_wrapper_info.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.13, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IMGSIZE\00", [24 x i8] zeroinitializer }, align 32
@print_wrapper_info.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.13, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"STM_CTRL\00", [23 x i8] zeroinitializer }, align 32
@mxc_jpeg_enc_mode_conf.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxc_jpeg_enc_mode_conf\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CAST Encoder CONFIG...\0A\00", [40 x i8] zeroinitializer }, align 32
@mxc_jpeg_enc_mode_go.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.48, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxc_jpeg_enc_mode_go\00", [43 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CAST Encoder GO...\0A\00", [44 x i8] zeroinitializer }, align 32
@mxc_jpeg_dec_mode_go.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxc_jpeg_dec_mode_go\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CAST Decoder GO...\0A\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 23, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 25, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 26, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 27, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 28, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 29, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 30, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 32, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 38, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 39, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 40, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 41, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 42, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 43, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 44, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 45, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 46, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 47, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 48, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 49, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 50, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 51, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 52, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 55, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 56, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 57, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 58, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 59, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 60, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 65, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 66, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 67, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 68, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 69, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 70, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 71, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 72, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 73, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 74, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 95, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 110, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.202 = private constant [49 x i8] c"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 119, i32 2 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @print_descriptor_info(ptr noundef %dev, ptr nocapture noundef readonly %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_descriptor_info.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_descriptor_info, %if.then)) #4
          to label %do.body3 [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %desc, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_descriptor_info.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %1) #4
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_descriptor_info.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_descriptor_info, %if.then15)) #4
          to label %do.body18 [label %if.then15], !srcloc !144

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  %buf_base0 = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %buf_base0 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %3 = load i32, ptr %buf_base0, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_descriptor_info.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %3) #4
  br label %do.body18

do.body18:                                        ; preds = %if.then15, %do.body3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_descriptor_info.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_descriptor_info, %if.then30)) #4
          to label %do.body33 [label %if.then30], !srcloc !144

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #6
  %buf_base1 = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %desc, i32 0, i32 2
  %4 = ptrtoint ptr %buf_base1 to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %buf_base1, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_descriptor_info.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %5) #4
  br label %do.body33

do.body33:                                        ; preds = %if.then30, %do.body18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_descriptor_info.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_descriptor_info, %if.then45)) #4
          to label %do.body48 [label %if.then45], !srcloc !144

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #6
  %line_pitch = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %desc, i32 0, i32 3
  %6 = ptrtoint ptr %line_pitch to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %line_pitch, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_descriptor_info.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %7) #4
  br label %do.body48

do.body48:                                        ; preds = %if.then45, %do.body33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_descriptor_info.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_descriptor_info, %if.then60)) #4
          to label %do.body63 [label %if.then60], !srcloc !144

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #6
  %stm_bufbase = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %desc, i32 0, i32 4
  %8 = ptrtoint ptr %stm_bufbase to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %9 = load i32, ptr %stm_bufbase, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_descriptor_info.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %9) #4
  br label %do.body63

do.body63:                                        ; preds = %if.then60, %do.body48
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_descriptor_info.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_descriptor_info, %if.then75)) #4
          to label %do.body78 [label %if.then75], !srcloc !144

if.then75:                                        ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #6
  %stm_bufsize = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %desc, i32 0, i32 5
  %10 = ptrtoint ptr %stm_bufsize to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %stm_bufsize, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_descriptor_info.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %11) #4
  br label %do.body78

do.body78:                                        ; preds = %if.then75, %do.body63
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_descriptor_info.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_descriptor_info, %if.then90)) #4
          to label %do.body95 [label %if.then90], !srcloc !144

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #6
  %imgsize = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %desc, i32 0, i32 6
  %12 = ptrtoint ptr %imgsize to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %imgsize, align 1
  %shr = lshr i32 %13, 16
  %and = and i32 %13, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_descriptor_info.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %13, i32 noundef %shr, i32 noundef %and) #4
  br label %do.body95

do.body95:                                        ; preds = %if.then90, %do.body78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_descriptor_info.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_descriptor_info, %if.then107)) #4
          to label %do.end109 [label %if.then107], !srcloc !144

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #6
  %stm_ctrl = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %desc, i32 0, i32 7
  %14 = ptrtoint ptr %stm_ctrl to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %15 = load i32, ptr %stm_ctrl, align 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_descriptor_info.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %15) #4
  br label %do.end109

do.end109:                                        ; preds = %if.then107, %do.body95
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @print_cast_status(ptr noundef %dev, ptr noundef %reg, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.12) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %reg, i32 256
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !146
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then18)) #4
          to label %do.end20 [label %if.then18], !srcloc !144

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug307, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14, i32 noundef %1) #4
  br label %do.end20

do.end20:                                         ; preds = %if.then18, %do.end
  %add.ptr24 = getelementptr i8, ptr %reg, i32 260
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !147
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then40)) #4
          to label %do.end43 [label %if.then40], !srcloc !144

if.then40:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug308, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15, i32 noundef %3) #4
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.end20
  %add.ptr47 = getelementptr i8, ptr %reg, i32 264
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !148
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then63)) #4
          to label %do.end66 [label %if.then63], !srcloc !144

if.then63:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.16, i32 noundef %5) #4
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %do.end43
  %add.ptr70 = getelementptr i8, ptr %reg, i32 268
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !149
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then86)) #4
          to label %do.end89 [label %if.then86], !srcloc !144

if.then86:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug310, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.17, i32 noundef %7) #4
  br label %do.end89

do.end89:                                         ; preds = %if.then86, %do.end66
  %add.ptr93 = getelementptr i8, ptr %reg, i32 272
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !150
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then109)) #4
          to label %do.end112 [label %if.then109], !srcloc !144

if.then109:                                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug311, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.18, i32 noundef %9) #4
  br label %do.end112

do.end112:                                        ; preds = %if.then109, %do.end89
  %add.ptr116 = getelementptr i8, ptr %reg, i32 276
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !151
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then132)) #4
          to label %do.end135 [label %if.then132], !srcloc !144

if.then132:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug312, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.19, i32 noundef %11) #4
  br label %do.end135

do.end135:                                        ; preds = %if.then132, %do.end112
  %add.ptr139 = getelementptr i8, ptr %reg, i32 280
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then155)) #4
          to label %do.end158 [label %if.then155], !srcloc !144

if.then155:                                       ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.20, i32 noundef %13) #4
  br label %do.end158

do.end158:                                        ; preds = %if.then155, %do.end135
  %add.ptr162 = getelementptr i8, ptr %reg, i32 284
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr162) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !153
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then178)) #4
          to label %do.end181 [label %if.then178], !srcloc !144

if.then178:                                       ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug314, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.21, i32 noundef %15) #4
  br label %do.end181

do.end181:                                        ; preds = %if.then178, %do.end158
  %add.ptr185 = getelementptr i8, ptr %reg, i32 288
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr185) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !154
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then201)) #4
          to label %do.end204 [label %if.then201], !srcloc !144

if.then201:                                       ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug315, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.22, i32 noundef %17) #4
  br label %do.end204

do.end204:                                        ; preds = %if.then201, %do.end181
  %add.ptr208 = getelementptr i8, ptr %reg, i32 292
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr208) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !155
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then224)) #4
          to label %do.end227 [label %if.then224], !srcloc !144

if.then224:                                       ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug316, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.23, i32 noundef %19) #4
  br label %do.end227

do.end227:                                        ; preds = %if.then224, %do.end204
  %add.ptr231 = getelementptr i8, ptr %reg, i32 296
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr231) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !156
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then247)) #4
          to label %do.end250 [label %if.then247], !srcloc !144

if.then247:                                       ; preds = %do.end227
  call void @__sanitizer_cov_trace_pc() #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug317, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.24, i32 noundef %21) #4
  br label %do.end250

do.end250:                                        ; preds = %if.then247, %do.end227
  %add.ptr254 = getelementptr i8, ptr %reg, i32 300
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr254) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !157
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then270)) #4
          to label %do.end273 [label %if.then270], !srcloc !144

if.then270:                                       ; preds = %do.end250
  call void @__sanitizer_cov_trace_pc() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug318, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.25, i32 noundef %23) #4
  br label %do.end273

do.end273:                                        ; preds = %if.then270, %do.end250
  %add.ptr277 = getelementptr i8, ptr %reg, i32 304
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr277) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !158
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then293)) #4
          to label %do.end296 [label %if.then293], !srcloc !144

if.then293:                                       ; preds = %do.end273
  call void @__sanitizer_cov_trace_pc() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug319, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.26, i32 noundef %25) #4
  br label %do.end296

do.end296:                                        ; preds = %if.then293, %do.end273
  %add.ptr300 = getelementptr i8, ptr %reg, i32 308
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr300) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then316)) #4
          to label %do.end319 [label %if.then316], !srcloc !144

if.then316:                                       ; preds = %do.end296
  call void @__sanitizer_cov_trace_pc() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug320, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.27, i32 noundef %27) #4
  br label %do.end319

do.end319:                                        ; preds = %if.then316, %do.end296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  br i1 %cmp, label %do.end319.return_crit_edge, label %if.end321

do.end319.return_crit_edge:                       ; preds = %do.end319
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end321:                                        ; preds = %do.end319
  %add.ptr325 = getelementptr i8, ptr %reg, i32 312
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr325) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !160
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then341)) #4
          to label %do.end344 [label %if.then341], !srcloc !144

if.then341:                                       ; preds = %if.end321
  call void @__sanitizer_cov_trace_pc() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug321, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.28, i32 noundef %29) #4
  br label %do.end344

do.end344:                                        ; preds = %if.then341, %if.end321
  %add.ptr348 = getelementptr i8, ptr %reg, i32 316
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr348) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !161
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then364)) #4
          to label %do.end367 [label %if.then364], !srcloc !144

if.then364:                                       ; preds = %do.end344
  call void @__sanitizer_cov_trace_pc() #6
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug322, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.29, i32 noundef %31) #4
  br label %do.end367

do.end367:                                        ; preds = %if.then364, %do.end344
  %add.ptr371 = getelementptr i8, ptr %reg, i32 320
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr371) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then387)) #4
          to label %do.end390 [label %if.then387], !srcloc !144

if.then387:                                       ; preds = %do.end367
  call void @__sanitizer_cov_trace_pc() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug323, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.30, i32 noundef %33) #4
  br label %do.end390

do.end390:                                        ; preds = %if.then387, %do.end367
  %add.ptr394 = getelementptr i8, ptr %reg, i32 324
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr394) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !163
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then410)) #4
          to label %do.end413 [label %if.then410], !srcloc !144

if.then410:                                       ; preds = %do.end390
  call void @__sanitizer_cov_trace_pc() #6
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug324, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.31, i32 noundef %35) #4
  br label %do.end413

do.end413:                                        ; preds = %if.then410, %do.end390
  %add.ptr417 = getelementptr i8, ptr %reg, i32 328
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr417) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then433)) #4
          to label %do.end436 [label %if.then433], !srcloc !144

if.then433:                                       ; preds = %do.end413
  call void @__sanitizer_cov_trace_pc() #6
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug325, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.32, i32 noundef %37) #4
  br label %do.end436

do.end436:                                        ; preds = %if.then433, %do.end413
  %add.ptr440 = getelementptr i8, ptr %reg, i32 332
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr440) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !165
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_cast_status.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_cast_status, %if.then456)) #4
          to label %return [label %if.then456], !srcloc !144

if.then456:                                       ; preds = %do.end436
  call void @__sanitizer_cov_trace_pc() #6
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_cast_status.__UNIQUE_ID_ddebug326, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.33, i32 noundef %39) #4
  br label %return

return:                                           ; preds = %if.then456, %do.end436, %do.end319.return_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @print_wrapper_info(ptr noundef %dev, ptr noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_wrapper_info.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_wrapper_info, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_wrapper_info.__UNIQUE_ID_ddebug327, ptr noundef %dev, ptr noundef nonnull @.str.35) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !166
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_wrapper_info.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_wrapper_info, %if.then18)) #4
          to label %do.end20 [label %if.then18], !srcloc !144

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_wrapper_info.__UNIQUE_ID_ddebug328, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.36, i32 noundef %1) #4
  br label %do.end20

do.end20:                                         ; preds = %if.then18, %do.end
  %add.ptr24 = getelementptr i8, ptr %reg, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !167
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_wrapper_info.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_wrapper_info, %if.then40)) #4
          to label %do.end43 [label %if.then40], !srcloc !144

if.then40:                                        ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #6
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_wrapper_info.__UNIQUE_ID_ddebug329, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.37, i32 noundef %3) #4
  br label %do.end43

do.end43:                                         ; preds = %if.then40, %do.end20
  %add.ptr47 = getelementptr i8, ptr %reg, i32 20
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !168
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_wrapper_info.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_wrapper_info, %if.then63)) #4
          to label %do.end66 [label %if.then63], !srcloc !144

if.then63:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_wrapper_info.__UNIQUE_ID_ddebug330, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.38, i32 noundef %5) #4
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %do.end43
  %add.ptr70 = getelementptr i8, ptr %reg, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr70) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !169
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_wrapper_info.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_wrapper_info, %if.then86)) #4
          to label %do.end89 [label %if.then86], !srcloc !144

if.then86:                                        ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_wrapper_info.__UNIQUE_ID_ddebug331, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.39, i32 noundef %7) #4
  br label %do.end89

do.end89:                                         ; preds = %if.then86, %do.end66
  %add.ptr93 = getelementptr i8, ptr %reg, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !170
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_wrapper_info.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_wrapper_info, %if.then109)) #4
          to label %do.end112 [label %if.then109], !srcloc !144

if.then109:                                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_wrapper_info.__UNIQUE_ID_ddebug332, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.40, i32 noundef %9) #4
  br label %do.end112

do.end112:                                        ; preds = %if.then109, %do.end89
  %add.ptr116 = getelementptr i8, ptr %reg, i32 32
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !171
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_wrapper_info.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_wrapper_info, %if.then132)) #4
          to label %do.end135 [label %if.then132], !srcloc !144

if.then132:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_wrapper_info.__UNIQUE_ID_ddebug333, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.41, i32 noundef %11) #4
  br label %do.end135

do.end135:                                        ; preds = %if.then132, %do.end112
  %add.ptr139 = getelementptr i8, ptr %reg, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !172
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_wrapper_info.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_wrapper_info, %if.then155)) #4
          to label %do.end158 [label %if.then155], !srcloc !144

if.then155:                                       ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #6
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_wrapper_info.__UNIQUE_ID_ddebug334, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.42, i32 noundef %13) #4
  br label %do.end158

do.end158:                                        ; preds = %if.then155, %do.end135
  %add.ptr162 = getelementptr i8, ptr %reg, i32 40
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr162) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !173
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_wrapper_info.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_wrapper_info, %if.then178)) #4
          to label %do.end181 [label %if.then178], !srcloc !144

if.then178:                                       ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_wrapper_info.__UNIQUE_ID_ddebug335, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.43, i32 noundef %15) #4
  br label %do.end181

do.end181:                                        ; preds = %if.then178, %do.end158
  %add.ptr185 = getelementptr i8, ptr %reg, i32 44
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr185) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !174
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_wrapper_info.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_wrapper_info, %if.then201)) #4
          to label %do.end204 [label %if.then201], !srcloc !144

if.then201:                                       ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #6
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_wrapper_info.__UNIQUE_ID_ddebug336, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.44, i32 noundef %17) #4
  br label %do.end204

do.end204:                                        ; preds = %if.then201, %do.end181
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mxc_jpeg_enable_irq(ptr noundef %reg, i32 noundef %slot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !175
  tail call void @arm_heavy_mb() #4
  %add = shl i32 %slot, 16
  %add1 = add i32 %add, 65540
  %add.ptr = getelementptr i8, ptr %reg, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #4, !srcloc !176
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mxc_jpeg_sw_reset(ptr noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !177
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 33554432) #4, !srcloc !176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mxc_jpeg_enc_mode_conf(ptr noundef %dev, ptr noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_enc_mode_conf.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_enc_mode_conf, %if.then)) #4
          to label %do.body3 [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_enc_mode_conf.__UNIQUE_ID_ddebug337, ptr noundef %dev, ptr noundef nonnull @.str.46) #4
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !178
  tail call void @arm_heavy_mb() #4
  %add.ptr = getelementptr i8, ptr %reg, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1610612736) #4, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !179
  tail call void @arm_heavy_mb() #4
  %add.ptr7 = getelementptr i8, ptr %reg, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 -16580608) #4, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !180
  tail call void @arm_heavy_mb() #4
  %add.ptr10 = getelementptr i8, ptr %reg, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 1258291200) #4, !srcloc !176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mxc_jpeg_enc_mode_go(ptr noundef %dev, ptr noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_enc_mode_go.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_enc_mode_go, %if.then)) #4
          to label %do.body3 [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_enc_mode_go.__UNIQUE_ID_ddebug338, ptr noundef %dev, ptr noundef nonnull @.str.48) #4
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !181
  tail call void @arm_heavy_mb() #4
  %add.ptr = getelementptr i8, ptr %reg, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1073807360) #4, !srcloc !176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mxc_jpeg_dec_mode_go(ptr noundef %dev, ptr noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxc_jpeg_dec_mode_go.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mxc_jpeg_dec_mode_go, %if.then)) #4
          to label %do.body3 [label %if.then], !srcloc !144

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxc_jpeg_dec_mode_go.__UNIQUE_ID_ddebug339, ptr noundef %dev, ptr noundef nonnull @.str.50) #4
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !182
  tail call void @arm_heavy_mb() #4
  %add.ptr = getelementptr i8, ptr %reg, i32 308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #4, !srcloc !176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxc_jpeg_enable(ptr noundef %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !183
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 16777216) #4, !srcloc !176
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #4, !srcloc !145
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !184
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mxc_jpeg_enable_slot(ptr noundef %reg, i32 noundef %slot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #4, !srcloc !145
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !186
  tail call void @arm_heavy_mb() #4
  %add = add i32 %slot, 4
  %shl = shl nuw i32 1, %add
  %or = or i32 %1, %shl
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 %2) #4, !srcloc !176
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mxc_jpeg_set_l_endian(ptr noundef %reg, i32 noundef %le) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #4, !srcloc !145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !187
  %1 = and i32 %0, -134217729
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !188
  tail call void @arm_heavy_mb() #4
  %shl = shl i32 %le, 3
  %or = or i32 %2, %shl
  %3 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 %3) #4, !srcloc !176
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mxc_jpeg_set_bufsize(ptr nocapture noundef writeonly %desc, i32 noundef %bufsize) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %stm_bufsize = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %desc, i32 0, i32 5
  %0 = ptrtoint ptr %stm_bufsize to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %bufsize, ptr %stm_bufsize, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mxc_jpeg_set_res(ptr nocapture noundef writeonly %desc, i16 noundef zeroext %w, i16 noundef zeroext %h) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %w to i32
  %shl = shl nuw i32 %conv, 16
  %conv1 = zext i16 %h to i32
  %or = or i32 %shl, %conv1
  %imgsize = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %desc, i32 0, i32 6
  %0 = ptrtoint ptr %imgsize to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %or, ptr %imgsize, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @mxc_jpeg_set_line_pitch(ptr nocapture noundef writeonly %desc, i32 noundef %line_pitch) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %line_pitch1 = getelementptr inbounds %struct.mxc_jpeg_desc, ptr %desc, i32 0, i32 3
  %0 = ptrtoint ptr %line_pitch1 to i32
  call void @__asan_storeN_noabort(i32 %0, i32 4)
  store i32 %line_pitch, ptr %line_pitch1, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mxc_jpeg_set_desc(i32 noundef %desc, ptr noundef %reg, i32 noundef %slot) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !189
  tail call void @arm_heavy_mb() #4
  %or = or i32 %desc, 1
  %0 = tail call i32 @llvm.bswap.i32(i32 %or)
  %add = shl i32 %slot, 16
  %add1 = add i32 %add, 65552
  %add.ptr = getelementptr i8, ptr %reg, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #4, !srcloc !176
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 23, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @print_descriptor_info.__UNIQUE_ID_ddebug298, !1, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 25, i32 2}
!8 = !{ptr @print_descriptor_info.__UNIQUE_ID_ddebug299, !7, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 26, i32 2}
!11 = !{ptr @print_descriptor_info.__UNIQUE_ID_ddebug300, !10, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 27, i32 2}
!14 = !{ptr @print_descriptor_info.__UNIQUE_ID_ddebug301, !13, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 28, i32 2}
!17 = !{ptr @print_descriptor_info.__UNIQUE_ID_ddebug302, !16, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 29, i32 2}
!20 = !{ptr @print_descriptor_info.__UNIQUE_ID_ddebug303, !19, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 30, i32 2}
!23 = !{ptr @print_descriptor_info.__UNIQUE_ID_ddebug304, !22, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 32, i32 2}
!26 = !{ptr @print_descriptor_info.__UNIQUE_ID_ddebug305, !25, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 38, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug306, !28, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 39, i32 2}
!33 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug307, !32, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!34 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug308, !36, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 40, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug309, !39, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 41, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug310, !42, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 42, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug311, !45, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 43, i32 2}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug312, !48, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 44, i32 2}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug313, !51, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 45, i32 2}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug314, !54, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 46, i32 2}
!55 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug315, !57, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 47, i32 2}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug316, !60, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 48, i32 2}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug317, !63, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 49, i32 2}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug318, !66, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 50, i32 2}
!67 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug319, !69, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 51, i32 2}
!70 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug320, !72, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 52, i32 2}
!73 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug321, !75, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 55, i32 2}
!76 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug322, !78, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 56, i32 2}
!79 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug323, !81, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 57, i32 2}
!82 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug324, !84, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 58, i32 2}
!85 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug325, !87, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!87 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 59, i32 2}
!88 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @print_cast_status.__UNIQUE_ID_ddebug326, !90, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 60, i32 2}
!91 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 65, i32 2}
!94 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @print_wrapper_info.__UNIQUE_ID_ddebug327, !93, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!96 = !{ptr @print_wrapper_info.__UNIQUE_ID_ddebug328, !97, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 66, i32 2}
!98 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @print_wrapper_info.__UNIQUE_ID_ddebug329, !100, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!100 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 67, i32 2}
!101 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @print_wrapper_info.__UNIQUE_ID_ddebug330, !103, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!103 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 68, i32 2}
!104 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @print_wrapper_info.__UNIQUE_ID_ddebug331, !106, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 69, i32 2}
!107 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @print_wrapper_info.__UNIQUE_ID_ddebug332, !109, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 70, i32 2}
!110 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @print_wrapper_info.__UNIQUE_ID_ddebug333, !112, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 71, i32 2}
!113 = !{ptr @.str.41, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @print_wrapper_info.__UNIQUE_ID_ddebug334, !115, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 72, i32 2}
!116 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @print_wrapper_info.__UNIQUE_ID_ddebug335, !118, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 73, i32 2}
!119 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @print_wrapper_info.__UNIQUE_ID_ddebug336, !121, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 74, i32 2}
!122 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 95, i32 2}
!125 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @mxc_jpeg_enc_mode_conf.__UNIQUE_ID_ddebug337, !124, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 110, i32 2}
!129 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @mxc_jpeg_enc_mode_go.__UNIQUE_ID_ddebug338, !128, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!131 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/imx-jpeg/mxc-jpeg-hw.c", i32 119, i32 2}
!133 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @mxc_jpeg_dec_mode_go.__UNIQUE_ID_ddebug339, !132, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{i64 2148759661, i64 2148759666, i64 2148759679, i64 2148759723, i64 2148759757, i64 2148759778}
!145 = !{i64 5173160}
!146 = !{i64 2156370868}
!147 = !{i64 2156374003}
!148 = !{i64 2156377138}
!149 = !{i64 2156380273}
!150 = !{i64 2156383408}
!151 = !{i64 2156386543}
!152 = !{i64 2156389678}
!153 = !{i64 2156392813}
!154 = !{i64 2156395948}
!155 = !{i64 2156399083}
!156 = !{i64 2156402220}
!157 = !{i64 2156405361}
!158 = !{i64 2156408502}
!159 = !{i64 2156411643}
!160 = !{i64 2156414784}
!161 = !{i64 2156417925}
!162 = !{i64 2156421066}
!163 = !{i64 2156424207}
!164 = !{i64 2156427348}
!165 = !{i64 2156430489}
!166 = !{i64 2156435776}
!167 = !{i64 2156438877}
!168 = !{i64 2156441991}
!169 = !{i64 2156449162}
!170 = !{i64 2156452274}
!171 = !{i64 2156455392}
!172 = !{i64 2156458514}
!173 = !{i64 2156461628}
!174 = !{i64 2156464728}
!175 = !{i64 2156467352}
!176 = !{i64 5172742}
!177 = !{i64 2156467804}
!178 = !{i64 2156470471}
!179 = !{i64 2156470872}
!180 = !{i64 2156471275}
!181 = !{i64 2156473892}
!182 = !{i64 2156476515}
!183 = !{i64 2156476898}
!184 = !{i64 2156477495}
!185 = !{i64 2156477953}
!186 = !{i64 2156478219}
!187 = !{i64 2156478931}
!188 = !{i64 2156479189}
!189 = !{i64 2156479730}
