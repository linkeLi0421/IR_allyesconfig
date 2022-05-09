; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/ni_at_a2150.c_pt.bc'
source_filename = "../drivers/comedi/drivers/ni_at_a2150.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.a2150_board = type { ptr, [4 x i32], i32, i32 }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.a2150_private = type { ptr, i32, i32, i32 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_isadma = type { ptr, ptr, i32, i32, i32, i32 }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.comedi_isadma_desc = type { ptr, i32, i32, i32, i32, i8 }

@__initcall__kmod_ni_at_a2150__238_776_ni_at_a2150_driver_init6 = internal global ptr @ni_at_a2150_driver_init, section ".initcall6.init", align 4
@ni_at_a2150_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @a2150_attach, ptr @a2150_detach, ptr null, i32 0, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_ni_at_a2150_driver_exit = internal global ptr @ni_at_a2150_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [49 x i8] c"ni_at_a2150.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [48 x i8] c"ni_at_a2150.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [52 x i8] c"ni_at_a2150.file=drivers/comedi/drivers/ni_at_a2150\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [24 x i8] c"ni_at_a2150.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ni_at_a2150\00", [20 x i8] zeroinitializer }, align 32
@a2150_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 753, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"timed out waiting for offset calibration to complete\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a2150_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/comedi/drivers/ni_at_a2150.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@a2150_attach._entry_ptr = internal global ptr @a2150_attach._entry, section ".printk_index", align 4
@a2150_boards = internal constant { [2 x %struct.a2150_board], [40 x i8] } { [2 x %struct.a2150_board] [%struct.a2150_board { ptr @.str.6, [4 x i32] [i32 31250, i32 22676, i32 20833, i32 19531], i32 4, i32 19531 }, %struct.a2150_board { ptr @.str.7, [4 x i32] [i32 62500, i32 50000, i32 41667, i32 0], i32 3, i32 41667 }], [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"at-a2150c\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"at-a2150s\00", [22 x i8] zeroinitializer }, align 32
@range_a2150 = internal constant { { i32, [1 x %struct.comedi_krange] }, [16 x i8] } { { i32, [1 x %struct.comedi_krange] } { i32 1, [1 x %struct.comedi_krange] [%struct.comedi_krange { i32 -2828000, i32 2828000, i32 0 }] }, [16 x i8] zeroinitializer }, align 32
@a2150_ai_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 474, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"dma incompatible with hard real-time interrupt (CMDF_PRIORITY), aborting\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a2150_ai_cmd\00", [19 x i8] zeroinitializer }, align 32
@a2150_ai_cmd._entry_ptr = internal global ptr @a2150_ai_cmd._entry, section ".printk_index", align 4
@a2150_ai_cmd._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"you shouldn't see this?\0A\00", [39 x i8] zeroinitializer }, align 32
@a2150_ai_cmd._entry_ptr.13 = internal global ptr @a2150_ai_cmd._entry.11, section ".printk_index", align 4
@a2150_ai_check_chanlist.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 0, i8 90, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"a2150_ai_check_chanlist\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"length 2 chanlist must be channels 0,1 or channels 2,3\0A\00", [40 x i8] zeroinitializer }, align 32
@a2150_ai_check_chanlist.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.16, i8 0, i8 91, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"chanlist must have 1,2 or 4 channels\0A\00", [58 x i8] zeroinitializer }, align 32
@a2150_ai_check_chanlist.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.17, i8 0, i8 94, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"entries in chanlist must be consecutive channels, counting upwards\0A\00", [60 x i8] zeroinitializer }, align 32
@a2150_ai_check_chanlist.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.3, ptr @.str.18, i8 0, i8 96, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"channels 0/1 and 2/3 must have the same analog reference\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 64, i64 256]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 3]
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"ni_at_a2150_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 770, i32 29 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 771, i32 17 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 752, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant [13 x i8] c"a2150_boards\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 107, i32 33 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 109, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 115, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"range_a2150\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 99, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 473, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 551, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 359, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 365, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 375, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [40 x i8] c"../drivers/comedi/drivers/ni_at_a2150.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 383, i32 4 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_ni_at_a2150_driver_exit, ptr @__initcall__kmod_ni_at_a2150__238_776_ni_at_a2150_driver_init6, ptr @a2150_ai_cmd._entry, ptr @a2150_ai_cmd._entry.11, ptr @a2150_ai_cmd._entry_ptr, ptr @a2150_ai_cmd._entry_ptr.13, ptr @a2150_attach._entry, ptr @a2150_attach._entry_ptr, ptr @ni_at_a2150_driver_exit, ptr @ni_at_a2150_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @a2150_boards, ptr @.str.6, ptr @.str.7, ptr @range_a2150, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_at_a2150_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a2150_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a2150_boards to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_a2150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a2150_ai_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a2150_ai_cmd._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_at_a2150_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @ni_at_a2150_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ni_at_a2150_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @comedi_driver_unregister(ptr noundef nonnull @ni_at_a2150_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a2150_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 16) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %0 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %options, align 4
  %call1 = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %1, i32 noundef 28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %3, 18
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %4 = inttoptr i32 %add1.i to ptr
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %4) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %6 = and i16 %5, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp.i = icmp ugt i16 %6, 1
  %and3.i = zext i16 %6 to i32
  %arrayidx.i = getelementptr [2 x %struct.a2150_board], ptr @a2150_boards, i32 0, i32 %and3.i
  %tobool6.not130 = icmp eq ptr %arrayidx.i, null
  %tobool6.not = select i1 %cmp.i, i1 true, i1 %tobool6.not130
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %7 = ptrtoint ptr %board_ptr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx.i, ptr %board_ptr, align 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %10 = ptrtoint ptr %board_name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %board_name, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %11 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %private.i, align 4
  %arrayidx.i122 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i122, align 4
  %arrayidx2.i = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %14)
  %cmp.i123 = icmp ugt i32 %14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %16)
  %cmp3.i = icmp ugt i32 %16, 7
  %or.cond.i = select i1 %cmp.i123, i1 true, i1 %cmp3.i
  br i1 %or.cond.i, label %if.end8.a2150_alloc_irq_and_dma.exit_crit_edge, label %lor.lhs.false4.i

if.end8.a2150_alloc_irq_and_dma.exit_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %a2150_alloc_irq_and_dma.exit

lor.lhs.false4.i:                                 ; preds = %if.end8
  %shl.i = shl nuw nsw i32 1, %14
  %and.i124 = and i32 %shl.i, 57080
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i124)
  %tobool.not.i = icmp eq i32 %and.i124, 0
  br i1 %tobool.not.i, label %lor.lhs.false4.i.a2150_alloc_irq_and_dma.exit_crit_edge, label %lor.lhs.false5.i

lor.lhs.false4.i.a2150_alloc_irq_and_dma.exit_crit_edge: ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a2150_alloc_irq_and_dma.exit

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false4.i
  %shl6.i = shl nuw nsw i32 1, %16
  %and7.i = and i32 %shl6.i, 239
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false5.i.a2150_alloc_irq_and_dma.exit_crit_edge, label %if.end.i

lor.lhs.false5.i.a2150_alloc_irq_and_dma.exit_crit_edge: ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a2150_alloc_irq_and_dma.exit

if.end.i:                                         ; preds = %lor.lhs.false5.i
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %14, ptr noundef nonnull @a2150_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %9, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool9.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end.i.a2150_alloc_irq_and_dma.exit_crit_edge

if.end.i.a2150_alloc_irq_and_dma.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %a2150_alloc_irq_and_dma.exit

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %12, align 4
  %call16.i = tail call ptr @free_irq(i32 noundef %14, ptr noundef %dev) #7
  br label %a2150_alloc_irq_and_dma.exit

a2150_alloc_irq_and_dma.exit:                     ; preds = %if.end11.i, %if.end.i.a2150_alloc_irq_and_dma.exit_crit_edge, %lor.lhs.false5.i.a2150_alloc_irq_and_dma.exit_crit_edge, %lor.lhs.false4.i.a2150_alloc_irq_and_dma.exit_crit_edge, %if.end8.a2150_alloc_irq_and_dma.exit_crit_edge
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i, align 4
  %add = add i32 %19, 20
  %call9 = tail call ptr @comedi_8254_init(i32 noundef %add, i32 noundef 0, i32 noundef 1, i32 noundef 0) #7
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %20 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call9, ptr %pacer, align 4
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %a2150_alloc_irq_and_dma.exit.cleanup_crit_edge, label %if.end13

a2150_alloc_irq_and_dma.exit.cleanup_crit_edge:   ; preds = %a2150_alloc_irq_and_dma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %a2150_alloc_irq_and_dma.exit
  %call14 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %21 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %22, i32 0, i32 4
  %24 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 9502720, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %22, i32 0, i32 13
  %26 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 65535, ptr %maxdata, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %22, i32 0, i32 15
  %27 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @range_a2150, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %22, i32 0, i32 18
  %28 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @a2150_ai_rinsn, ptr %insn_read, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool19.not = icmp eq i32 %30, 0
  br i1 %tobool19.not, label %if.end17.do.body_crit_edge, label %if.then20

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %31 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %22, ptr %read_subdev, align 4
  %32 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %subdev_flags, align 4
  %or = or i32 %33, 32768
  store i32 %or, ptr %subdev_flags, align 4
  %34 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n_chan, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %22, i32 0, i32 5
  %36 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %len_chanlist, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %22, i32 0, i32 22
  %37 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @a2150_ai_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %22, i32 0, i32 23
  %38 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @a2150_ai_cmdtest, ptr %do_cmdtest, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %22, i32 0, i32 25
  %39 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @a2150_cancel, ptr %cancel, align 4
  br label %do.body

do.body:                                          ; preds = %if.then20, %if.end17.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %irq_dma_bits = getelementptr inbounds %struct.a2150_private, ptr %call, i32 0, i32 2
  %40 = ptrtoint ptr %irq_dma_bits to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq_dma_bits, align 4
  %conv = trunc i32 %41 to i16
  %42 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %43 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %iobase.i, align 4
  %add25 = add i32 %44, 18
  %and = and i32 %add25, 1048575
  %add26 = or i32 %and, -18874368
  %45 = inttoptr i32 %add26 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %45, i16 %42) #7, !srcloc !66
  %46 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iobase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %and.i125 = and i32 %47, 1048575
  %add.i126 = or i32 %and.i125, -18874368
  %48 = inttoptr i32 %add.i126 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %48, i16 24) #7, !srcloc !66
  %49 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %and.i127 = and i32 %50, 1048575
  %add.i128 = or i32 %and.i127, -18874368
  %51 = inttoptr i32 %add.i128 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %51, i16 16) #7, !srcloc !66
  %config_bits = getelementptr inbounds %struct.a2150_private, ptr %call, i32 0, i32 3
  %52 = ptrtoint ptr %config_bits to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %config_bits, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  tail call void @arm_heavy_mb() #7
  %53 = ptrtoint ptr %config_bits to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %config_bits, align 4
  %conv36 = trunc i32 %54 to i16
  %55 = tail call i16 @llvm.bswap.i16(i16 %conv36)
  %56 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %iobase.i, align 4
  %and39 = and i32 %57, 1048575
  %add40 = or i32 %and39, -18874368
  %58 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %58, i16 %55) #7, !srcloc !66
  br label %for.body

for.body:                                         ; preds = %if.end54.for.body_crit_edge, %do.body
  %i.0132 = phi i32 [ 0, %do.body ], [ %inc, %if.end54.for.body_crit_edge ]
  %59 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iobase.i, align 4
  %add44 = add i32 %60, 18
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %61 = inttoptr i32 %add46 to ptr
  %62 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %61) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %63 = and i16 %62, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp51 = icmp eq i16 %63, 0
  br i1 %cmp51, label %if.end61, label %if.end54

if.end54:                                         ; preds = %for.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 3000, i32 noundef 2) #7
  %inc = add nuw nsw i32 %i.0132, 1
  %exitcond.not = icmp eq i32 %inc, 2000
  br i1 %exitcond.not, label %do.end60, label %if.end54.for.body_crit_edge

if.end54.for.body_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %64 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end61:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %config_bits to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %config_bits, align 4
  %or63 = or i32 %67, 384
  store i32 %or63, ptr %config_bits, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %config_bits to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %config_bits, align 4
  %conv68 = trunc i32 %69 to i16
  %70 = tail call i16 @llvm.bswap.i16(i16 %conv68)
  %71 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %iobase.i, align 4
  %and71 = and i32 %72, 1048575
  %add72 = or i32 %and71, -18874368
  %73 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %73, i16 %70) #7, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end60, %if.end13.cleanup_crit_edge, %a2150_alloc_irq_and_dma.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -62, %do.end60 ], [ 0, %if.end61 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ], [ -12, %a2150_alloc_irq_and_dma.exit.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @a2150_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %and = and i32 %3, 1048575
  %add2 = or i32 %and, -18874368
  %4 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 24) #7, !srcloc !66
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  tail call void @comedi_legacy_detach(ptr noundef %dev) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a2150_ai_rinsn(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  tail call void @arm_heavy_mb() #7
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add = add i32 %3, 8
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %4, i16 0) #7, !srcloc !66
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %5 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chanspec, align 4
  %and2 = and i32 %6, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp.i.not = icmp eq i32 %and2, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %private, align 4
  %config_bits.i = getelementptr inbounds %struct.a2150_private, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %config_bits.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %config_bits.i, align 4
  %and.i = and i32 %10, -8
  %or.i = and i32 %6, 3
  %and1.i = or i32 %or.i, %and.i
  %or3.i = or i32 %and1.i, 4
  store i32 %or3.i, ptr %config_bits.i, align 4
  %config_bits = getelementptr inbounds %struct.a2150_private, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %config_bits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %config_bits, align 4
  %and6 = and i32 %12, -1537
  store i32 %and6, ptr %config_bits, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %config_bits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %config_bits, align 4
  %conv = trunc i32 %14 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %and13 = and i32 %17, 1048575
  %add14 = or i32 %and13, -18874368
  %18 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 %15) #7, !srcloc !66
  %irq_dma_bits = getelementptr inbounds %struct.a2150_private, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %irq_dma_bits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq_dma_bits, align 4
  %and16 = and i32 %20, -2057
  store i32 %and16, ptr %irq_dma_bits, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %irq_dma_bits to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq_dma_bits, align 4
  %conv21 = trunc i32 %22 to i16
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv21)
  %24 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase, align 4
  %add23 = add i32 %25, 18
  %and24 = and i32 %add23, 1048575
  %add25 = or i32 %and24, -18874368
  %26 = inttoptr i32 %add25 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %26, i16 %23) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  tail call void @arm_heavy_mb() #7
  %27 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase, align 4
  %add31 = add i32 %28, 2
  %and32 = and i32 %add31, 1048575
  %add33 = or i32 %and32, -18874368
  %29 = inttoptr i32 %add33 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %29, i16 0) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %30 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iobase, align 4
  %add39 = add i32 %31, 6
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %32 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %32, i16 0) #7, !srcloc !66
  br label %for.body

for.cond54.preheader:                             ; preds = %if.end47
  %n55 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %33 = ptrtoint ptr %n55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp56120.not = icmp eq i32 %34, 0
  br i1 %cmp56120.not, label %for.cond54.preheader.do.body76_crit_edge, label %for.cond54.preheader.for.body58_crit_edge

for.cond54.preheader.for.body58_crit_edge:        ; preds = %for.cond54.preheader
  br label %for.body58

for.cond54.preheader.do.body76_crit_edge:         ; preds = %for.cond54.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body76

for.body:                                         ; preds = %if.end47.for.body_crit_edge, %if.end
  %n.0119 = phi i32 [ 0, %if.end ], [ %inc, %if.end47.for.body_crit_edge ]
  %call45 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @a2150_ai_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool.not = icmp eq i32 %call45, 0
  br i1 %tobool.not, label %if.end47, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %for.body
  %35 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase, align 4
  %add49 = add i32 %36, 10
  %and50 = and i32 %add49, 1048575
  %add51 = or i32 %and50, -18874368
  %37 = inttoptr i32 %add51 to ptr
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %37) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  %inc = add nuw nsw i32 %n.0119, 1
  %exitcond.not = icmp eq i32 %inc, 36
  br i1 %exitcond.not, label %for.cond54.preheader, label %if.end47.for.body_crit_edge

if.end47.for.body_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body58:                                       ; preds = %if.end62.for.body58_crit_edge, %for.cond54.preheader.for.body58_crit_edge
  %n.1121 = phi i32 [ %inc74, %if.end62.for.body58_crit_edge ], [ 0, %for.cond54.preheader.for.body58_crit_edge ]
  %call59 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @a2150_ai_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %for.body58.cleanup_crit_edge

for.body58.cleanup_crit_edge:                     ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end62:                                         ; preds = %for.body58
  %39 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase, align 4
  %add65 = add i32 %40, 10
  %and66 = and i32 %add65, 1048575
  %add67 = or i32 %and66, -18874368
  %41 = inttoptr i32 %add67 to ptr
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %41) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %arrayidx = getelementptr i32, ptr %data, i32 %n.1121
  %43 = xor i16 %42, 128
  %44 = tail call i16 @llvm.bswap.i16(i16 %43)
  %xor = zext i16 %44 to i32
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %xor, ptr %arrayidx, align 4
  %inc74 = add nuw i32 %n.1121, 1
  %46 = ptrtoint ptr %n55 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %n55, align 4
  %cmp56 = icmp ult i32 %inc74, %47
  br i1 %cmp56, label %if.end62.for.body58_crit_edge, label %if.end62.do.body76_crit_edge

if.end62.do.body76_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body76

if.end62.for.body58_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body58

do.body76:                                        ; preds = %if.end62.do.body76_crit_edge, %for.cond54.preheader.do.body76_crit_edge
  %n.1.lcssa = phi i32 [ 0, %for.cond54.preheader.do.body76_crit_edge ], [ %inc74, %if.end62.do.body76_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iobase, align 4
  %add80 = add i32 %49, 8
  %and81 = and i32 %add80, 1048575
  %add82 = or i32 %and81, -18874368
  %50 = inttoptr i32 %add82 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %50, i16 0) #7, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %do.body76, %for.body58.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %n.1.lcssa, %do.body76 ], [ -1, %entry.cleanup_crit_edge ], [ %call59, %for.body58.cleanup_crit_edge ], [ %call45, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a2150_ai_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %desc2 = getelementptr inbounds %struct.comedi_isadma, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc2, align 4
  %async3 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %6 = ptrtoint ptr %async3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %async3, align 4
  %config_bits = getelementptr inbounds %struct.a2150_private, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %config_bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_bits, align 4
  %flags = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 17, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %12 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9) #10
  br label %cleanup

do.body5:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  tail call void @arm_heavy_mb() #7
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add = add i32 %15, 8
  %and8 = and i32 %add, 1048575
  %add9 = or i32 %and8, -18874368
  %16 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %16, i16 0) #7, !srcloc !66
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 17, i32 12
  %17 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chanlist, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %and11 = and i32 %20, 65535
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 17, i32 13
  %21 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chanlist_len, align 4
  %add.i = add i32 %22, %and11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 4
  br i1 %cmp.i, label %do.body5.cleanup_crit_edge, label %if.end.i

do.body5.cleanup_crit_edge:                       ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %do.body5
  %23 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private, align 4
  %config_bits.i = getelementptr inbounds %struct.a2150_private, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %config_bits.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %config_bits.i, align 4
  %and.i = and i32 %26, -8
  store i32 %and.i, ptr %config_bits.i, align 4
  %27 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.end.i.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb4.i
    i32 4, label %sw.bb16.i
  ]

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = and i32 %20, 3
  %and1.i = or i32 %or.i, %and.i
  %or3.i = or i32 %and1.i, 4
  br label %if.end14

sw.bb4.i:                                         ; preds = %if.end.i
  %trunc = trunc i32 %20 to i16
  %28 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.19)
  switch i16 %trunc, label %sw.bb4.i.cleanup_crit_edge [
    i16 0, label %if.then6.i
    i16 2, label %if.then10.i
  ]

sw.bb4.i.cleanup_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i:                                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  %or8.i = or i32 %and.i, 2
  br label %if.end14

if.then10.i:                                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  %or12.i = or i32 %and.i, 3
  br label %if.end14

sw.bb16.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %or18.i = or i32 %and.i, 1
  br label %if.end14

if.end14:                                         ; preds = %sw.bb16.i, %if.then10.i, %if.then6.i, %sw.bb.i
  %or3.sink.i = phi i32 [ %or3.i, %sw.bb.i ], [ %or18.i, %sw.bb16.i ], [ %or12.i, %if.then10.i ], [ %or8.i, %if.then6.i ]
  %29 = ptrtoint ptr %config_bits.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or3.sink.i, ptr %config_bits.i, align 4
  %30 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chanlist, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %34 = and i32 %33, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %34)
  %cmp18 = icmp eq i32 %34, 50331648
  %35 = ptrtoint ptr %config_bits to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %config_bits, align 4
  %and22 = and i32 %36, -513
  %masksel220 = select i1 %cmp18, i32 512, i32 0
  %storemerge = or i32 %and22, %masksel220
  store i32 %storemerge, ptr %config_bits, align 4
  %37 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chanlist, align 4
  %arrayidx25 = getelementptr i32, ptr %38, i32 2
  %39 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx25, align 4
  %41 = and i32 %40, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %41)
  %cmp28 = icmp eq i32 %41, 50331648
  %and34 = and i32 %storemerge, -1025
  %masksel = select i1 %cmp28, i32 1024, i32 0
  %storemerge201 = or i32 %masksel, %and34
  %42 = ptrtoint ptr %config_bits to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %storemerge201, ptr %config_bits, align 4
  %scan_begin_arg = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 17, i32 5
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  tail call fastcc void @a2150_get_timing(ptr noundef %dev, ptr noundef %scan_begin_arg, i32 noundef %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %45 = ptrtoint ptr %config_bits to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %config_bits, align 4
  %conv = trunc i32 %46 to i16
  %47 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %48 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iobase, align 4
  %and44 = and i32 %49, 1048575
  %add45 = or i32 %and44, -18874368
  %50 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %50, i16 %47) #7, !srcloc !66
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 17, i32 11
  %51 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %stop_arg, align 4
  %53 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %chanlist_len, align 4
  %mul = mul i32 %54, %52
  %count = getelementptr inbounds %struct.a2150_private, ptr %1, i32 0, i32 1
  %55 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul, ptr %count, align 4
  %subdev_flags.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %56 = ptrtoint ptr %subdev_flags.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %subdev_flags.i, align 4
  %and.i202 = and i32 %57, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i202)
  %tobool.not.i = icmp eq i32 %and.i202, 0
  %cond.i = select i1 %tobool.not.i, i32 2, i32 4
  %58 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %chanlist_len, align 4
  %mul51 = mul i32 %59, 333333333
  %mul52 = mul i32 %mul51, %cond.i
  %60 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %scan_begin_arg, align 4
  %div = udiv i32 %mul52, %61
  %size = getelementptr inbounds %struct.comedi_isadma_desc, ptr %5, i32 0, i32 4
  %maxsize = getelementptr inbounds %struct.comedi_isadma_desc, ptr %5, i32 0, i32 3
  %62 = ptrtoint ptr %maxsize to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %maxsize, align 4
  %64 = tail call i32 @llvm.umin.i32(i32 %div, i32 %63)
  %65 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %size, align 4
  %66 = ptrtoint ptr %subdev_flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %subdev_flags.i, align 4
  %and.i204 = and i32 %67, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i204)
  %tobool.not.i205 = icmp eq i32 %and.i204, 0
  %cond.i206 = select i1 %tobool.not.i205, i32 2, i32 4
  %68 = tail call i32 @llvm.umax.i32(i32 %64, i32 %cond.i206)
  %69 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %size, align 4
  %70 = ptrtoint ptr %subdev_flags.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %subdev_flags.i, align 4
  %and.i212 = and i32 %71, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i212)
  %tobool.not.i213 = icmp eq i32 %and.i212, 0
  %.not = select i1 %tobool.not.i213, i32 -2, i32 -4
  %sub = and i32 %.not, %68
  %72 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub, ptr %size, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  tail call void @arm_heavy_mb() #7
  %73 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %iobase, align 4
  %add76 = add i32 %74, 14
  %and77 = and i32 %add76, 1048575
  %add78 = or i32 %and77, -18874368
  %75 = inttoptr i32 %add78 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %75, i16 0) #7, !srcloc !66
  %irq_dma_bits = getelementptr inbounds %struct.a2150_private, ptr %1, i32 0, i32 2
  %76 = ptrtoint ptr %irq_dma_bits to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %irq_dma_bits, align 4
  %or80 = or i32 %77, 2056
  store i32 %or80, ptr %irq_dma_bits, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %78 = ptrtoint ptr %irq_dma_bits to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %irq_dma_bits, align 4
  %conv85 = trunc i32 %79 to i16
  %80 = tail call i16 @llvm.bswap.i16(i16 %conv85)
  %81 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %iobase, align 4
  %add87 = add i32 %82, 18
  %and88 = and i32 %add87, 1048575
  %add89 = or i32 %and88, -18874368
  %83 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %83, i16 %80) #7, !srcloc !66
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %84 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pacer, align 4
  %call91 = tail call i32 @comedi_8254_load(ptr noundef %85, i32 noundef 2, i32 noundef 72, i32 noundef 0) #7
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 17, i32 2
  %86 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %start_src, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %87, label %if.end14.do.body120_crit_edge [
    i32 2, label %land.lhs.true
    i32 64, label %if.then107
    i32 256, label %do.end116
  ]

if.end14.do.body120_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body120

land.lhs.true:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %config_bits to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %config_bits, align 4
  %91 = xor i32 %90, %9
  %92 = and i32 %91, 120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp97.not = icmp eq i32 %92, 0
  %phi.cast = select i1 %cmp97.not, i16 512, i16 768
  br label %do.body120

if.then107:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body120

do.end116:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev117 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %93 = ptrtoint ptr %class_dev117 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %class_dev117, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.12) #10
  br label %do.body120

do.body120:                                       ; preds = %do.end116, %if.then107, %land.lhs.true, %if.end14.do.body120_crit_edge
  %trigger_bits.1 = phi i16 [ 4608, %if.then107 ], [ 512, %do.end116 ], [ %phi.cast, %land.lhs.true ], [ 512, %if.end14.do.body120_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  tail call void @arm_heavy_mb() #7
  %95 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %iobase, align 4
  %add125 = add i32 %96, 2
  %and126 = and i32 %add125, 1048575
  %add127 = or i32 %and126, -18874368
  %97 = inttoptr i32 %add127 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %97, i16 %trigger_bits.1) #7, !srcloc !66
  %98 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %cmp130 = icmp eq i32 %99, 2
  br i1 %cmp130, label %do.body133, label %do.body120.cleanup_crit_edge

do.body120.cleanup_crit_edge:                     ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body133:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %100 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %iobase, align 4
  %add137 = add i32 %101, 6
  %and138 = and i32 %add137, 1048575
  %add139 = or i32 %and138, -18874368
  %102 = inttoptr i32 %add139 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %102, i16 0) #7, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %do.body133, %do.body120.cleanup_crit_edge, %sw.bb4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.body5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %do.body133 ], [ 0, %do.body120.cleanup_crit_edge ], [ -1, %do.body5.cleanup_crit_edge ], [ -1, %sw.bb4.i.cleanup_crit_edge ], [ -1, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a2150_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #7
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %0 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start_src, align 4
  %and.i = and i32 %1, 66
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %1)
  %cmp1.not.i = icmp eq i32 %and.i, %1
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %2 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_begin_src, align 4
  %and.i109 = and i32 %3, 16
  store i32 %and.i109, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109)
  %cmp.i110 = icmp ne i32 %and.i109, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i109, i32 %3)
  %cmp1.not.i111 = icmp eq i32 %and.i109, %3
  %or.cond.i112 = and i1 %cmp.i110, %cmp1.not.i111
  %4 = select i1 %or.cond.i, i1 %or.cond.i112, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %5 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convert_src, align 4
  %and.i114 = and i32 %6, 2
  store i32 %and.i114, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i114)
  %cmp.i115 = icmp ne i32 %and.i114, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i114, i32 %6)
  %cmp1.not.i116 = icmp eq i32 %and.i114, %6
  %or.cond.i117 = and i1 %cmp.i115, %cmp1.not.i116
  %7 = select i1 %4, i1 %or.cond.i117, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %8 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_end_src, align 4
  %and.i119 = and i32 %9, 32
  store i32 %and.i119, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119)
  %cmp.i120 = icmp ne i32 %and.i119, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i119, i32 %9)
  %cmp1.not.i121 = icmp eq i32 %and.i119, %9
  %or.cond.i122 = and i1 %cmp.i120, %cmp1.not.i121
  %10 = select i1 %7, i1 %or.cond.i122, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %11 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stop_src, align 4
  %and.i124 = and i32 %12, 33
  store i32 %and.i124, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i124)
  %cmp.i125 = icmp ne i32 %and.i124, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i124, i32 %12)
  %cmp1.not.i126 = icmp eq i32 %and.i124, %12
  %or.cond.i127 = and i1 %cmp.i125, %cmp1.not.i126
  %13 = select i1 %10, i1 %or.cond.i127, i1 false
  br i1 %13, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = tail call i32 @llvm.ctpop.i32(i32 %1) #7, !range !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp.not.i = icmp ult i32 %14, 2
  %15 = tail call i32 @llvm.ctpop.i32(i32 %12) #7, !range !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp.not.i129 = icmp ult i32 %15, 2
  %16 = select i1 %cmp.not.i, i1 %cmp.not.i129, i1 false
  br i1 %16, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i131 = icmp eq i32 %18, 0
  br i1 %cmp.not.i131, label %if.end17.if.end24_crit_edge, label %if.then.i

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %start_arg, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then.i, %if.end17.if.end24_crit_edge
  %retval.0.i132 = phi i32 [ -22, %if.then.i ], [ 0, %if.end17.if.end24_crit_edge ]
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %20 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i136 = icmp eq i32 %21, 0
  br i1 %cmp.i136, label %if.then.i137, label %if.end24.comedi_check_trigger_arg_min.exit139_crit_edge

if.end24.comedi_check_trigger_arg_min.exit139_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit139

if.then.i137:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %chanlist_len, align 4
  br label %comedi_check_trigger_arg_min.exit139

comedi_check_trigger_arg_min.exit139:             ; preds = %if.then.i137, %if.end24.comedi_check_trigger_arg_min.exit139_crit_edge
  %retval.0.i138 = phi i32 [ -22, %if.then.i137 ], [ 0, %if.end24.comedi_check_trigger_arg_min.exit139_crit_edge ]
  %or26 = or i32 %retval.0.i138, %retval.0.i132
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %23 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chanlist_len, align 4
  %25 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %24)
  %cmp.not.i140 = icmp eq i32 %26, %24
  br i1 %cmp.not.i140, label %comedi_check_trigger_arg_min.exit139.comedi_check_trigger_arg_is.exit143_crit_edge, label %if.then.i141

comedi_check_trigger_arg_min.exit139.comedi_check_trigger_arg_is.exit143_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit139
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit143

if.then.i141:                                     ; preds = %comedi_check_trigger_arg_min.exit139
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit143

comedi_check_trigger_arg_is.exit143:              ; preds = %if.then.i141, %comedi_check_trigger_arg_min.exit139.comedi_check_trigger_arg_is.exit143_crit_edge
  %retval.0.i142 = phi i32 [ -22, %if.then.i141 ], [ 0, %comedi_check_trigger_arg_min.exit139.comedi_check_trigger_arg_is.exit143_crit_edge ]
  %or29 = or i32 %or26, %retval.0.i142
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %12)
  %cmp31 = icmp eq i32 %12, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %28 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i144 = icmp eq i32 %29, 0
  br i1 %cmp31, label %if.then32, label %if.else

if.then32:                                        ; preds = %comedi_check_trigger_arg_is.exit143
  br i1 %cmp.i144, label %if.then32.if.end38.sink.split_crit_edge, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then32.if.end38.sink.split_crit_edge:          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit143
  br i1 %cmp.i144, label %if.else.if.end38_crit_edge, label %if.else.if.end38.sink.split_crit_edge

if.else.if.end38.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.sink.split

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.end38.sink.split:                              ; preds = %if.else.if.end38.sink.split_crit_edge, %if.then32.if.end38.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then32.if.end38.sink.split_crit_edge ], [ 0, %if.else.if.end38.sink.split_crit_edge ]
  %30 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.else.if.end38_crit_edge, %if.then32.if.end38_crit_edge
  %call33.pn = phi i32 [ 0, %if.then32.if.end38_crit_edge ], [ 0, %if.else.if.end38_crit_edge ], [ -22, %if.end38.sink.split ]
  %err.1 = or i32 %or29, %call33.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool39.not = icmp eq i32 %err.1, 0
  br i1 %tobool39.not, label %if.then44, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then44:                                        ; preds = %if.end38
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %31 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %scan_begin_arg, align 4
  %33 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arg, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  call fastcc void @a2150_get_timing(ptr noundef %dev, ptr noundef nonnull %arg, i32 noundef %35)
  %36 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arg, align 4
  %38 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %37)
  %cmp.not.i152 = icmp eq i32 %39, %37
  br i1 %cmp.not.i152, label %if.end52, label %comedi_check_trigger_arg_is.exit155

comedi_check_trigger_arg_is.exit155:              ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %37, ptr %scan_begin_arg, align 4
  br label %cleanup

if.end52:                                         ; preds = %if.then44
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %41 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chanlist, align 4
  %tobool53.not = icmp eq ptr %42, null
  br i1 %tobool53.not, label %if.end52.if.end59.thread_crit_edge, label %land.lhs.true

if.end52.if.end59.thread_crit_edge:               ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.thread

land.lhs.true:                                    ; preds = %if.end52
  %43 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp55.not = icmp eq i32 %44, 0
  br i1 %cmp55.not, label %land.lhs.true.if.end59.thread_crit_edge, label %if.end59

land.lhs.true.if.end59.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.thread

if.end59:                                         ; preds = %land.lhs.true
  %call57 = tail call fastcc i32 @a2150_ai_check_chanlist(ptr noundef %dev, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %phi.cmp108 = icmp eq i32 %call57, 0
  br i1 %phi.cmp108, label %if.end59.if.end59.thread_crit_edge, label %if.end59.cleanup_crit_edge

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end59.if.end59.thread_crit_edge:               ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.thread

if.end59.thread:                                  ; preds = %if.end59.if.end59.thread_crit_edge, %land.lhs.true.if.end59.thread_crit_edge, %if.end52.if.end59.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end59.thread, %if.end59.cleanup_crit_edge, %comedi_check_trigger_arg_is.exit155, %if.end38.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end38.cleanup_crit_edge ], [ 4, %comedi_check_trigger_arg_is.exit155 ], [ 0, %if.end59.thread ], [ 5, %if.end59.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a2150_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %irq_dma_bits = getelementptr inbounds %struct.a2150_private, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %irq_dma_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_dma_bits, align 4
  %and = and i32 %3, -2057
  store i32 %and, ptr %irq_dma_bits, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %irq_dma_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_dma_bits, align 4
  %conv = trunc i32 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add = add i32 %8, 18
  %and4 = and i32 %add, 1048575
  %add5 = or i32 %and4, -18874368
  %9 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %6) #7, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add11 = add i32 %11, 8
  %and12 = and i32 %add11, 1048575
  %add13 = or i32 %and12, -18874368
  %12 = inttoptr i32 %add13 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %12, i16 0) #7, !srcloc !66
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a2150_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %dpnt = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %desc2 = getelementptr inbounds %struct.comedi_isadma, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc2, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %6 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_subdev, align 4
  %async3 = getelementptr inbounds %struct.comedi_subdevice, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %async3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %async3, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dpnt) #7
  %12 = ptrtoint ptr %dpnt to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 -1, ptr %dpnt, align 2, !annotation !89
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %13 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add = add i32 %15, 18
  %and = and i32 %add, 1048575
  %add5 = or i32 %and, -18874368
  %16 = inttoptr i32 %add5 to ptr
  %17 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %16) #7, !srcloc !63
  %18 = tail call i16 @llvm.bswap.i16(i16 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %conv = zext i16 %18 to i32
  %and7 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %cmp = icmp eq i32 %and7, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %and11 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %events = getelementptr inbounds %struct.comedi_async, ptr %9, i32 0, i32 16
  %19 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %events, align 4
  %or = or i32 %20, 16
  store i32 %or, ptr %events, align 4
  %call14 = tail call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %7) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %and16 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %cmp17 = icmp eq i32 %and16, 0
  br i1 %cmp17, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %events20 = getelementptr inbounds %struct.comedi_async, ptr %9, i32 0, i32 16
  %21 = ptrtoint ptr %events20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %events20, align 4
  %or21 = or i32 %22, 16
  store i32 %or21, ptr %events20, align 4
  %call22 = tail call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %7) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %size = getelementptr inbounds %struct.comedi_isadma_desc, ptr %5, i32 0, i32 4
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  %subdev_flags.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %7, i32 0, i32 4
  %25 = ptrtoint ptr %subdev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %subdev_flags.i.i, align 4
  %and.i.i = and i32 %26, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %shr.i = lshr i32 %24, %cond.i.i
  %count = getelementptr inbounds %struct.a2150_private, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %shr.i)
  %cmp27 = icmp ult i32 %28, %shr.i
  br i1 %cmp27, label %land.lhs.true, label %if.end23.if.end33_crit_edge

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %9, i32 0, i32 17, i32 10
  %29 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %30)
  %cmp29 = icmp eq i32 %30, 32
  %spec.select = select i1 %cmp29, i32 %28, i32 %shr.i
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true, %if.end23.if.end33_crit_edge
  %num_points.0 = phi i32 [ %shr.i, %if.end23.if.end33_crit_edge ], [ %spec.select, %land.lhs.true ]
  %stop_src34 = getelementptr inbounds %struct.comedi_async, ptr %9, i32 0, i32 17, i32 10
  %31 = ptrtoint ptr %stop_src34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stop_src34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp35 = icmp eq i32 %32, 1
  br i1 %cmp35, label %if.end33.if.end54_crit_edge, label %if.else

if.end33.if.end54_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.else:                                          ; preds = %if.end33
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %shr.i)
  %cmp41 = icmp ugt i32 %28, %shr.i
  br i1 %cmp41, label %if.then43, label %if.else.if.end54_crit_edge

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %sub45 = sub i32 %28, %shr.i
  %33 = tail call i32 @llvm.umin.i32(i32 %sub45, i32 %shr.i)
  br label %if.end54

if.end54:                                         ; preds = %if.then43, %if.else.if.end54_crit_edge, %if.end33.if.end54_crit_edge
  %leftover.0 = phi i32 [ 0, %if.else.if.end54_crit_edge ], [ %33, %if.then43 ], [ %shr.i, %if.end33.if.end54_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_points.0)
  %cmp55155.not = icmp eq i32 %num_points.0, 0
  br i1 %cmp55155.not, label %if.end54.for.end_crit_edge, label %if.end54.for.body_crit_edge

if.end54.for.body_crit_edge:                      ; preds = %if.end54
  br label %for.body

if.end54.for.end_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end54.for.body_crit_edge
  %i.0156 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end54.for.body_crit_edge ]
  %arrayidx57 = getelementptr i16, ptr %11, i32 %i.0156
  %34 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx57, align 2
  %36 = xor i16 %35, -32768
  %37 = ptrtoint ptr %dpnt to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %dpnt, align 2
  %call60 = call i32 @comedi_buf_write_samples(ptr noundef %7, ptr noundef nonnull %dpnt, i32 noundef 1) #7
  %38 = ptrtoint ptr %stop_src34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stop_src34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %39)
  %cmp62 = icmp eq i32 %39, 32
  br i1 %cmp62, label %if.then64, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then64:                                        ; preds = %for.body
  %40 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %count, align 4
  %dec = add i32 %41, -1
  store i32 %dec, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp66 = icmp eq i32 %dec, 0
  br i1 %cmp66, label %if.then68, label %if.then64.for.inc_crit_edge

if.then64.for.inc_crit_edge:                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then68:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  %events69 = getelementptr inbounds %struct.comedi_async, ptr %9, i32 0, i32 16
  %42 = ptrtoint ptr %events69 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %events69, align 4
  %or70 = or i32 %43, 2
  store i32 %or70, ptr %events69, align 4
  br label %for.end

for.inc:                                          ; preds = %if.then64.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0156, 1
  %exitcond.not = icmp eq i32 %inc, %num_points.0
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then68, %if.end54.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %leftover.0)
  %tobool73.not = icmp eq i32 %leftover.0, 0
  br i1 %tobool73.not, label %for.end.if.end77_crit_edge, label %if.then74

for.end.if.end77_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then74:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %subdev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %subdev_flags.i.i, align 4
  %and.i.i152 = and i32 %45, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i152)
  %tobool.not.i.i153 = icmp eq i32 %and.i.i152, 0
  %cond.i.i154 = select i1 %tobool.not.i.i153, i32 1, i32 2
  %shl.i = shl i32 %leftover.0, %cond.i.i154
  %46 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shl.i, ptr %size, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %for.end.if.end77_crit_edge
  %call78 = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %7) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %iobase, align 4
  %add80 = add i32 %48, 14
  %and81 = and i32 %add80, 1048575
  %add82 = or i32 %and81, -18874368
  %49 = inttoptr i32 %add82 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %49, i16 0) #7, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then19 ], [ 1, %if.end77 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dpnt) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a2150_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 18
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  %4 = and i16 %3, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @a2150_get_timing(ptr nocapture noundef readonly %dev, ptr nocapture noundef %period, i32 noundef %flags) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %clock = getelementptr inbounds %struct.a2150_board, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clock, align 4
  %mul = shl i32 %5, 3
  %num_clocks = getelementptr inbounds %struct.a2150_board, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_clocks, align 4
  %sub = add i32 %7, -1
  %arrayidx2 = getelementptr %struct.a2150_board, ptr %1, i32 0, i32 1, i32 %sub
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %10 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp = icmp ult i32 %11, %9
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %period, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %mul)
  %cmp5 = icmp ugt i32 %14, %mul
  br i1 %cmp5, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %period, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %16 = ptrtoint ptr %num_clocks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp111 = icmp sgt i32 %17, 0
  br i1 %cmp111, label %if.end7.for.body12_crit_edge, label %if.end7.for.inc26.3_crit_edge

if.end7.for.inc26.3_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc26.3

if.end7.for.body12_crit_edge:                     ; preds = %if.end7
  br label %for.body12

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %if.end7.for.body12_crit_edge
  %j.08 = phi i32 [ %inc, %for.inc.for.body12_crit_edge ], [ 0, %if.end7.for.body12_crit_edge ]
  %glb_index.17 = phi i32 [ %glb_index.2, %for.inc.for.body12_crit_edge ], [ %sub, %if.end7.for.body12_crit_edge ]
  %lub_index.15 = phi i32 [ %lub_index.2, %for.inc.for.body12_crit_edge ], [ 0, %if.end7.for.body12_crit_edge ]
  %lub_divisor_shift.14 = phi i32 [ %lub_divisor_shift.2, %for.inc.for.body12_crit_edge ], [ 3, %if.end7.for.body12_crit_edge ]
  %glb.13 = phi i32 [ %glb.2, %for.inc.for.body12_crit_edge ], [ %9, %if.end7.for.body12_crit_edge ]
  %lub.12 = phi i32 [ %lub.2, %for.inc.for.body12_crit_edge ], [ %mul, %if.end7.for.body12_crit_edge ]
  %arrayidx14 = getelementptr %struct.a2150_board, ptr %1, i32 0, i32 1, i32 %j.08
  %18 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %lub.12)
  %cmp17 = icmp slt i32 %19, %lub.12
  br i1 %cmp17, label %land.lhs.true, label %for.body12.if.end20_crit_edge

for.body12.if.end20_crit_edge:                    ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true:                                    ; preds = %for.body12
  %20 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp18.not = icmp ult i32 %19, %21
  br i1 %cmp18.not, label %land.lhs.true.if.end20_crit_edge, label %if.then19

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %land.lhs.true.if.end20_crit_edge, %for.body12.if.end20_crit_edge
  %lub.2 = phi i32 [ %19, %if.then19 ], [ %lub.12, %land.lhs.true.if.end20_crit_edge ], [ %lub.12, %for.body12.if.end20_crit_edge ]
  %lub_divisor_shift.2 = phi i32 [ 0, %if.then19 ], [ %lub_divisor_shift.14, %land.lhs.true.if.end20_crit_edge ], [ %lub_divisor_shift.14, %for.body12.if.end20_crit_edge ]
  %lub_index.2 = phi i32 [ %j.08, %if.then19 ], [ %lub_index.15, %land.lhs.true.if.end20_crit_edge ], [ %lub_index.15, %for.body12.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %glb.13)
  %cmp21 = icmp sgt i32 %19, %glb.13
  br i1 %cmp21, label %land.lhs.true22, label %if.end20.for.inc_crit_edge

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true22:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp23.not = icmp ugt i32 %19, %23
  %spec.select = select i1 %cmp23.not, i32 %glb.13, i32 %19
  %spec.select42 = select i1 %cmp23.not, i32 %glb_index.17, i32 %j.08
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true22, %if.end20.for.inc_crit_edge
  %glb.2 = phi i32 [ %glb.13, %if.end20.for.inc_crit_edge ], [ %spec.select, %land.lhs.true22 ]
  %glb_index.2 = phi i32 [ %glb_index.17, %if.end20.for.inc_crit_edge ], [ %spec.select42, %land.lhs.true22 ]
  %inc = add nuw nsw i32 %j.08, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %for.inc26, label %for.inc.for.body12_crit_edge

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12

for.inc26:                                        ; preds = %for.inc
  br i1 %cmp111, label %for.inc26.for.body12.1_crit_edge, label %for.inc26.for.inc26.3_crit_edge

for.inc26.for.inc26.3_crit_edge:                  ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc26.3

for.inc26.for.body12.1_crit_edge:                 ; preds = %for.inc26
  br label %for.body12.1

for.body12.1:                                     ; preds = %for.inc.1.for.body12.1_crit_edge, %for.inc26.for.body12.1_crit_edge
  %j.08.1 = phi i32 [ %inc.1, %for.inc.1.for.body12.1_crit_edge ], [ 0, %for.inc26.for.body12.1_crit_edge ]
  %glb_index.17.1 = phi i32 [ %glb_index.2.1, %for.inc.1.for.body12.1_crit_edge ], [ %glb_index.2, %for.inc26.for.body12.1_crit_edge ]
  %glb_divisor_shift.16.1 = phi i32 [ %glb_divisor_shift.2.1, %for.inc.1.for.body12.1_crit_edge ], [ 0, %for.inc26.for.body12.1_crit_edge ]
  %lub_index.15.1 = phi i32 [ %lub_index.2.1, %for.inc.1.for.body12.1_crit_edge ], [ %lub_index.2, %for.inc26.for.body12.1_crit_edge ]
  %lub_divisor_shift.14.1 = phi i32 [ %lub_divisor_shift.2.1, %for.inc.1.for.body12.1_crit_edge ], [ %lub_divisor_shift.2, %for.inc26.for.body12.1_crit_edge ]
  %glb.13.1 = phi i32 [ %glb.2.1, %for.inc.1.for.body12.1_crit_edge ], [ %glb.2, %for.inc26.for.body12.1_crit_edge ]
  %lub.12.1 = phi i32 [ %lub.2.1, %for.inc.1.for.body12.1_crit_edge ], [ %lub.2, %for.inc26.for.body12.1_crit_edge ]
  %arrayidx14.1 = getelementptr %struct.a2150_board, ptr %1, i32 0, i32 1, i32 %j.08.1
  %24 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx14.1, align 4
  %mul16.1 = shl i32 %25, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul16.1, i32 %lub.12.1)
  %cmp17.1 = icmp slt i32 %mul16.1, %lub.12.1
  br i1 %cmp17.1, label %land.lhs.true.1, label %for.body12.1.if.end20.1_crit_edge

for.body12.1.if.end20.1_crit_edge:                ; preds = %for.body12.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.1

land.lhs.true.1:                                  ; preds = %for.body12.1
  %26 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul16.1, i32 %27)
  %cmp18.not.1 = icmp ult i32 %mul16.1, %27
  br i1 %cmp18.not.1, label %land.lhs.true.1.if.end20.1_crit_edge, label %if.then19.1

land.lhs.true.1.if.end20.1_crit_edge:             ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.1

if.then19.1:                                      ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.1

if.end20.1:                                       ; preds = %if.then19.1, %land.lhs.true.1.if.end20.1_crit_edge, %for.body12.1.if.end20.1_crit_edge
  %lub.2.1 = phi i32 [ %mul16.1, %if.then19.1 ], [ %lub.12.1, %land.lhs.true.1.if.end20.1_crit_edge ], [ %lub.12.1, %for.body12.1.if.end20.1_crit_edge ]
  %lub_divisor_shift.2.1 = phi i32 [ 1, %if.then19.1 ], [ %lub_divisor_shift.14.1, %land.lhs.true.1.if.end20.1_crit_edge ], [ %lub_divisor_shift.14.1, %for.body12.1.if.end20.1_crit_edge ]
  %lub_index.2.1 = phi i32 [ %j.08.1, %if.then19.1 ], [ %lub_index.15.1, %land.lhs.true.1.if.end20.1_crit_edge ], [ %lub_index.15.1, %for.body12.1.if.end20.1_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mul16.1, i32 %glb.13.1)
  %cmp21.1 = icmp sgt i32 %mul16.1, %glb.13.1
  br i1 %cmp21.1, label %land.lhs.true22.1, label %if.end20.1.for.inc.1_crit_edge

if.end20.1.for.inc.1_crit_edge:                   ; preds = %if.end20.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

land.lhs.true22.1:                                ; preds = %if.end20.1
  %28 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul16.1, i32 %29)
  %cmp23.not.1 = icmp ugt i32 %mul16.1, %29
  br i1 %cmp23.not.1, label %land.lhs.true22.1.for.inc.1_crit_edge, label %if.then24.1

land.lhs.true22.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true22.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then24.1:                                      ; preds = %land.lhs.true22.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then24.1, %land.lhs.true22.1.for.inc.1_crit_edge, %if.end20.1.for.inc.1_crit_edge
  %glb.2.1 = phi i32 [ %mul16.1, %if.then24.1 ], [ %glb.13.1, %land.lhs.true22.1.for.inc.1_crit_edge ], [ %glb.13.1, %if.end20.1.for.inc.1_crit_edge ]
  %glb_divisor_shift.2.1 = phi i32 [ 1, %if.then24.1 ], [ %glb_divisor_shift.16.1, %land.lhs.true22.1.for.inc.1_crit_edge ], [ %glb_divisor_shift.16.1, %if.end20.1.for.inc.1_crit_edge ]
  %glb_index.2.1 = phi i32 [ %j.08.1, %if.then24.1 ], [ %glb_index.17.1, %land.lhs.true22.1.for.inc.1_crit_edge ], [ %glb_index.17.1, %if.end20.1.for.inc.1_crit_edge ]
  %inc.1 = add nuw nsw i32 %j.08.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %17
  br i1 %exitcond.1.not, label %for.inc26.1, label %for.inc.1.for.body12.1_crit_edge

for.inc.1.for.body12.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.1

for.inc26.1:                                      ; preds = %for.inc.1
  br i1 %cmp111, label %for.inc26.1.for.body12.2_crit_edge, label %for.inc26.1.for.inc26.3_crit_edge

for.inc26.1.for.inc26.3_crit_edge:                ; preds = %for.inc26.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc26.3

for.inc26.1.for.body12.2_crit_edge:               ; preds = %for.inc26.1
  br label %for.body12.2

for.body12.2:                                     ; preds = %for.inc.2.for.body12.2_crit_edge, %for.inc26.1.for.body12.2_crit_edge
  %j.08.2 = phi i32 [ %inc.2, %for.inc.2.for.body12.2_crit_edge ], [ 0, %for.inc26.1.for.body12.2_crit_edge ]
  %glb_index.17.2 = phi i32 [ %glb_index.2.2, %for.inc.2.for.body12.2_crit_edge ], [ %glb_index.2.1, %for.inc26.1.for.body12.2_crit_edge ]
  %glb_divisor_shift.16.2 = phi i32 [ %glb_divisor_shift.2.2, %for.inc.2.for.body12.2_crit_edge ], [ %glb_divisor_shift.2.1, %for.inc26.1.for.body12.2_crit_edge ]
  %lub_index.15.2 = phi i32 [ %lub_index.2.2, %for.inc.2.for.body12.2_crit_edge ], [ %lub_index.2.1, %for.inc26.1.for.body12.2_crit_edge ]
  %lub_divisor_shift.14.2 = phi i32 [ %lub_divisor_shift.2.2, %for.inc.2.for.body12.2_crit_edge ], [ %lub_divisor_shift.2.1, %for.inc26.1.for.body12.2_crit_edge ]
  %glb.13.2 = phi i32 [ %glb.2.2, %for.inc.2.for.body12.2_crit_edge ], [ %glb.2.1, %for.inc26.1.for.body12.2_crit_edge ]
  %lub.12.2 = phi i32 [ %lub.2.2, %for.inc.2.for.body12.2_crit_edge ], [ %lub.2.1, %for.inc26.1.for.body12.2_crit_edge ]
  %arrayidx14.2 = getelementptr %struct.a2150_board, ptr %1, i32 0, i32 1, i32 %j.08.2
  %30 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx14.2, align 4
  %mul16.2 = shl i32 %31, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul16.2, i32 %lub.12.2)
  %cmp17.2 = icmp slt i32 %mul16.2, %lub.12.2
  br i1 %cmp17.2, label %land.lhs.true.2, label %for.body12.2.if.end20.2_crit_edge

for.body12.2.if.end20.2_crit_edge:                ; preds = %for.body12.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.2

land.lhs.true.2:                                  ; preds = %for.body12.2
  %32 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul16.2, i32 %33)
  %cmp18.not.2 = icmp ult i32 %mul16.2, %33
  br i1 %cmp18.not.2, label %land.lhs.true.2.if.end20.2_crit_edge, label %if.then19.2

land.lhs.true.2.if.end20.2_crit_edge:             ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.2

if.then19.2:                                      ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.2

if.end20.2:                                       ; preds = %if.then19.2, %land.lhs.true.2.if.end20.2_crit_edge, %for.body12.2.if.end20.2_crit_edge
  %lub.2.2 = phi i32 [ %mul16.2, %if.then19.2 ], [ %lub.12.2, %land.lhs.true.2.if.end20.2_crit_edge ], [ %lub.12.2, %for.body12.2.if.end20.2_crit_edge ]
  %lub_divisor_shift.2.2 = phi i32 [ 2, %if.then19.2 ], [ %lub_divisor_shift.14.2, %land.lhs.true.2.if.end20.2_crit_edge ], [ %lub_divisor_shift.14.2, %for.body12.2.if.end20.2_crit_edge ]
  %lub_index.2.2 = phi i32 [ %j.08.2, %if.then19.2 ], [ %lub_index.15.2, %land.lhs.true.2.if.end20.2_crit_edge ], [ %lub_index.15.2, %for.body12.2.if.end20.2_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mul16.2, i32 %glb.13.2)
  %cmp21.2 = icmp sgt i32 %mul16.2, %glb.13.2
  br i1 %cmp21.2, label %land.lhs.true22.2, label %if.end20.2.for.inc.2_crit_edge

if.end20.2.for.inc.2_crit_edge:                   ; preds = %if.end20.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

land.lhs.true22.2:                                ; preds = %if.end20.2
  %34 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul16.2, i32 %35)
  %cmp23.not.2 = icmp ugt i32 %mul16.2, %35
  br i1 %cmp23.not.2, label %land.lhs.true22.2.for.inc.2_crit_edge, label %if.then24.2

land.lhs.true22.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true22.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.then24.2:                                      ; preds = %land.lhs.true22.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then24.2, %land.lhs.true22.2.for.inc.2_crit_edge, %if.end20.2.for.inc.2_crit_edge
  %glb.2.2 = phi i32 [ %mul16.2, %if.then24.2 ], [ %glb.13.2, %land.lhs.true22.2.for.inc.2_crit_edge ], [ %glb.13.2, %if.end20.2.for.inc.2_crit_edge ]
  %glb_divisor_shift.2.2 = phi i32 [ 2, %if.then24.2 ], [ %glb_divisor_shift.16.2, %land.lhs.true22.2.for.inc.2_crit_edge ], [ %glb_divisor_shift.16.2, %if.end20.2.for.inc.2_crit_edge ]
  %glb_index.2.2 = phi i32 [ %j.08.2, %if.then24.2 ], [ %glb_index.17.2, %land.lhs.true22.2.for.inc.2_crit_edge ], [ %glb_index.17.2, %if.end20.2.for.inc.2_crit_edge ]
  %inc.2 = add nuw nsw i32 %j.08.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, %17
  br i1 %exitcond.2.not, label %for.inc26.2, label %for.inc.2.for.body12.2_crit_edge

for.inc.2.for.body12.2_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.2

for.inc26.2:                                      ; preds = %for.inc.2
  br i1 %cmp111, label %for.inc26.2.for.body12.3_crit_edge, label %for.inc26.2.for.inc26.3_crit_edge

for.inc26.2.for.inc26.3_crit_edge:                ; preds = %for.inc26.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc26.3

for.inc26.2.for.body12.3_crit_edge:               ; preds = %for.inc26.2
  br label %for.body12.3

for.body12.3:                                     ; preds = %for.inc.3.for.body12.3_crit_edge, %for.inc26.2.for.body12.3_crit_edge
  %j.08.3 = phi i32 [ %inc.3, %for.inc.3.for.body12.3_crit_edge ], [ 0, %for.inc26.2.for.body12.3_crit_edge ]
  %glb_index.17.3 = phi i32 [ %glb_index.2.3, %for.inc.3.for.body12.3_crit_edge ], [ %glb_index.2.2, %for.inc26.2.for.body12.3_crit_edge ]
  %glb_divisor_shift.16.3 = phi i32 [ %glb_divisor_shift.2.3, %for.inc.3.for.body12.3_crit_edge ], [ %glb_divisor_shift.2.2, %for.inc26.2.for.body12.3_crit_edge ]
  %lub_index.15.3 = phi i32 [ %lub_index.2.3, %for.inc.3.for.body12.3_crit_edge ], [ %lub_index.2.2, %for.inc26.2.for.body12.3_crit_edge ]
  %lub_divisor_shift.14.3 = phi i32 [ %lub_divisor_shift.2.3, %for.inc.3.for.body12.3_crit_edge ], [ %lub_divisor_shift.2.2, %for.inc26.2.for.body12.3_crit_edge ]
  %glb.13.3 = phi i32 [ %glb.2.3, %for.inc.3.for.body12.3_crit_edge ], [ %glb.2.2, %for.inc26.2.for.body12.3_crit_edge ]
  %lub.12.3 = phi i32 [ %lub.2.3, %for.inc.3.for.body12.3_crit_edge ], [ %lub.2.2, %for.inc26.2.for.body12.3_crit_edge ]
  %arrayidx14.3 = getelementptr %struct.a2150_board, ptr %1, i32 0, i32 1, i32 %j.08.3
  %36 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx14.3, align 4
  %mul16.3 = shl i32 %37, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul16.3, i32 %lub.12.3)
  %cmp17.3 = icmp slt i32 %mul16.3, %lub.12.3
  br i1 %cmp17.3, label %land.lhs.true.3, label %for.body12.3.if.end20.3_crit_edge

for.body12.3.if.end20.3_crit_edge:                ; preds = %for.body12.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.3

land.lhs.true.3:                                  ; preds = %for.body12.3
  %38 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul16.3, i32 %39)
  %cmp18.not.3 = icmp ult i32 %mul16.3, %39
  br i1 %cmp18.not.3, label %land.lhs.true.3.if.end20.3_crit_edge, label %if.then19.3

land.lhs.true.3.if.end20.3_crit_edge:             ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.3

if.then19.3:                                      ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.3

if.end20.3:                                       ; preds = %if.then19.3, %land.lhs.true.3.if.end20.3_crit_edge, %for.body12.3.if.end20.3_crit_edge
  %lub.2.3 = phi i32 [ %mul16.3, %if.then19.3 ], [ %lub.12.3, %land.lhs.true.3.if.end20.3_crit_edge ], [ %lub.12.3, %for.body12.3.if.end20.3_crit_edge ]
  %lub_divisor_shift.2.3 = phi i32 [ 3, %if.then19.3 ], [ %lub_divisor_shift.14.3, %land.lhs.true.3.if.end20.3_crit_edge ], [ %lub_divisor_shift.14.3, %for.body12.3.if.end20.3_crit_edge ]
  %lub_index.2.3 = phi i32 [ %j.08.3, %if.then19.3 ], [ %lub_index.15.3, %land.lhs.true.3.if.end20.3_crit_edge ], [ %lub_index.15.3, %for.body12.3.if.end20.3_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mul16.3, i32 %glb.13.3)
  %cmp21.3 = icmp sgt i32 %mul16.3, %glb.13.3
  br i1 %cmp21.3, label %land.lhs.true22.3, label %if.end20.3.for.inc.3_crit_edge

if.end20.3.for.inc.3_crit_edge:                   ; preds = %if.end20.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

land.lhs.true22.3:                                ; preds = %if.end20.3
  %40 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul16.3, i32 %41)
  %cmp23.not.3 = icmp ugt i32 %mul16.3, %41
  br i1 %cmp23.not.3, label %land.lhs.true22.3.for.inc.3_crit_edge, label %if.then24.3

land.lhs.true22.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true22.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.then24.3:                                      ; preds = %land.lhs.true22.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then24.3, %land.lhs.true22.3.for.inc.3_crit_edge, %if.end20.3.for.inc.3_crit_edge
  %glb.2.3 = phi i32 [ %mul16.3, %if.then24.3 ], [ %glb.13.3, %land.lhs.true22.3.for.inc.3_crit_edge ], [ %glb.13.3, %if.end20.3.for.inc.3_crit_edge ]
  %glb_divisor_shift.2.3 = phi i32 [ 3, %if.then24.3 ], [ %glb_divisor_shift.16.3, %land.lhs.true22.3.for.inc.3_crit_edge ], [ %glb_divisor_shift.16.3, %if.end20.3.for.inc.3_crit_edge ]
  %glb_index.2.3 = phi i32 [ %j.08.3, %if.then24.3 ], [ %glb_index.17.3, %land.lhs.true22.3.for.inc.3_crit_edge ], [ %glb_index.17.3, %if.end20.3.for.inc.3_crit_edge ]
  %inc.3 = add nuw nsw i32 %j.08.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, %17
  br i1 %exitcond.3.not, label %for.inc.3.for.inc26.3_crit_edge, label %for.inc.3.for.body12.3_crit_edge

for.inc.3.for.body12.3_crit_edge:                 ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.3

for.inc.3.for.inc26.3_crit_edge:                  ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc26.3

for.inc26.3:                                      ; preds = %for.inc.3.for.inc26.3_crit_edge, %for.inc26.2.for.inc26.3_crit_edge, %for.inc26.1.for.inc26.3_crit_edge, %for.inc26.for.inc26.3_crit_edge, %if.end7.for.inc26.3_crit_edge
  %lub.1.lcssa.3 = phi i32 [ %lub.2.2, %for.inc26.2.for.inc26.3_crit_edge ], [ %lub.2.1, %for.inc26.1.for.inc26.3_crit_edge ], [ %lub.2, %for.inc26.for.inc26.3_crit_edge ], [ %mul, %if.end7.for.inc26.3_crit_edge ], [ %lub.2.3, %for.inc.3.for.inc26.3_crit_edge ]
  %glb.1.lcssa.3 = phi i32 [ %glb.2.2, %for.inc26.2.for.inc26.3_crit_edge ], [ %glb.2.1, %for.inc26.1.for.inc26.3_crit_edge ], [ %glb.2, %for.inc26.for.inc26.3_crit_edge ], [ %9, %if.end7.for.inc26.3_crit_edge ], [ %glb.2.3, %for.inc.3.for.inc26.3_crit_edge ]
  %lub_divisor_shift.1.lcssa.3 = phi i32 [ %lub_divisor_shift.2.2, %for.inc26.2.for.inc26.3_crit_edge ], [ %lub_divisor_shift.2.1, %for.inc26.1.for.inc26.3_crit_edge ], [ %lub_divisor_shift.2, %for.inc26.for.inc26.3_crit_edge ], [ 3, %if.end7.for.inc26.3_crit_edge ], [ %lub_divisor_shift.2.3, %for.inc.3.for.inc26.3_crit_edge ]
  %lub_index.1.lcssa.3 = phi i32 [ %lub_index.2.2, %for.inc26.2.for.inc26.3_crit_edge ], [ %lub_index.2.1, %for.inc26.1.for.inc26.3_crit_edge ], [ %lub_index.2, %for.inc26.for.inc26.3_crit_edge ], [ 0, %if.end7.for.inc26.3_crit_edge ], [ %lub_index.2.3, %for.inc.3.for.inc26.3_crit_edge ]
  %glb_divisor_shift.1.lcssa.3 = phi i32 [ %glb_divisor_shift.2.2, %for.inc26.2.for.inc26.3_crit_edge ], [ %glb_divisor_shift.2.1, %for.inc26.1.for.inc26.3_crit_edge ], [ 0, %for.inc26.for.inc26.3_crit_edge ], [ 0, %if.end7.for.inc26.3_crit_edge ], [ %glb_divisor_shift.2.3, %for.inc.3.for.inc26.3_crit_edge ]
  %glb_index.1.lcssa.3 = phi i32 [ %glb_index.2.2, %for.inc26.2.for.inc26.3_crit_edge ], [ %glb_index.2.1, %for.inc26.1.for.inc26.3_crit_edge ], [ %glb_index.2, %for.inc26.for.inc26.3_crit_edge ], [ %sub, %if.end7.for.inc26.3_crit_edge ], [ %glb_index.2.3, %for.inc.3.for.inc26.3_crit_edge ]
  %and = and i32 %flags, 196608
  %42 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and, label %sw.default [
    i32 65536, label %sw.bb35
    i32 131072, label %for.inc26.3.sw.epilog_crit_edge
  ]

for.inc26.3.sw.epilog_crit_edge:                  ; preds = %for.inc26.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %for.inc26.3
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %period, align 4
  %sub29 = sub i32 %lub.1.lcssa.3, %44
  %sub30 = sub i32 %44, %glb.1.lcssa.3
  call void @__sanitizer_cov_trace_cmp4(i32 %sub29, i32 %sub30)
  %cmp31 = icmp ult i32 %sub29, %sub30
  %lub.1.lcssa.3.glb.1.lcssa.3 = select i1 %cmp31, i32 %lub.1.lcssa.3, i32 %glb.1.lcssa.3
  br label %sw.epilog

sw.bb35:                                          ; preds = %for.inc26.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb35, %sw.default, %for.inc26.3.sw.epilog_crit_edge
  %lub.1.lcssa.3.sink = phi i32 [ %glb.1.lcssa.3, %sw.bb35 ], [ %lub.1.lcssa.3.glb.1.lcssa.3, %sw.default ], [ %lub.1.lcssa.3, %for.inc26.3.sw.epilog_crit_edge ]
  %45 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %lub.1.lcssa.3.sink, ptr %period, align 4
  %config_bits = getelementptr inbounds %struct.a2150_private, ptr %3, i32 0, i32 3
  %46 = ptrtoint ptr %config_bits to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %config_bits, align 4
  %and36 = and i32 %47, -121
  store i32 %and36, ptr %config_bits, align 4
  %48 = load i32, ptr %period, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %lub.1.lcssa.3)
  %cmp37 = icmp eq i32 %48, %lub.1.lcssa.3
  %lub_index.1.lcssa.3.glb_index.1.lcssa.3 = select i1 %cmp37, i32 %lub_index.1.lcssa.3, i32 %glb_index.1.lcssa.3
  %lub_divisor_shift.1.lcssa.3.glb_divisor_shift.1.lcssa.3 = select i1 %cmp37, i32 %lub_divisor_shift.1.lcssa.3, i32 %glb_divisor_shift.1.lcssa.3
  %and46 = shl i32 %lub_index.1.lcssa.3.glb_index.1.lcssa.3, 3
  %shl47 = and i32 %and46, 24
  %and48 = shl i32 %lub_divisor_shift.1.lcssa.3.glb_divisor_shift.1.lcssa.3, 5
  %shl49 = and i32 %and48, 96
  %or50 = or i32 %shl47, %shl49
  %storemerge = or i32 %or50, %and36
  %49 = ptrtoint ptr %config_bits to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %storemerge, ptr %config_bits, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_8254_load(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @a2150_ai_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %0 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chanlist, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 65535
  %shr = lshr i32 %3, 24
  %and3 = and i32 %shr, 3
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %4 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanlist_len, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %5, label %for.cond.preheader [
    i32 2, label %land.lhs.true
    i32 3, label %do.body14
  ]

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3516 = icmp ugt i32 %5, 1
  br i1 %cmp3516, label %for.cond.preheader.for.body.lr.ph_crit_edge, label %for.cond.preheader.cleanup91_crit_edge

for.cond.preheader.cleanup91_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup91

for.cond.preheader.for.body.lr.ph_crit_edge:      ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %land.lhs.true.for.body.lr.ph_crit_edge, %for.cond.preheader.for.body.lr.ph_crit_edge
  %7 = phi i32 [ %5, %for.cond.preheader.for.body.lr.ph_crit_edge ], [ 2, %land.lhs.true.for.body.lr.ph_crit_edge ]
  %8 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chanlist, align 4
  br label %for.body

land.lhs.true:                                    ; preds = %entry
  %trunc = trunc i32 %3 to i16
  %10 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %trunc, label %land.lhs.true.for.body.lr.ph_crit_edge [
    i16 1, label %land.lhs.true.do.body_crit_edge
    i16 3, label %land.lhs.true.do.body_crit_edge20
  ]

land.lhs.true.do.body_crit_edge20:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true.for.body.lr.ph_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %land.lhs.true.do.body_crit_edge20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2150_ai_check_chanlist.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@a2150_ai_check_chanlist, %cleanup91)) #7
          to label %if.then9 [label %cleanup91], !srcloc !93

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @a2150_ai_check_chanlist.__UNIQUE_ID_ddebug234, ptr noundef %12, ptr noundef nonnull @.str.15) #7
  br label %cleanup91

do.body14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2150_ai_check_chanlist.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@a2150_ai_check_chanlist, %cleanup91)) #7
          to label %if.then28 [label %cleanup91], !srcloc !93

if.then28:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev29 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %class_dev29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %class_dev29, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @a2150_ai_check_chanlist.__UNIQUE_ID_ddebug235, ptr noundef %14, ptr noundef nonnull @.str.16) #7
  br label %cleanup91

for.cond:                                         ; preds = %if.end64
  %inc = add nuw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.cond.cleanup91_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup91_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup91

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %aref0.018 = phi i32 [ %and3, %for.body.lr.ph ], [ %and42, %for.cond.for.body_crit_edge ]
  %i.017 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx37 = getelementptr i32, ptr %9, i32 %i.017
  %15 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx37, align 4
  %and38 = and i32 %16, 65535
  %add = add i32 %i.017, %and
  call void @__sanitizer_cov_trace_cmp4(i32 %and38, i32 %add)
  %cmp43.not = icmp eq i32 %and38, %add
  br i1 %cmp43.not, label %if.end64, label %do.body45

do.body45:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2150_ai_check_chanlist.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@a2150_ai_check_chanlist, %cleanup91)) #7
          to label %if.then59 [label %cleanup91], !srcloc !93

if.then59:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev60 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %17 = ptrtoint ptr %class_dev60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %class_dev60, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @a2150_ai_check_chanlist.__UNIQUE_ID_ddebug236, ptr noundef %18, ptr noundef nonnull @.str.17) #7
  br label %cleanup91

if.end64:                                         ; preds = %for.body
  %shr41 = lshr i32 %16, 24
  %and42 = and i32 %shr41, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and38)
  %cmp65 = icmp eq i32 %and38, 2
  %spec.select = select i1 %cmp65, i32 %and42, i32 %aref0.018
  call void @__sanitizer_cov_trace_cmp4(i32 %and42, i32 %spec.select)
  %cmp68.not = icmp eq i32 %and42, %spec.select
  br i1 %cmp68.not, label %for.cond, label %do.body70

do.body70:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @a2150_ai_check_chanlist.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@a2150_ai_check_chanlist, %cleanup91)) #7
          to label %if.then84 [label %cleanup91], !srcloc !93

if.then84:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev85 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %19 = ptrtoint ptr %class_dev85 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %class_dev85, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @a2150_ai_check_chanlist.__UNIQUE_ID_ddebug237, ptr noundef %20, ptr noundef nonnull @.str.18) #7
  br label %cleanup91

cleanup91:                                        ; preds = %if.then84, %do.body70, %if.then59, %do.body45, %for.cond.cleanup91_crit_edge, %if.then28, %do.body14, %if.then9, %do.body, %for.cond.preheader.cleanup91_crit_edge
  %retval.2 = phi i32 [ -22, %if.then9 ], [ -22, %if.then28 ], [ -22, %do.body ], [ -22, %do.body14 ], [ -22, %if.then59 ], [ -22, %if.then84 ], [ -22, %do.body45 ], [ -22, %do.body70 ], [ 0, %for.cond.preheader.cleanup91_crit_edge ], [ 0, %for.cond.cleanup91_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_ni_at_a2150__238_776_ni_at_a2150_driver_init6, !1, !"__initcall__kmod_ni_at_a2150__238_776_ni_at_a2150_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 776, i32 1}
!2 = !{ptr @__exitcall_ni_at_a2150_driver_exit, !1, !"__exitcall_ni_at_a2150_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 778, i32 1}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 779, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 780, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 771, i32 17}
!12 = !{ptr @ni_at_a2150_driver, !13, !"ni_at_a2150_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 770, i32 29}
!14 = distinct !{null, !15, !"timeout", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 689, i32 19}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 752, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @a2150_attach._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @a2150_attach._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 109, i32 11}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 115, i32 11}
!28 = !{ptr @a2150_boards, !29, !"a2150_boards", i1 false, i1 false}
!29 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 107, i32 33}
!30 = !{ptr @range_a2150, !31, !"range_a2150", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 99, i32 35}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 473, i32 3}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @a2150_ai_cmd._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @a2150_ai_cmd._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 551, i32 3}
!39 = !{ptr @a2150_ai_cmd._entry.11, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @a2150_ai_cmd._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 359, i32 3}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @a2150_ai_check_chanlist.__UNIQUE_ID_ddebug234, !42, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 365, i32 3}
!47 = !{ptr @a2150_ai_check_chanlist.__UNIQUE_ID_ddebug235, !46, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 375, i32 4}
!50 = !{ptr @a2150_ai_check_chanlist.__UNIQUE_ID_ddebug236, !49, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/comedi/drivers/ni_at_a2150.c", i32 383, i32 4}
!53 = !{ptr @a2150_ai_check_chanlist.__UNIQUE_ID_ddebug237, !52, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 4642850}
!64 = !{i64 2154247309}
!65 = !{i64 2154248051}
!66 = !{i64 4642650}
!67 = !{i64 2152179661}
!68 = !{i64 2154248626}
!69 = !{i64 2154249573}
!70 = !{i64 2154251744}
!71 = !{i64 2154252281}
!72 = !{i64 2154242145}
!73 = !{i64 2154242679}
!74 = !{i64 2154243222}
!75 = !{i64 2154243736}
!76 = !{i64 2154244209}
!77 = !{i64 2154245108}
!78 = !{i64 2154245790}
!79 = !{i64 2154246046}
!80 = !{i64 2154236589}
!81 = !{i64 2154237223}
!82 = !{i64 2154237747}
!83 = !{i64 2154238258}
!84 = !{i64 2154240472}
!85 = !{i64 2154240978}
!86 = !{i32 0, i32 33}
!87 = !{i64 2154222696}
!88 = !{i64 2154223210}
!89 = !{!"auto-init"}
!90 = !{i64 2154221879}
!91 = !{i64 2154222185}
!92 = !{i64 2154241882}
!93 = !{i64 2148973017, i64 2148973022, i64 2148973035, i64 2148973079, i64 2148973113, i64 2148973134}
