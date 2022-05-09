; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/das800.c_pt.bc'
source_filename = "../drivers/comedi/drivers/das800.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.das800_board = type { ptr, i32, ptr, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_das800__238_738_driver_das800_init6 = internal global ptr @driver_das800_init, section ".initcall6.init", align 4
@driver_das800 = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @das800_attach, ptr @comedi_legacy_detach, ptr null, i32 7, ptr @das800_boards, i32 16 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_driver_das800_exit = internal global ptr @driver_das800_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [44 x i8] c"das800.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [43 x i8] c"das800.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [42 x i8] c"das800.file=drivers/comedi/drivers/das800\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [19 x i8] c"das800.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"das800\00", [25 x i8] zeroinitializer }, align 32
@das800_boards = internal constant { [7 x %struct.das800_board], [48 x i8] } { [7 x %struct.das800_board] [%struct.das800_board { ptr @.str.8, i32 25000, ptr @range_bipolar5, i32 12 }, %struct.das800_board { ptr @.str.9, i32 20000, ptr @range_bipolar5, i32 12 }, %struct.das800_board { ptr @.str.10, i32 25000, ptr @range_das801_ai, i32 12 }, %struct.das800_board { ptr @.str.11, i32 20000, ptr @range_cio_das801_ai, i32 12 }, %struct.das800_board { ptr @.str.12, i32 25000, ptr @range_das802_ai, i32 12 }, %struct.das800_board { ptr @.str.13, i32 20000, ptr @range_das802_ai, i32 12 }, %struct.das800_board { ptr @.str.14, i32 10000, ptr @range_das80216_ai, i32 16 }], [48 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@das800_probe.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"das800_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/comedi/drivers/das800.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Board model: 0x%x (unknown)\0A\00", [35 x i8] zeroinitializer }, align 32
@das800_probe.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -96, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Board model (probed): %s series\0A\00", [63 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@das800_ai_check_chanlist.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 69, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"das800_ai_check_chanlist\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"chanlist must be consecutive, counting upwards\0A\00", [48 x i8] zeroinitializer }, align 32
@das800_ai_check_chanlist.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 70, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"chanlist must all have the same gain\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"das-800\00", [24 x i8] zeroinitializer }, align 32
@range_bipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cio-das800\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"das-801\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cio-das801\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"das-802\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cio-das802\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cio-das802/16\00", [18 x i8] zeroinitializer }, align 32
@range_das801_ai = internal constant { { i32, [9 x %struct.comedi_krange] }, [48 x i8] } { { i32, [9 x %struct.comedi_krange] } { i32 9, [9 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 -10000, i32 10000, i32 0 }, %struct.comedi_krange { i32 0, i32 20000, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@range_cio_das801_ai = internal constant { { i32, [9 x %struct.comedi_krange] }, [48 x i8] } { { i32, [9 x %struct.comedi_krange] } { i32 9, [9 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 -5000, i32 5000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@range_das802_ai = internal constant { { i32, [9 x %struct.comedi_krange] }, [48 x i8] } { { i32, [9 x %struct.comedi_krange] } { i32 9, [9 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@range_das80216_ai = internal constant { { i32, [8 x %struct.comedi_krange] }, [60 x i8] } { { i32, [8 x %struct.comedi_krange] } { i32 8, [8 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"driver_das800\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 729, i32 29 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 730, i32 17 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"das800_boards\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 160, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 635, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 639, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 276, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 282, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 162, i32 12 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 168, i32 12 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 174, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 180, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 186, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 192, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 198, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"range_das801_ai\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 95, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c"range_cio_das801_ai\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 109, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"range_das802_ai\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 123, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant [18 x i8] c"range_das80216_ai\00", align 1
@___asan_gen_.80 = private constant [35 x i8] c"../drivers/comedi/drivers/das800.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 137, i32 35 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_driver_das800_exit, ptr @__initcall__kmod_das800__238_738_driver_das800_init6, ptr @driver_das800_exit, ptr @driver_das800, ptr @.str, ptr @das800_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @range_das801_ai, ptr @range_cio_das801_ai, ptr @range_das802_ai, ptr @range_das80216_ai], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_das800 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das800_boards to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_das801_ai to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_cio_das801_ai to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_das802_ai to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_das80216_ai to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @driver_das800_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @driver_das800) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @driver_das800_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @comedi_driver_unregister(ptr noundef nonnull @driver_das800) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das800_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 4) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 4
  %call3 = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %3, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call fastcc ptr @das800_probe(ptr noundef %dev)
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %board_ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7, ptr %board_ptr, align 4
  %5 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call7, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %board_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %board_name, align 4
  %8 = add i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %9 = icmp ult i32 %8, 6
  br i1 %9, label %if.then12, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then12:                                        ; preds = %if.end10
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @das800_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14 = icmp eq i32 %call.i, 0
  br i1 %cmp14, label %if.then15, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %irq16 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %10 = ptrtoint ptr %irq16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %1, ptr %irq16, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.then12.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add = add i32 %12, 4
  %call19 = tail call ptr @comedi_8254_init(i32 noundef %add, i32 noundef 1000, i32 noundef 1, i32 noundef 0) #5
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %13 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call19, ptr %pacer, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %call24 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end23
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %14 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %subdevices, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %16 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %read_subdev, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %15, i32 0, i32 2
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1114112, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %15, i32 0, i32 3
  %19 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %n_chan, align 4
  %resolution = getelementptr inbounds %struct.das800_board, ptr %call7, i32 0, i32 3
  %20 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resolution, align 4
  %notmask = shl nsw i32 -1, %21
  %sub = xor i32 %notmask, -1
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %15, i32 0, i32 13
  %22 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %maxdata, align 4
  %ai_range = getelementptr inbounds %struct.das800_board, ptr %call7, i32 0, i32 2
  %23 = ptrtoint ptr %ai_range to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ai_range, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %15, i32 0, i32 15
  %25 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %15, i32 0, i32 18
  %26 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @das800_ai_insn_read, ptr %insn_read, align 4
  %irq29 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %27 = ptrtoint ptr %irq29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool30.not = icmp eq i32 %28, 0
  br i1 %tobool30.not, label %if.end27.if.end33_crit_edge, label %if.then31

if.end27.if.end33_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1146880, ptr %subdev_flags, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %15, i32 0, i32 5
  %30 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %15, i32 0, i32 23
  %31 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @das800_ai_do_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %15, i32 0, i32 22
  %32 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @das800_ai_do_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %15, i32 0, i32 25
  %33 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @das800_cancel, ptr %cancel, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end27.if.end33_crit_edge
  %34 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %subdevices, align 4
  %type36 = getelementptr %struct.comedi_subdevice, ptr %35, i32 1, i32 2
  %36 = ptrtoint ptr %type36 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 3, ptr %type36, align 4
  %subdev_flags37 = getelementptr %struct.comedi_subdevice, ptr %35, i32 1, i32 4
  %37 = ptrtoint ptr %subdev_flags37 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 65536, ptr %subdev_flags37, align 4
  %n_chan38 = getelementptr %struct.comedi_subdevice, ptr %35, i32 1, i32 3
  %38 = ptrtoint ptr %n_chan38 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 3, ptr %n_chan38, align 4
  %maxdata39 = getelementptr %struct.comedi_subdevice, ptr %35, i32 1, i32 13
  %39 = ptrtoint ptr %maxdata39 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %maxdata39, align 4
  %range_table40 = getelementptr %struct.comedi_subdevice, ptr %35, i32 1, i32 15
  %40 = ptrtoint ptr %range_table40 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @range_unipolar5, ptr %range_table40, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %35, i32 1, i32 20
  %41 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @das800_di_insn_bits, ptr %insn_bits, align 4
  %42 = load ptr, ptr %subdevices, align 4
  %type43 = getelementptr %struct.comedi_subdevice, ptr %42, i32 2, i32 2
  %43 = ptrtoint ptr %type43 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4, ptr %type43, align 4
  %subdev_flags44 = getelementptr %struct.comedi_subdevice, ptr %42, i32 2, i32 4
  %44 = ptrtoint ptr %subdev_flags44 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 131072, ptr %subdev_flags44, align 4
  %n_chan45 = getelementptr %struct.comedi_subdevice, ptr %42, i32 2, i32 3
  %45 = ptrtoint ptr %n_chan45 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 4, ptr %n_chan45, align 4
  %maxdata46 = getelementptr %struct.comedi_subdevice, ptr %42, i32 2, i32 13
  %46 = ptrtoint ptr %maxdata46 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %maxdata46, align 4
  %range_table47 = getelementptr %struct.comedi_subdevice, ptr %42, i32 2, i32 15
  %47 = ptrtoint ptr %range_table47 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @range_unipolar5, ptr %range_table47, align 4
  %insn_bits48 = getelementptr %struct.comedi_subdevice, ptr %42, i32 2, i32 20
  %48 = ptrtoint ptr %insn_bits48 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @das800_do_insn_bits, ptr %insn_bits48, align 4
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase, align 4
  %add.i.i = add i32 %50, 3
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %51 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 -96) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase, align 4
  %add6.i.i = add i32 %53, 2
  %and7.i.i = and i32 %add6.i.i, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %54 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 0) #5, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #5
  %call52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #5
  %55 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %call, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %iobase, align 4
  %add.i = add i32 %58, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %59 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 -128) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %60 = trunc i32 %56 to i8
  %conv4.i = or i8 %60, 8
  %61 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %iobase, align 4
  %add6.i = add i32 %62, 2
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %63 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %conv4.i) #5, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call52) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -12, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ], [ -12, %if.end18.cleanup_crit_edge ], [ %call24, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @das800_probe(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, ptrtoint (ptr @das800_boards to i32)
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 4
  %cond = select i1 %tobool.not, i32 -22, i32 %sub.ptr.div
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %3, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 -32) #5, !srcloc !63
  %5 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase.i, align 4
  %add3.i = add i32 %6, 7
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %7 = inttoptr i32 %add5.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  %9 = and i8 %8, 3
  %and = zext i8 %9 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #5
  %10 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.body30 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb11
    i32 3, label %sw.bb19
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond)
  %switch = icmp ult i32 %cond, 2
  br i1 %switch, label %sw.bb.cleanup_crit_edge, label %sw.bb.do.body41_crit_edge

sw.bb.do.body41_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body41

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %11 = and i32 %cond, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %switch82 = icmp eq i32 %11, 2
  br i1 %switch82, label %sw.bb11.cleanup_crit_edge, label %sw.bb11.do.body41_crit_edge

sw.bb11.do.body41_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body41

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %cond.off83 = add nsw i32 %cond, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond.off83)
  %switch84 = icmp ult i32 %cond.off83, 3
  br i1 %switch84, label %sw.bb19.cleanup_crit_edge, label %sw.bb19.do.body41_crit_edge

sw.bb19.do.body41_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body41

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @das800_probe.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@das800_probe, %cleanup)) #5
          to label %if.then37 [label %cleanup], !srcloc !68

if.then37:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %12 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @das800_probe.__UNIQUE_ID_ddebug236, ptr noundef %13, ptr noundef nonnull @.str.3, i32 noundef %and) #5
  br label %cleanup

do.body41:                                        ; preds = %sw.bb19.do.body41_crit_edge, %sw.bb11.do.body41_crit_edge, %sw.bb.do.body41_crit_edge
  %index.0 = phi i32 [ 0, %sw.bb.do.body41_crit_edge ], [ 2, %sw.bb11.do.body41_crit_edge ], [ 4, %sw.bb19.do.body41_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @das800_probe.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@das800_probe, %do.end59)) #5
          to label %if.then55 [label %do.end59], !srcloc !68

if.then55:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev56 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %class_dev56 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev56, align 4
  %arrayidx = getelementptr [7 x %struct.das800_board], ptr @das800_boards, i32 0, i32 %index.0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @das800_probe.__UNIQUE_ID_ddebug237, ptr noundef %15, ptr noundef nonnull @.str.4, ptr noundef %17) #5
  br label %do.end59

do.end59:                                         ; preds = %if.then55, %do.body41
  %arrayidx60 = getelementptr [7 x %struct.das800_board], ptr @das800_boards, i32 0, i32 %index.0
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.then37, %do.body30, %sw.bb19.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx60, %do.end59 ], [ %1, %sw.bb.cleanup_crit_edge ], [ %1, %sw.bb11.cleanup_crit_edge ], [ %1, %sw.bb19.cleanup_crit_edge ], [ null, %if.then37 ], [ null, %do.body30 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das800_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %2 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_subdev, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #5
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %val, align 2, !annotation !69
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add = add i32 %6, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %7 = inttoptr i32 %add1 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %9 = and i8 %8, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %10 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %async7 = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %async7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %async7, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 11
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %add.i = add i32 %14, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %15 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 -128) #5, !srcloc !63
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add3.i = add i32 %17, 7
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %18 = inttoptr i32 %add5.i to ptr
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %18) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp18 = icmp sgt i8 %19, -1
  br i1 %cmp18, label %if.then20, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end6
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 13
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %12, i32 0, i32 17, i32 10
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %12, i32 0, i32 11
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %12, i32 0, i32 17, i32 11
  br label %for.body

if.then20:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call13) #5
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0154 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %and.i144 = and i32 %21, 1048575
  %add1.i145 = or i32 %and.i144, -18874368
  %22 = inttoptr i32 %add1.i145 to ptr
  %23 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #5, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %conv.i = zext i8 %23 to i32
  %24 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase, align 4
  %add5.i146 = add i32 %25, 1
  %and6.i = and i32 %add5.i146, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %26 = inttoptr i32 %add7.i to ptr
  %27 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %26) #5, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %conv11.i = zext i8 %27 to i32
  %shl.i = shl nuw nsw i32 %conv11.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %conv26 = trunc i32 %or.i to i16
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv26, ptr %val, align 2
  %29 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %maxdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %30)
  %cmp27 = icmp eq i32 %30, 4095
  br i1 %cmp27, label %if.end54, label %if.end54.thread

if.end54.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase, align 4
  %add42 = add i32 %32, 3
  %and43 = and i32 %add42, 1048575
  %add44 = or i32 %and43, -18874368
  %33 = inttoptr i32 %add44 to ptr
  %34 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #5, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  %35 = lshr i8 %34, 3
  %fifo_overflow.1149 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fifo_overflow.1149)
  %extract.t150 = icmp ne i8 %fifo_overflow.1149, 0
  br label %lor.lhs.false

if.end54:                                         ; preds = %for.body
  %and31 = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %36 = lshr i8 %23, 1
  %fifo_overflow.1 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fifo_overflow.1)
  %extract.t = icmp ne i8 %fifo_overflow.1, 0
  br i1 %tobool32.not, label %if.end54.lor.lhs.false_crit_edge, label %if.end54.for.end_crit_edge

if.end54.for.end_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end54.lor.lhs.false_crit_edge:                 ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end54.lor.lhs.false_crit_edge, %if.end54.thread
  %extract.t152 = phi i1 [ %extract.t150, %if.end54.thread ], [ %extract.t, %if.end54.lor.lhs.false_crit_edge ]
  %fifo_overflow.1151 = phi i8 [ %fifo_overflow.1149, %if.end54.thread ], [ %fifo_overflow.1, %if.end54.lor.lhs.false_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fifo_overflow.1151)
  %tobool57.not = icmp eq i8 %fifo_overflow.1151, 0
  br i1 %tobool57.not, label %if.end60, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end60:                                         ; preds = %lor.lhs.false
  %37 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %maxdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %38)
  %cmp62 = icmp eq i32 %38, 4095
  br i1 %cmp62, label %if.then64, label %if.end60.if.end67_crit_edge

if.end60.if.end67_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end67

if.then64:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %val, align 2
  %41 = lshr i16 %40, 4
  store i16 %41, ptr %val, align 2
  br label %if.end67

if.end67:                                         ; preds = %if.then64, %if.end60.if.end67_crit_edge
  %42 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %maxdata, align 4
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %val, align 2
  %46 = trunc i32 %43 to i16
  %conv71 = and i16 %45, %46
  store i16 %conv71, ptr %val, align 2
  %call72 = call i32 @comedi_buf_write_samples(ptr noundef %3, ptr noundef nonnull %val, i32 noundef 1) #5
  %47 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %48)
  %cmp73 = icmp eq i32 %48, 32
  br i1 %cmp73, label %land.lhs.true, label %if.end67.for.inc_crit_edge

if.end67.for.inc_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end67
  %49 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %scans_done, align 4
  %51 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp75.not = icmp ult i32 %50, %52
  br i1 %cmp75.not, label %land.lhs.true.for.inc_crit_edge, label %if.then77

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then77:                                        ; preds = %land.lhs.true
  %events = getelementptr inbounds %struct.comedi_async, ptr %12, i32 0, i32 16
  %53 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %events, align 4
  %or = or i32 %54, 2
  store i32 %or, ptr %events, align 4
  br i1 %extract.t152, label %if.then77.if.then80_crit_edge, label %if.then77.if.end85_crit_edge

if.then77.if.end85_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

if.then77.if.then80_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then80

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end67.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0154, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %if.end54.for.end_crit_edge
  %fifo_overflow.2.off0 = phi i1 [ %extract.t, %if.end54.for.end_crit_edge ], [ %extract.t152, %lor.lhs.false.for.end_crit_edge ], [ %extract.t152, %for.inc.for.end_crit_edge ]
  br i1 %fifo_overflow.2.off0, label %for.end.if.then80_crit_edge, label %for.end.if.end85_crit_edge

for.end.if.end85_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

for.end.if.then80_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then80

if.then80:                                        ; preds = %for.end.if.then80_crit_edge, %if.then77.if.then80_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call13) #5
  %events82 = getelementptr inbounds %struct.comedi_async, ptr %12, i32 0, i32 16
  %55 = ptrtoint ptr %events82 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %events82, align 4
  %or83 = or i32 %56, 16
  store i32 %or83, ptr %events82, align 4
  %call84 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %3) #5
  br label %cleanup

if.end85:                                         ; preds = %for.end.if.end85_crit_edge, %if.then77.if.end85_crit_edge
  %events86 = getelementptr inbounds %struct.comedi_async, ptr %12, i32 0, i32 16
  %57 = ptrtoint ptr %events86 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %events86, align 4
  %and87 = and i32 %58, 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool88.not = icmp eq i32 %and87, 0
  br i1 %tobool88.not, label %if.then89, label %if.else92

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %1, align 4
  %or90 = or i32 %60, 8
  call fastcc void @das800_ind_write(ptr noundef %d, i32 noundef %or90, i32 noundef 128)
  br label %if.end94

if.else92:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call13) #5
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  call void @arm_heavy_mb() #5
  %61 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %iobase, align 4
  %add.i.i = add i32 %62, 3
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %63 = inttoptr i32 %add1.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 -96) #5, !srcloc !63
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  call void @arm_heavy_mb() #5
  %64 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iobase, align 4
  %add6.i.i = add i32 %65, 2
  %and7.i.i = and i32 %add6.i.i, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %66 = inttoptr i32 %add8.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 0) #5, !srcloc !63
  br label %if.end94

if.end94:                                         ; preds = %if.else92, %if.then89
  %call2.i.sink = phi i32 [ %call2.i, %if.else92 ], [ %call13, %if.then89 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2.i.sink) #5
  %call95 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.then80, %if.then20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then20 ], [ 1, %if.then80 ], [ 1, %if.end94 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das800_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %3, 16
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %5, 3
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %6 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 -96) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i.i, align 4
  %add6.i.i = add i32 %8, 2
  %and7.i.i = and i32 %add6.i.i, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %9 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #5, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #5
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %or = or i32 %11, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase.i.i, align 4
  %add.i = add i32 %13, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %14 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 -128) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %conv4.i = trunc i32 %or to i8
  %15 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i.i, align 4
  %add6.i = add i32 %16, 2
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %17 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv4.i) #5, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call4) #5
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %18 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %maxdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %19)
  %cmp8 = icmp eq i32 %19, 4095
  %20 = and i32 %3, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  %add = add nuw nsw i32 %shr, 7
  %spec.select = select i1 %tobool.not, i32 0, i32 %add
  %range.0 = select i1 %cmp8, i32 %spec.select, i32 %shr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %21 = trunc i32 %range.0 to i8
  %conv14 = and i8 %21, 15
  %22 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i.i, align 4
  %add15 = add i32 %23, 3
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %24 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv14) #5, !srcloc !63
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 1073740) #5
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %26 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp1971.not = icmp eq i32 %27, 0
  br i1 %cmp1971.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %entry.for.body_crit_edge
  %i.072 = phi i32 [ %inc, %if.end26.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %28 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i.i, align 4
  %add22 = add i32 %29, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %and.i66 = and i32 %add22, 1048575
  %add.i67 = or i32 %and.i66, -18874368
  %30 = inttoptr i32 %add.i67 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 0) #5, !srcloc !63
  %call23 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @das800_ai_eoc, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %for.body
  %31 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase.i.i, align 4
  %and.i69 = and i32 %32, 1048575
  %add1.i70 = or i32 %and.i69, -18874368
  %33 = inttoptr i32 %add1.i70 to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %conv.i = zext i8 %34 to i32
  %35 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase.i.i, align 4
  %add5.i = add i32 %36, 1
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %37 = inttoptr i32 %add7.i to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %conv11.i = zext i8 %38 to i32
  %shl.i = shl nuw nsw i32 %conv11.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %39 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %maxdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %40)
  %cmp29 = icmp eq i32 %40, 4095
  %shr32 = lshr i32 %or.i, 4
  %spec.select65 = select i1 %cmp29, i32 %shr32, i32 %or.i
  %and35 = and i32 %spec.select65, %40
  %arrayidx = getelementptr i32, ptr %data, i32 %i.072
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and35, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.072, 1
  %42 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n, align 4
  %cmp19 = icmp ult i32 %inc, %43
  br i1 %cmp19, label %if.end26.for.body_crit_edge, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

cleanup:                                          ; preds = %if.end26.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %43, %if.end26.cleanup_crit_edge ], [ %call23, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das800_ai_do_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_src, align 4
  %and.i = and i32 %3, 66
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %3)
  %cmp1.not.i = icmp eq i32 %and.i, %3
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %4 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scan_begin_src, align 4
  %and.i113 = and i32 %5, 4
  store i32 %and.i113, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i113)
  %cmp.i114 = icmp ne i32 %and.i113, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i113, i32 %5)
  %cmp1.not.i115 = icmp eq i32 %and.i113, %5
  %or.cond.i116 = and i1 %cmp.i114, %cmp1.not.i115
  %6 = select i1 %or.cond.i, i1 %or.cond.i116, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %convert_src, align 4
  %and.i118 = and i32 %8, 80
  store i32 %and.i118, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i118)
  %cmp.i119 = icmp ne i32 %and.i118, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i118, i32 %8)
  %cmp1.not.i120 = icmp eq i32 %and.i118, %8
  %or.cond.i121 = and i1 %cmp.i119, %cmp1.not.i120
  %9 = select i1 %6, i1 %or.cond.i121, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %10 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_end_src, align 4
  %and.i123 = and i32 %11, 32
  store i32 %and.i123, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i123)
  %cmp.i124 = icmp ne i32 %and.i123, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i123, i32 %11)
  %cmp1.not.i125 = icmp eq i32 %and.i123, %11
  %or.cond.i126 = and i1 %cmp.i124, %cmp1.not.i125
  %12 = select i1 %9, i1 %or.cond.i126, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %13 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_src, align 4
  %and.i128 = and i32 %14, 33
  store i32 %and.i128, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128)
  %cmp.i129 = icmp ne i32 %and.i128, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i128, i32 %14)
  %cmp1.not.i130 = icmp eq i32 %and.i128, %14
  %or.cond.i131 = and i1 %cmp.i129, %cmp1.not.i130
  %15 = select i1 %12, i1 %or.cond.i131, i1 false
  br i1 %15, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = tail call i32 @llvm.ctpop.i32(i32 %3) #5, !range !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i = icmp ult i32 %16, 2
  %17 = tail call i32 @llvm.ctpop.i32(i32 %8) #5, !range !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i133 = icmp ult i32 %17, 2
  %18 = select i1 %cmp.not.i, i1 %cmp.not.i133, i1 false
  %19 = tail call i32 @llvm.ctpop.i32(i32 %14) #5, !range !76
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.not.i135 = icmp ult i32 %19, 2
  %20 = select i1 %18, i1 %cmp.not.i135, i1 false
  br i1 %20, label %if.end20, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %21 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i137 = icmp eq i32 %22, 0
  br i1 %cmp.not.i137, label %if.end20.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end20.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end20.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i138 = phi i32 [ -22, %if.then.i ], [ 0, %if.end20.comedi_check_trigger_arg_is.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp = icmp eq i32 %8, 16
  br i1 %cmp, label %if.then24, label %comedi_check_trigger_arg_is.exit.if.end27_crit_edge

comedi_check_trigger_arg_is.exit.if.end27_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then24:                                        ; preds = %comedi_check_trigger_arg_is.exit
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %ai_speed = getelementptr inbounds %struct.das800_board, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %ai_speed to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ai_speed, align 4
  %26 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %25)
  %cmp.i139 = icmp ult i32 %27, %25
  br i1 %cmp.i139, label %if.then.i140, label %if.then24.comedi_check_trigger_arg_min.exit_crit_edge

if.then24.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_min.exit

if.then.i140:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i140, %if.then24.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i141 = phi i32 [ -22, %if.then.i140 ], [ 0, %if.then24.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or26 = or i32 %retval.0.i141, %retval.0.i138
  br label %if.end27

if.end27:                                         ; preds = %comedi_check_trigger_arg_min.exit, %comedi_check_trigger_arg_is.exit.if.end27_crit_edge
  %err.0 = phi i32 [ %or26, %comedi_check_trigger_arg_min.exit ], [ %retval.0.i138, %comedi_check_trigger_arg_is.exit.if.end27_crit_edge ]
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %29 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i142 = icmp eq i32 %30, 0
  br i1 %cmp.i142, label %if.then.i143, label %if.end27.comedi_check_trigger_arg_min.exit145_crit_edge

if.end27.comedi_check_trigger_arg_min.exit145_crit_edge: ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_min.exit145

if.then.i143:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %chanlist_len, align 4
  br label %comedi_check_trigger_arg_min.exit145

comedi_check_trigger_arg_min.exit145:             ; preds = %if.then.i143, %if.end27.comedi_check_trigger_arg_min.exit145_crit_edge
  %retval.0.i144 = phi i32 [ -22, %if.then.i143 ], [ 0, %if.end27.comedi_check_trigger_arg_min.exit145_crit_edge ]
  %or29 = or i32 %retval.0.i144, %err.0
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %32 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chanlist_len, align 4
  %34 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %33)
  %cmp.not.i146 = icmp eq i32 %35, %33
  br i1 %cmp.not.i146, label %comedi_check_trigger_arg_min.exit145.comedi_check_trigger_arg_is.exit149_crit_edge, label %if.then.i147

comedi_check_trigger_arg_min.exit145.comedi_check_trigger_arg_is.exit149_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit145
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit149

if.then.i147:                                     ; preds = %comedi_check_trigger_arg_min.exit145
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit149

comedi_check_trigger_arg_is.exit149:              ; preds = %if.then.i147, %comedi_check_trigger_arg_min.exit145.comedi_check_trigger_arg_is.exit149_crit_edge
  %retval.0.i148 = phi i32 [ -22, %if.then.i147 ], [ 0, %comedi_check_trigger_arg_min.exit145.comedi_check_trigger_arg_is.exit149_crit_edge ]
  %or32 = or i32 %or29, %retval.0.i148
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp34 = icmp eq i32 %14, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %37 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i150 = icmp eq i32 %38, 0
  br i1 %cmp34, label %if.then35, label %if.else

if.then35:                                        ; preds = %comedi_check_trigger_arg_is.exit149
  br i1 %cmp.i150, label %if.then35.if.end41.sink.split_crit_edge, label %if.then35.if.end41_crit_edge

if.then35.if.end41_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then35.if.end41.sink.split_crit_edge:          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit149
  br i1 %cmp.i150, label %if.else.if.end41_crit_edge, label %if.else.if.end41.sink.split_crit_edge

if.else.if.end41.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.sink.split

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.end41.sink.split:                              ; preds = %if.else.if.end41.sink.split_crit_edge, %if.then35.if.end41.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then35.if.end41.sink.split_crit_edge ], [ 0, %if.else.if.end41.sink.split_crit_edge ]
  %39 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.else.if.end41_crit_edge, %if.then35.if.end41_crit_edge
  %call36.pn = phi i32 [ 0, %if.then35.if.end41_crit_edge ], [ 0, %if.else.if.end41_crit_edge ], [ -22, %if.end41.sink.split ]
  %err.1 = or i32 %or32, %call36.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool42.not = icmp eq i32 %err.1, 0
  br i1 %tobool42.not, label %if.end44, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44:                                         ; preds = %if.end41
  br i1 %cmp, label %if.then47, label %if.end44.if.end55_crit_edge

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then47:                                        ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #5
  %convert_arg48 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %40 = ptrtoint ptr %convert_arg48 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %convert_arg48, align 4
  %42 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arg, align 4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %43 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pacer, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %44, ptr noundef nonnull %arg, i32 noundef %46) #5
  %47 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arg, align 4
  %49 = ptrtoint ptr %convert_arg48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %convert_arg48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %48)
  %cmp.not.i158 = icmp eq i32 %50, %48
  br i1 %cmp.not.i158, label %comedi_check_trigger_arg_is.exit161.thread, label %comedi_check_trigger_arg_is.exit161

comedi_check_trigger_arg_is.exit161.thread:       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #5
  br label %if.end55

comedi_check_trigger_arg_is.exit161:              ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #7
  %51 = ptrtoint ptr %convert_arg48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %convert_arg48, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #5
  br label %cleanup

if.end55:                                         ; preds = %comedi_check_trigger_arg_is.exit161.thread, %if.end44.if.end55_crit_edge
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %52 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chanlist, align 4
  %tobool56.not = icmp eq ptr %53, null
  br i1 %tobool56.not, label %if.end55.if.end62.thread_crit_edge, label %land.lhs.true

if.end55.if.end62.thread_crit_edge:               ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62.thread

land.lhs.true:                                    ; preds = %if.end55
  %54 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp58.not = icmp eq i32 %55, 0
  br i1 %cmp58.not, label %land.lhs.true.if.end62.thread_crit_edge, label %if.end62

land.lhs.true.if.end62.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62.thread

if.end62:                                         ; preds = %land.lhs.true
  %call60 = call fastcc i32 @das800_ai_check_chanlist(ptr noundef %dev, ptr noundef %s, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %phi.cmp112 = icmp eq i32 %call60, 0
  br i1 %phi.cmp112, label %if.end62.if.end62.thread_crit_edge, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end62.if.end62.thread_crit_edge:               ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62.thread

if.end62.thread:                                  ; preds = %if.end62.if.end62.thread_crit_edge, %land.lhs.true.if.end62.thread_crit_edge, %if.end55.if.end62.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end62.thread, %if.end62.cleanup_crit_edge, %comedi_check_trigger_arg_is.exit161, %if.end41.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end41.cleanup_crit_edge ], [ 4, %comedi_check_trigger_arg_is.exit161 ], [ 0, %if.end62.thread ], [ 5, %if.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das800_ai_do_cmd(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async1, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 12
  %4 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chanlist, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %shr = lshr i32 %7, 16
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %8 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chanlist_len, align 4
  %add = add i32 %9, %7
  %sub = shl i32 %add, 3
  %rem = add i32 %sub, 56
  %shl = and i32 %rem, 56
  %or = or i32 %shl, %7
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %10 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %11, 3
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %12 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 -96) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase.i.i, align 4
  %add6.i.i = add i32 %14, 2
  %and7.i.i = and i32 %add6.i.i, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %15 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #5, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #5
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase.i.i, align 4
  %add.i = add i32 %17, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %18 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 -64) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %conv4.i = trunc i32 %or to i8
  %19 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase.i.i, align 4
  %add6.i = add i32 %20, 2
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %21 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 %conv4.i) #5, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call7) #5
  %resolution = getelementptr inbounds %struct.das800_board, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resolution, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %23)
  %cmp11 = icmp eq i32 %23, 12
  %24 = and i32 %7, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp13.not = icmp eq i32 %24, 0
  %add15 = add nuw nsw i32 %shr, 7
  %spec.select = select i1 %cmp13.not, i32 0, i32 %add15
  %gain.0 = select i1 %cmp11, i32 %spec.select, i32 %shr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %25 = trunc i32 %gain.0 to i8
  %conv20 = and i8 %25, 15
  %26 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase.i.i, align 4
  %add21 = add i32 %27, 3
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %28 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv20) #5, !srcloc !63
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %29 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %30)
  %cmp26 = icmp eq i32 %30, 64
  %spec.select75 = select i1 %cmp26, i32 28, i32 24
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 6
  %31 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %32)
  %cmp31 = icmp eq i32 %32, 16
  br i1 %cmp31, label %if.then33, label %entry.do.body38_crit_edge

entry.do.body38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body38

if.then33:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %or34 = or i32 %spec.select75, 3
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %33 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_update_divisors(ptr noundef %34) #5
  %35 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %36, i32 noundef 1, i32 noundef 2, i1 noundef zeroext true) #5
  br label %do.body38

do.body38:                                        ; preds = %if.then33, %entry.do.body38_crit_edge
  %conv_bits.1 = phi i32 [ %or34, %if.then33 ], [ %spec.select75, %entry.do.body38_crit_edge ]
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase.i.i, align 4
  %add.i77 = add i32 %38, 3
  %and.i78 = and i32 %add.i77, 1048575
  %add1.i79 = or i32 %and.i78, -18874368
  %39 = inttoptr i32 %add1.i79 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 -96) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %conv4.i80 = trunc i32 %conv_bits.1 to i8
  %40 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %iobase.i.i, align 4
  %add6.i81 = add i32 %41, 2
  %and7.i82 = and i32 %add6.i81, 1048575
  %add8.i83 = or i32 %and7.i82, -18874368
  %42 = inttoptr i32 %add8.i83 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 %conv4.i80) #5, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call46) #5
  %43 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %board_ptr, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %45 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %private.i, align 4
  %call2.i85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #5
  %resolution.i = getelementptr inbounds %struct.das800_board, ptr %44, i32 0, i32 3
  %47 = ptrtoint ptr %resolution.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %resolution.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %48)
  %cmp5.i = icmp eq i32 %48, 16
  br i1 %cmp5.i, label %do.body7.i, label %do.body38.das800_enable.exit_crit_edge

do.body38.das800_enable.exit_crit_edge:           ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  br label %das800_enable.exit

do.body7.i:                                       ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %49 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase.i.i, align 4
  %add.i87 = add i32 %50, 3
  %and.i88 = and i32 %add.i87, 1048575
  %add10.i = or i32 %and.i88, -18874368
  %51 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %51, i8 -112) #5, !srcloc !63
  br label %das800_enable.exit

das800_enable.exit:                               ; preds = %do.body7.i, %do.body38.das800_enable.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %52 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase.i.i, align 4
  %add.i.i90 = add i32 %53, 3
  %and.i.i91 = and i32 %add.i.i90, 1048575
  %add1.i.i92 = or i32 %and.i.i91, -18874368
  %54 = inttoptr i32 %add1.i.i92 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 -96) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %55 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iobase.i.i, align 4
  %add6.i.i93 = add i32 %56, 2
  %and7.i.i94 = and i32 %add6.i.i93, 1048575
  %add8.i.i95 = or i32 %and7.i.i94, -18874368
  %57 = inttoptr i32 %add8.i.i95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 -128) #5, !srcloc !63
  %58 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %46, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %iobase.i.i, align 4
  %add.i20.i = add i32 %61, 3
  %and.i21.i = and i32 %add.i20.i, 1048575
  %add1.i22.i = or i32 %and.i21.i, -18874368
  %62 = inttoptr i32 %add1.i22.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 -128) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %63 = trunc i32 %59 to i8
  %conv4.i.i = or i8 %63, 8
  %64 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iobase.i.i, align 4
  %add6.i23.i = add i32 %65, 2
  %and7.i24.i = and i32 %add6.i23.i, 1048575
  %add8.i25.i = or i32 %and7.i24.i, -18874368
  %66 = inttoptr i32 %add8.i25.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 %conv4.i.i) #5, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i85) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das800_cancel(ptr noundef %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %1, 3
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %2 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 -96) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %3 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase.i.i, align 4
  %add6.i.i = add i32 %4, 2
  %and7.i.i = and i32 %add6.i.i, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %5 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #5, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call2.i) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das800_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  %4 = lshr i8 %3, 4
  %5 = and i8 %4, 7
  %and3 = zext i8 %5 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and3, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %7 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n, align 4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das800_do_insn_bits(ptr noundef %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %shl = shl i32 %3, 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl, ptr %1, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #5
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %8, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 -128) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %10 = trunc i32 %6 to i8
  %conv4.i = or i8 %10, 8
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %add6.i = add i32 %12, 2
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %13 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv4.i) #5, !srcloc !63
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state8 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %14 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state8, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %17 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n, align 4
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @das800_ind_write(ptr nocapture noundef readonly %dev, i32 noundef %val, i32 noundef %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %reg to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %conv) #5, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %conv4 = trunc i32 %val to i8
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add6 = add i32 %4, 2
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %5 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %conv4) #5, !srcloc !63
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das800_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp sgt i8 %3, -1
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_cascade_ns_to_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @das800_ai_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %0 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chanlist, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 65535
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %4 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp61 = icmp ugt i32 %5, 1
  br i1 %cmp61, label %for.body.lr.ph, label %entry.cleanup40_crit_edge

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup40

for.body.lr.ph:                                   ; preds = %entry
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %6 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_chan, align 4
  br label %for.body

for.cond:                                         ; preds = %if.end16
  %inc = add nuw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.cleanup40_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.cleanup40_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup40

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.062 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx5 = getelementptr i32, ptr %1, i32 %i.062
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  %and6 = and i32 %9, 65535
  %add = add i32 %i.062, %and
  %rem = urem i32 %add, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %rem)
  %cmp11.not = icmp eq i32 %and6, %rem
  br i1 %cmp11.not, label %if.end16, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @das800_ai_check_chanlist.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@das800_ai_check_chanlist, %cleanup40)) #5
          to label %if.then15 [label %cleanup40], !srcloc !68

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %10 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @das800_ai_check_chanlist.__UNIQUE_ID_ddebug234, ptr noundef %11, ptr noundef nonnull @.str.6) #5
  br label %cleanup40

if.end16:                                         ; preds = %for.body
  %shr952 = xor i32 %9, %3
  %12 = and i32 %shr952, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp17.not = icmp eq i32 %12, 0
  br i1 %cmp17.not, label %for.cond, label %do.body19

do.body19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @das800_ai_check_chanlist.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@das800_ai_check_chanlist, %cleanup40)) #5
          to label %if.then33 [label %cleanup40], !srcloc !68

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev34 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %class_dev34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %class_dev34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @das800_ai_check_chanlist.__UNIQUE_ID_ddebug235, ptr noundef %14, ptr noundef nonnull @.str.7) #5
  br label %cleanup40

cleanup40:                                        ; preds = %if.then33, %do.body19, %if.then15, %do.body, %for.cond.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.2 = phi i32 [ -22, %if.then15 ], [ -22, %if.then33 ], [ -22, %do.body ], [ -22, %do.body19 ], [ 0, %entry.cleanup40_crit_edge ], [ 0, %for.cond.cleanup40_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_update_divisors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_pacer_enable(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25, !26, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_das800__238_738_driver_das800_init6, !1, !"__initcall__kmod_das800__238_738_driver_das800_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/das800.c", i32 738, i32 1}
!2 = !{ptr @__exitcall_driver_das800_exit, !1, !"__exitcall_driver_das800_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/das800.c", i32 740, i32 1}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/das800.c", i32 741, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/das800.c", i32 742, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/das800.c", i32 730, i32 17}
!12 = !{ptr @driver_das800, !13, !"driver_das800", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/das800.c", i32 729, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/das800.c", i32 635, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @das800_probe.__UNIQUE_ID_ddebug236, !15, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/comedi/drivers/das800.c", i32 639, i32 2}
!21 = !{ptr @das800_probe.__UNIQUE_ID_ddebug237, !20, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/das800.c", i32 276, i32 4}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @das800_ai_check_chanlist.__UNIQUE_ID_ddebug234, !23, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/das800.c", i32 282, i32 4}
!28 = !{ptr @das800_ai_check_chanlist.__UNIQUE_ID_ddebug235, !27, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/comedi/drivers/das800.c", i32 162, i32 12}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/das800.c", i32 168, i32 12}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/comedi/drivers/das800.c", i32 174, i32 12}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/comedi/drivers/das800.c", i32 180, i32 12}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/comedi/drivers/das800.c", i32 186, i32 12}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/comedi/drivers/das800.c", i32 192, i32 12}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/comedi/drivers/das800.c", i32 198, i32 12}
!43 = !{ptr @das800_boards, !44, !"das800_boards", i1 false, i1 false}
!44 = !{!"../drivers/comedi/drivers/das800.c", i32 160, i32 34}
!45 = !{ptr @range_das801_ai, !46, !"range_das801_ai", i1 false, i1 false}
!46 = !{!"../drivers/comedi/drivers/das800.c", i32 95, i32 35}
!47 = !{ptr @range_cio_das801_ai, !48, !"range_cio_das801_ai", i1 false, i1 false}
!48 = !{!"../drivers/comedi/drivers/das800.c", i32 109, i32 35}
!49 = !{ptr @range_das802_ai, !50, !"range_das802_ai", i1 false, i1 false}
!50 = !{!"../drivers/comedi/drivers/das800.c", i32 123, i32 35}
!51 = !{ptr @range_das80216_ai, !52, !"range_das80216_ai", i1 false, i1 false}
!52 = !{!"../drivers/comedi/drivers/das800.c", i32 137, i32 35}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2154215098}
!63 = !{i64 4632867}
!64 = !{i64 2154215438}
!65 = !{i64 2154215780}
!66 = !{i64 4633262}
!67 = !{i64 2154216195}
!68 = !{i64 2148970559, i64 2148970564, i64 2148970577, i64 2148970621, i64 2148970655, i64 2148970676}
!69 = !{!"auto-init"}
!70 = !{i64 2154224597}
!71 = !{i64 2154224011}
!72 = !{i64 2154224304}
!73 = !{i64 2154225292}
!74 = !{i64 2154226284}
!75 = !{i64 2152168923}
!76 = !{i32 0, i32 33}
!77 = !{i64 2154223170}
!78 = !{i64 2154216795}
!79 = !{i64 2154227246}
!80 = !{i64 2154225609}
