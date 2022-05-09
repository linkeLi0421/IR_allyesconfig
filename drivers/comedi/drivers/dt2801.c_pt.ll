; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/dt2801.c_pt.bc'
source_filename = "../drivers/comedi/drivers/dt2801.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.dt2801_board = type { ptr, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_dt2801__237_641_dt2801_driver_init6 = internal global ptr @dt2801_driver_init, section ".initcall6.init", align 4
@dt2801_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @dt2801_attach, ptr @comedi_legacy_detach, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_dt2801_driver_exit = internal global ptr @dt2801_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author238 = internal constant [44 x i8] c"dt2801.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [43 x i8] c"dt2801.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [42 x i8] c"dt2801.file=drivers/comedi/drivers/dt2801\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [19 x i8] c"dt2801.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt2801\00", [25 x i8] zeroinitializer }, align 32
@boardtypes = internal constant { [8 x %struct.dt2801_board], [32 x i8] } { [8 x %struct.dt2801_board] [%struct.dt2801_board { ptr @.str, i32 9, i32 2, i32 16, i32 12, i32 0, i32 12 }, %struct.dt2801_board { ptr @.str.7, i32 82, i32 2, i32 16, i32 12, i32 0, i32 12 }, %struct.dt2801_board { ptr @.str.8, i32 130, i32 1, i32 16, i32 16, i32 1, i32 12 }, %struct.dt2801_board { ptr @.str.9, i32 18, i32 1, i32 16, i32 12, i32 0, i32 12 }, %struct.dt2801_board { ptr @.str.10, i32 146, i32 1, i32 16, i32 16, i32 1, i32 12 }, %struct.dt2801_board { ptr @.str.11, i32 32, i32 0, i32 16, i32 12, i32 2, i32 8 }, %struct.dt2801_board { ptr @.str.12, i32 162, i32 0, i32 4, i32 12, i32 0, i32 12 }, %struct.dt2801_board { ptr @.str.13, i32 176, i32 0, i32 8, i32 12, i32 1, i32 12 }], [32 x i8] zeroinitializer }, align 32
@dt2801_attach.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -116, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dt2801_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/comedi/drivers/dt2801.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unrecognized board code=0x%02x, contact author\0A\00", [48 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@dt2801_reset.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 88, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dt2801_reset\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"timeout 1 status=0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@dt2801_reset.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.6, i8 0, i8 92, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"timeout 2 status=0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dt2801-a\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dt2801/5716a\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt2805\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dt2805/5716a\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt2808\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt2818\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt2809\00", [25 x i8] zeroinitializer }, align 32
@dt2801_writecmd.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 81, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dt2801_writecmd\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"composite-error in %s, ignoring\0A\00", [63 x i8] zeroinitializer }, align 32
@dt2801_writecmd.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 81, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"!ready in %s, ignoring\0A\00", [40 x i8] zeroinitializer }, align 32
@range_unipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@range_dt2801_ai_pgl_unipolar = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 0, i32 20000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_dt2801_ai_pgl_bipolar = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -20000, i32 20000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@dt2801_error.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 108, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dt2801_error\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timeout\0A\00", [23 x i8] zeroinitializer }, align 32
@dt2801_error.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 0, i8 108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"error %d\0A\00", [22 x i8] zeroinitializer }, align 32
@dt2801_error.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.22, i8 0, i8 109, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error status 0x%02x, resetting...\0A\00", [61 x i8] zeroinitializer }, align 32
@dac_range_table = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @range_bipolar10, ptr @range_bipolar5, ptr @range_bipolar2_5, ptr @range_unipolar10, ptr @range_unipolar5], [44 x i8] zeroinitializer }, align 32
@range_bipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_bipolar2_5 = external dso_local constant %struct.comedi_lrange, align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 9, i64 18, i64 32, i64 82, i64 130, i64 146, i64 162, i64 176]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"dt2801_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 635, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 636, i32 17 }
@___asan_gen_.30 = private unnamed_addr constant [11 x i8] c"boardtypes\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 144, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 559, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 355, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 370, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 154, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 162, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 170, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 178, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 186, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 194, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 202, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 323, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 327, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [29 x i8] c"range_dt2801_ai_pgl_unipolar\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 121, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant [28 x i8] c"range_dt2801_ai_pgl_bipolar\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 101, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 433, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 435, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 438, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"dac_range_table\00", align 1
@___asan_gen_.100 = private constant [35 x i8] c"../drivers/comedi/drivers/dt2801.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 399, i32 36 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_dt2801_driver_exit, ptr @__initcall__kmod_dt2801__237_641_dt2801_driver_init6, ptr @dt2801_driver_exit, ptr @dt2801_driver, ptr @.str, ptr @boardtypes, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @range_dt2801_ai_pgl_unipolar, ptr @range_dt2801_ai_pgl_bipolar, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @dac_range_table], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt2801_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boardtypes to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_dt2801_ai_pgl_unipolar to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_dt2801_ai_pgl_bipolar to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_range_table to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2801_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @dt2801_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dt2801_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @comedi_driver_unregister(ptr noundef nonnull @dt2801_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2801_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %1, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @dt2801_reset(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call fastcc i32 @dt2801_reset(ptr noundef %dev)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %board_code.0 = phi i32 [ %call1, %if.end.if.end5_crit_edge ], [ %call4, %if.then3 ]
  %2 = zext i32 %board_code.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %board_code.0, label %for.inc.7 [
    i32 9, label %if.end5.havetype_crit_edge
    i32 82, label %havetype.fold.split
    i32 130, label %havetype.fold.split146
    i32 18, label %havetype.fold.split147
    i32 146, label %havetype.fold.split148
    i32 32, label %havetype.fold.split149
    i32 162, label %havetype.fold.split150
    i32 176, label %havetype.fold.split151
  ]

if.end5.havetype_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %havetype

for.inc.7:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dt2801_attach.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dt2801_attach, %havetype)) #4
          to label %if.then15 [label %havetype], !srcloc !74

if.then15:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #6
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %3 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dt2801_attach.__UNIQUE_ID_ddebug236, ptr noundef %4, ptr noundef nonnull @.str.3, i32 noundef %board_code.0) #4
  br label %havetype

havetype.fold.split:                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %havetype

havetype.fold.split146:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %havetype

havetype.fold.split147:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %havetype

havetype.fold.split148:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %havetype

havetype.fold.split149:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %havetype

havetype.fold.split150:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %havetype

havetype.fold.split151:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %havetype

havetype:                                         ; preds = %havetype.fold.split151, %havetype.fold.split150, %havetype.fold.split149, %havetype.fold.split148, %havetype.fold.split147, %havetype.fold.split146, %havetype.fold.split, %if.then15, %for.inc.7, %if.end5.havetype_crit_edge
  %type.1 = phi i32 [ 0, %if.then15 ], [ 0, %for.inc.7 ], [ 0, %if.end5.havetype_crit_edge ], [ 1, %havetype.fold.split ], [ 2, %havetype.fold.split146 ], [ 3, %havetype.fold.split147 ], [ 4, %havetype.fold.split148 ], [ 5, %havetype.fold.split149 ], [ 6, %havetype.fold.split150 ], [ 7, %havetype.fold.split151 ]
  %add.ptr = getelementptr %struct.dt2801_board, ptr @boardtypes, i32 %type.1
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %5 = ptrtoint ptr %board_ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %board_ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #4
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %data.i, align 4, !annotation !75
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %havetype
  %n_chans.033.i = phi i32 [ 0, %havetype ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  tail call fastcc void @dt2801_writecmd(ptr noundef %dev, i32 noundef 12) #4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %for.body.i
  %timeout.0.i.i = phi i32 [ 1000, %for.body.i ], [ %dec.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %7 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %8, 1
  %and.i.i.i = and i32 %add.i.i, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %9 = inttoptr i32 %add.i.i.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv.i.i = zext i8 %10 to i32
  %and.i.i = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body.i.i.do.body.i21.i.preheader_crit_edge

do.body.i.i.do.body.i21.i.preheader_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i21.i.preheader

if.end.i.i:                                       ; preds = %do.body.i.i
  %and1.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %do.cond.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %and.i14.i.i = and i32 %12, 1048575
  %add.i15.i.i = or i32 %and.i14.i.i, -18874368
  %13 = inttoptr i32 %add.i15.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #4, !srcloc !79
  br label %do.body.i21.i.preheader

do.cond.i.i:                                      ; preds = %if.end.i.i
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %do.cond.i.i.do.body.i21.i.preheader_crit_edge, label %do.cond.i.i.do.body.i.i_crit_edge

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

do.cond.i.i.do.body.i21.i.preheader_crit_edge:    ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i21.i.preheader

do.body.i21.i.preheader:                          ; preds = %do.cond.i.i.do.body.i21.i.preheader_crit_edge, %if.then3.i.i, %do.body.i.i.do.body.i21.i.preheader_crit_edge
  br label %do.body.i21.i

do.body.i21.i:                                    ; preds = %do.cond.i30.i.do.body.i21.i_crit_edge, %do.body.i21.i.preheader
  %timeout.0.i14.i = phi i32 [ %dec.i28.i, %do.cond.i30.i.do.body.i21.i_crit_edge ], [ 1000, %do.body.i21.i.preheader ]
  %14 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i.i, align 4
  %add.i15.i = add i32 %15, 1
  %and.i.i16.i = and i32 %add.i15.i, 1048575
  %add.i.i17.i = or i32 %and.i.i16.i, -18874368
  %16 = inttoptr i32 %add.i.i17.i to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv.i18.i = zext i8 %17 to i32
  %and.i19.i = and i32 %conv.i18.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i)
  %tobool.not.i20.i = icmp eq i32 %and.i19.i, 0
  br i1 %tobool.not.i20.i, label %if.end.i24.i, label %do.body.i21.i.dt2801_writedata.exit32.i_crit_edge

do.body.i21.i.dt2801_writedata.exit32.i_crit_edge: ; preds = %do.body.i21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_writedata.exit32.i

if.end.i24.i:                                     ; preds = %do.body.i21.i
  %and1.i22.i = and i32 %conv.i18.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i22.i)
  %tobool2.not.i23.i = icmp eq i32 %and1.i22.i, 0
  br i1 %tobool2.not.i23.i, label %if.then3.i27.i, label %do.cond.i30.i

if.then3.i27.i:                                   ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv5.i.i = trunc i32 %n_chans.033.i to i8
  %18 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %and.i14.i25.i = and i32 %19, 1048575
  %add.i15.i26.i = or i32 %and.i14.i25.i, -18874368
  %20 = inttoptr i32 %add.i15.i26.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv5.i.i) #4, !srcloc !79
  br label %dt2801_writedata.exit32.i

do.cond.i30.i:                                    ; preds = %if.end.i24.i
  %dec.i28.i = add nsw i32 %timeout.0.i14.i, -1
  %cmp.not.i29.i = icmp eq i32 %dec.i28.i, 0
  br i1 %cmp.not.i29.i, label %do.cond.i30.i.dt2801_writedata.exit32.i_crit_edge, label %do.cond.i30.i.do.body.i21.i_crit_edge

do.cond.i30.i.do.body.i21.i_crit_edge:            ; preds = %do.cond.i30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i21.i

do.cond.i30.i.dt2801_writedata.exit32.i_crit_edge: ; preds = %do.cond.i30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_writedata.exit32.i

dt2801_writedata.exit32.i:                        ; preds = %do.cond.i30.i.dt2801_writedata.exit32.i_crit_edge, %if.then3.i27.i, %do.body.i21.i.dt2801_writedata.exit32.i_crit_edge
  %call2.i = call fastcc i32 @dt2801_readdata2(ptr noundef %dev, ptr noundef nonnull %data.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %dt2801_writedata.exit32.i.probe_number_of_ai_chans.exit_crit_edge

dt2801_writedata.exit32.i.probe_number_of_ai_chans.exit_crit_edge: ; preds = %dt2801_writedata.exit32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %probe_number_of_ai_chans.exit

for.inc.i:                                        ; preds = %dt2801_writedata.exit32.i
  %inc.i = add nuw nsw i32 %n_chans.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.probe_number_of_ai_chans.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.probe_number_of_ai_chans.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %probe_number_of_ai_chans.exit

probe_number_of_ai_chans.exit:                    ; preds = %for.inc.i.probe_number_of_ai_chans.exit_crit_edge, %dt2801_writedata.exit32.i.probe_number_of_ai_chans.exit_crit_edge
  %n_chans.0.lcssa.i = phi i32 [ %n_chans.033.i, %dt2801_writedata.exit32.i.probe_number_of_ai_chans.exit_crit_edge ], [ 16, %for.inc.i.probe_number_of_ai_chans.exit_crit_edge ]
  %call3.i = tail call fastcc i32 @dt2801_reset(ptr noundef %dev) #4
  %call4.i = tail call fastcc i32 @dt2801_reset(ptr noundef %dev) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #4
  %call19 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %probe_number_of_ai_chans.exit.cleanup_crit_edge

probe_number_of_ai_chans.exit.cleanup_crit_edge:  ; preds = %probe_number_of_ai_chans.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %probe_number_of_ai_chans.exit
  %call23 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 8) #4
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.end26

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %23 = ptrtoint ptr %board_name to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %board_name, align 4
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %24 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %subdevices, align 4
  %type28 = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %type28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type28, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 4
  %27 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1114112, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %n_chans.0.lcssa.i, ptr %n_chan, align 4
  %adbits = getelementptr %struct.dt2801_board, ptr @boardtypes, i32 %type.1, i32 4
  %29 = ptrtoint ptr %adbits to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %adbits, align 4
  %notmask = shl nsw i32 -1, %30
  %sub = xor i32 %notmask, -1
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 13
  %31 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub, ptr %maxdata, align 4
  %adrangetype = getelementptr %struct.dt2801_board, ptr @boardtypes, i32 %type.1, i32 5
  %32 = ptrtoint ptr %adrangetype to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %adrangetype, align 4
  %arrayidx30 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx30, align 4
  %36 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %33, label %sw.epilog.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %if.end26.ai_range_lkup.exit_crit_edge
  ]

if.end26.ai_range_lkup.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %ai_range_lkup.exit

sw.bb.i:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i135 = icmp eq i32 %35, 0
  %cond.i = select i1 %tobool.not.i135, ptr @range_dt2801_ai_pgl_bipolar, ptr @range_dt2801_ai_pgl_unipolar
  br label %ai_range_lkup.exit

sw.bb1.i:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool2.not.i = icmp eq i32 %35, 0
  %cond3.i = select i1 %tobool2.not.i, ptr @range_bipolar10, ptr @range_unipolar10
  br label %ai_range_lkup.exit

sw.epilog.i:                                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %ai_range_lkup.exit

ai_range_lkup.exit:                               ; preds = %sw.epilog.i, %sw.bb1.i, %sw.bb.i, %if.end26.ai_range_lkup.exit_crit_edge
  %retval.0.i136 = phi ptr [ @range_unknown, %sw.epilog.i ], [ %cond3.i, %sw.bb1.i ], [ %cond.i, %sw.bb.i ], [ @range_unipolar5, %if.end26.ai_range_lkup.exit_crit_edge ]
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 15
  %37 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i136, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %25, i32 0, i32 18
  %38 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @dt2801_ai_insn_read, ptr %insn_read, align 4
  %39 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %subdevices, align 4
  %arrayidx33 = getelementptr %struct.comedi_subdevice, ptr %40, i32 1
  %type34 = getelementptr %struct.comedi_subdevice, ptr %40, i32 1, i32 2
  %41 = ptrtoint ptr %type34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %type34, align 4
  %subdev_flags35 = getelementptr %struct.comedi_subdevice, ptr %40, i32 1, i32 4
  %42 = ptrtoint ptr %subdev_flags35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 131072, ptr %subdev_flags35, align 4
  %n_chan36 = getelementptr %struct.comedi_subdevice, ptr %40, i32 1, i32 3
  %43 = ptrtoint ptr %n_chan36 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %n_chan36, align 4
  %dabits = getelementptr %struct.dt2801_board, ptr @boardtypes, i32 %type.1, i32 6
  %44 = ptrtoint ptr %dabits to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dabits, align 4
  %notmask134 = shl nsw i32 -1, %45
  %sub38 = xor i32 %notmask134, -1
  %maxdata39 = getelementptr %struct.comedi_subdevice, ptr %40, i32 1, i32 13
  %46 = ptrtoint ptr %maxdata39 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub38, ptr %maxdata39, align 4
  %range_table_list = getelementptr %struct.comedi_subdevice, ptr %40, i32 1, i32 16
  %47 = ptrtoint ptr %range_table_list to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call23, ptr %range_table_list, align 4
  %arrayidx41 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 4
  %48 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %50 = icmp ugt i32 %49, 4
  br i1 %50, label %ai_range_lkup.exit.dac_range_lkup.exit_crit_edge, label %if.end.i

ai_range_lkup.exit.dac_range_lkup.exit_crit_edge: ; preds = %ai_range_lkup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %dac_range_lkup.exit

if.end.i:                                         ; preds = %ai_range_lkup.exit
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr [5 x ptr], ptr @dac_range_table, i32 0, i32 %49
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i, align 4
  br label %dac_range_lkup.exit

dac_range_lkup.exit:                              ; preds = %if.end.i, %ai_range_lkup.exit.dac_range_lkup.exit_crit_edge
  %retval.0.i137 = phi ptr [ %52, %if.end.i ], [ @range_unknown, %ai_range_lkup.exit.dac_range_lkup.exit_crit_edge ]
  %53 = ptrtoint ptr %call23 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %retval.0.i137, ptr %call23, align 4
  %arrayidx46 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 5
  %54 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %55)
  %56 = icmp ugt i32 %55, 4
  br i1 %56, label %dac_range_lkup.exit.dac_range_lkup.exit141_crit_edge, label %if.end.i139

dac_range_lkup.exit.dac_range_lkup.exit141_crit_edge: ; preds = %dac_range_lkup.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %dac_range_lkup.exit141

if.end.i139:                                      ; preds = %dac_range_lkup.exit
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i138 = getelementptr [5 x ptr], ptr @dac_range_table, i32 0, i32 %55
  %57 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i138, align 4
  br label %dac_range_lkup.exit141

dac_range_lkup.exit141:                           ; preds = %if.end.i139, %dac_range_lkup.exit.dac_range_lkup.exit141_crit_edge
  %retval.0.i140 = phi ptr [ %58, %if.end.i139 ], [ @range_unknown, %dac_range_lkup.exit.dac_range_lkup.exit141_crit_edge ]
  %arrayidx49 = getelementptr [2 x ptr], ptr %call23, i32 0, i32 1
  %59 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %retval.0.i140, ptr %arrayidx49, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %40, i32 1, i32 19
  %60 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @dt2801_ao_insn_write, ptr %insn_write, align 4
  %call50 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx33) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %dac_range_lkup.exit141.cleanup_crit_edge

dac_range_lkup.exit141.cleanup_crit_edge:         ; preds = %dac_range_lkup.exit141
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end53:                                         ; preds = %dac_range_lkup.exit141
  call void @__sanitizer_cov_trace_pc() #6
  %61 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %subdevices, align 4
  %type56 = getelementptr %struct.comedi_subdevice, ptr %62, i32 2, i32 2
  %63 = ptrtoint ptr %type56 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 5, ptr %type56, align 4
  %subdev_flags57 = getelementptr %struct.comedi_subdevice, ptr %62, i32 2, i32 4
  %64 = ptrtoint ptr %subdev_flags57 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 196608, ptr %subdev_flags57, align 4
  %n_chan58 = getelementptr %struct.comedi_subdevice, ptr %62, i32 2, i32 3
  %65 = ptrtoint ptr %n_chan58 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 8, ptr %n_chan58, align 4
  %maxdata59 = getelementptr %struct.comedi_subdevice, ptr %62, i32 2, i32 13
  %66 = ptrtoint ptr %maxdata59 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %maxdata59, align 4
  %range_table60 = getelementptr %struct.comedi_subdevice, ptr %62, i32 2, i32 15
  %67 = ptrtoint ptr %range_table60 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @range_unipolar5, ptr %range_table60, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %62, i32 2, i32 20
  %68 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @dt2801_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %62, i32 2, i32 21
  %69 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @dt2801_dio_insn_config, ptr %insn_config, align 4
  %70 = load ptr, ptr %subdevices, align 4
  %type63 = getelementptr %struct.comedi_subdevice, ptr %70, i32 3, i32 2
  %71 = ptrtoint ptr %type63 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 5, ptr %type63, align 4
  %subdev_flags64 = getelementptr %struct.comedi_subdevice, ptr %70, i32 3, i32 4
  %72 = ptrtoint ptr %subdev_flags64 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 196608, ptr %subdev_flags64, align 4
  %n_chan65 = getelementptr %struct.comedi_subdevice, ptr %70, i32 3, i32 3
  %73 = ptrtoint ptr %n_chan65 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 8, ptr %n_chan65, align 4
  %maxdata66 = getelementptr %struct.comedi_subdevice, ptr %70, i32 3, i32 13
  %74 = ptrtoint ptr %maxdata66 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 1, ptr %maxdata66, align 4
  %range_table67 = getelementptr %struct.comedi_subdevice, ptr %70, i32 3, i32 15
  %75 = ptrtoint ptr %range_table67 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @range_unipolar5, ptr %range_table67, align 4
  %insn_bits68 = getelementptr %struct.comedi_subdevice, ptr %70, i32 3, i32 20
  %76 = ptrtoint ptr %insn_bits68 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @dt2801_dio_insn_bits, ptr %insn_bits68, align 4
  %insn_config69 = getelementptr %struct.comedi_subdevice, ptr %70, i32 3, i32 21
  %77 = ptrtoint ptr %insn_config69 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @dt2801_dio_insn_config, ptr %insn_config69, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %dac_range_lkup.exit141.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %probe_number_of_ai_chans.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end22.cleanup_crit_edge ], [ %call50, %dac_range_lkup.exit141.cleanup_crit_edge ], [ %call19, %probe_number_of_ai_chans.exit.cleanup_crit_edge ], [ 0, %if.end53 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dt2801_reset(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %and.i = and i32 %1, 1048575
  %add.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %and.i86 = and i32 %5, 1048575
  %add.i87 = or i32 %and.i86, -18874368
  %6 = inttoptr i32 %add.i87 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %and.i88 = and i32 %9, 1048575
  %add.i89 = or i32 %and.i88, -18874368
  %10 = inttoptr i32 %add.i89 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %and.i90 = and i32 %13, 1048575
  %add.i91 = or i32 %and.i90, -18874368
  %14 = inttoptr i32 %add.i91 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add11 = add i32 %17, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %and.i92 = and i32 %add11, 1048575
  %add.i93 = or i32 %and.i92, -18874368
  %18 = inttoptr i32 %add.i93 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 15) #4, !srcloc !79
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 10000, %entry ], [ %dec, %do.cond.do.body_crit_edge ]
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase, align 4
  %add13 = add i32 %20, 1
  %and.i94 = and i32 %add13, 1048575
  %add.i95 = or i32 %and.i94, -18874368
  %21 = inttoptr i32 %add.i95 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv = zext i8 %22 to i32
  %and = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.cond, label %do.end

do.cond:                                          ; preds = %do.body
  %dec = add nsw i32 %timeout.0, -1
  %tobool15.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool15.not, label %do.cond.if.end28_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.cond.if.end28_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %tobool16.not = icmp eq i32 %timeout.0, 0
  br i1 %tobool16.not, label %do.body18, label %do.end.if.end28_crit_edge

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

do.body18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dt2801_reset.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dt2801_reset, %if.end28)) #4
          to label %if.then24 [label %if.end28], !srcloc !74

if.then24:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #6
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %23 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dt2801_reset.__UNIQUE_ID_ddebug231, ptr noundef %24, ptr noundef nonnull @.str.5, i32 noundef %conv) #4
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %do.body18, %do.end.if.end28_crit_edge, %do.cond.if.end28_crit_edge
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase, align 4
  %add30 = add i32 %26, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %and.i96 = and i32 %add30, 1048575
  %add.i97 = or i32 %and.i96, -18874368
  %27 = inttoptr i32 %add.i97 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 0) #4, !srcloc !79
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #4
  br label %do.body31

do.body31:                                        ; preds = %do.cond40.do.body31_crit_edge, %if.end28
  %timeout.2 = phi i32 [ 10000, %if.end28 ], [ %dec41, %do.cond40.do.body31_crit_edge ]
  %28 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase, align 4
  %add33 = add i32 %29, 1
  %and.i98 = and i32 %add33, 1048575
  %add.i99 = or i32 %and.i98, -18874368
  %30 = inttoptr i32 %add.i99 to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv35 = zext i8 %31 to i32
  %and36 = and i32 %conv35, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.cond40, label %do.end43

do.cond40:                                        ; preds = %do.body31
  %dec41 = add nsw i32 %timeout.2, -1
  %tobool42.not = icmp eq i32 %timeout.2, 0
  br i1 %tobool42.not, label %do.cond40.do.body.i_crit_edge, label %do.cond40.do.body31_crit_edge

do.cond40.do.body31_crit_edge:                    ; preds = %do.cond40
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body31

do.cond40.do.body.i_crit_edge:                    ; preds = %do.cond40
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.end43:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.2)
  %tobool44.not = icmp eq i32 %timeout.2, 0
  br i1 %tobool44.not, label %do.body46, label %do.end43.do.body.i_crit_edge

do.end43.do.body.i_crit_edge:                     ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.body46:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dt2801_reset.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dt2801_reset, %do.body.i)) #4
          to label %if.then60 [label %do.body.i], !srcloc !74

if.then60:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #6
  %class_dev61 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %32 = ptrtoint ptr %class_dev61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %class_dev61, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dt2801_reset.__UNIQUE_ID_ddebug232, ptr noundef %33, ptr noundef nonnull @.str.6, i32 noundef %conv35) #4
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then60, %do.body46, %do.end43.do.body.i_crit_edge, %do.cond40.do.body.i_crit_edge
  %timeout.0.i = phi i32 [ %dec.i, %do.cond.i.do.body.i_crit_edge ], [ 1000, %do.body46 ], [ 1000, %if.then60 ], [ 1000, %do.end43.do.body.i_crit_edge ], [ 1000, %do.cond40.do.body.i_crit_edge ]
  %34 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iobase, align 4
  %add.i100 = add i32 %35, 1
  %and.i.i = and i32 %add.i100, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %36 = inttoptr i32 %add.i.i to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv.i = zext i8 %37 to i32
  %and.i101 = and i32 %conv.i, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i101)
  %tobool.not.i = icmp eq i32 %and.i101, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.dt2801_readdata.exit_crit_edge

do.body.i.dt2801_readdata.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_readdata.exit

if.end.i:                                         ; preds = %do.body.i
  %and1.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %do.cond.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iobase, align 4
  %and.i14.i = and i32 %39, 1048575
  %add.i15.i = or i32 %and.i14.i, -18874368
  %40 = inttoptr i32 %add.i15.i to ptr
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv7.i = zext i8 %41 to i32
  br label %dt2801_readdata.exit

do.cond.i:                                        ; preds = %if.end.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %do.cond.i.dt2801_readdata.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.cond.i.dt2801_readdata.exit_crit_edge:         ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_readdata.exit

dt2801_readdata.exit:                             ; preds = %do.cond.i.dt2801_readdata.exit_crit_edge, %if.then3.i, %do.body.i.dt2801_readdata.exit_crit_edge
  %board_code.0 = phi i32 [ %conv7.i, %if.then3.i ], [ 0, %do.cond.i.dt2801_readdata.exit_crit_edge ], [ 0, %do.body.i.dt2801_readdata.exit_crit_edge ]
  ret i32 %board_code.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2801_ai_insn_read(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  %d = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #4
  %0 = ptrtoint ptr %d to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %d, align 4, !annotation !75
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %1 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp41.not = icmp eq i32 %2, 0
  br i1 %cmp41.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  tail call fastcc void @dt2801_writecmd(ptr noundef %dev, i32 noundef 12)
  %3 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %4, 16
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %for.body
  %timeout.0.i = phi i32 [ 1000, %for.body ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %6, 1
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %7 = inttoptr i32 %add.i.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv.i = zext i8 %8 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.dt2801_writedata.exit_crit_edge

do.body.i.dt2801_writedata.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_writedata.exit

if.end.i:                                         ; preds = %do.body.i
  %and1.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %do.cond.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv5.i = trunc i32 %shr to i8
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %and.i14.i = and i32 %10, 1048575
  %add.i15.i = or i32 %and.i14.i, -18874368
  %11 = inttoptr i32 %add.i15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv5.i) #4, !srcloc !79
  br label %dt2801_writedata.exit

do.cond.i:                                        ; preds = %if.end.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %do.cond.i.dt2801_writedata.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.cond.i.dt2801_writedata.exit_crit_edge:        ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_writedata.exit

dt2801_writedata.exit:                            ; preds = %do.cond.i.dt2801_writedata.exit_crit_edge, %if.then3.i, %do.body.i.dt2801_writedata.exit_crit_edge
  %12 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chanspec, align 4
  br label %do.body.i27

do.body.i27:                                      ; preds = %do.cond.i37.do.body.i27_crit_edge, %dt2801_writedata.exit
  %timeout.0.i20 = phi i32 [ 1000, %dt2801_writedata.exit ], [ %dec.i35, %do.cond.i37.do.body.i27_crit_edge ]
  %14 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase.i, align 4
  %add.i21 = add i32 %15, 1
  %and.i.i22 = and i32 %add.i21, 1048575
  %add.i.i23 = or i32 %and.i.i22, -18874368
  %16 = inttoptr i32 %add.i.i23 to ptr
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %16) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv.i24 = zext i8 %17 to i32
  %and.i25 = and i32 %conv.i24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not.i26 = icmp eq i32 %and.i25, 0
  br i1 %tobool.not.i26, label %if.end.i30, label %do.body.i27.dt2801_writedata.exit39_crit_edge

do.body.i27.dt2801_writedata.exit39_crit_edge:    ; preds = %do.body.i27
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_writedata.exit39

if.end.i30:                                       ; preds = %do.body.i27
  %and1.i28 = and i32 %conv.i24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i28)
  %tobool2.not.i29 = icmp eq i32 %and1.i28, 0
  br i1 %tobool2.not.i29, label %if.then3.i34, label %do.cond.i37

if.then3.i34:                                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #6
  %conv5.i31 = trunc i32 %13 to i8
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %and.i14.i32 = and i32 %19, 1048575
  %add.i15.i33 = or i32 %and.i14.i32, -18874368
  %20 = inttoptr i32 %add.i15.i33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv5.i31) #4, !srcloc !79
  br label %dt2801_writedata.exit39

do.cond.i37:                                      ; preds = %if.end.i30
  %dec.i35 = add nsw i32 %timeout.0.i20, -1
  %cmp.not.i36 = icmp eq i32 %dec.i35, 0
  br i1 %cmp.not.i36, label %do.cond.i37.dt2801_writedata.exit39_crit_edge, label %do.cond.i37.do.body.i27_crit_edge

do.cond.i37.do.body.i27_crit_edge:                ; preds = %do.cond.i37
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i27

do.cond.i37.dt2801_writedata.exit39_crit_edge:    ; preds = %do.cond.i37
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_writedata.exit39

dt2801_writedata.exit39:                          ; preds = %do.cond.i37.dt2801_writedata.exit39_crit_edge, %if.then3.i34, %do.body.i27.dt2801_writedata.exit39_crit_edge
  %call4 = call fastcc i32 @dt2801_readdata2(ptr noundef %dev, ptr noundef nonnull %d)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end, label %if.then

if.then:                                          ; preds = %dt2801_writedata.exit39
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call fastcc i32 @dt2801_error(ptr noundef %dev, i32 noundef %call4)
  br label %cleanup

if.end:                                           ; preds = %dt2801_writedata.exit39
  %21 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %d, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 %i.042
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.042, 1
  %24 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ %inc, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2801_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  tail call fastcc void @dt2801_writecmd(ptr noundef %dev, i32 noundef 8)
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 1000, %entry ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %3, 1
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %4 = inttoptr i32 %add.i.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv.i = zext i8 %5 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.dt2801_writedata.exit_crit_edge

do.body.i.dt2801_writedata.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_writedata.exit

if.end.i:                                         ; preds = %do.body.i
  %and1.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %do.cond.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv5.i = trunc i32 %1 to i8
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %and.i14.i = and i32 %7, 1048575
  %add.i15.i = or i32 %and.i14.i, -18874368
  %8 = inttoptr i32 %add.i15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv5.i) #4, !srcloc !79
  br label %dt2801_writedata.exit

do.cond.i:                                        ; preds = %if.end.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %do.cond.i.dt2801_writedata.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.cond.i.dt2801_writedata.exit_crit_edge:        ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_writedata.exit

dt2801_writedata.exit:                            ; preds = %do.cond.i.dt2801_writedata.exit_crit_edge, %if.then3.i, %do.body.i.dt2801_writedata.exit_crit_edge
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %dt2801_writedata.exit
  %timeout.0.i.i = phi i32 [ 1000, %dt2801_writedata.exit ], [ %dec.i.i, %do.cond.i.i.do.body.i.i_crit_edge ]
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add.i.i8 = add i32 %12, 1
  %and.i.i.i = and i32 %add.i.i8, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %13 = inttoptr i32 %add.i.i.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv.i.i = zext i8 %14 to i32
  %and.i.i9 = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i9)
  %tobool.not.i.i = icmp eq i32 %and.i.i9, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.body.i.i.if.end.i10_crit_edge

do.body.i.i.if.end.i10_crit_edge:                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i10

if.end.i.i:                                       ; preds = %do.body.i.i
  %and1.i.i = and i32 %conv.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %do.cond.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv5.i.i = trunc i32 %10 to i8
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %and.i14.i.i = and i32 %16, 1048575
  %add.i15.i.i = or i32 %and.i14.i.i, -18874368
  %17 = inttoptr i32 %add.i15.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv5.i.i) #4, !srcloc !79
  br label %if.end.i10

do.cond.i.i:                                      ; preds = %if.end.i.i
  %dec.i.i = add nsw i32 %timeout.0.i.i, -1
  %cmp.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i, label %do.cond.i.i.dt2801_writedata2.exit_crit_edge, label %do.cond.i.i.do.body.i.i_crit_edge

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

do.cond.i.i.dt2801_writedata2.exit_crit_edge:     ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_writedata2.exit

if.end.i10:                                       ; preds = %if.then3.i.i, %do.body.i.i.if.end.i10_crit_edge
  %shr.i = lshr i32 %10, 8
  br label %do.body.i9.i

do.body.i9.i:                                     ; preds = %do.cond.i19.i.do.body.i9.i_crit_edge, %if.end.i10
  %timeout.0.i2.i = phi i32 [ 1000, %if.end.i10 ], [ %dec.i17.i, %do.cond.i19.i.do.body.i9.i_crit_edge ]
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i, align 4
  %add.i3.i = add i32 %19, 1
  %and.i.i4.i = and i32 %add.i3.i, 1048575
  %add.i.i5.i = or i32 %and.i.i4.i, -18874368
  %20 = inttoptr i32 %add.i.i5.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv.i6.i = zext i8 %21 to i32
  %and.i7.i = and i32 %conv.i6.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i)
  %tobool.not.i8.i = icmp eq i32 %and.i7.i, 0
  br i1 %tobool.not.i8.i, label %if.end.i12.i, label %do.body.i9.i.dt2801_writedata2.exit_crit_edge

do.body.i9.i.dt2801_writedata2.exit_crit_edge:    ; preds = %do.body.i9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_writedata2.exit

if.end.i12.i:                                     ; preds = %do.body.i9.i
  %and1.i10.i = and i32 %conv.i6.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i10.i)
  %tobool2.not.i11.i = icmp eq i32 %and1.i10.i, 0
  br i1 %tobool2.not.i11.i, label %if.then3.i16.i, label %do.cond.i19.i

if.then3.i16.i:                                   ; preds = %if.end.i12.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv5.i13.i = trunc i32 %shr.i to i8
  %22 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %and.i14.i14.i = and i32 %23, 1048575
  %add.i15.i15.i = or i32 %and.i14.i14.i, -18874368
  %24 = inttoptr i32 %add.i15.i15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv5.i13.i) #4, !srcloc !79
  br label %dt2801_writedata2.exit

do.cond.i19.i:                                    ; preds = %if.end.i12.i
  %dec.i17.i = add nsw i32 %timeout.0.i2.i, -1
  %cmp.not.i18.i = icmp eq i32 %dec.i17.i, 0
  br i1 %cmp.not.i18.i, label %do.cond.i19.i.dt2801_writedata2.exit_crit_edge, label %do.cond.i19.i.do.body.i9.i_crit_edge

do.cond.i19.i.do.body.i9.i_crit_edge:             ; preds = %do.cond.i19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i9.i

do.cond.i19.i.dt2801_writedata2.exit_crit_edge:   ; preds = %do.cond.i19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_writedata2.exit

dt2801_writedata2.exit:                           ; preds = %do.cond.i19.i.dt2801_writedata2.exit_crit_edge, %if.then3.i16.i, %do.body.i9.i.dt2801_writedata2.exit_crit_edge, %do.cond.i.i.dt2801_writedata2.exit_crit_edge
  %and = and i32 %1, 65535
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data, align 4
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %27 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %readback, align 4
  %arrayidx3 = getelementptr i32, ptr %28, i32 %and
  %29 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %arrayidx3, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2801_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %0 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subdevices, align 4
  %arrayidx = getelementptr %struct.comedi_subdevice, ptr %1, i32 3
  %cmp = icmp eq ptr %arrayidx, %s
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @dt2801_writecmd(ptr noundef %dev, i32 noundef 7)
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then
  %timeout.0.i = phi i32 [ 1000, %if.then ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %3, 1
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %4 = inttoptr i32 %add.i.i to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv.i = zext i8 %5 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.dt2801_writedata.exit_crit_edge

do.body.i.dt2801_writedata.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_writedata.exit

if.end.i:                                         ; preds = %do.body.i
  %and1.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %do.cond.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv5.i = zext i1 %cmp to i8
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %and.i14.i = and i32 %7, 1048575
  %add.i15.i = or i32 %and.i14.i, -18874368
  %8 = inttoptr i32 %add.i15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv5.i) #4, !srcloc !79
  br label %dt2801_writedata.exit

do.cond.i:                                        ; preds = %if.end.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %do.cond.i.dt2801_writedata.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.cond.i.dt2801_writedata.exit_crit_edge:        ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_writedata.exit

dt2801_writedata.exit:                            ; preds = %do.cond.i.dt2801_writedata.exit_crit_edge, %if.then3.i, %do.body.i.dt2801_writedata.exit_crit_edge
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  br label %do.body.i24

do.body.i24:                                      ; preds = %do.cond.i34.do.body.i24_crit_edge, %dt2801_writedata.exit
  %timeout.0.i17 = phi i32 [ 1000, %dt2801_writedata.exit ], [ %dec.i32, %do.cond.i34.do.body.i24_crit_edge ]
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add.i18 = add i32 %12, 1
  %and.i.i19 = and i32 %add.i18, 1048575
  %add.i.i20 = or i32 %and.i.i19, -18874368
  %13 = inttoptr i32 %add.i.i20 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv.i21 = zext i8 %14 to i32
  %and.i22 = and i32 %conv.i21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i22)
  %tobool.not.i23 = icmp eq i32 %and.i22, 0
  br i1 %tobool.not.i23, label %if.end.i27, label %do.body.i24.if.end_crit_edge

do.body.i24.if.end_crit_edge:                     ; preds = %do.body.i24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i27:                                       ; preds = %do.body.i24
  %and1.i25 = and i32 %conv.i21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i25)
  %tobool2.not.i26 = icmp eq i32 %and1.i25, 0
  br i1 %tobool2.not.i26, label %if.then3.i31, label %do.cond.i34

if.then3.i31:                                     ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #6
  %conv5.i28 = trunc i32 %10 to i8
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %and.i14.i29 = and i32 %16, 1048575
  %add.i15.i30 = or i32 %and.i14.i29, -18874368
  %17 = inttoptr i32 %add.i15.i30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv5.i28) #4, !srcloc !79
  br label %if.end

do.cond.i34:                                      ; preds = %if.end.i27
  %dec.i32 = add nsw i32 %timeout.0.i17, -1
  %cmp.not.i33 = icmp eq i32 %dec.i32, 0
  br i1 %cmp.not.i33, label %do.cond.i34.if.end_crit_edge, label %do.cond.i34.do.body.i24_crit_edge

do.cond.i34.do.body.i24_crit_edge:                ; preds = %do.cond.i34
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i24

do.cond.i34.if.end_crit_edge:                     ; preds = %do.cond.i34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %do.cond.i34.if.end_crit_edge, %if.then3.i31, %do.body.i24.if.end_crit_edge, %entry.if.end_crit_edge
  tail call fastcc void @dt2801_writecmd(ptr noundef %dev, i32 noundef 6)
  %iobase.i37 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %do.body.i45

do.body.i45:                                      ; preds = %do.cond.i55.do.body.i45_crit_edge, %if.end
  %timeout.0.i38 = phi i32 [ 1000, %if.end ], [ %dec.i53, %do.cond.i55.do.body.i45_crit_edge ]
  %18 = ptrtoint ptr %iobase.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i37, align 4
  %add.i39 = add i32 %19, 1
  %and.i.i40 = and i32 %add.i39, 1048575
  %add.i.i41 = or i32 %and.i.i40, -18874368
  %20 = inttoptr i32 %add.i.i41 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv.i42 = zext i8 %21 to i32
  %and.i43 = and i32 %conv.i42, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43)
  %tobool.not.i44 = icmp eq i32 %and.i43, 0
  br i1 %tobool.not.i44, label %if.end.i48, label %do.body.i45.do.body.i66.preheader_crit_edge

do.body.i45.do.body.i66.preheader_crit_edge:      ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i66.preheader

if.end.i48:                                       ; preds = %do.body.i45
  %and1.i46 = and i32 %conv.i42, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i46)
  %tobool2.not.i47 = icmp eq i32 %and1.i46, 0
  br i1 %tobool2.not.i47, label %if.then3.i52, label %do.cond.i55

if.then3.i52:                                     ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #6
  %conv5.i49 = zext i1 %cmp to i8
  %22 = ptrtoint ptr %iobase.i37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i37, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %and.i14.i50 = and i32 %23, 1048575
  %add.i15.i51 = or i32 %and.i14.i50, -18874368
  %24 = inttoptr i32 %add.i15.i51 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv5.i49) #4, !srcloc !79
  br label %do.body.i66.preheader

do.cond.i55:                                      ; preds = %if.end.i48
  %dec.i53 = add nsw i32 %timeout.0.i38, -1
  %cmp.not.i54 = icmp eq i32 %dec.i53, 0
  br i1 %cmp.not.i54, label %do.cond.i55.do.body.i66.preheader_crit_edge, label %do.cond.i55.do.body.i45_crit_edge

do.cond.i55.do.body.i45_crit_edge:                ; preds = %do.cond.i55
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i45

do.cond.i55.do.body.i66.preheader_crit_edge:      ; preds = %do.cond.i55
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i66.preheader

do.body.i66.preheader:                            ; preds = %do.cond.i55.do.body.i66.preheader_crit_edge, %if.then3.i52, %do.body.i45.do.body.i66.preheader_crit_edge
  br label %do.body.i66

do.body.i66:                                      ; preds = %do.cond.i75.do.body.i66_crit_edge, %do.body.i66.preheader
  %timeout.0.i59 = phi i32 [ %dec.i73, %do.cond.i75.do.body.i66_crit_edge ], [ 1000, %do.body.i66.preheader ]
  %25 = ptrtoint ptr %iobase.i37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase.i37, align 4
  %add.i60 = add i32 %26, 1
  %and.i.i61 = and i32 %add.i60, 1048575
  %add.i.i62 = or i32 %and.i.i61, -18874368
  %27 = inttoptr i32 %add.i.i62 to ptr
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %27) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv.i63 = zext i8 %28 to i32
  %and.i64 = and i32 %conv.i63, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64)
  %tobool.not.i65 = icmp eq i32 %and.i64, 0
  br i1 %tobool.not.i65, label %if.end.i69, label %do.body.i66.dt2801_readdata.exit_crit_edge

do.body.i66.dt2801_readdata.exit_crit_edge:       ; preds = %do.body.i66
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_readdata.exit

if.end.i69:                                       ; preds = %do.body.i66
  %and1.i67 = and i32 %conv.i63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i67)
  %tobool2.not.i68 = icmp eq i32 %and1.i67, 0
  br i1 %tobool2.not.i68, label %do.cond.i75, label %if.then3.i72

if.then3.i72:                                     ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %iobase.i37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase.i37, align 4
  %and.i14.i70 = and i32 %30, 1048575
  %add.i15.i71 = or i32 %and.i14.i70, -18874368
  %31 = inttoptr i32 %add.i15.i71 to ptr
  %32 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %31) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv7.i = zext i8 %32 to i32
  br label %dt2801_readdata.exit

do.cond.i75:                                      ; preds = %if.end.i69
  %dec.i73 = add nsw i32 %timeout.0.i59, -1
  %cmp.not.i74 = icmp eq i32 %dec.i73, 0
  br i1 %cmp.not.i74, label %do.cond.i75.dt2801_readdata.exit_crit_edge, label %do.cond.i75.do.body.i66_crit_edge

do.cond.i75.do.body.i66_crit_edge:                ; preds = %do.cond.i75
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i66

do.cond.i75.dt2801_readdata.exit_crit_edge:       ; preds = %do.cond.i75
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_readdata.exit

dt2801_readdata.exit:                             ; preds = %do.cond.i75.dt2801_readdata.exit_crit_edge, %if.then3.i72, %do.body.i66.dt2801_readdata.exit_crit_edge
  %val.0 = phi i32 [ %conv7.i, %if.then3.i72 ], [ 0, %do.cond.i75.dt2801_readdata.exit_crit_edge ], [ 0, %do.body.i66.dt2801_readdata.exit_crit_edge ]
  %arrayidx5 = getelementptr i32, ptr %data, i32 1
  %33 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %val.0, ptr %arrayidx5, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %34 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n, align 4
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt2801_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef 255) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %0 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %io_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  %cond = select i1 %tobool1.not, i32 4, i32 5
  tail call fastcc void @dt2801_writecmd(ptr noundef %dev, i32 noundef %cond)
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subdevices, align 4
  %arrayidx = getelementptr %struct.comedi_subdevice, ptr %3, i32 3
  %cmp = icmp eq ptr %arrayidx, %s
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end
  %timeout.0.i = phi i32 [ 1000, %if.end ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %5, 1
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add.i.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv.i = zext i8 %7 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.dt2801_writedata.exit_crit_edge

do.body.i.dt2801_writedata.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_writedata.exit

if.end.i:                                         ; preds = %do.body.i
  %and1.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %do.cond.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv5.i = zext i1 %cmp to i8
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %and.i14.i = and i32 %9, 1048575
  %add.i15.i = or i32 %and.i14.i, -18874368
  %10 = inttoptr i32 %add.i15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv5.i) #4, !srcloc !79
  br label %dt2801_writedata.exit

do.cond.i:                                        ; preds = %if.end.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %do.cond.i.dt2801_writedata.exit_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.cond.i.dt2801_writedata.exit_crit_edge:        ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_writedata.exit

dt2801_writedata.exit:                            ; preds = %do.cond.i.dt2801_writedata.exit_crit_edge, %if.then3.i, %do.body.i.dt2801_writedata.exit_crit_edge
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %11 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %dt2801_writedata.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %dt2801_writedata.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dt2801_writecmd(ptr nocapture noundef readonly %dev, i32 noundef %command) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %1, 1
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add.i.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %entry.do.body.i_crit_edge, label %entry.dt2801_wait_for_ready.exit_crit_edge

entry.dt2801_wait_for_ready.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_wait_for_ready.exit

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %timeout.0.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ 1000, %entry.do.body.i_crit_edge ]
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase.i, align 4
  %add2.i = add i32 %6, 1
  %and.i2.i = and i32 %add2.i, 1048575
  %add.i3.i = or i32 %and.i2.i, -18874368
  %7 = inttoptr i32 %add.i3.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %9 = and i8 %8, -124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %10 = icmp eq i8 %9, 0
  %dec.i = add nsw i32 %timeout.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp ne i32 %dec.i, 0
  %or.cond1.i = select i1 %10, i1 %cmp.i, i1 false
  br i1 %or.cond1.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.dt2801_wait_for_ready.exit_crit_edge

do.body.i.dt2801_wait_for_ready.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dt2801_wait_for_ready.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

dt2801_wait_for_ready.exit:                       ; preds = %do.body.i.dt2801_wait_for_ready.exit_crit_edge, %entry.dt2801_wait_for_ready.exit_crit_edge
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add = add i32 %12, 1
  %and.i = and i32 %add, 1048575
  %add.i43 = or i32 %and.i, -18874368
  %13 = inttoptr i32 %add.i43 to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv = zext i8 %14 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %dt2801_wait_for_ready.exit.if.end8_crit_edge, label %do.body

dt2801_wait_for_ready.exit.if.end8_crit_edge:     ; preds = %dt2801_wait_for_ready.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

do.body:                                          ; preds = %dt2801_wait_for_ready.exit
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dt2801_writecmd.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dt2801_writecmd, %if.end8)) #4
          to label %if.then7 [label %if.end8], !srcloc !74

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %15 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dt2801_writecmd.__UNIQUE_ID_ddebug229, ptr noundef %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.14) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %do.body, %dt2801_wait_for_ready.exit.if.end8_crit_edge
  %and9 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body12, label %if.end8.if.end31_crit_edge

if.end8.if.end31_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

do.body12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dt2801_writecmd.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dt2801_writecmd, %if.end31)) #4
          to label %if.then26 [label %if.end31], !srcloc !74

if.then26:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  %class_dev27 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %17 = ptrtoint ptr %class_dev27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev27, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dt2801_writecmd.__UNIQUE_ID_ddebug230, ptr noundef %18, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) #4
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %do.body12, %if.end8.if.end31_crit_edge
  %conv32 = trunc i32 %command to i8
  %19 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase.i, align 4
  %add34 = add i32 %20, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  tail call void @arm_heavy_mb() #4
  %and.i44 = and i32 %add34, 1048575
  %add.i45 = or i32 %and.i44, -18874368
  %21 = inttoptr i32 %add.i45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv32) #4, !srcloc !79
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dt2801_readdata2(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %entry
  %timeout.0.i = phi i32 [ 1000, %entry ], [ %dec.i, %do.cond.i.do.body.i_crit_edge ]
  %0 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %1, 1
  %and.i.i = and i32 %add.i, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add.i.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv.i = zext i8 %3 to i32
  %and.i = and i32 %conv.i, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i.cleanup_crit_edge

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %do.body.i
  %and1.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %do.cond.i, label %if.end

do.cond.i:                                        ; preds = %if.end.i
  %dec.i = add nsw i32 %timeout.0.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %do.cond.i.cleanup_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.cond.i.cleanup_crit_edge:                      ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %and.i14.i = and i32 %5, 1048575
  %add.i15.i = or i32 %and.i14.i, -18874368
  %6 = inttoptr i32 %add.i15.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv7.i = zext i8 %7 to i32
  br label %do.body.i19

do.body.i19:                                      ; preds = %do.cond.i29.do.body.i19_crit_edge, %if.end
  %timeout.0.i12 = phi i32 [ 1000, %if.end ], [ %dec.i27, %do.cond.i29.do.body.i19_crit_edge ]
  %8 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase.i, align 4
  %add.i13 = add i32 %9, 1
  %and.i.i14 = and i32 %add.i13, 1048575
  %add.i.i15 = or i32 %and.i.i14, -18874368
  %10 = inttoptr i32 %add.i.i15 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv.i16 = zext i8 %11 to i32
  %and.i17 = and i32 %conv.i16, 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17)
  %tobool.not.i18 = icmp eq i32 %and.i17, 0
  br i1 %tobool.not.i18, label %if.end.i22, label %do.body.i19.cleanup_crit_edge

do.body.i19.cleanup_crit_edge:                    ; preds = %do.body.i19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i22:                                       ; preds = %do.body.i19
  %and1.i20 = and i32 %conv.i16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i20)
  %tobool2.not.i21 = icmp eq i32 %and1.i20, 0
  br i1 %tobool2.not.i21, label %do.cond.i29, label %if.end4

do.cond.i29:                                      ; preds = %if.end.i22
  %dec.i27 = add nsw i32 %timeout.0.i12, -1
  %cmp.not.i28 = icmp eq i32 %dec.i27, 0
  br i1 %cmp.not.i28, label %do.cond.i29.cleanup_crit_edge, label %do.cond.i29.do.body.i19_crit_edge

do.cond.i29.do.body.i19_crit_edge:                ; preds = %do.cond.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i19

do.cond.i29.cleanup_crit_edge:                    ; preds = %do.cond.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase.i, align 4
  %and.i14.i23 = and i32 %13, 1048575
  %add.i15.i24 = or i32 %and.i14.i23, -18874368
  %14 = inttoptr i32 %add.i15.i24 to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #4, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !77
  %conv7.i25 = zext i8 %15 to i32
  %shl = shl nuw nsw i32 %conv7.i25, 8
  %add = or i32 %shl, %conv7.i
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %do.cond.i29.cleanup_crit_edge, %do.body.i19.cleanup_crit_edge, %do.cond.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -62, %do.cond.i29.cleanup_crit_edge ], [ %conv.i16, %do.body.i19.cleanup_crit_edge ], [ -62, %do.cond.i.cleanup_crit_edge ], [ %conv.i, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dt2801_error(ptr nocapture noundef readonly %dev, i32 noundef %stat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat)
  %cmp = icmp slt i32 %stat, 0
  br i1 %cmp, label %if.then, label %do.body27

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62, i32 %stat)
  %cmp1 = icmp eq i32 %stat, -62
  br i1 %cmp1, label %do.body, label %do.body7

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dt2801_error.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dt2801_error, %return)) #4
          to label %if.then6 [label %return], !srcloc !74

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dt2801_error.__UNIQUE_ID_ddebug233, ptr noundef %1, ptr noundef nonnull @.str.20) #4
  br label %return

do.body7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dt2801_error.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dt2801_error, %return)) #4
          to label %if.then21 [label %return], !srcloc !74

if.then21:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #6
  %class_dev22 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %class_dev22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %class_dev22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dt2801_error.__UNIQUE_ID_ddebug234, ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %stat) #4
  br label %return

do.body27:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dt2801_error.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dt2801_error, %do.end44)) #4
          to label %if.then41 [label %do.end44], !srcloc !74

if.then41:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #6
  %class_dev42 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %4 = ptrtoint ptr %class_dev42 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %class_dev42, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dt2801_error.__UNIQUE_ID_ddebug235, ptr noundef %5, ptr noundef nonnull @.str.22, i32 noundef %stat) #4
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body27
  %call45 = tail call fastcc i32 @dt2801_reset(ptr noundef %dev)
  %call46 = tail call fastcc i32 @dt2801_reset(ptr noundef %dev)
  br label %return

return:                                           ; preds = %do.end44, %if.then21, %do.body7, %if.then6, %do.body
  %retval.0 = phi i32 [ -5, %do.end44 ], [ %stat, %if.then21 ], [ -62, %if.then6 ], [ -62, %do.body ], [ %stat, %do.body7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !49, !51, !53, !55, !56, !57, !59, !60, !62, !63}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__initcall__kmod_dt2801__237_641_dt2801_driver_init6, !1, !"__initcall__kmod_dt2801__237_641_dt2801_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/dt2801.c", i32 641, i32 1}
!2 = !{ptr @__exitcall_dt2801_driver_exit, !1, !"__exitcall_dt2801_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author238, !4, !"__UNIQUE_ID_author238", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/dt2801.c", i32 643, i32 1}
!5 = !{ptr @__UNIQUE_ID_description239, !6, !"__UNIQUE_ID_description239", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/dt2801.c", i32 644, i32 1}
!7 = !{ptr @__UNIQUE_ID_file240, !8, !"__UNIQUE_ID_file240", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/dt2801.c", i32 645, i32 1}
!9 = !{ptr @__UNIQUE_ID_license241, !8, !"__UNIQUE_ID_license241", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/dt2801.c", i32 636, i32 17}
!12 = !{ptr @dt2801_driver, !13, !"dt2801_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/dt2801.c", i32 635, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/dt2801.c", i32 559, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @dt2801_attach.__UNIQUE_ID_ddebug236, !15, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/comedi/drivers/dt2801.c", i32 355, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dt2801_reset.__UNIQUE_ID_ddebug231, !20, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/comedi/drivers/dt2801.c", i32 370, i32 3}
!25 = !{ptr @dt2801_reset.__UNIQUE_ID_ddebug232, !24, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/dt2801.c", i32 154, i32 11}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/dt2801.c", i32 162, i32 11}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/dt2801.c", i32 170, i32 11}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/dt2801.c", i32 178, i32 11}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/dt2801.c", i32 186, i32 11}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/dt2801.c", i32 194, i32 11}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/dt2801.c", i32 202, i32 11}
!40 = !{ptr @boardtypes, !41, !"boardtypes", i1 false, i1 false}
!41 = !{!"../drivers/comedi/drivers/dt2801.c", i32 144, i32 34}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/dt2801.c", i32 323, i32 3}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @dt2801_writecmd.__UNIQUE_ID_ddebug229, !43, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/comedi/drivers/dt2801.c", i32 327, i32 3}
!48 = !{ptr @dt2801_writecmd.__UNIQUE_ID_ddebug230, !47, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!49 = !{ptr @range_dt2801_ai_pgl_unipolar, !50, !"range_dt2801_ai_pgl_unipolar", i1 false, i1 false}
!50 = !{!"../drivers/comedi/drivers/dt2801.c", i32 121, i32 35}
!51 = !{ptr @range_dt2801_ai_pgl_bipolar, !52, !"range_dt2801_ai_pgl_bipolar", i1 false, i1 false}
!52 = !{!"../drivers/comedi/drivers/dt2801.c", i32 101, i32 35}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/comedi/drivers/dt2801.c", i32 433, i32 4}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dt2801_error.__UNIQUE_ID_ddebug233, !54, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/comedi/drivers/dt2801.c", i32 435, i32 4}
!59 = !{ptr @dt2801_error.__UNIQUE_ID_ddebug234, !58, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/comedi/drivers/dt2801.c", i32 438, i32 2}
!62 = !{ptr @dt2801_error.__UNIQUE_ID_ddebug235, !61, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!63 = !{ptr @dac_range_table, !64, !"dac_range_table", i1 false, i1 false}
!64 = !{!"../drivers/comedi/drivers/dt2801.c", i32 399, i32 36}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148965155, i64 2148965160, i64 2148965173, i64 2148965217, i64 2148965251, i64 2148965272}
!75 = !{!"auto-init"}
!76 = !{i64 6270794}
!77 = !{i64 2153804470}
!78 = !{i64 2153806455}
!79 = !{i64 6270399}
