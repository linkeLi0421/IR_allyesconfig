; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/pcl812.c_pt.bc'
source_filename = "../drivers/comedi/drivers/pcl812.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pcl812_board = type { ptr, i32, i32, i32, i32, ptr, i32, i8 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.pcl812_private = type { ptr, i8, i32, i8, i32, i32, i8 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_isadma = type { ptr, ptr, i32, i32, i32, i32 }
%struct.comedi_isadma_desc = type { ptr, i32, i32, i32, i32, i8 }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_pcl812__235_1330_pcl812_driver_init6 = internal global ptr @pcl812_driver_init, section ".initcall6.init", align 4
@pcl812_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @pcl812_attach, ptr @pcl812_detach, ptr null, i32 18, ptr @boardtypes, i32 32 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_pcl812_driver_exit = internal global ptr @pcl812_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author236 = internal constant [44 x i8] c"pcl812.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [43 x i8] c"pcl812.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [42 x i8] c"pcl812.file=drivers/comedi/drivers/pcl812\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [19 x i8] c"pcl812.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcl812\00", [25 x i8] zeroinitializer }, align 32
@boardtypes = internal constant { [18 x %struct.pcl812_board], [128 x i8] } { [18 x %struct.pcl812_board] [%struct.pcl812_board { ptr @.str, i32 2, i32 16, i32 2, i32 33000, ptr @range_bipolar10, i32 56572, i8 -112 }, %struct.pcl812_board { ptr @.str.17, i32 0, i32 16, i32 2, i32 33000, ptr @range_pcl812pg_ai, i32 56572, i8 -112 }, %struct.pcl812_board { ptr @.str.18, i32 0, i32 16, i32 2, i32 10000, ptr @range_pcl812pg_ai, i32 56572, i8 -112 }, %struct.pcl812_board { ptr @.str.19, i32 7, i32 16, i32 2, i32 10000, ptr @range_acl8112dg_ai, i32 56572, i8 -80 }, %struct.pcl812_board { ptr @.str.20, i32 7, i32 16, i32 2, i32 10000, ptr @range_acl8112hg_ai, i32 56572, i8 -80 }, %struct.pcl812_board { ptr @.str.21, i32 9, i32 16, i32 1, i32 10000, ptr @range_pcl813b_ai, i32 12, i8 16 }, %struct.pcl812_board { ptr @.str.22, i32 9, i32 16, i32 0, i32 10000, ptr @range_pcl813b_ai, i32 12, i8 0 }, %struct.pcl812_board { ptr @.str.23, i32 9, i32 16, i32 1, i32 10000, ptr @range_a821pgh_ai, i32 12, i8 16 }, %struct.pcl812_board { ptr @.str.24, i32 7, i32 16, i32 2, i32 10000, ptr @range_acl8112dg_ai, i32 56572, i8 -112 }, %struct.pcl812_board { ptr @.str.25, i32 7, i32 16, i32 2, i32 10000, ptr @range_acl8112hg_ai, i32 56572, i8 -112 }, %struct.pcl812_board { ptr @.str.26, i32 7, i32 16, i32 2, i32 8000, ptr @range_acl8112dg_ai, i32 56572, i8 -112 }, %struct.pcl812_board { ptr @.str.27, i32 7, i32 16, i32 2, i32 8000, ptr @range_acl8112hg_ai, i32 56572, i8 -112 }, %struct.pcl812_board { ptr @.str.28, i32 3, i32 32, i32 0, i32 0, ptr @range_pcl813b_ai, i32 0, i8 0 }, %struct.pcl812_board { ptr @.str.29, i32 1, i32 32, i32 0, i32 0, ptr @range_pcl813b_ai, i32 0, i8 0 }, %struct.pcl812_board { ptr @.str.30, i32 6, i32 32, i32 0, i32 0, ptr @range_acl8113_1_ai, i32 0, i8 0 }, %struct.pcl812_board { ptr @.str.31, i32 5, i32 32, i32 0, i32 0, ptr @range_iso813_1_ai, i32 0, i8 0 }, %struct.pcl812_board { ptr @.str.32, i32 8, i32 16, i32 2, i32 10000, ptr @range_pcl813b2_ai, i32 56572, i8 -16 }, %struct.pcl812_board { ptr @.str.33, i32 8, i32 16, i32 2, i32 10000, ptr @range_pcl813b2_ai, i32 56572, i8 -48 }], [128 x i8] zeroinitializer }, align 32
@range_unipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@pcl812_handle_eoc.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -61, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcl812_handle_eoc\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/comedi/drivers/pcl812.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"A/D cmd IRQ without DRDY!\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_bipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_bipolar2_5 = external dso_local constant %struct.comedi_lrange, align 4
@range_pcl812pg2_ai = internal constant { { i32, [5 x %struct.comedi_krange] }, [32 x i8] } { { i32, [5 x %struct.comedi_krange] } { i32 5, [5 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }] }, [32 x i8] zeroinitializer }, align 32
@range812_bipolar1_25 = internal constant { { i32, [1 x %struct.comedi_krange] }, [16 x i8] } { { i32, [1 x %struct.comedi_krange] } { i32 1, [1 x %struct.comedi_krange] [%struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }] }, [16 x i8] zeroinitializer }, align 32
@range812_bipolar0_625 = internal constant { { i32, [1 x %struct.comedi_krange] }, [16 x i8] } { { i32, [1 x %struct.comedi_krange] } { i32 1, [1 x %struct.comedi_krange] [%struct.comedi_krange { i32 -625000, i32 625000, i32 0 }] }, [16 x i8] zeroinitializer }, align 32
@range812_bipolar0_3125 = internal constant { { i32, [1 x %struct.comedi_krange] }, [16 x i8] } { { i32, [1 x %struct.comedi_krange] } { i32 1, [1 x %struct.comedi_krange] [%struct.comedi_krange { i32 -312500, i32 312500, i32 0 }] }, [16 x i8] zeroinitializer }, align 32
@range_pcl813b2_ai = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_iso813_1_ai = internal constant { { i32, [5 x %struct.comedi_krange] }, [32 x i8] } { { i32, [5 x %struct.comedi_krange] } { i32 5, [5 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 -312500, i32 312500, i32 0 }] }, [32 x i8] zeroinitializer }, align 32
@range_iso813_1_2_ai = internal constant { { i32, [5 x %struct.comedi_krange] }, [32 x i8] } { { i32, [5 x %struct.comedi_krange] } { i32 5, [5 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 625000, i32 0 }] }, [32 x i8] zeroinitializer }, align 32
@range_iso813_2_ai = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_iso813_2_2_ai = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_acl8113_1_ai = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_acl8113_1_2_ai = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_acl8113_2_ai = internal constant { { i32, [3 x %struct.comedi_krange] }, [56 x i8] } { { i32, [3 x %struct.comedi_krange] } { i32 3, [3 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }] }, [56 x i8] zeroinitializer }, align 32
@range_acl8113_2_2_ai = internal constant { { i32, [3 x %struct.comedi_krange] }, [56 x i8] } { { i32, [3 x %struct.comedi_krange] } { i32 3, [3 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }] }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcl812pg\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"acl8112pg\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"acl8112dg\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"acl8112hg\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"a821pgl\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"a821pglnda\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"a821pgh\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"a822pgl\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"a822pgh\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"a823pgl\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"a823pgh\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcl813\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcl813b\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"acl8113\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iso813\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"acl8216\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"a826pg\00", [25 x i8] zeroinitializer }, align 32
@range_pcl812pg_ai = internal constant { { i32, [5 x %struct.comedi_krange] }, [32 x i8] } { { i32, [5 x %struct.comedi_krange] } { i32 5, [5 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 -312500, i32 312500, i32 0 }] }, [32 x i8] zeroinitializer }, align 32
@range_acl8112dg_ai = internal constant { { i32, [9 x %struct.comedi_krange] }, [48 x i8] } { { i32, [9 x %struct.comedi_krange] } { i32 9, [9 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@range_acl8112hg_ai = internal constant { { i32, [12 x %struct.comedi_krange] }, [44 x i8] } { { i32, [12 x %struct.comedi_krange] } { i32 12, [12 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 -5000, i32 5000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -10000, i32 10000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_pcl813b_ai = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_a821pgh_ai = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 -5000, i32 5000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.40 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.41 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.46 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"pcl812_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1321, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 1322, i32 17 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"boardtypes\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 345, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 780, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [19 x i8] c"range_pcl812pg2_ai\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 161, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant [21 x i8] c"range812_bipolar1_25\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 171, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant [22 x i8] c"range812_bipolar0_625\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 177, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant [23 x i8] c"range812_bipolar0_3125\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 183, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"range_pcl813b2_ai\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 198, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant [18 x i8] c"range_iso813_1_ai\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 207, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"range_iso813_1_2_ai\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 217, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"range_iso813_2_ai\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 227, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant [20 x i8] c"range_iso813_2_2_ai\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 236, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"range_acl8113_1_ai\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 245, i32 35 }
@___asan_gen_.95 = private unnamed_addr constant [21 x i8] c"range_acl8113_1_2_ai\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 254, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"range_acl8113_2_ai\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 263, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant [21 x i8] c"range_acl8113_2_2_ai\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 271, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 357, i32 12 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 367, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 377, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 388, i32 12 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 399, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 408, i32 12 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 415, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 424, i32 12 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 434, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 444, i32 12 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 454, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 464, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 469, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 474, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 479, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 484, i32 12 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 496, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant [18 x i8] c"range_pcl812pg_ai\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 151, i32 35 }
@___asan_gen_.158 = private unnamed_addr constant [19 x i8] c"range_acl8112dg_ai\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 279, i32 35 }
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c"range_acl8112hg_ai\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 293, i32 35 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"range_pcl813b_ai\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 189, i32 35 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"range_a821pgh_ai\00", align 1
@___asan_gen_.168 = private constant [35 x i8] c"../drivers/comedi/drivers/pcl812.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 310, i32 35 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_pcl812_driver_exit, ptr @__initcall__kmod_pcl812__235_1330_pcl812_driver_init6, ptr @pcl812_driver_exit, ptr @pcl812_driver, ptr @.str, ptr @boardtypes, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @range_pcl812pg2_ai, ptr @range812_bipolar1_25, ptr @range812_bipolar0_625, ptr @range812_bipolar0_3125, ptr @range_pcl813b2_ai, ptr @range_iso813_1_ai, ptr @range_iso813_1_2_ai, ptr @range_iso813_2_ai, ptr @range_iso813_2_2_ai, ptr @range_acl8113_1_ai, ptr @range_acl8113_1_2_ai, ptr @range_acl8113_2_ai, ptr @range_acl8113_2_2_ai, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @range_pcl812pg_ai, ptr @range_acl8112dg_ai, ptr @range_acl8112hg_ai, ptr @range_pcl813b_ai, ptr @range_a821pgh_ai], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcl812_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boardtypes to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_pcl812pg2_ai to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range812_bipolar1_25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range812_bipolar0_625 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range812_bipolar0_3125 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_pcl813b2_ai to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_iso813_1_ai to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_iso813_1_2_ai to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_iso813_2_ai to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_iso813_2_2_ai to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_acl8113_1_ai to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_acl8113_1_2_ai to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_acl8113_2_ai to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_acl8113_2_2_ai to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_pcl812pg_ai to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_acl8112dg_ai to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_acl8112hg_ai to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_pcl813b_ai to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_a821pgh_ai to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl812_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @pcl812_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcl812_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @comedi_driver_unregister(ptr noundef nonnull @pcl812_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl812_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %call = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 28) #5
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
  %call1 = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %3, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %irq_bits = getelementptr inbounds %struct.pcl812_board, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %irq_bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end4.if.end25_crit_edge, label %if.then6

if.end4.if.end25_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then6:                                         ; preds = %if.end4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %call7 = tail call ptr @comedi_8254_init(i32 noundef %7, i32 noundef 500, i32 noundef 1, i32 noundef 0) #5
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %8 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %pacer, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.then6.cleanup_crit_edge, label %if.end11

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.then6
  %arrayidx13 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx13, align 4
  %shl = shl nuw i32 1, %10
  %11 = ptrtoint ptr %irq_bits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_bits, align 4
  %and = and i32 %shl, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end11.if.end25_crit_edge, label %if.then16

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then16:                                        ; preds = %if.end11
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %13 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %10, ptr noundef nonnull @pcl812_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %14, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then20, label %if.then16.if.end25_crit_edge

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx13, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %irq, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.then16.if.end25_crit_edge, %if.end11.if.end25_crit_edge, %if.end4.if.end25_crit_edge
  %irq26 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %18 = ptrtoint ptr %irq26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool27.not = icmp eq i32 %19, 0
  br i1 %tobool27.not, label %if.end25.if.end32_crit_edge, label %land.lhs.true

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end25
  %has_dma = getelementptr inbounds %struct.pcl812_board, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %has_dma to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %has_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool28.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool28.not, label %land.lhs.true.if.end32_crit_edge, label %if.then29

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.then29:                                        ; preds = %land.lhs.true
  %arrayidx31 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx31, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.then29.if.end32_crit_edge [
    i32 3, label %if.then29.if.end.i_crit_edge
    i32 1, label %if.then29.if.end.i_crit_edge295
  ]

if.then29.if.end.i_crit_edge295:                  ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then29.if.end.i_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then29.if.end32_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.end.i:                                         ; preds = %if.then29.if.end.i_crit_edge, %if.then29.if.end.i_crit_edge295
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %24 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private.i, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %25, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end.i, %if.then29.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %if.end25.if.end32_crit_edge
  %board_type = getelementptr inbounds %struct.pcl812_board, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %board_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %board_type, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %28, label %if.end32.sw.epilog_crit_edge [
    i32 9, label %sw.bb
    i32 7, label %if.end32.sw.bb39_crit_edge
    i32 8, label %if.end32.sw.bb39_crit_edge296
  ]

if.end32.sw.bb39_crit_edge296:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb39

if.end32.sw.bb39_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb39

if.end32.sw.epilog_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end32
  %arrayidx34 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 2
  %30 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp35 = icmp eq i32 %31, 1
  br i1 %cmp35, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb39:                                          ; preds = %if.end32.sw.bb39_crit_edge, %if.end32.sw.bb39_crit_edge296
  %arrayidx41 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp42 = icmp eq i32 %33, 1
  br i1 %cmp42, label %sw.bb39.sw.epilog.sink.split_crit_edge, label %sw.bb39.sw.epilog_crit_edge

sw.bb39.sw.epilog_crit_edge:                      ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb39.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb39.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %use_diff = getelementptr inbounds %struct.pcl812_private, ptr %call, i32 0, i32 6
  %34 = ptrtoint ptr %use_diff to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load45 = load i8, ptr %use_diff, align 4
  %bf.set47 = or i8 %bf.load45, -128
  store i8 %bf.set47, ptr %use_diff, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb39.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end32.sw.epilog_crit_edge
  %n_aochan = getelementptr inbounds %struct.pcl812_board, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %n_aochan to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_aochan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp49.inv = icmp slt i32 %36, 1
  %spec.select = select i1 %cmp49.inv, i32 1, i32 2
  %has_dio = getelementptr inbounds %struct.pcl812_board, ptr %1, i32 0, i32 7
  %37 = ptrtoint ptr %has_dio to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load52 = load i8, ptr %has_dio, align 4
  %38 = and i8 %bf.load52, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool56.not = icmp eq i8 %38, 0
  %add58 = add nuw nsw i32 %spec.select, 2
  %n_subdevices.1 = select i1 %tobool56.not, i32 %spec.select, i32 %add58
  %call60 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %n_subdevices.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end63:                                         ; preds = %sw.epilog
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %39 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 4
  %42 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 65536, ptr %subdev_flags, align 4
  %use_diff65 = getelementptr inbounds %struct.pcl812_private, ptr %call, i32 0, i32 6
  %43 = ptrtoint ptr %use_diff65 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load66 = load i8, ptr %use_diff65, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load66)
  %tobool69.not = icmp sgt i8 %bf.load66, -1
  br i1 %tobool69.not, label %if.else, label %if.then70

if.then70:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4259840, ptr %subdev_flags, align 4
  %n_aichan = getelementptr inbounds %struct.pcl812_board, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %n_aichan to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n_aichan, align 4
  %div = sdiv i32 %46, 2
  br label %if.end76

if.else:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1114112, ptr %subdev_flags, align 4
  %n_aichan74 = getelementptr inbounds %struct.pcl812_board, ptr %1, i32 0, i32 2
  %48 = ptrtoint ptr %n_aichan74 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n_aichan74, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else, %if.then70
  %div.sink = phi i32 [ %49, %if.else ], [ %div, %if.then70 ]
  %50 = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 3
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div.sink, ptr %50, align 4
  %52 = ptrtoint ptr %has_dio to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load77 = load i8, ptr %has_dio, align 4
  %53 = and i8 %bf.load77, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool81.not = icmp eq i8 %53, 0
  %cond = select i1 %tobool81.not, i32 4095, i32 65535
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 13
  %54 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond, ptr %maxdata, align 4
  %55 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %board_ptr, align 4
  %private.i289 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %57 = ptrtoint ptr %private.i289 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %private.i289, align 4
  %board_type.i = getelementptr inbounds %struct.pcl812_board, ptr %56, i32 0, i32 1
  %59 = ptrtoint ptr %board_type.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %board_type.i, align 4
  %61 = zext i32 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %60, label %sw.default59.i [
    i32 0, label %sw.bb.i
    i32 2, label %sw.bb2.i
    i32 1, label %sw.bb18.i
    i32 5, label %sw.bb28.i
    i32 6, label %sw.bb43.i
  ]

sw.bb.i:                                          ; preds = %if.end76
  %arrayidx.i = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 4
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp.i = icmp eq i32 %63, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %64 = ptrtoint ptr %range_table.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @range_pcl812pg2_ai, ptr %range_table.i, align 4
  br label %pcl812_set_ai_range_table.exit

if.else.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  %rangelist_ai.i = getelementptr inbounds %struct.pcl812_board, ptr %56, i32 0, i32 5
  %65 = ptrtoint ptr %rangelist_ai.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rangelist_ai.i, align 4
  %range_table1.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %67 = ptrtoint ptr %range_table1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %range_table1.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.bb2.i:                                         ; preds = %if.end76
  %arrayidx4.i = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 4
  %68 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx4.i, align 4
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %69, label %sw.default.i [
    i32 0, label %sw.bb5.i
    i32 1, label %sw.bb7.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb11.i
    i32 4, label %sw.bb13.i
    i32 5, label %sw.bb15.i
  ]

sw.bb5.i:                                         ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table6.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %71 = ptrtoint ptr %range_table6.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @range_bipolar10, ptr %range_table6.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.bb7.i:                                         ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table8.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %72 = ptrtoint ptr %range_table8.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @range_bipolar5, ptr %range_table8.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.bb9.i:                                         ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table10.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %73 = ptrtoint ptr %range_table10.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @range_bipolar2_5, ptr %range_table10.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.bb11.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table12.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %74 = ptrtoint ptr %range_table12.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @range812_bipolar1_25, ptr %range_table12.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.bb13.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table14.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %75 = ptrtoint ptr %range_table14.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @range812_bipolar0_625, ptr %range_table14.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.bb15.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table16.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %76 = ptrtoint ptr %range_table16.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @range812_bipolar0_3125, ptr %range_table16.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.default.i:                                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table17.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %77 = ptrtoint ptr %range_table17.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @range_bipolar10, ptr %range_table17.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.bb18.i:                                        ; preds = %if.end76
  %arrayidx20.i = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp21.i = icmp eq i32 %79, 1
  br i1 %cmp21.i, label %if.then22.i, label %if.else24.i

if.then22.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table23.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %80 = ptrtoint ptr %range_table23.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @range_pcl813b2_ai, ptr %range_table23.i, align 4
  br label %pcl812_set_ai_range_table.exit

if.else24.i:                                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #7
  %rangelist_ai25.i = getelementptr inbounds %struct.pcl812_board, ptr %56, i32 0, i32 5
  %81 = ptrtoint ptr %rangelist_ai25.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rangelist_ai25.i, align 4
  %range_table26.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %83 = ptrtoint ptr %range_table26.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %82, ptr %range_table26.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.bb28.i:                                        ; preds = %if.end76
  %arrayidx30.i = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %84 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx30.i, align 4
  %86 = zext i32 %85 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %85, label %sw.default40.i [
    i32 0, label %sw.bb31.i
    i32 1, label %sw.bb33.i
    i32 2, label %sw.bb35.i
    i32 3, label %sw.bb37.i
  ]

sw.bb31.i:                                        ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table32.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %87 = ptrtoint ptr %range_table32.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @range_iso813_1_ai, ptr %range_table32.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.bb33.i:                                        ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table34.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %88 = ptrtoint ptr %range_table34.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @range_iso813_1_2_ai, ptr %range_table34.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.bb35.i:                                        ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table36.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %89 = ptrtoint ptr %range_table36.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @range_iso813_2_ai, ptr %range_table36.i, align 4
  %range_correction.i = getelementptr inbounds %struct.pcl812_private, ptr %58, i32 0, i32 1
  %90 = ptrtoint ptr %range_correction.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %range_correction.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.bb37.i:                                        ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table38.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %91 = ptrtoint ptr %range_table38.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @range_iso813_2_2_ai, ptr %range_table38.i, align 4
  %range_correction39.i = getelementptr inbounds %struct.pcl812_private, ptr %58, i32 0, i32 1
  %92 = ptrtoint ptr %range_correction39.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %range_correction39.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.default40.i:                                   ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table41.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %93 = ptrtoint ptr %range_table41.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @range_iso813_1_ai, ptr %range_table41.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.bb43.i:                                        ; preds = %if.end76
  %arrayidx45.i = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %94 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx45.i, align 4
  %96 = zext i32 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %95, label %sw.default56.i [
    i32 0, label %sw.bb46.i
    i32 1, label %sw.bb48.i
    i32 2, label %sw.bb50.i
    i32 3, label %sw.bb53.i
  ]

sw.bb46.i:                                        ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table47.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %97 = ptrtoint ptr %range_table47.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @range_acl8113_1_ai, ptr %range_table47.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.bb48.i:                                        ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table49.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %98 = ptrtoint ptr %range_table49.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @range_acl8113_1_2_ai, ptr %range_table49.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.bb50.i:                                        ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table51.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %99 = ptrtoint ptr %range_table51.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @range_acl8113_2_ai, ptr %range_table51.i, align 4
  %range_correction52.i = getelementptr inbounds %struct.pcl812_private, ptr %58, i32 0, i32 1
  %100 = ptrtoint ptr %range_correction52.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %range_correction52.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.bb53.i:                                        ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table54.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %101 = ptrtoint ptr %range_table54.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @range_acl8113_2_2_ai, ptr %range_table54.i, align 4
  %range_correction55.i = getelementptr inbounds %struct.pcl812_private, ptr %58, i32 0, i32 1
  %102 = ptrtoint ptr %range_correction55.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %range_correction55.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.default56.i:                                   ; preds = %sw.bb43.i
  call void @__sanitizer_cov_trace_pc() #7
  %range_table57.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %103 = ptrtoint ptr %range_table57.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @range_acl8113_1_ai, ptr %range_table57.i, align 4
  br label %pcl812_set_ai_range_table.exit

sw.default59.i:                                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  %rangelist_ai60.i = getelementptr inbounds %struct.pcl812_board, ptr %56, i32 0, i32 5
  %104 = ptrtoint ptr %rangelist_ai60.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %rangelist_ai60.i, align 4
  %range_table61.i = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 15
  %106 = ptrtoint ptr %range_table61.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %105, ptr %range_table61.i, align 4
  br label %pcl812_set_ai_range_table.exit

pcl812_set_ai_range_table.exit:                   ; preds = %sw.default59.i, %sw.default56.i, %sw.bb53.i, %sw.bb50.i, %sw.bb48.i, %sw.bb46.i, %sw.default40.i, %sw.bb37.i, %sw.bb35.i, %sw.bb33.i, %sw.bb31.i, %if.else24.i, %if.then22.i, %sw.default.i, %sw.bb15.i, %sw.bb13.i, %sw.bb11.i, %sw.bb9.i, %sw.bb7.i, %sw.bb5.i, %if.else.i, %if.then.i
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 18
  %107 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @pcl812_ai_insn_read, ptr %insn_read, align 4
  %108 = ptrtoint ptr %irq26 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %irq26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool83.not = icmp eq i32 %109, 0
  br i1 %tobool83.not, label %pcl812_set_ai_range_table.exit.if.end87_crit_edge, label %if.then84

pcl812_set_ai_range_table.exit.if.end87_crit_edge: ; preds = %pcl812_set_ai_range_table.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.then84:                                        ; preds = %pcl812_set_ai_range_table.exit
  call void @__sanitizer_cov_trace_pc() #7
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %110 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %40, ptr %read_subdev, align 4
  %111 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %subdev_flags, align 4
  %or86 = or i32 %112, 32768
  store i32 %or86, ptr %subdev_flags, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 5
  %113 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 256, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 23
  %114 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @pcl812_ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 22
  %115 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @pcl812_ai_cmd, ptr %do_cmd, align 4
  %poll = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 24
  %116 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @pcl812_ai_poll, ptr %poll, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %40, i32 0, i32 25
  %117 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @pcl812_ai_cancel, ptr %cancel, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %pcl812_set_ai_range_table.exit.if.end87_crit_edge
  %118 = ptrtoint ptr %has_dio to i32
  call void @__asan_load1_noabort(i32 %118)
  %bf.load88 = load i8, ptr %has_dio, align 4
  %119 = ptrtoint ptr %use_diff65 to i32
  call void @__asan_load1_noabort(i32 %119)
  %bf.load92 = load i8, ptr %use_diff65, align 4
  %120 = shl i8 %bf.load88, 1
  %bf.shl = and i8 %120, 64
  %bf.clear93 = and i8 %bf.load92, -65
  %bf.set94 = or i8 %bf.clear93, %bf.shl
  store i8 %bf.set94, ptr %use_diff65, align 4
  %121 = ptrtoint ptr %n_aochan to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %n_aochan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp97 = icmp sgt i32 %122, 0
  br i1 %cmp97, label %if.then98, label %if.end87.if.end133_crit_edge

if.end87.if.end133_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

if.then98:                                        ; preds = %if.end87
  %123 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %subdevices, align 4
  %arrayidx100 = getelementptr %struct.comedi_subdevice, ptr %124, i32 1
  %type101 = getelementptr %struct.comedi_subdevice, ptr %124, i32 1, i32 2
  %125 = ptrtoint ptr %type101 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 2, ptr %type101, align 4
  %subdev_flags102 = getelementptr %struct.comedi_subdevice, ptr %124, i32 1, i32 4
  %126 = ptrtoint ptr %subdev_flags102 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1179648, ptr %subdev_flags102, align 4
  %127 = ptrtoint ptr %n_aochan to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %n_aochan, align 4
  %n_chan104 = getelementptr %struct.comedi_subdevice, ptr %124, i32 1, i32 3
  %129 = ptrtoint ptr %n_chan104 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %n_chan104, align 4
  %maxdata105 = getelementptr %struct.comedi_subdevice, ptr %124, i32 1, i32 13
  %130 = ptrtoint ptr %maxdata105 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 4095, ptr %maxdata105, align 4
  %131 = ptrtoint ptr %board_type to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %board_type, align 4
  %133 = zext i32 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %132, label %sw.default125 [
    i32 9, label %sw.bb107
    i32 2, label %if.then98.sw.bb115_crit_edge
    i32 7, label %if.then98.sw.bb115_crit_edge297
    i32 0, label %if.then98.sw.bb115_crit_edge298
    i32 8, label %if.then98.sw.bb115_crit_edge299
  ]

if.then98.sw.bb115_crit_edge299:                  ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb115

if.then98.sw.bb115_crit_edge298:                  ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb115

if.then98.sw.bb115_crit_edge297:                  ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb115

if.then98.sw.bb115_crit_edge:                     ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb115

sw.bb107:                                         ; preds = %if.then98
  %arrayidx109 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 3
  %134 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp110 = icmp eq i32 %135, 1
  %range_table = getelementptr %struct.comedi_subdevice, ptr %124, i32 1, i32 15
  br i1 %cmp110, label %if.then111, label %if.else112

if.then111:                                       ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #7
  %136 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @range_unipolar10, ptr %range_table, align 4
  br label %sw.epilog127

if.else112:                                       ; preds = %sw.bb107
  call void @__sanitizer_cov_trace_pc() #7
  %137 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @range_unipolar5, ptr %range_table, align 4
  br label %sw.epilog127

sw.bb115:                                         ; preds = %if.then98.sw.bb115_crit_edge, %if.then98.sw.bb115_crit_edge297, %if.then98.sw.bb115_crit_edge298, %if.then98.sw.bb115_crit_edge299
  %arrayidx117 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 5
  %138 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx117, align 4
  %140 = zext i32 %139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %140, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %139, label %sw.default122 [
    i32 1, label %sw.bb118
    i32 2, label %sw.bb120
  ]

sw.bb118:                                         ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #7
  %range_table119 = getelementptr %struct.comedi_subdevice, ptr %124, i32 1, i32 15
  %141 = ptrtoint ptr %range_table119 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @range_unipolar10, ptr %range_table119, align 4
  br label %sw.epilog127

sw.bb120:                                         ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #7
  %range_table121 = getelementptr %struct.comedi_subdevice, ptr %124, i32 1, i32 15
  %142 = ptrtoint ptr %range_table121 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @range_unknown, ptr %range_table121, align 4
  br label %sw.epilog127

sw.default122:                                    ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #7
  %range_table123 = getelementptr %struct.comedi_subdevice, ptr %124, i32 1, i32 15
  %143 = ptrtoint ptr %range_table123 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @range_unipolar5, ptr %range_table123, align 4
  br label %sw.epilog127

sw.default125:                                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #7
  %range_table126 = getelementptr %struct.comedi_subdevice, ptr %124, i32 1, i32 15
  %144 = ptrtoint ptr %range_table126 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @range_unipolar5, ptr %range_table126, align 4
  br label %sw.epilog127

sw.epilog127:                                     ; preds = %sw.default125, %sw.default122, %sw.bb120, %sw.bb118, %if.else112, %if.then111
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %124, i32 1, i32 19
  %145 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @pcl812_ao_insn_write, ptr %insn_write, align 4
  %call128 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %sw.epilog127.if.end133_crit_edge, label %sw.epilog127.cleanup_crit_edge

sw.epilog127.cleanup_crit_edge:                   ; preds = %sw.epilog127
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog127.if.end133_crit_edge:                 ; preds = %sw.epilog127
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end133

if.end133:                                        ; preds = %sw.epilog127.if.end133_crit_edge, %if.end87.if.end133_crit_edge
  %subdev.0 = phi i32 [ 1, %if.end87.if.end133_crit_edge ], [ 2, %sw.epilog127.if.end133_crit_edge ]
  %146 = ptrtoint ptr %has_dio to i32
  call void @__asan_load1_noabort(i32 %146)
  %bf.load135 = load i8, ptr %has_dio, align 4
  %147 = and i8 %bf.load135, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool139.not = icmp eq i8 %147, 0
  br i1 %tobool139.not, label %if.end133.if.end158_crit_edge, label %if.then140

if.end133.if.end158_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end158

if.then140:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #7
  %148 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %subdevices, align 4
  %type143 = getelementptr %struct.comedi_subdevice, ptr %149, i32 %subdev.0, i32 2
  %150 = ptrtoint ptr %type143 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 3, ptr %type143, align 4
  %subdev_flags144 = getelementptr %struct.comedi_subdevice, ptr %149, i32 %subdev.0, i32 4
  %151 = ptrtoint ptr %subdev_flags144 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 65536, ptr %subdev_flags144, align 4
  %n_chan145 = getelementptr %struct.comedi_subdevice, ptr %149, i32 %subdev.0, i32 3
  %152 = ptrtoint ptr %n_chan145 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 16, ptr %n_chan145, align 4
  %maxdata146 = getelementptr %struct.comedi_subdevice, ptr %149, i32 %subdev.0, i32 13
  %153 = ptrtoint ptr %maxdata146 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 1, ptr %maxdata146, align 4
  %range_table147 = getelementptr %struct.comedi_subdevice, ptr %149, i32 %subdev.0, i32 15
  %154 = ptrtoint ptr %range_table147 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @range_unipolar5, ptr %range_table147, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %149, i32 %subdev.0, i32 20
  %155 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @pcl812_di_insn_bits, ptr %insn_bits, align 4
  %inc148 = add nuw nsw i32 %subdev.0, 1
  %156 = load ptr, ptr %subdevices, align 4
  %type151 = getelementptr %struct.comedi_subdevice, ptr %156, i32 %inc148, i32 2
  %157 = ptrtoint ptr %type151 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 4, ptr %type151, align 4
  %subdev_flags152 = getelementptr %struct.comedi_subdevice, ptr %156, i32 %inc148, i32 4
  %158 = ptrtoint ptr %subdev_flags152 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 131072, ptr %subdev_flags152, align 4
  %n_chan153 = getelementptr %struct.comedi_subdevice, ptr %156, i32 %inc148, i32 3
  %159 = ptrtoint ptr %n_chan153 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 16, ptr %n_chan153, align 4
  %maxdata154 = getelementptr %struct.comedi_subdevice, ptr %156, i32 %inc148, i32 13
  %160 = ptrtoint ptr %maxdata154 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 1, ptr %maxdata154, align 4
  %range_table155 = getelementptr %struct.comedi_subdevice, ptr %156, i32 %inc148, i32 15
  %161 = ptrtoint ptr %range_table155 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @range_unipolar5, ptr %range_table155, align 4
  %insn_bits156 = getelementptr %struct.comedi_subdevice, ptr %156, i32 %inc148, i32 20
  %162 = ptrtoint ptr %insn_bits156 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr @pcl812_do_insn_bits, ptr %insn_bits156, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then140, %if.end133.if.end158_crit_edge
  %163 = ptrtoint ptr %board_type to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %board_type, align 4
  %165 = zext i32 %164 to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %164, label %if.end158.sw.epilog176_crit_edge [
    i32 8, label %if.end158.sw.bb160_crit_edge
    i32 0, label %if.end158.sw.bb160_crit_edge300
    i32 2, label %if.end158.sw.bb160_crit_edge301
    i32 7, label %if.end158.sw.bb160_crit_edge302
    i32 9, label %sw.bb169
    i32 1, label %if.end158.sw.bb174_crit_edge
    i32 3, label %if.end158.sw.bb174_crit_edge303
    i32 5, label %if.end158.sw.bb174_crit_edge304
    i32 6, label %if.end158.sw.bb174_crit_edge305
  ]

if.end158.sw.bb174_crit_edge305:                  ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb174

if.end158.sw.bb174_crit_edge304:                  ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb174

if.end158.sw.bb174_crit_edge303:                  ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb174

if.end158.sw.bb174_crit_edge:                     ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb174

if.end158.sw.bb160_crit_edge302:                  ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb160

if.end158.sw.bb160_crit_edge301:                  ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb160

if.end158.sw.bb160_crit_edge300:                  ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb160

if.end158.sw.bb160_crit_edge:                     ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb160

if.end158.sw.epilog176_crit_edge:                 ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog176

sw.bb160:                                         ; preds = %if.end158.sw.bb160_crit_edge, %if.end158.sw.bb160_crit_edge300, %if.end158.sw.bb160_crit_edge301, %if.end158.sw.bb160_crit_edge302
  %max_812_ai_mode0_rangewait = getelementptr inbounds %struct.pcl812_private, ptr %call, i32 0, i32 5
  %166 = ptrtoint ptr %max_812_ai_mode0_rangewait to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 1, ptr %max_812_ai_mode0_rangewait, align 4
  %arrayidx162 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 3
  %167 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx162, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp163 = icmp sgt i32 %168, 0
  br i1 %cmp163, label %if.then164, label %sw.bb160.sw.epilog176_crit_edge

sw.bb160.sw.epilog176_crit_edge:                  ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog176

if.then164:                                       ; preds = %sw.bb160
  call void @__sanitizer_cov_trace_pc() #7
  %169 = ptrtoint ptr %use_diff65 to i32
  call void @__asan_load1_noabort(i32 %169)
  %bf.load165 = load i8, ptr %use_diff65, align 4
  %bf.set167 = or i8 %bf.load165, 32
  store i8 %bf.set167, ptr %use_diff65, align 4
  br label %sw.epilog176

sw.bb169:                                         ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #7
  %max_812_ai_mode0_rangewait170 = getelementptr inbounds %struct.pcl812_private, ptr %call, i32 0, i32 5
  %170 = ptrtoint ptr %max_812_ai_mode0_rangewait170 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 1, ptr %max_812_ai_mode0_rangewait170, align 4
  %171 = ptrtoint ptr %irq26 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %irq26, align 4
  %.tr = trunc i32 %172 to i8
  %conv = shl i8 %.tr, 4
  %mode_reg_int = getelementptr inbounds %struct.pcl812_private, ptr %call, i32 0, i32 3
  %173 = ptrtoint ptr %mode_reg_int to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %conv, ptr %mode_reg_int, align 4
  br label %sw.epilog176

sw.bb174:                                         ; preds = %if.end158.sw.bb174_crit_edge, %if.end158.sw.bb174_crit_edge303, %if.end158.sw.bb174_crit_edge304, %if.end158.sw.bb174_crit_edge305
  %max_812_ai_mode0_rangewait175 = getelementptr inbounds %struct.pcl812_private, ptr %call, i32 0, i32 5
  %174 = ptrtoint ptr %max_812_ai_mode0_rangewait175 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 5, ptr %max_812_ai_mode0_rangewait175, align 4
  br label %sw.epilog176

sw.epilog176:                                     ; preds = %sw.bb174, %sw.bb169, %if.then164, %sw.bb160.sw.epilog176_crit_edge, %if.end158.sw.epilog176_crit_edge
  %175 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %board_ptr, align 4
  %177 = ptrtoint ptr %private.i289 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %private.i289, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !100
  tail call void @arm_heavy_mb() #5
  %mode_reg_int.i = getelementptr inbounds %struct.pcl812_private, ptr %178, i32 0, i32 3
  %179 = ptrtoint ptr %mode_reg_int.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %mode_reg_int.i, align 4
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %181 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %182, 11
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %183 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %183, i8 %180) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %184 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %iobase.i, align 4
  %add.i.i = add i32 %185, 8
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %186 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %186, i8 0) #5, !srcloc !101
  %last_ai_chanspec.i = getelementptr inbounds %struct.pcl812_private, ptr %178, i32 0, i32 2
  %187 = ptrtoint ptr %last_ai_chanspec.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 16, ptr %last_ai_chanspec.i, align 4
  %188 = ptrtoint ptr %private.i289 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %private.i289, align 4
  %last_ai_chanspec.i.i = getelementptr inbounds %struct.pcl812_private, ptr %189, i32 0, i32 2
  %190 = ptrtoint ptr %last_ai_chanspec.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %last_ai_chanspec.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %cmp.i.i = icmp eq i32 %191, 0
  br i1 %cmp.i.i, label %sw.epilog176.pcl812_ai_set_chan_range.exit.i_crit_edge, label %if.end.i.i

sw.epilog176.pcl812_ai_set_chan_range.exit.i_crit_edge: ; preds = %sw.epilog176
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcl812_ai_set_chan_range.exit.i

if.end.i.i:                                       ; preds = %sw.epilog176
  call void @__sanitizer_cov_trace_pc() #7
  %192 = ptrtoint ptr %last_ai_chanspec.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 0, ptr %last_ai_chanspec.i.i, align 4
  %use_mpc508.i.i = getelementptr inbounds %struct.pcl812_private, ptr %189, i32 0, i32 6
  %193 = ptrtoint ptr %use_mpc508.i.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %bf.load.i.i = load i8, ptr %use_mpc508.i.i, align 4
  %194 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %194)
  %tobool.not.i.i = icmp eq i8 %194, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool7.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %195 = select i1 %tobool7.not.i.i, i8 16, i8 48
  %conv.i.i = select i1 %tobool.not.i.i, i8 0, i8 %195
  %196 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %iobase.i, align 4
  %add.i53.i = add i32 %197, 10
  %and18.i.i = and i32 %add.i53.i, 1048575
  %add19.i.i = or i32 %and18.i.i, -18874368
  %198 = inttoptr i32 %add19.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %198, i8 %conv.i.i) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %range_correction.i.i = getelementptr inbounds %struct.pcl812_private, ptr %189, i32 0, i32 1
  %199 = ptrtoint ptr %range_correction.i.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %range_correction.i.i, align 4
  %201 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %iobase.i, align 4
  %add27.i.i = add i32 %202, 9
  %and28.i.i = and i32 %add27.i.i, 1048575
  %add29.i.i = or i32 %and28.i.i, -18874368
  %203 = inttoptr i32 %add29.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %203, i8 %200) #5, !srcloc !101
  br label %pcl812_ai_set_chan_range.exit.i

pcl812_ai_set_chan_range.exit.i:                  ; preds = %if.end.i.i, %sw.epilog176.pcl812_ai_set_chan_range.exit.i_crit_edge
  %n_aochan.i = getelementptr inbounds %struct.pcl812_board, ptr %176, i32 0, i32 3
  %204 = ptrtoint ptr %n_aochan.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %n_aochan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %cmp54.not.i = icmp eq i32 %205, 0
  br i1 %cmp54.not.i, label %pcl812_ai_set_chan_range.exit.i.for.end.i_crit_edge, label %pcl812_ai_set_chan_range.exit.i.do.body4.i_crit_edge

pcl812_ai_set_chan_range.exit.i.do.body4.i_crit_edge: ; preds = %pcl812_ai_set_chan_range.exit.i
  br label %do.body4.i

pcl812_ai_set_chan_range.exit.i.for.end.i_crit_edge: ; preds = %pcl812_ai_set_chan_range.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

do.body4.i:                                       ; preds = %do.body4.i.do.body4.i_crit_edge, %pcl812_ai_set_chan_range.exit.i.do.body4.i_crit_edge
  %chan.055.i = phi i32 [ %inc.i, %do.body4.i.do.body4.i_crit_edge ], [ 0, %pcl812_ai_set_chan_range.exit.i.do.body4.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %206 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %iobase.i, align 4
  %mul.i = shl i32 %chan.055.i, 1
  %add8.i = add i32 %mul.i, 4
  %add9.i = add i32 %add8.i, %207
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %208 = inttoptr i32 %add11.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %208, i8 0) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  %209 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %iobase.i, align 4
  %add18.i = add i32 %mul.i, 5
  %add19.i = add i32 %add18.i, %210
  %and20.i = and i32 %add19.i, 1048575
  %add21.i = or i32 %and20.i, -18874368
  %211 = inttoptr i32 %add21.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %211, i8 0) #5, !srcloc !101
  %inc.i = add nuw i32 %chan.055.i, 1
  %212 = ptrtoint ptr %n_aochan.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %n_aochan.i, align 4
  %cmp.i292 = icmp ult i32 %inc.i, %213
  br i1 %cmp.i292, label %do.body4.i.do.body4.i_crit_edge, label %do.body4.i.for.end.i_crit_edge

do.body4.i.for.end.i_crit_edge:                   ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

do.body4.i.do.body4.i_crit_edge:                  ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4.i

for.end.i:                                        ; preds = %do.body4.i.for.end.i_crit_edge, %pcl812_ai_set_chan_range.exit.i.for.end.i_crit_edge
  %has_dio.i = getelementptr inbounds %struct.pcl812_board, ptr %176, i32 0, i32 7
  %214 = ptrtoint ptr %has_dio.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %bf.load.i = load i8, ptr %has_dio.i, align 4
  %215 = and i8 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %215)
  %tobool.not.i = icmp eq i8 %215, 0
  br i1 %tobool.not.i, label %for.end.i.cleanup_crit_edge, label %do.body23.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body23.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %216 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %iobase.i, align 4
  %add27.i = add i32 %217, 14
  %and28.i = and i32 %add27.i, 1048575
  %add29.i = or i32 %and28.i, -18874368
  %218 = inttoptr i32 %add29.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %218, i8 0) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %219 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %iobase.i, align 4
  %add35.i = add i32 %220, 13
  %and36.i = and i32 %add35.i, 1048575
  %add37.i = or i32 %and36.i, -18874368
  %221 = inttoptr i32 %add37.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %221, i8 0) #5, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %do.body23.i, %for.end.i.cleanup_crit_edge, %sw.epilog127.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -12, %if.then6.cleanup_crit_edge ], [ %call60, %sw.epilog.cleanup_crit_edge ], [ %call128, %sw.epilog127.cleanup_crit_edge ], [ 0, %for.end.i.cleanup_crit_edge ], [ 0, %do.body23.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcl812_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @comedi_legacy_detach(ptr noundef %dev) #5
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl812_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  %val.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %0 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_subdev, align 4
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %2 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %3 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %4, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #5, !srcloc !101
  br label %cleanup

if.end:                                           ; preds = %entry
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %6 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private, align 4
  %ai_dma = getelementptr inbounds %struct.pcl812_private, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %ai_dma to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load1 = load i8, ptr %ai_dma, align 4
  %9 = and i8 %bf.load1, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not = icmp eq i8 %9, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  %desc2.i = getelementptr inbounds %struct.comedi_isadma, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc2.i, align 4
  %cur_dma.i = getelementptr inbounds %struct.comedi_isadma, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cur_dma.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_isadma_desc, ptr %13, i32 %15
  %size.i = getelementptr %struct.comedi_isadma_desc, ptr %13, i32 %15, i32 4
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 4
  %subdev_flags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i = and i32 %19, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %shr.i.i = lshr i32 %17, %cond.i.i.i
  %ai_poll_ptr.i = getelementptr inbounds %struct.pcl812_private, ptr %7, i32 0, i32 4
  %20 = ptrtoint ptr %ai_poll_ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ai_poll_ptr.i, align 4
  %sub.i = sub i32 %shr.i.i, %21
  store i32 0, ptr %ai_poll_ptr.i, align 4
  %22 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_dma.i, align 4
  %sub6.i = sub i32 1, %23
  store i32 %sub6.i, ptr %cur_dma.i, align 4
  %24 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %private, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %desc2.i.i = getelementptr inbounds %struct.comedi_isadma, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %desc2.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc2.i.i, align 4
  %cur_dma.i.i = getelementptr inbounds %struct.comedi_isadma, ptr %27, i32 0, i32 3
  %30 = ptrtoint ptr %cur_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cur_dma.i.i, align 4
  %ai_eos.i.i = getelementptr inbounds %struct.pcl812_private, ptr %25, i32 0, i32 6
  %32 = ptrtoint ptr %ai_eos.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load.i.i = load i8, ptr %ai_eos.i.i, align 4
  %33 = and i8 %bf.load.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i.i = tail call i32 @comedi_bytes_per_scan(ptr noundef %1) #5
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %maxsize.i.i = getelementptr %struct.comedi_isadma_desc, ptr %29, i32 %31, i32 3
  %34 = ptrtoint ptr %maxsize.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %maxsize.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %call3.i.i, %cond.true.i.i ], [ %35, %cond.false.i.i ]
  %36 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i.i = and i32 %37, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 2
  %shr.i.i.i = lshr i32 %cond.i.i, %cond.i.i.i.i
  %add.i.i = add i32 %shr.i.i.i, %sub.i
  %call5.i.i = tail call i32 @comedi_nsamples_left(ptr noundef %1, i32 noundef %add.i.i) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i.i, i32 %sub.i)
  %cmp.i.i = icmp ugt i32 %call5.i.i, %sub.i
  br i1 %cmp.i.i, label %if.then.i.i, label %cond.end.i.i.pcl812_ai_setup_dma.exit.i_crit_edge

cond.end.i.i.pcl812_ai_setup_dma.exit.i_crit_edge: ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcl812_ai_setup_dma.exit.i

if.then.i.i:                                      ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = sub i32 %call5.i.i, %sub.i
  %38 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i20.i.i = and i32 %39, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i20.i.i)
  %tobool.not.i.i21.i.i = icmp eq i32 %and.i.i20.i.i, 0
  %cond.i.i22.i.i = select i1 %tobool.not.i.i21.i.i, i32 1, i32 2
  %shl.i.i.i = shl i32 %sub.i.i, %cond.i.i22.i.i
  %size.i.i = getelementptr %struct.comedi_isadma_desc, ptr %29, i32 %31, i32 4
  %40 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %shl.i.i.i, ptr %size.i.i, align 4
  br label %pcl812_ai_setup_dma.exit.i

pcl812_ai_setup_dma.exit.i:                       ; preds = %if.then.i.i, %cond.end.i.i.pcl812_ai_setup_dma.exit.i_crit_edge
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not2.i.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not2.i.i, label %pcl812_ai_setup_dma.exit.i.pcl812_handle_dma.exit_crit_edge, label %for.body.lr.ph.i.i

pcl812_ai_setup_dma.exit.i.pcl812_handle_dma.exit_crit_edge: ; preds = %pcl812_ai_setup_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcl812_handle_dma.exit

for.body.lr.ph.i.i:                               ; preds = %pcl812_ai_setup_dma.exit.i
  %async.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %1, i32 0, i32 7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.04.i.i = phi i32 [ %sub.i, %for.body.lr.ph.i.i ], [ %dec.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %bufptr.addr.03.i.i = phi i32 [ %21, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %42, i32 %bufptr.addr.03.i.i
  %43 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx.i.i, align 2
  %45 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %val.i.i, align 2
  %call.i.i = call i32 @comedi_buf_write_samples(ptr noundef %1, ptr noundef nonnull %val.i.i, i32 noundef 1) #5
  %46 = ptrtoint ptr %async.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %async.i.i.i, align 4
  %stop_src.i.i.i = getelementptr inbounds %struct.comedi_async, ptr %47, i32 0, i32 17, i32 10
  %48 = ptrtoint ptr %stop_src.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %stop_src.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %49)
  %cmp.i.i.i = icmp eq i32 %49, 32
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %scans_done.i.i.i = getelementptr inbounds %struct.comedi_async, ptr %47, i32 0, i32 11
  %50 = ptrtoint ptr %scans_done.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %scans_done.i.i.i, align 4
  %stop_arg.i.i.i = getelementptr inbounds %struct.comedi_async, ptr %47, i32 0, i32 17, i32 11
  %52 = ptrtoint ptr %stop_arg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stop_arg.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp3.not.i.i.i = icmp ult i32 %51, %53
  br i1 %cmp3.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i_crit_edge, label %pcl812_ai_next_chan.exit.i.i

land.lhs.true.i.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

pcl812_ai_next_chan.exit.i.i:                     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %events.i.i.i = getelementptr inbounds %struct.comedi_async, ptr %47, i32 0, i32 16
  %54 = ptrtoint ptr %events.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %events.i.i.i, align 4
  %or.i.i.i = or i32 %55, 2
  store i32 %or.i.i.i, ptr %events.i.i.i, align 4
  br label %pcl812_handle_dma.exit

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add i32 %bufptr.addr.03.i.i, 1
  %dec.i.i = add i32 %i.04.i.i, -1
  %tobool.not.i20.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i20.i, label %for.inc.i.i.pcl812_handle_dma.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

for.inc.i.i.pcl812_handle_dma.exit_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcl812_handle_dma.exit

pcl812_handle_dma.exit:                           ; preds = %for.inc.i.i.pcl812_handle_dma.exit_crit_edge, %pcl812_ai_next_chan.exit.i.i, %pcl812_ai_setup_dma.exit.i.pcl812_handle_dma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val.i.i) #5
  br label %if.end6

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @pcl812_handle_eoc(ptr noundef %d, ptr noundef %1)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %pcl812_handle_dma.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  call void @arm_heavy_mb() #5
  %iobase.i18 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %56 = ptrtoint ptr %iobase.i18 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %iobase.i18, align 4
  %add.i19 = add i32 %57, 8
  %and.i20 = and i32 %add.i19, 1048575
  %add1.i21 = or i32 %and.i20, -18874368
  %58 = inttoptr i32 %add1.i21 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 0) #5, !srcloc !101
  %call = call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl812_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %mode_reg_int = getelementptr inbounds %struct.pcl812_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mode_reg_int to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode_reg_int, align 4
  %4 = or i8 %3, 1
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add = add i32 %6, 11
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %7 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %4) #5, !srcloc !101
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %8 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chanspec, align 4
  %10 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private, align 4
  %and.i = and i32 %9, 65528
  %shr.i = lshr i32 %9, 16
  %last_ai_chanspec.i = getelementptr inbounds %struct.pcl812_private, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %last_ai_chanspec.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %last_ai_chanspec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp.i = icmp eq i32 %13, %9
  br i1 %cmp.i, label %entry.pcl812_ai_set_chan_range.exit_crit_edge, label %if.end.i

entry.pcl812_ai_set_chan_range.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcl812_ai_set_chan_range.exit

if.end.i:                                         ; preds = %entry
  %14 = ptrtoint ptr %last_ai_chanspec.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %last_ai_chanspec.i, align 4
  %use_mpc508.i = getelementptr inbounds %struct.pcl812_private, ptr %11, i32 0, i32 6
  %15 = ptrtoint ptr %use_mpc508.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i = load i8, ptr %use_mpc508.i, align 4
  %16 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end.i.do.body.i_crit_edge, label %if.then3.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool7.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool7.not.i, label %if.else.i, label %if.then3.i.do.body.i_crit_edge

if.then3.i.do.body.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp9.i = icmp eq i32 %and.i, 0
  %..i = select i1 %cmp9.i, i32 16, i32 32
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then3.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %mux.0.i = phi i32 [ 0, %if.end.i.do.body.i_crit_edge ], [ 48, %if.then3.i.do.body.i_crit_edge ], [ %..i, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %or17.i = or i32 %mux.0.i, %9
  %conv.i = trunc i32 %or17.i to i8
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %add.i = add i32 %18, 10
  %and18.i = and i32 %add.i, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %19 = inttoptr i32 %add19.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv.i) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %range_correction.i = getelementptr inbounds %struct.pcl812_private, ptr %11, i32 0, i32 1
  %20 = ptrtoint ptr %range_correction.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %range_correction.i, align 4
  %22 = trunc i32 %shr.i to i8
  %conv25.i = add i8 %21, %22
  %23 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase, align 4
  %add27.i = add i32 %24, 9
  %and28.i = and i32 %add27.i, 1048575
  %add29.i = or i32 %and28.i, -18874368
  %25 = inttoptr i32 %add29.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %conv25.i) #5, !srcloc !101
  %max_812_ai_mode0_rangewait.i = getelementptr inbounds %struct.pcl812_private, ptr %11, i32 0, i32 5
  %26 = ptrtoint ptr %max_812_ai_mode0_rangewait.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_812_ai_mode0_rangewait.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %28(i32 noundef %27) #5
  br label %pcl812_ai_set_chan_range.exit

pcl812_ai_set_chan_range.exit:                    ; preds = %do.body.i, %entry.pcl812_ai_set_chan_range.exit_crit_edge
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %29 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp53.not = icmp eq i32 %30, 0
  br i1 %cmp53.not, label %pcl812_ai_set_chan_range.exit.do.body6_crit_edge, label %for.body.lr.ph

pcl812_ai_set_chan_range.exit.do.body6_crit_edge: ; preds = %pcl812_ai_set_chan_range.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

for.body.lr.ph:                                   ; preds = %pcl812_ai_set_chan_range.exit
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase, align 4
  %add.i38 = add i32 %32, 8
  %and.i39 = and i32 %add.i38, 1048575
  %add1.i = or i32 %and.i39, -18874368
  %33 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 0) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iobase, align 4
  %add.i41 = add i32 %35, 12
  %and.i42 = and i32 %add.i41, 1048575
  %add1.i43 = or i32 %and.i42, -18874368
  %36 = inttoptr i32 %add1.i43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 -1) #5, !srcloc !101
  %call4 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @pcl812_ai_eoc, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %for.body.do.body6_crit_edge

for.body.do.body6_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

if.end:                                           ; preds = %for.body
  %37 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase, align 4
  %add.i45 = add i32 %38, 5
  %and.i46 = and i32 %add.i45, 1048575
  %add1.i47 = or i32 %and.i46, -18874368
  %39 = inttoptr i32 %add1.i47 to ptr
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %39) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  %conv.i48 = zext i8 %40 to i32
  %shl.i = shl nuw nsw i32 %conv.i48, 8
  %41 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iobase, align 4
  %add5.i = add i32 %42, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %43 = inttoptr i32 %add7.i to ptr
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %43) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %conv11.i = zext i8 %44 to i32
  %or.i = or i32 %shl.i, %conv11.i
  %45 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %maxdata.i, align 4
  %and12.i = and i32 %or.i, %46
  %arrayidx = getelementptr i32, ptr %data, i32 %i.054
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and12.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.054, 1
  %48 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %49
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.do.body6_crit_edge

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body6

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body6:                                         ; preds = %if.end.do.body6_crit_edge, %for.body.do.body6_crit_edge, %pcl812_ai_set_chan_range.exit.do.body6_crit_edge
  %ret.1 = phi i32 [ 0, %pcl812_ai_set_chan_range.exit.do.body6_crit_edge ], [ 0, %if.end.do.body6_crit_edge ], [ %call4, %for.body.do.body6_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !114
  tail call void @arm_heavy_mb() #5
  %50 = ptrtoint ptr %mode_reg_int to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %mode_reg_int, align 4
  %52 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase, align 4
  %add14 = add i32 %53, 11
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %54 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %51) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %55 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iobase, align 4
  %add.i50 = add i32 %56, 8
  %and.i51 = and i32 %add.i50, 1048575
  %add1.i52 = or i32 %and.i51, -18874368
  %57 = inttoptr i32 %add1.i52 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 0) #5, !srcloc !101
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool18.not = icmp eq i32 %ret.1, 0
  br i1 %tobool18.not, label %cond.false, label %do.body6.cond.end_crit_edge

do.body6.cond.end_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %do.body6.cond.end_crit_edge
  %cond = phi i32 [ %59, %cond.false ], [ %ret.1, %do.body6.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl812_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %4 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_src, align 4
  %and.i = and i32 %5, 2
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %5)
  %cmp1.not.i = icmp eq i32 %and.i, %5
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %6 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_begin_src, align 4
  %and.i105 = and i32 %7, 4
  store i32 %and.i105, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i105)
  %cmp.i106 = icmp ne i32 %and.i105, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i105, i32 %7)
  %cmp1.not.i107 = icmp eq i32 %and.i105, %7
  %or.cond.i108 = and i1 %cmp.i106, %cmp1.not.i107
  %8 = select i1 %or.cond.i, i1 %or.cond.i108, i1 false
  %use_ext_trg = getelementptr inbounds %struct.pcl812_private, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %use_ext_trg to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %use_ext_trg, align 4
  %10 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %. = select i1 %tobool.not, i32 16, i32 64
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %11 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %convert_src, align 4
  %and.i110 = and i32 %., %12
  store i32 %and.i110, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i110)
  %cmp.i111 = icmp ne i32 %and.i110, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i110, i32 %12)
  %cmp1.not.i112 = icmp eq i32 %and.i110, %12
  %or.cond.i113 = and i1 %cmp.i111, %cmp1.not.i112
  %13 = select i1 %8, i1 %or.cond.i113, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %14 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %scan_end_src, align 4
  %and.i115 = and i32 %15, 32
  store i32 %and.i115, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %cmp.i116 = icmp ne i32 %and.i115, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i115, i32 %15)
  %cmp1.not.i117 = icmp eq i32 %and.i115, %15
  %or.cond.i118 = and i1 %cmp.i116, %cmp1.not.i117
  %16 = select i1 %13, i1 %or.cond.i118, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %17 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %stop_src, align 4
  %and.i120 = and i32 %18, 33
  store i32 %and.i120, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120)
  %cmp.i121 = icmp ne i32 %and.i120, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i120, i32 %18)
  %cmp1.not.i122 = icmp eq i32 %and.i120, %18
  %or.cond.i123 = and i1 %cmp.i121, %cmp1.not.i122
  %19 = select i1 %16, i1 %or.cond.i123, i1 false
  br i1 %19, label %if.end11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %entry
  %20 = tail call i32 @llvm.ctpop.i32(i32 %18) #5, !range !115
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.not.i = icmp ult i32 %20, 2
  br i1 %cmp.not.i, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %21 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i125 = icmp eq i32 %22, 0
  br i1 %cmp.not.i125, label %if.end17.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end17.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i126 = phi i32 [ -22, %if.then.i ], [ 0, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %24 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not.i127 = icmp eq i32 %25, 0
  br i1 %cmp.not.i127, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit130_crit_edge, label %if.then.i128

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit130_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit130

if.then.i128:                                     ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit130

comedi_check_trigger_arg_is.exit130:              ; preds = %if.then.i128, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit130_crit_edge
  %retval.0.i129 = phi i32 [ -22, %if.then.i128 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit130_crit_edge ]
  %or21 = or i32 %retval.0.i129, %retval.0.i126
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp = icmp eq i32 %12, 16
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  br i1 %cmp, label %if.then23, label %if.else26

if.then23:                                        ; preds = %comedi_check_trigger_arg_is.exit130
  %ai_ns_min = getelementptr inbounds %struct.pcl812_board, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %ai_ns_min to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ai_ns_min, align 4
  %29 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %28)
  %cmp.i131 = icmp ult i32 %30, %28
  br i1 %cmp.i131, label %if.then23.if.end30.sink.split_crit_edge, label %if.then23.if.end30_crit_edge

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then23.if.end30.sink.split_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.sink.split

if.else26:                                        ; preds = %comedi_check_trigger_arg_is.exit130
  %31 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.not.i134 = icmp eq i32 %32, 0
  br i1 %cmp.not.i134, label %if.else26.if.end30_crit_edge, label %if.else26.if.end30.sink.split_crit_edge

if.else26.if.end30.sink.split_crit_edge:          ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.sink.split

if.else26.if.end30_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.end30.sink.split:                              ; preds = %if.else26.if.end30.sink.split_crit_edge, %if.then23.if.end30.sink.split_crit_edge
  %.sink = phi i32 [ %28, %if.then23.if.end30.sink.split_crit_edge ], [ 0, %if.else26.if.end30.sink.split_crit_edge ]
  %33 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %convert_arg, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else26.if.end30_crit_edge, %if.then23.if.end30_crit_edge
  %call24.pn = phi i32 [ 0, %if.then23.if.end30_crit_edge ], [ 0, %if.else26.if.end30_crit_edge ], [ -22, %if.end30.sink.split ]
  %err.0 = or i32 %or21, %call24.pn
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %34 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.i138 = icmp eq i32 %35, 0
  br i1 %cmp.i138, label %if.then.i139, label %if.end30.comedi_check_trigger_arg_min.exit141_crit_edge

if.end30.comedi_check_trigger_arg_min.exit141_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_min.exit141

if.then.i139:                                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %chanlist_len, align 4
  br label %comedi_check_trigger_arg_min.exit141

comedi_check_trigger_arg_min.exit141:             ; preds = %if.then.i139, %if.end30.comedi_check_trigger_arg_min.exit141_crit_edge
  %retval.0.i140 = phi i32 [ -22, %if.then.i139 ], [ 0, %if.end30.comedi_check_trigger_arg_min.exit141_crit_edge ]
  %or32 = or i32 %err.0, %retval.0.i140
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %37 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chanlist_len, align 4
  %39 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp.not.i142 = icmp eq i32 %40, %38
  br i1 %cmp.not.i142, label %comedi_check_trigger_arg_min.exit141.comedi_check_trigger_arg_is.exit145_crit_edge, label %if.then.i143

comedi_check_trigger_arg_min.exit141.comedi_check_trigger_arg_is.exit145_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit141
  call void @__sanitizer_cov_trace_pc() #7
  br label %comedi_check_trigger_arg_is.exit145

if.then.i143:                                     ; preds = %comedi_check_trigger_arg_min.exit141
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit145

comedi_check_trigger_arg_is.exit145:              ; preds = %if.then.i143, %comedi_check_trigger_arg_min.exit141.comedi_check_trigger_arg_is.exit145_crit_edge
  %retval.0.i144 = phi i32 [ -22, %if.then.i143 ], [ 0, %comedi_check_trigger_arg_min.exit141.comedi_check_trigger_arg_is.exit145_crit_edge ]
  %or35 = or i32 %or32, %retval.0.i144
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %18)
  %cmp37 = icmp eq i32 %18, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %42 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i146 = icmp eq i32 %43, 0
  br i1 %cmp37, label %if.then38, label %if.else41

if.then38:                                        ; preds = %comedi_check_trigger_arg_is.exit145
  br i1 %cmp.i146, label %if.then38.if.end45.sink.split_crit_edge, label %if.then38.if.end45_crit_edge

if.then38.if.end45_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then38.if.end45.sink.split_crit_edge:          ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.sink.split

if.else41:                                        ; preds = %comedi_check_trigger_arg_is.exit145
  br i1 %cmp.i146, label %if.else41.if.end45_crit_edge, label %if.else41.if.end45.sink.split_crit_edge

if.else41.if.end45.sink.split_crit_edge:          ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.sink.split

if.else41.if.end45_crit_edge:                     ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.end45.sink.split:                              ; preds = %if.else41.if.end45.sink.split_crit_edge, %if.then38.if.end45.sink.split_crit_edge
  %.sink162 = phi i32 [ 1, %if.then38.if.end45.sink.split_crit_edge ], [ 0, %if.else41.if.end45.sink.split_crit_edge ]
  %44 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink162, ptr %stop_arg, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end45.sink.split, %if.else41.if.end45_crit_edge, %if.then38.if.end45_crit_edge
  %call39.pn = phi i32 [ 0, %if.then38.if.end45_crit_edge ], [ 0, %if.else41.if.end45_crit_edge ], [ -22, %if.end45.sink.split ]
  %err.1 = or i32 %or35, %call39.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool46.not = icmp ne i32 %err.1, 0
  %cmp.not = xor i1 %cmp, true
  %brmerge = select i1 %tobool46.not, i1 true, i1 %cmp.not
  %.mux = select i1 %tobool46.not, i32 3, i32 0
  br i1 %brmerge, label %if.end45.cleanup_crit_edge, label %if.then51

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then51:                                        ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #5
  %convert_arg52 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %45 = ptrtoint ptr %convert_arg52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %convert_arg52, align 4
  %47 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arg, align 4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %48 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pacer, align 4
  %flags53 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %50 = ptrtoint ptr %flags53 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags53, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %49, ptr noundef nonnull %arg, i32 noundef %51) #5
  %52 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arg, align 4
  %54 = ptrtoint ptr %convert_arg52 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %convert_arg52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %53)
  %cmp.not.i154 = icmp eq i32 %55, %53
  br i1 %cmp.not.i154, label %if.end57.thread159, label %if.end57

if.end57.thread159:                               ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #5
  br label %cleanup

if.end57:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %convert_arg52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %53, ptr %convert_arg52, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end57.thread159, %if.end45.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end11.cleanup_crit_edge ], [ %.mux, %if.end45.cleanup_crit_edge ], [ 4, %if.end57 ], [ 0, %if.end57.thread159 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl812_ai_cmd(ptr nocapture noundef readonly %dev, ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %4 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  %6 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanlist, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %and.i = and i32 %9, 65528
  %shr.i = lshr i32 %9, 16
  %last_ai_chanspec.i = getelementptr inbounds %struct.pcl812_private, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %last_ai_chanspec.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_ai_chanspec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp.i = icmp eq i32 %11, %9
  br i1 %cmp.i, label %entry.pcl812_ai_set_chan_range.exit_crit_edge, label %if.end.i

entry.pcl812_ai_set_chan_range.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %pcl812_ai_set_chan_range.exit

if.end.i:                                         ; preds = %entry
  %12 = ptrtoint ptr %last_ai_chanspec.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %last_ai_chanspec.i, align 4
  %use_mpc508.i = getelementptr inbounds %struct.pcl812_private, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %use_mpc508.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %use_mpc508.i, align 4
  %14 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end.i.do.body.i_crit_edge, label %if.then3.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool7.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool7.not.i, label %if.else.i, label %if.then3.i.do.body.i_crit_edge

if.then3.i.do.body.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.else.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp9.i = icmp eq i32 %and.i, 0
  %..i = select i1 %cmp9.i, i32 16, i32 32
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then3.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %mux.0.i = phi i32 [ 0, %if.end.i.do.body.i_crit_edge ], [ 48, %if.then3.i.do.body.i_crit_edge ], [ %..i, %if.else.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  tail call void @arm_heavy_mb() #5
  %or17.i = or i32 %mux.0.i, %9
  %conv.i = trunc i32 %or17.i to i8
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %16, 10
  %and18.i = and i32 %add.i, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %17 = inttoptr i32 %add19.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv.i) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  tail call void @arm_heavy_mb() #5
  %range_correction.i = getelementptr inbounds %struct.pcl812_private, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %range_correction.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %range_correction.i, align 4
  %20 = trunc i32 %shr.i to i8
  %conv25.i = add i8 %19, %20
  %21 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase.i, align 4
  %add27.i = add i32 %22, 9
  %and28.i = and i32 %add27.i, 1048575
  %add29.i = or i32 %and28.i, -18874368
  %23 = inttoptr i32 %add29.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv25.i) #5, !srcloc !101
  %max_812_ai_mode0_rangewait.i = getelementptr inbounds %struct.pcl812_private, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %max_812_ai_mode0_rangewait.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_812_ai_mode0_rangewait.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #5
  br label %pcl812_ai_set_chan_range.exit

pcl812_ai_set_chan_range.exit:                    ; preds = %do.body.i, %entry.pcl812_ai_set_chan_range.exit_crit_edge
  %tobool.not = icmp eq ptr %3, null
  %ai_dma13 = getelementptr inbounds %struct.pcl812_private, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %ai_dma13 to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load14 = load i8, ptr %ai_dma13, align 4
  br i1 %tobool.not, label %pcl812_ai_set_chan_range.exit.if.end17.sink.split_crit_edge, label %if.then

pcl812_ai_set_chan_range.exit.if.end17.sink.split_crit_edge: ; preds = %pcl812_ai_set_chan_range.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.sink.split

if.then:                                          ; preds = %pcl812_ai_set_chan_range.exit
  %bf.set = or i8 %bf.load14, 16
  %28 = ptrtoint ptr %ai_dma13 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %bf.set, ptr %ai_dma13, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %29 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp86 = icmp ugt i32 %30, 1
  br i1 %cmp86, label %for.body.lr.ph, label %if.then.if.end17_crit_edge

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

for.body.lr.ph:                                   ; preds = %if.then
  %31 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chanlist, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.087, 1
  %exitcond.not = icmp eq i32 %inc, %30
  br i1 %exitcond.not, label %for.cond.if.end17_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.if.end17_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.087 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx6 = getelementptr i32, ptr %32, i32 %i.087
  %35 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp7.not = icmp eq i32 %34, %36
  br i1 %cmp7.not, label %for.cond, label %for.body.if.end17.sink.split_crit_edge

for.body.if.end17.sink.split_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %for.body.if.end17.sink.split_crit_edge, %pcl812_ai_set_chan_range.exit.if.end17.sink.split_crit_edge
  %bf.clear11 = and i8 %bf.load14, -17
  %37 = ptrtoint ptr %ai_dma13 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %bf.clear11, ptr %ai_dma13, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %for.cond.if.end17_crit_edge, %if.then.if.end17_crit_edge
  %ai_poll_ptr = getelementptr inbounds %struct.pcl812_private, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %ai_poll_ptr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %ai_poll_ptr, align 4
  %flags = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 1
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %if.end17.if.end31_crit_edge, label %if.then19

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then19:                                        ; preds = %if.end17
  %ai_eos = getelementptr inbounds %struct.pcl812_private, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %ai_eos to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load20 = load i8, ptr %ai_eos, align 4
  %bf.set22 = or i8 %bf.load20, 8
  store i8 %bf.set22, ptr %ai_eos, align 4
  %chanlist_len23 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %42 = ptrtoint ptr %chanlist_len23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chanlist_len23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp24 = icmp eq i32 %43, 1
  br i1 %cmp24, label %if.then25, label %if.then19.if.end31_crit_edge

if.then19.if.end31_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then25:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear28 = and i8 %bf.set22, -17
  %44 = ptrtoint ptr %ai_eos to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %bf.clear28, ptr %ai_eos, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %if.then19.if.end31_crit_edge, %if.end17.if.end31_crit_edge
  %ai_dma32 = getelementptr inbounds %struct.pcl812_private, ptr %1, i32 0, i32 6
  %45 = ptrtoint ptr %ai_dma32 to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load33 = load i8, ptr %ai_dma32, align 4
  %46 = and i8 %bf.load33, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool35.not = icmp eq i8 %46, 0
  br i1 %tobool35.not, label %if.end31.if.end37_crit_edge, label %if.then36

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then36:                                        ; preds = %if.end31
  %cur_dma = getelementptr inbounds %struct.comedi_isadma, ptr %3, i32 0, i32 3
  %47 = ptrtoint ptr %cur_dma to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %cur_dma, align 4
  %48 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %private, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 4
  %desc2.i = getelementptr inbounds %struct.comedi_isadma, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %desc2.i, align 4
  %cur_dma.i = getelementptr inbounds %struct.comedi_isadma, ptr %51, i32 0, i32 3
  %54 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cur_dma.i, align 4
  %ai_eos.i = getelementptr inbounds %struct.pcl812_private, ptr %49, i32 0, i32 6
  %56 = ptrtoint ptr %ai_eos.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load.i80 = load i8, ptr %ai_eos.i, align 4
  %57 = and i8 %bf.load.i80, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i81 = icmp eq i8 %57, 0
  br i1 %tobool.not.i81, label %cond.false.i83, label %cond.true.i82

cond.true.i82:                                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call i32 @comedi_bytes_per_scan(ptr noundef %s) #5
  br label %cond.end.i

cond.false.i83:                                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #7
  %maxsize.i = getelementptr %struct.comedi_isadma_desc, ptr %53, i32 %55, i32 3
  %58 = ptrtoint ptr %maxsize.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %maxsize.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i83, %cond.true.i82
  %cond.i = phi i32 [ %call3.i, %cond.true.i82 ], [ %59, %cond.false.i83 ]
  %subdev_flags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %60 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i = and i32 %61, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %shr.i.i = lshr i32 %cond.i, %cond.i.i.i
  %call5.i = tail call i32 @comedi_nsamples_left(ptr noundef %s, i32 noundef %shr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i84.not = icmp eq i32 %call5.i, 0
  br i1 %cmp.i84.not, label %cond.end.i.if.end37_crit_edge, label %if.then.i

cond.end.i.if.end37_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i20.i = and i32 %63, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i20.i)
  %tobool.not.i.i21.i = icmp eq i32 %and.i.i20.i, 0
  %cond.i.i22.i = select i1 %tobool.not.i.i21.i, i32 1, i32 2
  %shl.i.i = shl i32 %call5.i, %cond.i.i22.i
  %size.i = getelementptr %struct.comedi_isadma_desc, ptr %53, i32 %55, i32 4
  %64 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %shl.i.i, ptr %size.i, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then.i, %cond.end.i.if.end37_crit_edge, %if.end31.if.end37_crit_edge
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 6
  %65 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %66)
  %cond = icmp eq i32 %66, 16
  br i1 %cond, label %sw.bb, label %if.end37.sw.epilog_crit_edge

if.end37.sw.epilog_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %67 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_update_divisors(ptr noundef %68) #5
  %69 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %70, i32 noundef 1, i32 noundef 2, i1 noundef zeroext true) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end37.sw.epilog_crit_edge
  %71 = ptrtoint ptr %ai_dma32 to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load40 = load i8, ptr %ai_dma32, align 4
  %72 = and i8 %bf.load40, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool44.not = icmp eq i8 %72, 0
  %. = select i1 %tobool44.not, i8 6, i8 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !116
  tail call void @arm_heavy_mb() #5
  %mode_reg_int = getelementptr inbounds %struct.pcl812_private, ptr %1, i32 0, i32 3
  %73 = ptrtoint ptr %mode_reg_int to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %mode_reg_int, align 4
  %or49 = or i8 %., %74
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %75 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %iobase, align 4
  %add = add i32 %76, 11
  %and51 = and i32 %add, 1048575
  %add52 = or i32 %and51, -18874368
  %77 = inttoptr i32 %add52 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 %or49) #5, !srcloc !101
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl812_ai_poll(ptr noundef %dev, ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %ai_dma = getelementptr inbounds %struct.pcl812_private, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ai_dma to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %ai_dma, align 4
  %3 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body2, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl812_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !117
  tail call void @arm_heavy_mb() #5
  %mode_reg_int = getelementptr inbounds %struct.pcl812_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mode_reg_int to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode_reg_int, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, 11
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %6 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %3) #5, !srcloc !101
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %7 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %8, i32 noundef 1, i32 noundef 2, i1 noundef zeroext false) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add.i = add i32 %10, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #5, !srcloc !101
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl812_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %2 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %readback, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp32.not = icmp eq i32 %7, 0
  br i1 %cmp32.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %mul = shl nuw nsw i32 %and, 1
  %add = add nuw nsw i32 %mul, 4
  %add13 = add nuw nsw i32 %mul, 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %data, i32 %i.033
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !118
  tail call void @arm_heavy_mb() #5
  %conv = trunc i32 %9 to i8
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add3 = add i32 %add, %11
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %12 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !119
  tail call void @arm_heavy_mb() #5
  %shr = lshr i32 %9, 8
  %13 = trunc i32 %shr to i8
  %conv10 = and i8 %13, 15
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add14 = add i32 %add13, %15
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %16 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv10) #5, !srcloc !101
  %inc = add nuw i32 %i.033, 1
  %17 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %5, %entry.for.end_crit_edge ], [ %9, %for.body.for.end_crit_edge ]
  %19 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %readback, align 4
  %arrayidx19 = getelementptr i32, ptr %20, i32 %and
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %val.0.lcssa, ptr %arrayidx19, align 4
  %22 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n, align 4
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl812_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 6
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !120
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add5 = add i32 %5, 7
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %6 = inttoptr i32 %add7 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !121
  %conv11 = zext i8 %7 to i32
  %shl = shl nuw nsw i32 %conv11, 8
  %or = or i32 %shl, %conv
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl812_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !122
  tail call void @arm_heavy_mb() #5
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add = add i32 %3, 13
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %4 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #5, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !123
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %shr = lshr i32 %6, 8
  %conv7 = trunc i32 %shr to i8
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add9 = add i32 %8, 14
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %9 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv7) #5, !srcloc !101
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %state13 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %10 = ptrtoint ptr %state13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state13, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %13 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n, align 4
  ret i32 %14
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcl812_handle_eoc(ptr nocapture noundef readonly %dev, ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async, align 4
  %cur_chan = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %cur_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_chan, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #5
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %4 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %maxdata.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %5)
  %cmp.i = icmp ugt i32 %5, 4095
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %add.i = add i32 %7, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  %10 = and i8 %9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp4.i = icmp eq i8 %10, 0
  br i1 %cmp4.i, label %if.then.i.if.end10_crit_edge, label %if.then.i.do.body_crit_edge

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then.i.if.end10_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.else.i:                                        ; preds = %entry
  %add9.i = add i32 %7, 5
  %and10.i = and i32 %add9.i, 1048575
  %add11.i = or i32 %and10.i, -18874368
  %11 = inttoptr i32 %add11.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  %13 = and i8 %12, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp17.i = icmp eq i8 %13, 0
  br i1 %cmp17.i, label %if.else.i.if.end10_crit_edge, label %if.else.i.do.body_crit_edge

if.else.i.do.body_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.else.i.if.end10_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

do.body:                                          ; preds = %if.else.i.do.body_crit_edge, %if.then.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcl812_handle_eoc.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcl812_handle_eoc, %do.end)) #5
          to label %if.then8 [label %do.end], !srcloc !126

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcl812_handle_eoc.__UNIQUE_ID_ddebug234, ptr noundef %15, ptr noundef nonnull @.str.3) #5
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %16 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %async, align 4
  br label %cleanup.sink.split

if.end10:                                         ; preds = %if.else.i.if.end10_crit_edge, %if.then.i.if.end10_crit_edge
  %18 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase.i, align 4
  %add.i42 = add i32 %19, 5
  %and.i43 = and i32 %add.i42, 1048575
  %add1.i44 = or i32 %and.i43, -18874368
  %20 = inttoptr i32 %add1.i44 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  %conv.i = zext i8 %21 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 8
  %22 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i, align 4
  %add5.i = add i32 %23, 4
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %24 = inttoptr i32 %add7.i to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !113
  %conv11.i = zext i8 %25 to i32
  %or.i = or i32 %shl.i, %conv11.i
  %26 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %maxdata.i, align 4
  %and12.i = and i32 %or.i, %27
  %conv = trunc i32 %and12.i to i16
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv, ptr %val, align 2
  %call12 = call i32 @comedi_buf_write_samples(ptr noundef %s, ptr noundef nonnull %val, i32 noundef 1) #5
  %29 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %async, align 4
  %cur_chan14 = getelementptr inbounds %struct.comedi_async, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %cur_chan14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cur_chan14, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 17, i32 12
  %33 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chanlist, align 4
  %arrayidx = getelementptr i32, ptr %34, i32 %3
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx, align 4
  %arrayidx16 = getelementptr i32, ptr %34, i32 %32
  %37 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp.not = icmp eq i32 %36, %38
  br i1 %cmp.not, label %if.end10.if.end21_crit_edge, label %if.then18

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then18:                                        ; preds = %if.end10
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %39 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %private.i, align 4
  %and.i46 = and i32 %38, 65528
  %shr.i = lshr i32 %38, 16
  %last_ai_chanspec.i = getelementptr inbounds %struct.pcl812_private, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %last_ai_chanspec.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %last_ai_chanspec.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %38)
  %cmp.i47 = icmp eq i32 %42, %38
  br i1 %cmp.i47, label %if.then18.if.end21_crit_edge, label %if.end.i

if.then18.if.end21_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.end.i:                                         ; preds = %if.then18
  %43 = ptrtoint ptr %last_ai_chanspec.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %38, ptr %last_ai_chanspec.i, align 4
  %use_mpc508.i = getelementptr inbounds %struct.pcl812_private, ptr %40, i32 0, i32 6
  %44 = ptrtoint ptr %use_mpc508.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i = load i8, ptr %use_mpc508.i, align 4
  %45 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i, label %if.end.i.do.body.i_crit_edge, label %if.then3.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool7.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool7.not.i, label %if.else.i48, label %if.then3.i.do.body.i_crit_edge

if.then3.i.do.body.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

if.else.i48:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %cmp9.i = icmp eq i32 %and.i46, 0
  %..i = select i1 %cmp9.i, i32 16, i32 32
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i48, %if.then3.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %mux.0.i = phi i32 [ 0, %if.end.i.do.body.i_crit_edge ], [ 48, %if.then3.i.do.body.i_crit_edge ], [ %..i, %if.else.i48 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !103
  call void @arm_heavy_mb() #5
  %or17.i = or i32 %mux.0.i, %38
  %conv.i49 = trunc i32 %or17.i to i8
  %46 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %iobase.i, align 4
  %add.i51 = add i32 %47, 10
  %and18.i = and i32 %add.i51, 1048575
  %add19.i = or i32 %and18.i, -18874368
  %48 = inttoptr i32 %add19.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %conv.i49) #5, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  call void @arm_heavy_mb() #5
  %range_correction.i = getelementptr inbounds %struct.pcl812_private, ptr %40, i32 0, i32 1
  %49 = ptrtoint ptr %range_correction.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %range_correction.i, align 4
  %51 = trunc i32 %shr.i to i8
  %conv25.i = add i8 %50, %51
  %52 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %iobase.i, align 4
  %add27.i = add i32 %53, 9
  %and28.i = and i32 %add27.i, 1048575
  %add29.i = or i32 %and28.i, -18874368
  %54 = inttoptr i32 %add29.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %54, i8 %conv25.i) #5, !srcloc !101
  br label %if.end21

if.end21:                                         ; preds = %do.body.i, %if.then18.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  %55 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %async, align 4
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %56, i32 0, i32 17, i32 10
  %57 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %58)
  %cmp.i52 = icmp eq i32 %58, 32
  br i1 %cmp.i52, label %land.lhs.true.i, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end21
  %scans_done.i = getelementptr inbounds %struct.comedi_async, ptr %56, i32 0, i32 11
  %59 = ptrtoint ptr %scans_done.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %scans_done.i, align 4
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %56, i32 0, i32 17, i32 11
  %61 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %stop_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp3.not.i = icmp ult i32 %60, %62
  br i1 %cmp3.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.cleanup.sink.split_crit_edge

land.lhs.true.i.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true.i.cleanup.sink.split_crit_edge, %do.end
  %.sink = phi ptr [ %17, %do.end ], [ %56, %land.lhs.true.i.cleanup.sink.split_crit_edge ]
  %.sink59 = phi i32 [ 16, %do.end ], [ 2, %land.lhs.true.i.cleanup.sink.split_crit_edge ]
  %events = getelementptr inbounds %struct.comedi_async, ptr %.sink, i32 0, i32 16
  %63 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %events, align 4
  %or.i53 = or i32 %64, %.sink59
  store i32 %or.i53, ptr %events, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.i.cleanup_crit_edge, %if.end21.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_bytes_per_scan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_nsamples_left(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl812_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %0 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %1)
  %cmp = icmp ugt i32 %1, 4095
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add = add i32 %3, 8
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %4) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !124
  %6 = and i8 %5, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp4 = icmp eq i8 %6, 0
  br i1 %cmp4, label %if.then.cleanup_crit_edge, label %if.then.if.end21_crit_edge

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %add9 = add i32 %3, 5
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %7 = inttoptr i32 %add11 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #5, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  %9 = and i8 %8, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp17 = icmp eq i8 %9, 0
  br i1 %cmp17, label %if.else.cleanup_crit_edge, label %if.else.if.end21_crit_edge

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end21:                                         ; preds = %if.else.if.end21_crit_edge, %if.then.if.end21_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end21 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_cascade_ns_to_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_update_divisors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_pacer_enable(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) local_unnamed_addr #1

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__initcall__kmod_pcl812__235_1330_pcl812_driver_init6, !1, !"__initcall__kmod_pcl812__235_1330_pcl812_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/pcl812.c", i32 1330, i32 1}
!2 = !{ptr @__exitcall_pcl812_driver_exit, !1, !"__exitcall_pcl812_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author236, !4, !"__UNIQUE_ID_author236", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/pcl812.c", i32 1332, i32 1}
!5 = !{ptr @__UNIQUE_ID_description237, !6, !"__UNIQUE_ID_description237", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/pcl812.c", i32 1333, i32 1}
!7 = !{ptr @__UNIQUE_ID_file238, !8, !"__UNIQUE_ID_file238", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/pcl812.c", i32 1334, i32 1}
!9 = !{ptr @__UNIQUE_ID_license239, !8, !"__UNIQUE_ID_license239", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/pcl812.c", i32 1322, i32 17}
!12 = !{ptr @pcl812_driver, !13, !"pcl812_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/pcl812.c", i32 1321, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/pcl812.c", i32 780, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @pcl812_handle_eoc.__UNIQUE_ID_ddebug234, !15, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!19 = !{ptr @range_pcl812pg2_ai, !20, !"range_pcl812pg2_ai", i1 false, i1 false}
!20 = !{!"../drivers/comedi/drivers/pcl812.c", i32 161, i32 35}
!21 = !{ptr @range812_bipolar1_25, !22, !"range812_bipolar1_25", i1 false, i1 false}
!22 = !{!"../drivers/comedi/drivers/pcl812.c", i32 171, i32 35}
!23 = !{ptr @range812_bipolar0_625, !24, !"range812_bipolar0_625", i1 false, i1 false}
!24 = !{!"../drivers/comedi/drivers/pcl812.c", i32 177, i32 35}
!25 = !{ptr @range812_bipolar0_3125, !26, !"range812_bipolar0_3125", i1 false, i1 false}
!26 = !{!"../drivers/comedi/drivers/pcl812.c", i32 183, i32 35}
!27 = !{ptr @range_pcl813b2_ai, !28, !"range_pcl813b2_ai", i1 false, i1 false}
!28 = !{!"../drivers/comedi/drivers/pcl812.c", i32 198, i32 35}
!29 = !{ptr @range_iso813_1_ai, !30, !"range_iso813_1_ai", i1 false, i1 false}
!30 = !{!"../drivers/comedi/drivers/pcl812.c", i32 207, i32 35}
!31 = !{ptr @range_iso813_1_2_ai, !32, !"range_iso813_1_2_ai", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/pcl812.c", i32 217, i32 35}
!33 = !{ptr @range_iso813_2_ai, !34, !"range_iso813_2_ai", i1 false, i1 false}
!34 = !{!"../drivers/comedi/drivers/pcl812.c", i32 227, i32 35}
!35 = !{ptr @range_iso813_2_2_ai, !36, !"range_iso813_2_2_ai", i1 false, i1 false}
!36 = !{!"../drivers/comedi/drivers/pcl812.c", i32 236, i32 35}
!37 = !{ptr @range_acl8113_1_ai, !38, !"range_acl8113_1_ai", i1 false, i1 false}
!38 = !{!"../drivers/comedi/drivers/pcl812.c", i32 245, i32 35}
!39 = !{ptr @range_acl8113_1_2_ai, !40, !"range_acl8113_1_2_ai", i1 false, i1 false}
!40 = !{!"../drivers/comedi/drivers/pcl812.c", i32 254, i32 35}
!41 = !{ptr @range_acl8113_2_ai, !42, !"range_acl8113_2_ai", i1 false, i1 false}
!42 = !{!"../drivers/comedi/drivers/pcl812.c", i32 263, i32 35}
!43 = !{ptr @range_acl8113_2_2_ai, !44, !"range_acl8113_2_2_ai", i1 false, i1 false}
!44 = !{!"../drivers/comedi/drivers/pcl812.c", i32 271, i32 35}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/comedi/drivers/pcl812.c", i32 357, i32 12}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/comedi/drivers/pcl812.c", i32 367, i32 12}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/comedi/drivers/pcl812.c", i32 377, i32 12}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/comedi/drivers/pcl812.c", i32 388, i32 12}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/comedi/drivers/pcl812.c", i32 399, i32 12}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/comedi/drivers/pcl812.c", i32 408, i32 12}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/comedi/drivers/pcl812.c", i32 415, i32 12}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/comedi/drivers/pcl812.c", i32 424, i32 12}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/comedi/drivers/pcl812.c", i32 434, i32 12}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/comedi/drivers/pcl812.c", i32 444, i32 12}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/comedi/drivers/pcl812.c", i32 454, i32 12}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/comedi/drivers/pcl812.c", i32 464, i32 12}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/comedi/drivers/pcl812.c", i32 469, i32 12}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/comedi/drivers/pcl812.c", i32 474, i32 12}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/comedi/drivers/pcl812.c", i32 479, i32 12}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/comedi/drivers/pcl812.c", i32 484, i32 12}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/comedi/drivers/pcl812.c", i32 496, i32 12}
!79 = !{ptr @boardtypes, !80, !"boardtypes", i1 false, i1 false}
!80 = !{!"../drivers/comedi/drivers/pcl812.c", i32 345, i32 34}
!81 = !{ptr @range_pcl812pg_ai, !82, !"range_pcl812pg_ai", i1 false, i1 false}
!82 = !{!"../drivers/comedi/drivers/pcl812.c", i32 151, i32 35}
!83 = !{ptr @range_acl8112dg_ai, !84, !"range_acl8112dg_ai", i1 false, i1 false}
!84 = !{!"../drivers/comedi/drivers/pcl812.c", i32 279, i32 35}
!85 = !{ptr @range_acl8112hg_ai, !86, !"range_acl8112hg_ai", i1 false, i1 false}
!86 = !{!"../drivers/comedi/drivers/pcl812.c", i32 293, i32 35}
!87 = !{ptr @range_pcl813b_ai, !88, !"range_pcl813b_ai", i1 false, i1 false}
!88 = !{!"../drivers/comedi/drivers/pcl812.c", i32 189, i32 35}
!89 = !{ptr @range_a821pgh_ai, !90, !"range_a821pgh_ai", i1 false, i1 false}
!90 = !{!"../drivers/comedi/drivers/pcl812.c", i32 310, i32 35}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i64 2154245556}
!101 = !{i64 4646292}
!102 = !{i64 2154236615}
!103 = !{i64 2154235145}
!104 = !{i64 2154235526}
!105 = !{i64 2154246074}
!106 = !{i64 2154246480}
!107 = !{i64 2154246848}
!108 = !{i64 2154247197}
!109 = !{i64 2154242493}
!110 = !{i64 2154236966}
!111 = !{i64 4646687}
!112 = !{i64 2154237395}
!113 = !{i64 2154237697}
!114 = !{i64 2154242926}
!115 = !{i32 0, i32 33}
!116 = !{i64 2154238931}
!117 = !{i64 2154242060}
!118 = !{i64 2154243352}
!119 = !{i64 2154243774}
!120 = !{i64 2154244222}
!121 = !{i64 2154244524}
!122 = !{i64 2154244760}
!123 = !{i64 2154245123}
!124 = !{i64 2154237999}
!125 = !{i64 2154238383}
!126 = !{i64 2148983984, i64 2148983989, i64 2148984002, i64 2148984046, i64 2148984080, i64 2148984101}
