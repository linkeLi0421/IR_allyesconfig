; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/das1800.c_pt.bc'
source_filename = "../drivers/comedi/drivers/das1800.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.das1800_board = type { ptr, i8, i32, i8 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.das1800_private = type { ptr, i32, i32, ptr, i32, i8 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.comedi_isadma = type { ptr, ptr, i32, i32, i32, i32 }
%struct.comedi_isadma_desc = type { ptr, i32, i32, i32, i32, i8 }

@__initcall__kmod_das1800__235_1358_das1800_driver_init6 = internal global ptr @das1800_driver_init, section ".initcall6.init", align 4
@das1800_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @das1800_attach, ptr @das1800_detach, ptr null, i32 18, ptr @das1800_boards, i32 16 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_das1800_driver_exit = internal global ptr @das1800_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author236 = internal constant [45 x i8] c"das1800.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [68 x i8] c"das1800.description=Comedi driver for DAS1800 compatible ISA boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [44 x i8] c"das1800.file=drivers/comedi/drivers/das1800\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [20 x i8] c"das1800.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"das1800\00", [24 x i8] zeroinitializer }, align 32
@das1800_boards = internal constant { [18 x %struct.das1800_board], [64 x i8] } { [18 x %struct.das1800_board] [%struct.das1800_board { ptr @.str.21, i8 7, i32 6250, i8 -128 }, %struct.das1800_board { ptr @.str.22, i8 3, i32 6250, i8 -128 }, %struct.das1800_board { ptr @.str.23, i8 7, i32 6250, i8 0 }, %struct.das1800_board { ptr @.str.24, i8 3, i32 6250, i8 0 }, %struct.das1800_board { ptr @.str.25, i8 6, i32 20000, i8 0 }, %struct.das1800_board { ptr @.str.26, i8 4, i32 20000, i8 0 }, %struct.das1800_board { ptr @.str.27, i8 5, i32 6250, i8 -128 }, %struct.das1800_board { ptr @.str.28, i8 5, i32 6250, i8 0 }, %struct.das1800_board { ptr @.str.29, i8 7, i32 3000, i8 -128 }, %struct.das1800_board { ptr @.str.30, i8 3, i32 3000, i8 -128 }, %struct.das1800_board { ptr @.str.31, i8 7, i32 3000, i8 0 }, %struct.das1800_board { ptr @.str.32, i8 3, i32 3000, i8 0 }, %struct.das1800_board { ptr @.str.33, i8 6, i32 10000, i8 0 }, %struct.das1800_board { ptr @.str.34, i8 4, i32 10000, i8 0 }, %struct.das1800_board { ptr @.str.35, i8 8, i32 3000, i8 -128 }, %struct.das1800_board { ptr @.str.36, i8 8, i32 3000, i8 0 }, %struct.das1800_board { ptr @.str.37, i8 5, i32 3000, i8 -128 }, %struct.das1800_board { ptr @.str.38, i8 5, i32 3000, i8 0 }], [64 x i8] zeroinitializer }, align 32
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@das1800_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1114, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"probed id does not match board id (0x%x != 0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"das1800_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/comedi/drivers/das1800.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@das1800_probe._entry_ptr = internal global ptr @das1800_probe._entry, section ".printk_index", align 4
@das1800_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1149, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid probe id 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@das1800_probe._entry_ptr.8 = internal global ptr @das1800_probe._entry.6, section ".printk_index", align 4
@das1800_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1156, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"probed id 0x%0x: %s series (not recommended)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@das1800_probe._entry_ptr.12 = internal global ptr @das1800_probe._entry.9, section ".printk_index", align 4
@das1800_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 516, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"premature interrupt\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"das1800_interrupt\00", [46 x i8] zeroinitializer }, align 32
@das1800_interrupt._entry_ptr = internal global ptr @das1800_interrupt._entry, section ".printk_index", align 4
@das1800_ai_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 468, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"FIFO overflow\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"das1800_ai_handler\00", [45 x i8] zeroinitializer }, align 32
@das1800_ai_handler._entry_ptr = internal global ptr @das1800_ai_handler._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@das1801_ai_range = internal constant { { i32, [8 x %struct.comedi_krange] }, [60 x i8] } { { i32, [8 x %struct.comedi_krange] } { i32 8, [8 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -20000, i32 20000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 0, i32 20000, i32 0 }] }, [60 x i8] zeroinitializer }, align 32
@das1802_ai_range = internal constant { { i32, [8 x %struct.comedi_krange] }, [60 x i8] } { { i32, [8 x %struct.comedi_krange] } { i32 8, [8 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [60 x i8] zeroinitializer }, align 32
@das1800_ai_check_chanlist.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 -100, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"das1800_ai_check_chanlist\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"unipolar and bipolar ranges cannot be mixed in the chanlist\0A\00", [35 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"das-1701st\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"das-1701st-da\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"das-1702st\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"das-1702st-da\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"das-1702hr\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"das-1702hr-da\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"das-1701ao\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"das-1702ao\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"das-1801st\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"das-1801st-da\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"das-1802st\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"das-1802st-da\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"das-1802hr\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"das-1802hr-da\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"das-1801hc\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"das-1802hc\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"das-1801ao\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"das-1802ao\00", [21 x i8] zeroinitializer }, align 32
@switch.table.das1800_attach = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr getelementptr inbounds ([18 x %struct.das1800_board], ptr @das1800_boards, i32 0, i32 9), ptr getelementptr inbounds ([18 x %struct.das1800_board], ptr @das1800_boards, i32 0, i32 13), ptr getelementptr inbounds ([18 x %struct.das1800_board], ptr @das1800_boards, i32 0, i32 16), ptr getelementptr inbounds ([18 x %struct.das1800_board], ptr @das1800_boards, i32 0, i32 12), ptr getelementptr inbounds ([18 x %struct.das1800_board], ptr @das1800_boards, i32 0, i32 8), ptr getelementptr inbounds ([18 x %struct.das1800_board], ptr @das1800_boards, i32 0, i32 14)], [40 x i8] zeroinitializer }, align 32
@switch.table.das1800_attach.39 = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 8, i32 8, i32 16, i32 8, i32 24, i32 8, i32 8, i32 40, i32 48, i32 8, i32 8, i32 8, i32 56], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 5, i64 7, i64 10, i64 11, i64 15]
@__sancov_gen_cov_switch_values.40 = internal global [8 x i64] [i64 6, i64 32, i64 5, i64 6, i64 7, i64 87, i64 101, i64 118]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 16]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 32]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"das1800_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1349, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1350, i32 17 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"das1800_boards\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 211, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1112, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1149, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1154, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 516, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 468, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"das1801_ai_range\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 143, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"das1802_ai_range\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 156, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 623, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 213, i32 12 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 219, i32 12 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 225, i32 12 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 230, i32 12 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 235, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 240, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 245, i32 12 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 251, i32 12 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 256, i32 12 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 262, i32 12 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 268, i32 12 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 273, i32 12 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 278, i32 12 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 283, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 288, i32 12 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 294, i32 12 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 299, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [36 x i8] c"../drivers/comedi/drivers/das1800.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 305, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant [28 x i8] c"switch.table.das1800_attach\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [31 x i8] c"switch.table.das1800_attach.39\00", align 1
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_das1800_driver_exit, ptr @__initcall__kmod_das1800__235_1358_das1800_driver_init6, ptr @das1800_ai_handler._entry, ptr @das1800_ai_handler._entry_ptr, ptr @das1800_driver_exit, ptr @das1800_interrupt._entry, ptr @das1800_interrupt._entry_ptr, ptr @das1800_probe._entry, ptr @das1800_probe._entry.6, ptr @das1800_probe._entry.9, ptr @das1800_probe._entry_ptr, ptr @das1800_probe._entry_ptr.12, ptr @das1800_probe._entry_ptr.8, ptr @das1800_driver, ptr @.str, ptr @das1800_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @das1801_ai_range, ptr @das1802_ai_range, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @switch.table.das1800_attach, ptr @switch.table.das1800_attach.39], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das1800_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das1800_boards to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das1800_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das1800_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das1800_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das1800_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das1800_ai_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das1801_ai_range to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das1802_ai_range to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.das1800_attach to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.das1800_attach.39 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @das1800_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @das1800_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @das1800_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @comedi_driver_unregister(ptr noundef nonnull @das1800_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das1800_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 24) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup200_crit_edge, label %if.end

entry.cleanup200_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

if.end:                                           ; preds = %entry
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 4
  %call3 = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %3, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup200_crit_edge

if.end.cleanup200_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

if.end6:                                          ; preds = %if.end
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %4 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board_ptr.i, align 4
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %7, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  %10 = lshr i8 %9, 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end13.i, label %if.then.i

if.then.i:                                        ; preds = %if.end6
  %id5.i = getelementptr inbounds %struct.das1800_board, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %id5.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id5.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %10)
  %cmp.i = icmp eq i8 %12, %10
  br i1 %cmp.i, label %if.then.i.if.end10_crit_edge, label %do.end.i

if.then.i.if.end10_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv7.i = zext i8 %10 to i32
  %conv6.i = zext i8 %12 to i32
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1, i32 noundef %conv7.i, i32 noundef %conv6.i) #11
  br label %cleanup200

if.end13.i:                                       ; preds = %if.end6
  %conv14.i = zext i8 %10 to i32
  %switch.tableidx = add nsw i32 %conv14.i, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 6
  br i1 %15, label %switch.lookup, label %do.end22.i

do.end22.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev23.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %class_dev23.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev23.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.7, i32 noundef %conv14.i) #11
  br label %cleanup200

switch.lookup:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.das1800_attach, i32 0, i32 %switch.tableidx
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %19 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %switch.load, ptr %board_ptr.i, align 4
  %20 = ptrtoint ptr %switch.load to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %switch.load, align 4
  %board_name.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %22 = ptrtoint ptr %board_name.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %board_name.i, align 4
  %class_dev29.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %23 = ptrtoint ptr %class_dev29.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %class_dev29.i, align 4
  %25 = load ptr, ptr %switch.load, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.10, i32 noundef %conv14.i, ptr noundef %25) #11
  br label %if.end10

if.end10:                                         ; preds = %switch.lookup, %if.then.i.if.end10_crit_edge
  %26 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %board_ptr.i, align 4
  %id = getelementptr inbounds %struct.das1800_board, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %id, align 4
  %30 = and i8 %29, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %30)
  %31 = icmp eq i8 %30, 4
  %32 = select i1 %31, i32 65535, i32 4095
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %29)
  %cmp18 = icmp eq i8 %29, 5
  br i1 %cmp18, label %if.then20, label %if.end10.if.end26_crit_edge

if.end10.if.end26_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then20:                                        ; preds = %if.end10
  %33 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase.i, align 4
  %add = add i32 %34, 1024
  %call21 = tail call i32 @__comedi_request_region(ptr noundef %dev, i32 noundef %add, i32 noundef 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then20.cleanup200_crit_edge

if.then20.cleanup200_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

if.end24:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %iobase225 = getelementptr inbounds %struct.das1800_private, ptr %call, i32 0, i32 4
  %35 = ptrtoint ptr %iobase225 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add, ptr %iobase225, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end24, %if.end10.if.end26_crit_edge
  %36 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.end26.if.end65_crit_edge [
    i32 3, label %if.end26.if.then43_crit_edge
    i32 5, label %if.end26.if.then43_crit_edge327
    i32 7, label %if.end26.if.then43_crit_edge328
    i32 10, label %if.end26.if.then43_crit_edge329
    i32 11, label %if.end26.if.then43_crit_edge330
    i32 15, label %if.end26.if.then43_crit_edge331
  ]

if.end26.if.then43_crit_edge331:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.end26.if.then43_crit_edge330:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.end26.if.then43_crit_edge329:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.end26.if.then43_crit_edge328:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.end26.if.then43_crit_edge327:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.end26.if.then43_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.end26.if.end65_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then43:                                        ; preds = %if.end26.if.then43_crit_edge, %if.end26.if.then43_crit_edge327, %if.end26.if.then43_crit_edge328, %if.end26.if.then43_crit_edge329, %if.end26.if.then43_crit_edge330, %if.end26.if.then43_crit_edge331
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %37 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @das1800_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %38, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp45 = icmp eq i32 %call.i, 0
  br i1 %cmp45, label %if.then47, label %if.then43.if.end65_crit_edge

if.then43.if.end65_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then47:                                        ; preds = %if.then43
  %irq48 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %39 = ptrtoint ptr %irq48 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %1, ptr %irq48, align 4
  %switch.tableidx323 = add i32 %1, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx323)
  %40 = icmp ult i32 %switch.tableidx323, 13
  br i1 %40, label %switch.hole_check, label %if.then47.if.end65_crit_edge

if.then47.if.end65_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

switch.hole_check:                                ; preds = %if.then47
  %switch.maskindex = trunc i32 %switch.tableidx323 to i16
  %switch.shifted = lshr i16 4501, %switch.maskindex
  %41 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %switch.lobit.not = icmp eq i16 %41, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end65_crit_edge, label %switch.lookup324

switch.hole_check.if.end65_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

switch.lookup324:                                 ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep325 = getelementptr inbounds [13 x i32], ptr @switch.table.das1800_attach.39, i32 0, i32 %switch.tableidx323
  %42 = ptrtoint ptr %switch.gep325 to i32
  call void @__asan_load4_noabort(i32 %42)
  %switch.load326 = load i32, ptr %switch.gep325, align 4
  %irq_dma_bits = getelementptr inbounds %struct.das1800_private, ptr %call, i32 0, i32 1
  %43 = ptrtoint ptr %irq_dma_bits to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq_dma_bits, align 4
  %or63 = or i32 %44, %switch.load326
  store i32 %or63, ptr %irq_dma_bits, align 4
  br label %if.end65

if.end65:                                         ; preds = %switch.lookup324, %switch.hole_check.if.end65_crit_edge, %if.then47.if.end65_crit_edge, %if.then43.if.end65_crit_edge, %if.end26.if.end65_crit_edge
  %irq66 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %45 = ptrtoint ptr %irq66 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq66, align 4
  %arrayidx68 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 2
  %47 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx68, align 4
  %and = and i32 %48, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool69.not = icmp eq i32 %and, 0
  br i1 %tobool69.not, label %if.end65.if.end71_crit_edge, label %if.then70

if.end65.if.end71_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then70:                                        ; preds = %if.end65
  %and.i314 = and i32 %48, 7
  %arrayidx2.i = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx2.i, align 4
  %shl.i = shl i32 %50, 4
  %or.i = or i32 %shl.i, %and.i314
  %51 = zext i32 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %or.i, label %if.then70.if.end71_crit_edge [
    i32 5, label %if.then70.sw.epilog.i315_crit_edge
    i32 6, label %if.then70.sw.epilog.i315_crit_edge332
    i32 7, label %if.then70.sw.epilog.i315_crit_edge333
    i32 101, label %if.then70.sw.epilog.i315_crit_edge334
    i32 118, label %if.then70.sw.epilog.i315_crit_edge335
    i32 87, label %if.then70.sw.epilog.i315_crit_edge336
  ]

if.then70.sw.epilog.i315_crit_edge336:            ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i315

if.then70.sw.epilog.i315_crit_edge335:            ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i315

if.then70.sw.epilog.i315_crit_edge334:            ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i315

if.then70.sw.epilog.i315_crit_edge333:            ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i315

if.then70.sw.epilog.i315_crit_edge332:            ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i315

if.then70.sw.epilog.i315_crit_edge:               ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i315

if.then70.if.end71_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

sw.epilog.i315:                                   ; preds = %if.then70.sw.epilog.i315_crit_edge, %if.then70.sw.epilog.i315_crit_edge332, %if.then70.sw.epilog.i315_crit_edge333, %if.then70.sw.epilog.i315_crit_edge334, %if.then70.sw.epilog.i315_crit_edge335, %if.then70.sw.epilog.i315_crit_edge336
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %52 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %private.i, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %53, align 4
  %dma_bits18.i = getelementptr inbounds %struct.das1800_private, ptr %53, i32 0, i32 2
  %55 = ptrtoint ptr %dma_bits18.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %dma_bits18.i, align 4
  br label %if.end71

if.end71:                                         ; preds = %sw.epilog.i315, %if.then70.if.end71_crit_edge, %if.end65.if.end71_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3264, i32 noundef 2048) #12
  %fifo_buf = getelementptr inbounds %struct.das1800_private, ptr %call, i32 0, i32 3
  %57 = ptrtoint ptr %fifo_buf to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i, ptr %fifo_buf, align 4
  %tobool74.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool74.not, label %if.end71.cleanup200_crit_edge, label %if.end76

if.end71.cleanup200_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

if.end76:                                         ; preds = %if.end71
  %58 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %iobase.i, align 4
  %add78 = add i32 %59, 12
  %call79 = tail call ptr @comedi_8254_init(i32 noundef %add78, i32 noundef 200, i32 noundef 1, i32 noundef 0) #8
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %60 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call79, ptr %pacer, align 4
  %tobool81.not = icmp eq ptr %call79, null
  br i1 %tobool81.not, label %if.end76.cleanup200_crit_edge, label %if.end83

if.end76.cleanup200_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

if.end83:                                         ; preds = %if.end76
  %call84 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end87, label %if.end83.cleanup200_crit_edge

if.end83.cleanup200_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

if.end87:                                         ; preds = %if.end83
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %61 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 4
  %64 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 5308416, ptr %subdev_flags, align 4
  %65 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %66)
  %cmp91.not = icmp eq i8 %66, 8
  %spec.store.select = select i1 %cmp91.not, i32 5308416, i32 7405568
  %67 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %spec.store.select, ptr %subdev_flags, align 4
  %68 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %69)
  %cmp99 = icmp eq i8 %69, 8
  %cond = select i1 %cmp99, i32 64, i32 256
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 3
  %70 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %cond, ptr %n_chan, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 13
  %71 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %32, ptr %maxdata, align 4
  %is_01_series = getelementptr inbounds %struct.das1800_board, ptr %27, i32 0, i32 3
  %72 = ptrtoint ptr %is_01_series to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load = load i8, ptr %is_01_series, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool104.not = icmp sgt i8 %bf.load, -1
  %cond105 = select i1 %tobool104.not, ptr @das1802_ai_range, ptr @das1801_ai_range
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 15
  %73 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %cond105, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 18
  %74 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @das1800_ai_insn_read, ptr %insn_read, align 4
  %75 = ptrtoint ptr %irq66 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool107.not = icmp eq i32 %76, 0
  br i1 %tobool107.not, label %if.end87.if.end112_crit_edge, label %if.then108

if.end87.if.end112_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then108:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %77 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %62, ptr %read_subdev, align 4
  %78 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %subdev_flags, align 4
  %or110 = or i32 %79, 32768
  store i32 %or110, ptr %subdev_flags, align 4
  %80 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %n_chan, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 5
  %82 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %len_chanlist, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 22
  %83 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @das1800_ai_cmd, ptr %do_cmd, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 23
  %84 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @das1800_ai_cmdtest, ptr %do_cmdtest, align 4
  %poll = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 24
  %85 = ptrtoint ptr %poll to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @das1800_ai_poll, ptr %poll, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 25
  %86 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @das1800_ai_cancel, ptr %cancel, align 4
  %munge = getelementptr inbounds %struct.comedi_subdevice, ptr %62, i32 0, i32 27
  %87 = ptrtoint ptr %munge to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @das1800_ai_munge, ptr %munge, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then108, %if.end87.if.end112_crit_edge
  %88 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %subdevices, align 4
  %90 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %id, align 4
  %.off = add i8 %91, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then124, label %if.end169.sink.split

if.then124:                                       ; preds = %if.end112
  %arrayidx114 = getelementptr %struct.comedi_subdevice, ptr %89, i32 1
  %type125 = getelementptr %struct.comedi_subdevice, ptr %89, i32 1, i32 2
  %92 = ptrtoint ptr %type125 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %type125, align 4
  %subdev_flags126 = getelementptr %struct.comedi_subdevice, ptr %89, i32 1, i32 4
  %93 = ptrtoint ptr %subdev_flags126 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 131072, ptr %subdev_flags126, align 4
  %94 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %95)
  %cmp129 = icmp eq i8 %95, 3
  %cond131 = select i1 %cmp129, i32 4, i32 2
  %n_chan132 = getelementptr %struct.comedi_subdevice, ptr %89, i32 1, i32 3
  %96 = ptrtoint ptr %n_chan132 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %cond131, ptr %n_chan132, align 4
  %maxdata136 = getelementptr %struct.comedi_subdevice, ptr %89, i32 1, i32 13
  %97 = ptrtoint ptr %maxdata136 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %32, ptr %maxdata136, align 4
  %range_table137 = getelementptr %struct.comedi_subdevice, ptr %89, i32 1, i32 15
  %98 = ptrtoint ptr %range_table137 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @range_bipolar10, ptr %range_table137, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %89, i32 1, i32 19
  %99 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @das1800_ao_insn_write, ptr %insn_write, align 4
  %call138 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx114) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %for.cond.preheader, label %if.then124.cleanup200_crit_edge

if.then124.cleanup200_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup200

for.cond.preheader:                               ; preds = %if.then124
  %100 = ptrtoint ptr %n_chan132 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %n_chan132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp143318 = icmp sgt i32 %101, 0
  br i1 %cmp143318, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.if.end169_crit_edge

for.cond.preheader.if.end169_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %i.0319 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %for.cond.preheader.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  tail call void @arm_heavy_mb() #8
  %102 = trunc i32 %i.0319 to i8
  %conv146 = add i8 %102, 2
  %103 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %iobase.i, align 4
  %add148 = add i32 %104, 2
  %and149 = and i32 %add148, 1048575
  %add150 = or i32 %and149, -18874368
  %105 = inttoptr i32 %add150 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %105, i8 %conv146) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  tail call void @arm_heavy_mb() #8
  %106 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %iobase.i, align 4
  %and157 = and i32 %107, 1048575
  %add158 = or i32 %and157, -18874368
  %108 = inttoptr i32 %add158 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %108, i16 0) #8, !srcloc !101
  %inc = add nuw nsw i32 %i.0319, 1
  %109 = ptrtoint ptr %n_chan132 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %n_chan132, align 4
  %cmp143 = icmp slt i32 %inc, %110
  br i1 %cmp143, label %do.body.do.body_crit_edge, label %do.body.if.end169_crit_edge

do.body.if.end169_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end169

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end169.sink.split:                             ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  %type165 = getelementptr %struct.comedi_subdevice, ptr %89, i32 1, i32 2
  %111 = ptrtoint ptr %type165 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %type165, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.end169.sink.split, %do.body.if.end169_crit_edge, %for.cond.preheader.if.end169_crit_edge
  %112 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %subdevices, align 4
  %type172 = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 2
  %114 = ptrtoint ptr %type172 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 3, ptr %type172, align 4
  %subdev_flags173 = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 4
  %115 = ptrtoint ptr %subdev_flags173 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 65536, ptr %subdev_flags173, align 4
  %n_chan174 = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 3
  %116 = ptrtoint ptr %n_chan174 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 4, ptr %n_chan174, align 4
  %maxdata175 = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 13
  %117 = ptrtoint ptr %maxdata175 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %maxdata175, align 4
  %range_table176 = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 15
  %118 = ptrtoint ptr %range_table176 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @range_unipolar5, ptr %range_table176, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 20
  %119 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @das1800_di_insn_bits, ptr %insn_bits, align 4
  %120 = load ptr, ptr %subdevices, align 4
  %type179 = getelementptr %struct.comedi_subdevice, ptr %120, i32 3, i32 2
  %121 = ptrtoint ptr %type179 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 4, ptr %type179, align 4
  %subdev_flags180 = getelementptr %struct.comedi_subdevice, ptr %120, i32 3, i32 4
  %122 = ptrtoint ptr %subdev_flags180 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 131072, ptr %subdev_flags180, align 4
  %123 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %124)
  %cmp183 = icmp eq i8 %124, 8
  %cond185 = select i1 %cmp183, i32 8, i32 4
  %n_chan186 = getelementptr %struct.comedi_subdevice, ptr %120, i32 3, i32 3
  %125 = ptrtoint ptr %n_chan186 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %cond185, ptr %n_chan186, align 4
  %maxdata187 = getelementptr %struct.comedi_subdevice, ptr %120, i32 3, i32 13
  %126 = ptrtoint ptr %maxdata187 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %maxdata187, align 4
  %range_table188 = getelementptr %struct.comedi_subdevice, ptr %120, i32 3, i32 15
  %127 = ptrtoint ptr %range_table188 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @range_unipolar5, ptr %range_table188, align 4
  %insn_bits189 = getelementptr %struct.comedi_subdevice, ptr %120, i32 3, i32 20
  %128 = ptrtoint ptr %insn_bits189 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @das1800_do_insn_bits, ptr %insn_bits189, align 4
  %read_subdev190 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %129 = ptrtoint ptr %read_subdev190 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %read_subdev190, align 4
  %call191 = tail call i32 @das1800_ai_cancel(ptr noundef %dev, ptr noundef %130)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %131 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %iobase.i, align 4
  %add196 = add i32 %132, 3
  %and197 = and i32 %add196, 1048575
  %add198 = or i32 %and197, -18874368
  %133 = inttoptr i32 %add198 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %133, i8 0) #8, !srcloc !99
  br label %cleanup200

cleanup200:                                       ; preds = %if.end169, %if.then124.cleanup200_crit_edge, %if.end83.cleanup200_crit_edge, %if.end76.cleanup200_crit_edge, %if.end71.cleanup200_crit_edge, %if.then20.cleanup200_crit_edge, %do.end22.i, %do.end.i, %if.end.cleanup200_crit_edge, %entry.cleanup200_crit_edge
  %retval.1 = phi i32 [ 0, %if.end169 ], [ -12, %entry.cleanup200_crit_edge ], [ %call3, %if.end.cleanup200_crit_edge ], [ -12, %if.end71.cleanup200_crit_edge ], [ -12, %if.end76.cleanup200_crit_edge ], [ %call84, %if.end83.cleanup200_crit_edge ], [ %call138, %if.then124.cleanup200_crit_edge ], [ %call21, %if.then20.cleanup200_crit_edge ], [ -19, %do.end.i ], [ -19, %do.end22.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @das1800_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %fifo_buf = getelementptr inbounds %struct.das1800_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %fifo_buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fifo_buf, align 4
  tail call void @kfree(ptr noundef %3) #8
  %iobase2 = getelementptr inbounds %struct.das1800_private, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %iobase2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.then.if.end4_crit_edge, label %if.then2

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %5, i32 noundef 16) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  tail call void @comedi_legacy_detach(ptr noundef %dev) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das1800_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %0 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %1 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add = add i32 %4, 7
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %if.then5, label %do.body8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #8
  br label %cleanup

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !104
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add12 = add i32 %9, 7
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %10 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 94) #8, !srcloc !99
  tail call fastcc void @das1800_ai_handler(ptr noundef %d)
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %if.then5, %do.end
  %retval.0 = phi i32 [ 1, %do.body8 ], [ 0, %if.then5 ], [ 1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das1800_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %1, 16
  %and = and i32 %shr, 255
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %2 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %3, i32 0, i32 1, i32 %and
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp sgt i32 %5, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !105
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chanspec, align 4
  %shr.i = lshr i32 %7, 16
  %and.i = and i32 %shr.i, 255
  %shr1.i = lshr i32 %7, 24
  %and2.i = and i32 %shr1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and2.i)
  %cmp.not.i = icmp eq i32 %and2.i, 2
  %spec.select.i = select i1 %cmp.not.i, i8 16, i8 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2.i)
  %cmp4.i = icmp eq i32 %and2.i, 1
  %8 = or i8 %spec.select.i, 8
  %bits.1.i = select i1 %cmp4.i, i8 %8, i8 %spec.select.i
  %9 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i.i = getelementptr %struct.comedi_lrange, ptr %10, i32 0, i32 1, i32 %and.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %13 = or i8 %bits.1.i, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i21.i = icmp slt i32 %12, 0
  %bits.2.i = select i1 %cmp.i21.i, i8 %bits.1.i, i8 %13
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add = add i32 %15, 6
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %16 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %bits.2.i) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !106
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %add10 = add i32 %18, 7
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %19 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 -128) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %add18 = add i32 %21, 4
  %and19 = and i32 %add18, 1048575
  %add20 = or i32 %and19, -18874368
  %22 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 0) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !108
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase, align 4
  %add26 = add i32 %24, 4
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %25 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 1) #8, !srcloc !99
  tail call fastcc void @das1800_ai_set_chanlist(ptr noundef %dev, ptr noundef %chanspec, i32 noundef 1)
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !109
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase, align 4
  %add43 = add i32 %27, 2
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %28 = inttoptr i32 %add45 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 0) #8, !srcloc !99
  %n47 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %29 = ptrtoint ptr %n47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp48103.not = icmp eq i32 %30, 0
  br i1 %cmp48103.not, label %entry.cond.false_crit_edge, label %do.body50.lr.ph

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

do.body50.lr.ph:                                  ; preds = %entry
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %do.body50

do.body50:                                        ; preds = %if.end71.do.body50_crit_edge, %do.body50.lr.ph
  %n.0104 = phi i32 [ 0, %do.body50.lr.ph ], [ %inc, %if.end71.do.body50_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !110
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase, align 4
  %and55 = and i32 %32, 1048575
  %add56 = or i32 %and55, -18874368
  %33 = inttoptr i32 %add56 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 0) #8, !srcloc !99
  %call58 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @das1800_ai_eoc, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool.not = icmp eq i32 %call58, 0
  br i1 %tobool.not, label %if.end, label %for.end

if.end:                                           ; preds = %do.body50
  %34 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %iobase, align 4
  %and61 = and i32 %35, 1048575
  %add62 = or i32 %and61, -18874368
  %36 = inttoptr i32 %add62 to ptr
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %36) #8, !srcloc !111
  %38 = tail call i16 @llvm.bswap.i16(i16 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !112
  br i1 %cmp.i, label %if.end.if.end71_crit_edge, label %if.then67

if.end.if.end71_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then67:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv68 = zext i16 %38 to i32
  %39 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %40, %conv68
  %shr.i99 = lshr i32 %40, 1
  %xor2.i = xor i32 %xor.i, %shr.i99
  %conv70 = trunc i32 %xor2.i to i16
  br label %if.end71

if.end71:                                         ; preds = %if.then67, %if.end.if.end71_crit_edge
  %dpnt.0 = phi i16 [ %38, %if.end.if.end71_crit_edge ], [ %conv70, %if.then67 ]
  %conv72 = zext i16 %dpnt.0 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 %n.0104
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv72, ptr %arrayidx, align 4
  %inc = add nuw i32 %n.0104, 1
  %42 = ptrtoint ptr %n47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %n47, align 4
  %cmp48 = icmp ult i32 %inc, %43
  br i1 %cmp48, label %if.end71.do.body50_crit_edge, label %if.end71.cond.false_crit_edge

if.end71.cond.false_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false

if.end71.do.body50_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body50

for.end:                                          ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call34) #8
  br label %cond.end

cond.false:                                       ; preds = %if.end71.cond.false_crit_edge, %entry.cond.false_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call34) #8
  %44 = ptrtoint ptr %n47 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n47, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.end
  %cond = phi i32 [ %45, %cond.false ], [ %call58, %for.end ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das1800_ai_cmd(ptr noundef %dev, ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
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
  %and = and i32 %shr, 255
  %flags = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 1
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and3 = and i32 %9, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %irq_dma_bits = getelementptr inbounds %struct.das1800_private, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %irq_dma_bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_dma_bits, align 4
  %and4 = and i32 %11, -4
  store i32 %and4, ptr %irq_dma_bits, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dma_bits = getelementptr inbounds %struct.das1800_private, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %dma_bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_bits, align 4
  %irq_dma_bits5 = getelementptr inbounds %struct.das1800_private, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %irq_dma_bits5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_dma_bits5, align 4
  %or = or i32 %15, %13
  store i32 %or, ptr %irq_dma_bits5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %irq_dma_bits13 = getelementptr inbounds %struct.das1800_private, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %irq_dma_bits13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq_dma_bits13, align 4
  %and11 = and i32 %19, -65
  %and7 = shl i32 %17, 1
  %20 = and i32 %and7, 64
  %21 = or i32 %20, %and11
  %or14.sink = xor i32 %21, 64
  store i32 %or14.sink, ptr %irq_dma_bits13, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %22 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %23, 7
  %and.i = and i32 %add.i, 1048575
  %add2.i = or i32 %and.i, -18874368
  %24 = inttoptr i32 %add2.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 0) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase.i, align 4
  %add7.i = add i32 %26, 5
  %and8.i = and i32 %add7.i, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %27 = inttoptr i32 %add9.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 0) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase.i, align 4
  %add15.i = add i32 %29, 4
  %and16.i = and i32 %add15.i, 1048575
  %add17.i = or i32 %and16.i, -18874368
  %30 = inttoptr i32 %add17.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 0) #8, !srcloc !99
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %31 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %32, i32 0, i32 1, i32 %and
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %ai_is_unipolar = getelementptr inbounds %struct.das1800_private, ptr %1, i32 0, i32 5
  %.lobit = lshr i32 %34, 31
  %35 = trunc i32 %.lobit to i8
  %.not = xor i8 %35, 1
  %36 = ptrtoint ptr %ai_is_unipolar to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.not, ptr %ai_is_unipolar, align 4
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %37 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %38)
  %cmp = icmp eq i32 %38, 64
  %spec.select = select i1 %cmp, i32 129, i32 1
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %39 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %40)
  %cmp20 = icmp eq i32 %40, 64
  %control_a.1.v = select i1 %cmp20, i32 24, i32 4
  %control_a.1 = or i32 %control_a.1.v, %spec.select
  %and26 = and i32 %control_a.1, 144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end.if.end36_crit_edge, label %if.then28

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then28:                                        ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 3
  %41 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %tobool30.not = icmp sgt i32 %42, -1
  br i1 %tobool30.not, label %lor.lhs.false, label %if.then28.if.then33_crit_edge

if.then28.if.then33_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

lor.lhs.false:                                    ; preds = %if.then28
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  %43 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %tobool32.not = icmp sgt i32 %44, -1
  br i1 %tobool32.not, label %lor.lhs.false.if.end36_crit_edge, label %lor.lhs.false.if.then33_crit_edge

lor.lhs.false.if.then33_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then33

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then33:                                        ; preds = %lor.lhs.false.if.then33_crit_edge, %if.then28.if.then33_crit_edge
  %or34 = or i32 %control_a.1, 64
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %lor.lhs.false.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %control_a.2 = phi i32 [ %or34, %if.then33 ], [ %control_a.1, %lor.lhs.false.if.end36_crit_edge ], [ %control_a.1, %if.end.if.end36_crit_edge ]
  %45 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chanlist, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  %shr.i = lshr i32 %48, 16
  %and.i187 = and i32 %shr.i, 255
  %shr1.i = lshr i32 %48, 24
  %and2.i = and i32 %shr1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and2.i)
  %cmp.not.i = icmp eq i32 %and2.i, 2
  %spec.select.i = select i1 %cmp.not.i, i8 16, i8 80
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2.i)
  %cmp4.i = icmp eq i32 %and2.i, 1
  %49 = or i8 %spec.select.i, 8
  %bits.1.i = select i1 %cmp4.i, i8 %49, i8 %spec.select.i
  %50 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i.i = getelementptr %struct.comedi_lrange, ptr %51, i32 0, i32 1, i32 %and.i187
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i, align 4
  %54 = or i8 %bits.1.i, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i21.i = icmp slt i32 %53, 0
  %bits.2.i = select i1 %cmp.i21.i, i8 %bits.1.i, i8 %54
  %conv = zext i8 %bits.2.i to i32
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 4
  %55 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %scan_begin_src, align 4
  %57 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %56, label %if.else56 [
    i32 4, label %if.then42
    i32 16, label %if.end36.if.end59_crit_edge
  ]

if.end36.if.end59_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 6
  %58 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %59)
  %cmp43 = icmp eq i32 %59, 16
  %. = select i1 %cmp43, i32 1, i32 3
  br label %if.end59

if.else56:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.end59:                                         ; preds = %if.else56, %if.then42, %if.end36.if.end59_crit_edge
  %.sink = phi i32 [ 7, %if.else56 ], [ %., %if.then42 ], [ 5, %if.end36.if.end59_crit_edge ]
  %or55 = or i32 %.sink, %conv
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 13
  %60 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %chanlist_len, align 4
  tail call fastcc void @das1800_ai_set_chanlist(ptr noundef %dev, ptr noundef %46, i32 noundef %61)
  %62 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %scan_begin_src, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %63, label %if.end59.if.end73_crit_edge [
    i32 4, label %if.end59.land.lhs.true_crit_edge
    i32 16, label %if.end59.land.lhs.true_crit_edge190
  ]

if.end59.land.lhs.true_crit_edge190:              ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end59.land.lhs.true_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end59.if.end73_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

land.lhs.true:                                    ; preds = %if.end59.land.lhs.true_crit_edge, %if.end59.land.lhs.true_crit_edge190
  %convert_src68 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 6
  %65 = ptrtoint ptr %convert_src68 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %convert_src68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %66)
  %cmp69 = icmp eq i32 %66, 16
  br i1 %cmp69, label %if.then71, label %land.lhs.true.if.end73_crit_edge

land.lhs.true.if.end73_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73

if.then71:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %67 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_update_divisors(ptr noundef %68) #8
  %69 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %70, i32 noundef 1, i32 noundef 2, i1 noundef zeroext true) #8
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %land.lhs.true.if.end73_crit_edge, %if.end59.if.end73_crit_edge
  %71 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %72)
  %cmp75 = icmp eq i32 %72, 64
  br i1 %cmp75, label %if.then77, label %if.end73.if.end80_crit_edge

if.end73.if.end80_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then77:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  %pacer78 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %73 = ptrtoint ptr %pacer78 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pacer78, align 4
  %call79 = tail call i32 @comedi_8254_load(ptr noundef %74, i32 noundef 0, i32 noundef 1, i32 noundef 0) #8
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.end73.if.end80_crit_edge
  %75 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %private, align 4
  %irq_dma_bits.i = getelementptr inbounds %struct.das1800_private, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %irq_dma_bits.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq_dma_bits.i, align 4
  %and.i188 = and i32 %78, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i188)
  %cmp.i189 = icmp eq i32 %and.i188, 0
  br i1 %cmp.i189, label %if.end80.das1800_ai_setup_dma.exit_crit_edge, label %if.end.i

if.end80.das1800_ai_setup_dma.exit_crit_edge:     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %das1800_ai_setup_dma.exit

if.end.i:                                         ; preds = %if.end80
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %76, align 4
  %cur_dma.i = getelementptr inbounds %struct.comedi_isadma, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %cur_dma.i, align 4
  %desc2.i = getelementptr inbounds %struct.comedi_isadma, ptr %80, i32 0, i32 1
  %82 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %desc2.i, align 4
  %maxsize.i = getelementptr inbounds %struct.comedi_isadma_desc, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %maxsize.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %maxsize.i, align 4
  %86 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %async1, align 4
  %subdev_flags.i.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %88 = ptrtoint ptr %subdev_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %subdev_flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %89, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 2
  %shr.i.i.i = lshr i32 %85, %cond.i.i.i.i
  %scan_begin_src.i.i = getelementptr inbounds %struct.comedi_async, ptr %87, i32 0, i32 17, i32 4
  %90 = ptrtoint ptr %scan_begin_src.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %scan_begin_src.i.i, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %91, label %if.end.i.das1800_ai_transfer_size.exit.i_crit_edge [
    i32 4, label %sw.bb.i.i
    i32 16, label %sw.bb2.i.i
  ]

if.end.i.das1800_ai_transfer_size.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %das1800_ai_transfer_size.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i
  %convert_src.i.i = getelementptr inbounds %struct.comedi_async, ptr %87, i32 0, i32 17, i32 6
  %93 = ptrtoint ptr %convert_src.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %convert_src.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %94)
  %cmp.i.i = icmp eq i32 %94, 16
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.bb.i.i.das1800_ai_transfer_size.exit.i_crit_edge

sw.bb.i.i.das1800_ai_transfer_size.exit.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %das1800_ai_transfer_size.exit.i

if.then.i.i:                                      ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %convert_arg.i.i = getelementptr inbounds %struct.comedi_async, ptr %87, i32 0, i32 17, i32 7
  %95 = ptrtoint ptr %convert_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %convert_arg.i.i, align 4
  br label %sw.epilog.sink.split.i.i

sw.bb2.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %scan_begin_arg.i.i = getelementptr inbounds %struct.comedi_async, ptr %87, i32 0, i32 17, i32 5
  %97 = ptrtoint ptr %scan_begin_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %scan_begin_arg.i.i, align 4
  %chanlist_len.i.i = getelementptr inbounds %struct.comedi_async, ptr %87, i32 0, i32 17, i32 13
  %99 = ptrtoint ptr %chanlist_len.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %chanlist_len.i.i, align 4
  %mul.i.i = mul i32 %100, %98
  br label %sw.epilog.sink.split.i.i

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb2.i.i, %if.then.i.i
  %.sink.i.i = phi i32 [ %96, %if.then.i.i ], [ %mul.i.i, %sw.bb2.i.i ]
  %div.i.i = udiv i32 300000000, %.sink.i.i
  br label %das1800_ai_transfer_size.exit.i

das1800_ai_transfer_size.exit.i:                  ; preds = %sw.epilog.sink.split.i.i, %sw.bb.i.i.das1800_ai_transfer_size.exit.i_crit_edge, %if.end.i.das1800_ai_transfer_size.exit.i_crit_edge
  %samples.0.i.i = phi i32 [ %shr.i.i.i, %if.end.i.das1800_ai_transfer_size.exit.i_crit_edge ], [ %shr.i.i.i, %sw.bb.i.i.das1800_ai_transfer_size.exit.i_crit_edge ], [ %div.i.i, %sw.epilog.sink.split.i.i ]
  %call4.i.i = tail call i32 @comedi_nsamples_left(ptr noundef %s, i32 noundef %samples.0.i.i) #8
  %101 = tail call i32 @llvm.umin.i32(i32 %call4.i.i, i32 %shr.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp8.i.i = icmp eq i32 %101, 0
  %spec.store.select.i.i = select i1 %cmp8.i.i, i32 1, i32 %101
  %102 = ptrtoint ptr %subdev_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %subdev_flags.i.i.i.i, align 4
  %and.i.i2.i.i = and i32 %103, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i2.i.i)
  %tobool.not.i.i3.i.i = icmp eq i32 %and.i.i2.i.i, 0
  %cond.i.i4.i.i = select i1 %tobool.not.i.i3.i.i, i32 1, i32 2
  %shl.i.i.i = shl i32 %spec.store.select.i.i, %cond.i.i4.i.i
  %size.i = getelementptr inbounds %struct.comedi_isadma_desc, ptr %83, i32 0, i32 4
  %104 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %shl.i.i.i, ptr %size.i, align 4
  %105 = ptrtoint ptr %irq_dma_bits.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %irq_dma_bits.i, align 4
  %and4.i = and i32 %106, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool.not.i, label %das1800_ai_transfer_size.exit.i.das1800_ai_setup_dma.exit_crit_edge, label %if.then5.i

das1800_ai_transfer_size.exit.i.das1800_ai_setup_dma.exit_crit_edge: ; preds = %das1800_ai_transfer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %das1800_ai_setup_dma.exit

if.then5.i:                                       ; preds = %das1800_ai_transfer_size.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %desc2.i, align 4
  %size8.i = getelementptr %struct.comedi_isadma_desc, ptr %108, i32 1, i32 4
  %109 = ptrtoint ptr %size8.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %shl.i.i.i, ptr %size8.i, align 4
  br label %das1800_ai_setup_dma.exit

das1800_ai_setup_dma.exit:                        ; preds = %if.then5.i, %das1800_ai_transfer_size.exit.i.das1800_ai_setup_dma.exit_crit_edge, %if.end80.das1800_ai_setup_dma.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %conv81 = trunc i32 %or55 to i8
  %110 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %iobase.i, align 4
  %add = add i32 %111, 6
  %and82 = and i32 %add, 1048575
  %add83 = or i32 %and82, -18874368
  %112 = inttoptr i32 %add83 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 %conv81) #8, !srcloc !99
  %and85 = and i32 %or55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %das1800_ai_setup_dma.exit.do.body109_crit_edge, label %do.body88

das1800_ai_setup_dma.exit.do.body109_crit_edge:   ; preds = %das1800_ai_setup_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body109

do.body88:                                        ; preds = %das1800_ai_setup_dma.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  tail call void @arm_heavy_mb() #8
  %convert_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 7
  %113 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %convert_arg, align 4
  %div = udiv i32 %114, 1000
  %115 = trunc i32 %div to i8
  %conv91 = add i8 %115, -1
  %116 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %iobase.i, align 4
  %add93 = add i32 %117, 9
  %and94 = and i32 %add93, 1048575
  %add95 = or i32 %and94, -18874368
  %118 = inttoptr i32 %add95 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %118, i8 %conv91) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %119 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %chanlist_len, align 4
  %121 = trunc i32 %120 to i8
  %conv102 = add i8 %121, -1
  %122 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %iobase.i, align 4
  %add104 = add i32 %123, 8
  %and105 = and i32 %add104, 1048575
  %add106 = or i32 %and105, -18874368
  %124 = inttoptr i32 %add106 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 %conv102) #8, !srcloc !99
  br label %do.body109

do.body109:                                       ; preds = %do.body88, %das1800_ai_setup_dma.exit.do.body109_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  tail call void @arm_heavy_mb() #8
  %irq_dma_bits112 = getelementptr inbounds %struct.das1800_private, ptr %1, i32 0, i32 1
  %125 = ptrtoint ptr %irq_dma_bits112 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %irq_dma_bits112, align 4
  %conv113 = trunc i32 %126 to i8
  %127 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %iobase.i, align 4
  %add115 = add i32 %128, 5
  %and116 = and i32 %add115, 1048575
  %add117 = or i32 %and116, -18874368
  %129 = inttoptr i32 %add117 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %129, i8 %conv113) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  tail call void @arm_heavy_mb() #8
  %conv122 = trunc i32 %control_a.2 to i8
  %130 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %iobase.i, align 4
  %add124 = add i32 %131, 4
  %and125 = and i32 %add124, 1048575
  %add126 = or i32 %and125, -18874368
  %132 = inttoptr i32 %add126 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 %conv122) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %133 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %iobase.i, align 4
  %add132 = add i32 %134, 7
  %and133 = and i32 %add132, 1048575
  %add134 = or i32 %and133, -18874368
  %135 = inttoptr i32 %add134 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %135, i8 -128) #8, !srcloc !99
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das1800_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %and.i153 = and i32 %5, 84
  store i32 %and.i153, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i153)
  %cmp.i154 = icmp ne i32 %and.i153, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i153, i32 %5)
  %cmp1.not.i155 = icmp eq i32 %and.i153, %5
  %or.cond.i156 = and i1 %cmp.i154, %cmp1.not.i155
  %6 = select i1 %or.cond.i, i1 %or.cond.i156, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %convert_src, align 4
  %and.i158 = and i32 %8, 80
  store i32 %and.i158, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i158)
  %cmp.i159 = icmp ne i32 %and.i158, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i158, i32 %8)
  %cmp1.not.i160 = icmp eq i32 %and.i158, %8
  %or.cond.i161 = and i1 %cmp.i159, %cmp1.not.i160
  %9 = select i1 %6, i1 %or.cond.i161, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %10 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_end_src, align 4
  %and.i163 = and i32 %11, 32
  store i32 %and.i163, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i163)
  %cmp.i164 = icmp ne i32 %and.i163, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i163, i32 %11)
  %cmp1.not.i165 = icmp eq i32 %and.i163, %11
  %or.cond.i166 = and i1 %cmp.i164, %cmp1.not.i165
  %12 = select i1 %9, i1 %or.cond.i166, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %13 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_src, align 4
  %and.i168 = and i32 %14, 97
  store i32 %and.i168, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i168)
  %cmp.i169 = icmp ne i32 %and.i168, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i168, i32 %14)
  %cmp1.not.i170 = icmp eq i32 %and.i168, %14
  %or.cond.i171 = and i1 %cmp.i169, %cmp1.not.i170
  %15 = select i1 %12, i1 %or.cond.i171, i1 false
  br i1 %15, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = tail call i32 @llvm.ctpop.i32(i32 %3) #8, !range !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i = icmp ult i32 %16, 2
  %17 = tail call i32 @llvm.ctpop.i32(i32 %5) #8, !range !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i173 = icmp ult i32 %17, 2
  %18 = tail call i32 @llvm.ctpop.i32(i32 %8) #8, !range !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.not.i175 = icmp ult i32 %18, 2
  %19 = tail call i32 @llvm.ctpop.i32(i32 %14) #8, !range !122
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.not.i177 = icmp ult i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp.not = icmp eq i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp23.not = icmp eq i32 %8, 16
  %20 = select i1 %cmp.not, i1 true, i1 %cmp23.not
  %21 = select i1 %20, i1 %cmp.not.i, i1 false
  %22 = select i1 %21, i1 %cmp.not.i173, i1 false
  %23 = select i1 %22, i1 %cmp.not.i175, i1 false
  %24 = select i1 %23, i1 %cmp.not.i177, i1 false
  %err.0 = select i1 %24, i32 0, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3)
  %cmp28 = icmp eq i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %14)
  %cmp31 = icmp eq i32 %14, 64
  %or.cond = select i1 %cmp28, i1 %cmp31, i1 false
  br i1 %or.cond, label %if.then32, label %if.end.if.end35_crit_edge

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then32:                                        ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %25 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stop_arg, align 4
  %27 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp.not.i179 = icmp eq i32 %28, %26
  br i1 %cmp.not.i179, label %if.then32.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.then32.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.then32.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i180 = phi i32 [ -22, %if.then.i ], [ 0, %if.then32.comedi_check_trigger_arg_is.exit_crit_edge ]
  %or34 = or i32 %retval.0.i180, %err.0
  br label %if.end35

if.end35:                                         ; preds = %comedi_check_trigger_arg_is.exit, %if.end.if.end35_crit_edge
  %err.1 = phi i32 [ %or34, %comedi_check_trigger_arg_is.exit ], [ %err.0, %if.end.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool36.not = icmp eq i32 %err.1, 0
  br i1 %tobool36.not, label %if.end38, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.end35
  %start_arg39 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %30 = ptrtoint ptr %start_arg39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %start_arg39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp40 = icmp eq i32 %31, 2
  br i1 %cmp40, label %comedi_check_trigger_arg_is.exit184, label %if.end38.if.end45_crit_edge

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

comedi_check_trigger_arg_is.exit184:              ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %start_arg39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %start_arg39, align 4
  br label %if.end45

if.end45:                                         ; preds = %comedi_check_trigger_arg_is.exit184, %if.end38.if.end45_crit_edge
  %err.2 = phi i32 [ -22, %comedi_check_trigger_arg_is.exit184 ], [ 0, %if.end38.if.end45_crit_edge ]
  br i1 %cmp23.not, label %if.then48, label %if.end45.if.end51_crit_edge

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then48:                                        ; preds = %if.end45
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %ai_speed = getelementptr inbounds %struct.das1800_board, ptr %1, i32 0, i32 2
  %33 = ptrtoint ptr %ai_speed to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ai_speed, align 4
  %35 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %34)
  %cmp.i185 = icmp ult i32 %36, %34
  br i1 %cmp.i185, label %if.then.i186, label %if.then48.comedi_check_trigger_arg_min.exit_crit_edge

if.then48.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_min.exit

if.then.i186:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i186, %if.then48.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i187 = phi i32 [ -22, %if.then.i186 ], [ 0, %if.then48.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or50 = or i32 %retval.0.i187, %err.2
  br label %if.end51

if.end51:                                         ; preds = %comedi_check_trigger_arg_min.exit, %if.end45.if.end51_crit_edge
  %err.3 = phi i32 [ %or50, %comedi_check_trigger_arg_min.exit ], [ %err.2, %if.end45.if.end51_crit_edge ]
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %38 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i188 = icmp eq i32 %39, 0
  br i1 %cmp.i188, label %if.then.i189, label %if.end51.comedi_check_trigger_arg_min.exit191_crit_edge

if.end51.comedi_check_trigger_arg_min.exit191_crit_edge: ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_min.exit191

if.then.i189:                                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %chanlist_len, align 4
  br label %comedi_check_trigger_arg_min.exit191

comedi_check_trigger_arg_min.exit191:             ; preds = %if.then.i189, %if.end51.comedi_check_trigger_arg_min.exit191_crit_edge
  %retval.0.i190 = phi i32 [ -22, %if.then.i189 ], [ 0, %if.end51.comedi_check_trigger_arg_min.exit191_crit_edge ]
  %or53 = or i32 %retval.0.i190, %err.3
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %41 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %chanlist_len, align 4
  %43 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %42)
  %cmp.not.i192 = icmp eq i32 %44, %42
  br i1 %cmp.not.i192, label %comedi_check_trigger_arg_min.exit191.comedi_check_trigger_arg_is.exit195_crit_edge, label %if.then.i193

comedi_check_trigger_arg_min.exit191.comedi_check_trigger_arg_is.exit195_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit191
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit195

if.then.i193:                                     ; preds = %comedi_check_trigger_arg_min.exit191
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %42, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit195

comedi_check_trigger_arg_is.exit195:              ; preds = %if.then.i193, %comedi_check_trigger_arg_min.exit191.comedi_check_trigger_arg_is.exit195_crit_edge
  %retval.0.i194 = phi i32 [ -22, %if.then.i193 ], [ 0, %comedi_check_trigger_arg_min.exit191.comedi_check_trigger_arg_is.exit195_crit_edge ]
  %or56 = or i32 %or53, %retval.0.i194
  %46 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %14, label %comedi_check_trigger_arg_is.exit195.sw.epilog_crit_edge [
    i32 32, label %sw.bb
    i32 1, label %sw.bb61
  ]

comedi_check_trigger_arg_is.exit195.sw.epilog_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit195
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %comedi_check_trigger_arg_is.exit195
  %stop_arg58 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %47 = ptrtoint ptr %stop_arg58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stop_arg58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i196 = icmp eq i32 %48, 0
  br i1 %cmp.i196, label %if.then.i197, label %sw.bb.comedi_check_trigger_arg_min.exit199_crit_edge

sw.bb.comedi_check_trigger_arg_min.exit199_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_min.exit199

if.then.i197:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %stop_arg58 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %stop_arg58, align 4
  br label %comedi_check_trigger_arg_min.exit199

comedi_check_trigger_arg_min.exit199:             ; preds = %if.then.i197, %sw.bb.comedi_check_trigger_arg_min.exit199_crit_edge
  %retval.0.i198 = phi i32 [ -22, %if.then.i197 ], [ 0, %sw.bb.comedi_check_trigger_arg_min.exit199_crit_edge ]
  %or60 = or i32 %retval.0.i198, %or56
  br label %sw.epilog

sw.bb61:                                          ; preds = %comedi_check_trigger_arg_is.exit195
  %stop_arg62 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %50 = ptrtoint ptr %stop_arg62 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %stop_arg62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.not.i200 = icmp eq i32 %51, 0
  br i1 %cmp.not.i200, label %sw.bb61.comedi_check_trigger_arg_is.exit203_crit_edge, label %if.then.i201

sw.bb61.comedi_check_trigger_arg_is.exit203_crit_edge: ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit203

if.then.i201:                                     ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %stop_arg62 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %stop_arg62, align 4
  br label %comedi_check_trigger_arg_is.exit203

comedi_check_trigger_arg_is.exit203:              ; preds = %if.then.i201, %sw.bb61.comedi_check_trigger_arg_is.exit203_crit_edge
  %retval.0.i202 = phi i32 [ -22, %if.then.i201 ], [ 0, %sw.bb61.comedi_check_trigger_arg_is.exit203_crit_edge ]
  %or64 = or i32 %retval.0.i202, %or56
  br label %sw.epilog

sw.epilog:                                        ; preds = %comedi_check_trigger_arg_is.exit203, %comedi_check_trigger_arg_min.exit199, %comedi_check_trigger_arg_is.exit195.sw.epilog_crit_edge
  %err.4 = phi i32 [ %or56, %comedi_check_trigger_arg_is.exit195.sw.epilog_crit_edge ], [ %or64, %comedi_check_trigger_arg_is.exit203 ], [ %or60, %comedi_check_trigger_arg_min.exit199 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.4)
  %tobool65.not = icmp eq i32 %err.4, 0
  br i1 %tobool65.not, label %if.end67, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end67:                                         ; preds = %sw.epilog
  br i1 %cmp23.not, label %if.then70, label %if.end67.if.end82_crit_edge

if.end67.if.end82_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then70:                                        ; preds = %if.end67
  br i1 %cmp.not, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %call74 = tail call fastcc i32 @das1800_ai_fixup_paced_timing(ptr noundef %dev, ptr noundef %cmd)
  br label %if.end79

if.else:                                          ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = tail call fastcc i32 @das1800_ai_fixup_burst_timing(ptr noundef %dev, ptr noundef %cmd)
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.then73
  %err.5 = phi i32 [ %call74, %if.then73 ], [ %call76, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5)
  %tobool80.not = icmp eq i32 %err.5, 0
  br i1 %tobool80.not, label %if.end79.if.end82_crit_edge, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end79.if.end82_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.end82:                                         ; preds = %if.end79.if.end82_crit_edge, %if.end67.if.end82_crit_edge
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %53 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chanlist, align 4
  %tobool83.not = icmp eq ptr %54, null
  br i1 %tobool83.not, label %if.end82.if.end90.thread_crit_edge, label %land.lhs.true84

if.end82.if.end90.thread_crit_edge:               ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.thread

land.lhs.true84:                                  ; preds = %if.end82
  %55 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp86.not = icmp eq i32 %56, 0
  br i1 %cmp86.not, label %land.lhs.true84.if.end90.thread_crit_edge, label %if.end90

land.lhs.true84.if.end90.thread_crit_edge:        ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.thread

if.end90:                                         ; preds = %land.lhs.true84
  %call88 = tail call fastcc i32 @das1800_ai_check_chanlist(ptr noundef %dev, ptr noundef %s, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %phi.cmp = icmp eq i32 %call88, 0
  br i1 %phi.cmp, label %if.end90.if.end90.thread_crit_edge, label %if.end90.cleanup_crit_edge

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end90.if.end90.thread_crit_edge:               ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90.thread

if.end90.thread:                                  ; preds = %if.end90.if.end90.thread_crit_edge, %land.lhs.true84.if.end90.thread_crit_edge, %if.end82.if.end90.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end90.thread, %if.end90.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end35.cleanup_crit_edge ], [ 3, %sw.epilog.cleanup_crit_edge ], [ 4, %if.end79.cleanup_crit_edge ], [ 0, %if.end90.thread ], [ 5, %if.end90.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das1800_ai_poll(ptr noundef %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #8
  tail call fastcc void @das1800_ai_handler(ptr noundef %dev)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #8
  %async.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %0 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %async.i, align 4
  %buf_write_count.i = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %buf_write_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf_write_count.i, align 4
  %buf_read_count.i = getelementptr inbounds %struct.comedi_async, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %buf_read_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_read_count.i, align 4
  %sub.i = sub i32 %3, %5
  ret i32 %sub.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das1800_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  tail call void @arm_heavy_mb() #8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 7
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %2 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  tail call void @arm_heavy_mb() #8
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add7 = add i32 %4, 5
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %5 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add15 = add i32 %7, 4
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %8 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #8, !srcloc !99
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @das1800_ai_munge(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef %data, i32 noundef %num_bytes, i32 noundef %start_chan_index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %subdev_flags.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %2 = ptrtoint ptr %subdev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %subdev_flags.i.i, align 4
  %and.i.i = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %shr.i = lshr i32 %num_bytes, %cond.i.i
  %ai_is_unipolar = getelementptr inbounds %struct.das1800_private, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ai_is_unipolar to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ai_is_unipolar, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp13 = icmp ne i32 %shr.i, 0
  %or.cond = select i1 %tobool.not, i1 %cmp13, i1 false
  br i1 %or.cond, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %data, i32 %i.014
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %9, %conv
  %shr.i12 = lshr i32 %9, 1
  %xor2.i = xor i32 %xor.i, %shr.i12
  %conv2 = trunc i32 %xor2.i to i16
  store i16 %conv2, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %shr.i
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das1800_ao_insn_write(ptr noundef %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  %2 = ptrtoint ptr %n_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_chan, align 4
  %sub = add i32 %3, -1
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #8
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp576.not = icmp eq i32 %5, 0
  br i1 %cmp576.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %6 = trunc i32 %1 to i8
  %conv12 = add i8 %6, 2
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %sub)
  %cmp26.not = icmp eq i32 %and, %sub
  %7 = trunc i32 %3 to i8
  %conv35 = add i8 %7, 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.077
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %readback, align 4
  %arrayidx7 = getelementptr i32, ptr %11, i32 %and
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %arrayidx7, align 4
  %13 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %14, %9
  %shr.i = lshr i32 %14, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase, align 4
  %add13 = add i32 %16, 2
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %17 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv12) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %conv20 = trunc i32 %xor2.i to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv20)
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase, align 4
  %and23 = and i32 %20, 1048575
  %add24 = or i32 %and23, -18874368
  %21 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %21, i16 %18) #8, !srcloc !101
  br i1 %cmp26.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %readback, align 4
  %arrayidx29 = getelementptr i32, ptr %23, i32 %sub
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx29, align 4
  %26 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %maxdata.i, align 4
  %xor.i73 = xor i32 %27, %25
  %shr.i74 = lshr i32 %27, 1
  %xor2.i75 = xor i32 %xor.i73, %shr.i74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase, align 4
  %add37 = add i32 %29, 2
  %and38 = and i32 %add37, 1048575
  %add39 = or i32 %and38, -18874368
  %30 = inttoptr i32 %add39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %conv35) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %conv44 = trunc i32 %xor2.i75 to i16
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv44)
  %32 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase, align 4
  %and47 = and i32 %33, 1048575
  %add48 = or i32 %and47, -18874368
  %34 = inttoptr i32 %add48 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %34, i16 %31) #8, !srcloc !101
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw i32 %i.077, 1
  %35 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n, align 4
  %cmp5 = icmp ult i32 %inc, %36
  br i1 %cmp5, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #8
  %37 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n, align 4
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das1800_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %4 = and i8 %3, 15
  %and3 = zext i8 %4 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %data, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %7 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n, align 4
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das1800_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add = add i32 %3, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #8, !srcloc !99
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %state3 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state3, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n, align 4
  ret i32 %9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @das1800_ai_handler(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %dpnt.i123 = alloca i16, align 2
  %dpnt.i.i = alloca i16, align 2
  %dpnt.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %2 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_subdev, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async1, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add = add i32 %7, 7
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %8 = inttoptr i32 %add3 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %conv = zext i8 %9 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add6 = add i32 %11, 2
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %12 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 0) #8, !srcloc !99
  %irq_dma_bits = getelementptr inbounds %struct.das1800_private, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %irq_dma_bits to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq_dma_bits, align 4
  %and10 = and i32 %14, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %15 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %desc2.i = getelementptr inbounds %struct.comedi_isadma, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc2.i, align 4
  %cur_dma.i = getelementptr inbounds %struct.comedi_isadma, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur_dma.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_isadma_desc, ptr %20, i32 %22
  %irq_dma_bits.i = getelementptr inbounds %struct.das1800_private, ptr %16, i32 0, i32 1
  %23 = ptrtoint ptr %irq_dma_bits.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq_dma_bits.i, align 4
  %size.i.i = getelementptr %struct.comedi_isadma_desc, ptr %20, i32 %22, i32 4
  %25 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size.i.i, align 4
  %subdev_flags.i.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %subdev_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %subdev_flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %28, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 2
  %shr.i.i.i = lshr i32 %26, %cond.i.i.i.i
  %call2.i.i = tail call i32 @comedi_nsamples_left(ptr noundef %3, i32 noundef %shr.i.i.i) #8
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %call3.i.i = tail call i32 @comedi_buf_write_samples(ptr noundef %3, ptr noundef %30, i32 noundef %call2.i.i) #8
  %and3.i = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool.not.i, label %if.then.if.end19_crit_edge, label %do.body.i

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

do.body.i:                                        ; preds = %if.then
  %and.i = and i32 %24, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase, align 4
  %add.i = add i32 %32, 7
  %and4.i = and i32 %add.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %33 = inttoptr i32 %add5.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 93) #8, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %do.body.i.if.end19_crit_edge, label %if.then7.i

do.body.i.if.end19_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cur_dma.i, align 4
  %sub.i = sub i32 1, %35
  store i32 %sub.i, ptr %cur_dma.i, align 4
  br label %if.end19

if.else:                                          ; preds = %entry
  %and11 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else14, label %if.then13

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %private, align 4
  %call.i = tail call i32 @comedi_nsamples_left(ptr noundef %3, i32 noundef 512) #8
  %38 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iobase, align 4
  %and.i101 = and i32 %39, 1048575
  %add1.i = or i32 %and.i101, -18874368
  %40 = inttoptr i32 %add1.i to ptr
  %fifo_buf.i = getelementptr inbounds %struct.das1800_private, ptr %37, i32 0, i32 3
  %41 = ptrtoint ptr %fifo_buf.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fifo_buf.i, align 4
  tail call void @__raw_readsw(ptr noundef nonnull %40, ptr noundef %42, i32 noundef %call.i) #8
  %43 = ptrtoint ptr %fifo_buf.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %fifo_buf.i, align 4
  %call4.i = tail call i32 @comedi_buf_write_samples(ptr noundef %3, ptr noundef %44, i32 noundef %call.i) #8
  br label %if.end19

if.else14:                                        ; preds = %if.else
  %and15 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else14.if.end19_crit_edge, label %if.then17

if.else14.if.end19_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %if.else14
  %45 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %async1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dpnt.i) #8
  %47 = ptrtoint ptr %dpnt.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -1, ptr %dpnt.i, align 2, !annotation !133
  %48 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %iobase, align 4
  %add22.i = add i32 %49, 7
  %and23.i = and i32 %add22.i, 1048575
  %add224.i = or i32 %and23.i, -18874368
  %50 = inttoptr i32 %add224.i to ptr
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %50) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %52 = and i8 %51, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not25.i = icmp eq i8 %52, 0
  br i1 %tobool.not25.i, label %if.then17.das1800_handle_fifo_not_empty.exit_crit_edge, label %while.body.lr.ph.i

if.then17.das1800_handle_fifo_not_empty.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %das1800_handle_fifo_not_empty.exit

while.body.lr.ph.i:                               ; preds = %if.then17
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %46, i32 0, i32 17, i32 10
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %46, i32 0, i32 17, i32 11
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %53 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %iobase, align 4
  %and8.i = and i32 %54, 1048575
  %add9.i = or i32 %and8.i, -18874368
  %55 = inttoptr i32 %add9.i to ptr
  %56 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %55) #8, !srcloc !111
  %57 = call i16 @llvm.bswap.i16(i16 %56) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %58 = ptrtoint ptr %dpnt.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %dpnt.i, align 2
  %call13.i = call i32 @comedi_buf_write_samples(ptr noundef %3, ptr noundef nonnull %dpnt.i, i32 noundef 1) #8
  %59 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %60)
  %cmp.i = icmp eq i32 %60, 32
  br i1 %cmp.i, label %land.lhs.true.i, label %while.body.i.if.end.i_crit_edge

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %61 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %async1, align 4
  %scans_done.i = getelementptr inbounds %struct.comedi_async, ptr %62, i32 0, i32 11
  %63 = ptrtoint ptr %scans_done.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %scans_done.i, align 4
  %65 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %stop_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp16.not.i = icmp ult i32 %64, %66
  br i1 %cmp16.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.das1800_handle_fifo_not_empty.exit_crit_edge

land.lhs.true.i.das1800_handle_fifo_not_empty.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %das1800_handle_fifo_not_empty.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %while.body.i.if.end.i_crit_edge
  %67 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %iobase, align 4
  %add.i103 = add i32 %68, 7
  %and.i104 = and i32 %add.i103, 1048575
  %add2.i = or i32 %and.i104, -18874368
  %69 = inttoptr i32 %add2.i to ptr
  %70 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %69) #8, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %71 = and i8 %70, 64
  %tobool.not.i105 = icmp eq i8 %71, 0
  br i1 %tobool.not.i105, label %if.end.i.das1800_handle_fifo_not_empty.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end.i.das1800_handle_fifo_not_empty.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %das1800_handle_fifo_not_empty.exit

das1800_handle_fifo_not_empty.exit:               ; preds = %if.end.i.das1800_handle_fifo_not_empty.exit_crit_edge, %land.lhs.true.i.das1800_handle_fifo_not_empty.exit_crit_edge, %if.then17.das1800_handle_fifo_not_empty.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dpnt.i) #8
  br label %if.end19

if.end19:                                         ; preds = %das1800_handle_fifo_not_empty.exit, %if.else14.if.end19_crit_edge, %if.then13, %if.then7.i, %do.body.i.if.end19_crit_edge, %if.then.if.end19_crit_edge
  %and20 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end35, label %do.body23

do.body23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  call void @arm_heavy_mb() #8
  %72 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %iobase, align 4
  %add27 = add i32 %73, 7
  %and28 = and i32 %add27, 1048575
  %add29 = or i32 %and28, -18874368
  %74 = inttoptr i32 %add29 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %74, i8 79) #8, !srcloc !99
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %75 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %class_dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.15) #11
  br label %cleanup.sink.split

if.end35:                                         ; preds = %if.end19
  %and36 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.else55, label %do.body39

do.body39:                                        ; preds = %if.end35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  call void @arm_heavy_mb() #8
  %77 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %iobase, align 4
  %add43 = add i32 %78, 7
  %and44 = and i32 %add43, 1048575
  %add45 = or i32 %and44, -18874368
  %79 = inttoptr i32 %add45 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 87) #8, !srcloc !99
  %80 = ptrtoint ptr %irq_dma_bits to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %irq_dma_bits, align 4
  %and48 = and i32 %81, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.else51, label %if.then50

if.then50:                                        ; preds = %do.body39
  %82 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %private, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %desc2.i107 = getelementptr inbounds %struct.comedi_isadma, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %desc2.i107 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %desc2.i107, align 4
  %cur_dma.i108 = getelementptr inbounds %struct.comedi_isadma, ptr %85, i32 0, i32 3
  %88 = ptrtoint ptr %cur_dma.i108 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cur_dma.i108, align 4
  %arrayidx.i109 = getelementptr %struct.comedi_isadma_desc, ptr %87, i32 %89
  %irq_dma_bits.i110 = getelementptr inbounds %struct.das1800_private, ptr %83, i32 0, i32 1
  %90 = ptrtoint ptr %irq_dma_bits.i110 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq_dma_bits.i110, align 4
  %and.i111 = and i32 %91, 4
  %size.i.i112 = getelementptr %struct.comedi_isadma_desc, ptr %87, i32 %89, i32 4
  %92 = ptrtoint ptr %size.i.i112 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %size.i.i112, align 4
  %subdev_flags.i.i.i.i113 = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 4
  %94 = ptrtoint ptr %subdev_flags.i.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %subdev_flags.i.i.i.i113, align 4
  %and.i.i.i.i114 = and i32 %95, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i114)
  %tobool.not.i.i.i.i115 = icmp eq i32 %and.i.i.i.i114, 0
  %cond.i.i.i.i116 = select i1 %tobool.not.i.i.i.i115, i32 1, i32 2
  %shr.i.i.i117 = lshr i32 %93, %cond.i.i.i.i116
  %call2.i.i118 = call i32 @comedi_nsamples_left(ptr noundef %3, i32 noundef %shr.i.i.i117) #8
  %96 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i109, align 4
  %call3.i.i119 = call i32 @comedi_buf_write_samples(ptr noundef %3, ptr noundef %97, i32 noundef %call2.i.i118) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i111)
  %tobool.not.i120 = icmp eq i32 %and.i111, 0
  br i1 %tobool.not.i120, label %if.then50.if.end.i122_crit_edge, label %if.then.i

if.then50.if.end.i122_crit_edge:                  ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i122

if.then.i:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %cur_dma.i108 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cur_dma.i108, align 4
  %sub.i121 = sub i32 1, %99
  store i32 %sub.i121, ptr %cur_dma.i108, align 4
  %100 = ptrtoint ptr %desc2.i107 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %desc2.i107, align 4
  %arrayidx7.i = getelementptr %struct.comedi_isadma_desc, ptr %101, i32 %sub.i121
  %size.i20.i = getelementptr %struct.comedi_isadma_desc, ptr %101, i32 %sub.i121, i32 4
  %102 = ptrtoint ptr %size.i20.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %size.i20.i, align 4
  %104 = ptrtoint ptr %subdev_flags.i.i.i.i113 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %subdev_flags.i.i.i.i113, align 4
  %and.i.i.i22.i = and i32 %105, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i22.i)
  %tobool.not.i.i.i23.i = icmp eq i32 %and.i.i.i22.i, 0
  %cond.i.i.i24.i = select i1 %tobool.not.i.i.i23.i, i32 1, i32 2
  %shr.i.i25.i = lshr i32 %103, %cond.i.i.i24.i
  %call2.i26.i = call i32 @comedi_nsamples_left(ptr noundef %3, i32 noundef %shr.i.i25.i) #8
  %106 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %arrayidx7.i, align 4
  %call3.i27.i = call i32 @comedi_buf_write_samples(ptr noundef %3, ptr noundef %107, i32 noundef %call2.i26.i) #8
  br label %if.end.i122

if.end.i122:                                      ; preds = %if.then.i, %if.then50.if.end.i122_crit_edge
  %108 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %async1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dpnt.i.i) #8
  %110 = ptrtoint ptr %dpnt.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 -1, ptr %dpnt.i.i, align 2, !annotation !133
  %111 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %iobase, align 4
  %add22.i.i = add i32 %112, 7
  %and23.i.i = and i32 %add22.i.i, 1048575
  %add224.i.i = or i32 %and23.i.i, -18874368
  %113 = inttoptr i32 %add224.i.i to ptr
  %114 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %113) #8, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %115 = and i8 %114, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not25.i.i = icmp eq i8 %115, 0
  br i1 %tobool.not25.i.i, label %if.end.i122.das1800_flush_dma.exit_crit_edge, label %while.body.lr.ph.i.i

if.end.i122.das1800_flush_dma.exit_crit_edge:     ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %das1800_flush_dma.exit

while.body.lr.ph.i.i:                             ; preds = %if.end.i122
  %stop_src.i.i = getelementptr inbounds %struct.comedi_async, ptr %109, i32 0, i32 17, i32 10
  %stop_arg.i.i = getelementptr inbounds %struct.comedi_async, ptr %109, i32 0, i32 17, i32 11
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %116 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %iobase, align 4
  %and8.i.i = and i32 %117, 1048575
  %add9.i.i = or i32 %and8.i.i, -18874368
  %118 = inttoptr i32 %add9.i.i to ptr
  %119 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %118) #8, !srcloc !111
  %120 = call i16 @llvm.bswap.i16(i16 %119) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %121 = ptrtoint ptr %dpnt.i.i to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 %120, ptr %dpnt.i.i, align 2
  %call13.i.i = call i32 @comedi_buf_write_samples(ptr noundef %3, ptr noundef nonnull %dpnt.i.i, i32 noundef 1) #8
  %122 = ptrtoint ptr %stop_src.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %stop_src.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %123)
  %cmp.i.i = icmp eq i32 %123, 32
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %while.body.i.i.if.end.i.i_crit_edge

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.i
  %124 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %async1, align 4
  %scans_done.i.i = getelementptr inbounds %struct.comedi_async, ptr %125, i32 0, i32 11
  %126 = ptrtoint ptr %scans_done.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %scans_done.i.i, align 4
  %128 = ptrtoint ptr %stop_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %stop_arg.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %127, i32 %129)
  %cmp16.not.i.i = icmp ult i32 %127, %129
  br i1 %cmp16.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.das1800_flush_dma.exit_crit_edge

land.lhs.true.i.i.das1800_flush_dma.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %das1800_flush_dma.exit

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %while.body.i.i.if.end.i.i_crit_edge
  %130 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %iobase, align 4
  %add.i.i = add i32 %131, 7
  %and.i.i = and i32 %add.i.i, 1048575
  %add2.i.i = or i32 %and.i.i, -18874368
  %132 = inttoptr i32 %add2.i.i to ptr
  %133 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %132) #8, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %134 = and i8 %133, 64
  %tobool.not.i.i = icmp eq i8 %134, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.das1800_flush_dma.exit_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end.i.i.das1800_flush_dma.exit_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %das1800_flush_dma.exit

das1800_flush_dma.exit:                           ; preds = %if.end.i.i.das1800_flush_dma.exit_crit_edge, %land.lhs.true.i.i.das1800_flush_dma.exit_crit_edge, %if.end.i122.das1800_flush_dma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dpnt.i.i) #8
  br label %cleanup.sink.split

if.else51:                                        ; preds = %do.body39
  %135 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %async1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dpnt.i123) #8
  %137 = ptrtoint ptr %dpnt.i123 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 -1, ptr %dpnt.i123, align 2, !annotation !133
  %138 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %iobase, align 4
  %add22.i126 = add i32 %139, 7
  %and23.i127 = and i32 %add22.i126, 1048575
  %add224.i128 = or i32 %and23.i127, -18874368
  %140 = inttoptr i32 %add224.i128 to ptr
  %141 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %140) #8, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %142 = and i8 %141, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool.not25.i129 = icmp eq i8 %142, 0
  br i1 %tobool.not25.i129, label %if.else51.das1800_handle_fifo_not_empty.exit146_crit_edge, label %while.body.lr.ph.i132

if.else51.das1800_handle_fifo_not_empty.exit146_crit_edge: ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #10
  br label %das1800_handle_fifo_not_empty.exit146

while.body.lr.ph.i132:                            ; preds = %if.else51
  %stop_src.i130 = getelementptr inbounds %struct.comedi_async, ptr %136, i32 0, i32 17, i32 10
  %stop_arg.i131 = getelementptr inbounds %struct.comedi_async, ptr %136, i32 0, i32 17, i32 11
  br label %while.body.i137

while.body.i137:                                  ; preds = %if.end.i145.while.body.i137_crit_edge, %while.body.lr.ph.i132
  %143 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %iobase, align 4
  %and8.i133 = and i32 %144, 1048575
  %add9.i134 = or i32 %and8.i133, -18874368
  %145 = inttoptr i32 %add9.i134 to ptr
  %146 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %145) #8, !srcloc !111
  %147 = call i16 @llvm.bswap.i16(i16 %146) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %148 = ptrtoint ptr %dpnt.i123 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %147, ptr %dpnt.i123, align 2
  %call13.i135 = call i32 @comedi_buf_write_samples(ptr noundef %3, ptr noundef nonnull %dpnt.i123, i32 noundef 1) #8
  %149 = ptrtoint ptr %stop_src.i130 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %stop_src.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %150)
  %cmp.i136 = icmp eq i32 %150, 32
  br i1 %cmp.i136, label %land.lhs.true.i140, label %while.body.i137.if.end.i145_crit_edge

while.body.i137.if.end.i145_crit_edge:            ; preds = %while.body.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i145

land.lhs.true.i140:                               ; preds = %while.body.i137
  %151 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %async1, align 4
  %scans_done.i138 = getelementptr inbounds %struct.comedi_async, ptr %152, i32 0, i32 11
  %153 = ptrtoint ptr %scans_done.i138 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %scans_done.i138, align 4
  %155 = ptrtoint ptr %stop_arg.i131 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %stop_arg.i131, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %156)
  %cmp16.not.i139 = icmp ult i32 %154, %156
  br i1 %cmp16.not.i139, label %land.lhs.true.i140.if.end.i145_crit_edge, label %land.lhs.true.i140.das1800_handle_fifo_not_empty.exit146_crit_edge

land.lhs.true.i140.das1800_handle_fifo_not_empty.exit146_crit_edge: ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %das1800_handle_fifo_not_empty.exit146

land.lhs.true.i140.if.end.i145_crit_edge:         ; preds = %land.lhs.true.i140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i145

if.end.i145:                                      ; preds = %land.lhs.true.i140.if.end.i145_crit_edge, %while.body.i137.if.end.i145_crit_edge
  %157 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %iobase, align 4
  %add.i141 = add i32 %158, 7
  %and.i142 = and i32 %add.i141, 1048575
  %add2.i143 = or i32 %and.i142, -18874368
  %159 = inttoptr i32 %add2.i143 to ptr
  %160 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %159) #8, !srcloc !96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  %161 = and i8 %160, 64
  %tobool.not.i144 = icmp eq i8 %161, 0
  br i1 %tobool.not.i144, label %if.end.i145.das1800_handle_fifo_not_empty.exit146_crit_edge, label %if.end.i145.while.body.i137_crit_edge

if.end.i145.while.body.i137_crit_edge:            ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i137

if.end.i145.das1800_handle_fifo_not_empty.exit146_crit_edge: ; preds = %if.end.i145
  call void @__sanitizer_cov_trace_pc() #10
  br label %das1800_handle_fifo_not_empty.exit146

das1800_handle_fifo_not_empty.exit146:            ; preds = %if.end.i145.das1800_handle_fifo_not_empty.exit146_crit_edge, %land.lhs.true.i140.das1800_handle_fifo_not_empty.exit146_crit_edge, %if.else51.das1800_handle_fifo_not_empty.exit146_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dpnt.i123) #8
  br label %cleanup.sink.split

if.else55:                                        ; preds = %if.end35
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 10
  %162 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %163)
  %cmp = icmp eq i32 %163, 32
  br i1 %cmp, label %land.lhs.true, label %if.else55.cleanup_crit_edge

if.else55.cleanup_crit_edge:                      ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else55
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 11
  %164 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 11
  %166 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %167)
  %cmp57.not = icmp ult i32 %165, %167
  br i1 %cmp57.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true.cleanup.sink.split_crit_edge, %das1800_handle_fifo_not_empty.exit146, %das1800_flush_dma.exit, %do.body23
  %.sink148 = phi i32 [ 16, %do.body23 ], [ 2, %land.lhs.true.cleanup.sink.split_crit_edge ], [ 2, %das1800_flush_dma.exit ], [ 2, %das1800_handle_fifo_not_empty.exit146 ]
  %events = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 16
  %168 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %events, align 4
  %or61 = or i32 %169, %.sink148
  store i32 %or61, ptr %events, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.else55.cleanup_crit_edge
  %call64 = call i32 @comedi_handle_events(ptr noundef %dev, ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_nsamples_left(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @das1800_ai_set_chanlist(ptr noundef %dev, ptr nocapture noundef readonly %chanlist, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  tail call void @arm_heavy_mb() #8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %2 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #8, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %3 = trunc i32 %len to i8
  %conv13 = add i8 %3, -1
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add15 = add i32 %5, 10
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %6 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv13) #8, !srcloc !99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp1956.not = icmp eq i32 %len, 0
  br i1 %cmp1956.not, label %entry.do.body34_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body34_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.057 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %chanlist, i32 %i.057
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = lshr i32 %8, 8
  %shl = and i32 %9, 768
  %or = or i32 %shl, %8
  %conv25 = trunc i32 %or to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call void @arm_heavy_mb() #8
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv25)
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %and31 = and i32 %12, 1048575
  %add32 = or i32 %and31, -18874368
  %13 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #8, !srcloc !101
  %inc = add nuw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.do.body34_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.do.body34_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

do.body34:                                        ; preds = %for.body.do.body34_crit_edge, %entry.do.body34_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add40 = add i32 %15, 10
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %16 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv13) #8, !srcloc !99
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das1800_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 7
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #8, !srcloc !96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %4 = and i8 %3, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_update_divisors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_pacer_enable(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_8254_load(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @das1800_ai_fixup_paced_timing(ptr nocapture noundef readonly %dev, ptr nocapture noundef %cmd) unnamed_addr #2 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #8
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %0 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %convert_arg, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arg, align 4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pacer, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %4, ptr noundef nonnull %arg, i32 noundef %6) #8
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arg, align 4
  %9 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %8)
  %cmp.not.i = icmp eq i32 %10, %8
  br i1 %cmp.not.i, label %entry.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

entry.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %entry.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %if.then.i ], [ 0, %entry.comedi_check_trigger_arg_is.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #8
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @das1800_ai_fixup_burst_timing(ptr nocapture noundef readonly %dev, ptr nocapture noundef %cmd) unnamed_addr #2 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #8
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %0 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %1)
  %cmp.i = icmp ugt i32 %1, 64000
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 64000)
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %arg, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 196608
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %and, label %sw.default [
    i32 131072, label %sw.bb4
    i32 65536, label %sw.bb2
  ]

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arg, align 4
  %add = add i32 %8, 500
  %div1 = udiv i32 %add, 1000
  store i32 %div1, ptr %arg, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arg, align 4
  %div3 = udiv i32 %10, 1000
  store i32 %div3, ptr %arg, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arg, align 4
  %sub = add i32 %12, 999
  %div6 = udiv i32 %sub, 1000
  store i32 %div6, ptr %arg, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %sw.default
  %13 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arg, align 4
  %mul = mul i32 %14, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %mul)
  %cmp.not.i = icmp eq i32 %1, %mul
  br i1 %cmp.not.i, label %sw.epilog.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i33

sw.epilog.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit

if.then.i33:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i33, %sw.epilog.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i34 = phi i32 [ -22, %if.then.i33 ], [ 0, %sw.epilog.comedi_check_trigger_arg_is.exit_crit_edge ]
  %or9 = select i1 %cmp.i, i32 -22, i32 %retval.0.i34
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %16 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %17)
  %cmp = icmp eq i32 %17, 16
  br i1 %cmp, label %if.then, label %comedi_check_trigger_arg_is.exit.if.end_crit_edge

comedi_check_trigger_arg_is.exit.if.end_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %comedi_check_trigger_arg_is.exit
  %18 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %convert_arg, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %20 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %chanlist_len, align 4
  %mul11 = mul i32 %21, %19
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %22 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %mul11)
  %cmp.i35 = icmp ult i32 %23, %mul11
  br i1 %cmp.i35, label %if.then.i36, label %if.then.comedi_check_trigger_arg_min.exit_crit_edge

if.then.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_min.exit

if.then.i36:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul11, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i36, %if.then.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i37 = phi i32 [ -22, %if.then.i36 ], [ 0, %if.then.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or13 = or i32 %retval.0.i37, %or9
  %25 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_begin_arg, align 4
  %27 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arg, align 4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %28 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pacer, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %29, ptr noundef nonnull %arg, i32 noundef %5) #8
  %30 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arg, align 4
  %32 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp.not.i38 = icmp eq i32 %33, %31
  br i1 %cmp.not.i38, label %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit41_crit_edge, label %if.then.i39

comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit41_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %comedi_check_trigger_arg_is.exit41

if.then.i39:                                      ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit41

comedi_check_trigger_arg_is.exit41:               ; preds = %if.then.i39, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit41_crit_edge
  %retval.0.i40 = phi i32 [ -22, %if.then.i39 ], [ 0, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit41_crit_edge ]
  %or18 = or i32 %or13, %retval.0.i40
  br label %if.end

if.end:                                           ; preds = %comedi_check_trigger_arg_is.exit41, %comedi_check_trigger_arg_is.exit.if.end_crit_edge
  %err.0 = phi i32 [ %or18, %comedi_check_trigger_arg_is.exit41 ], [ %or9, %comedi_check_trigger_arg_is.exit.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #8
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @das1800_ai_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %0 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chanlist, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shr = lshr i32 %3, 16
  %and = and i32 %shr, 255
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %4 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %5, i32 0, i32 1, i32 %and
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %8 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp29 = icmp ugt i32 %9, 1
  br i1 %cmp29, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %arrayidx2 = getelementptr i32, ptr %1, i32 %i.030
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2, align 4
  %shr3 = lshr i32 %11, 16
  %and4 = and i32 %shr3, 255
  %arrayidx.i26 = getelementptr %struct.comedi_lrange, ptr %5, i32 0, i32 1, i32 %and4
  %12 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i26, align 4
  %14 = xor i32 %13, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %do.body, label %for.cond

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @das1800_ai_check_chanlist.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@das1800_ai_check_chanlist, %cleanup)) #8
          to label %if.then15 [label %cleanup], !srcloc !143

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @das1800_ai_check_chanlist.__UNIQUE_ID_ddebug234, ptr noundef %17, ptr noundef nonnull @.str.20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then15 ], [ -22, %do.body ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_cascade_ns_to_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_das1800__235_1358_das1800_driver_init6, !1, !"__initcall__kmod_das1800__235_1358_das1800_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/das1800.c", i32 1358, i32 1}
!2 = !{ptr @__exitcall_das1800_driver_exit, !1, !"__exitcall_das1800_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author236, !4, !"__UNIQUE_ID_author236", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/das1800.c", i32 1360, i32 1}
!5 = !{ptr @__UNIQUE_ID_description237, !6, !"__UNIQUE_ID_description237", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/das1800.c", i32 1361, i32 1}
!7 = !{ptr @__UNIQUE_ID_file238, !8, !"__UNIQUE_ID_file238", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/das1800.c", i32 1362, i32 1}
!9 = !{ptr @__UNIQUE_ID_license239, !8, !"__UNIQUE_ID_license239", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/das1800.c", i32 1350, i32 17}
!12 = !{ptr @das1800_driver, !13, !"das1800_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/das1800.c", i32 1349, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/das1800.c", i32 1112, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @das1800_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @das1800_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/das1800.c", i32 1149, i32 3}
!24 = !{ptr @das1800_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @das1800_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/das1800.c", i32 1154, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @das1800_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @das1800_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/das1800.c", i32 516, i32 3}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @das1800_interrupt._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @das1800_interrupt._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/das1800.c", i32 468, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @das1800_ai_handler._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @das1800_ai_handler._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @das1801_ai_range, !42, !"das1801_ai_range", i1 false, i1 false}
!42 = !{!"../drivers/comedi/drivers/das1800.c", i32 143, i32 35}
!43 = !{ptr @das1802_ai_range, !44, !"das1802_ai_range", i1 false, i1 false}
!44 = !{!"../drivers/comedi/drivers/das1800.c", i32 156, i32 35}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/comedi/drivers/das1800.c", i32 623, i32 4}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @das1800_ai_check_chanlist.__UNIQUE_ID_ddebug234, !46, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/comedi/drivers/das1800.c", i32 213, i32 12}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/comedi/drivers/das1800.c", i32 219, i32 12}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/comedi/drivers/das1800.c", i32 225, i32 12}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/comedi/drivers/das1800.c", i32 230, i32 12}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/comedi/drivers/das1800.c", i32 235, i32 12}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/comedi/drivers/das1800.c", i32 240, i32 12}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/comedi/drivers/das1800.c", i32 245, i32 12}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/comedi/drivers/das1800.c", i32 251, i32 12}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/comedi/drivers/das1800.c", i32 256, i32 12}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/comedi/drivers/das1800.c", i32 262, i32 12}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/comedi/drivers/das1800.c", i32 268, i32 12}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/comedi/drivers/das1800.c", i32 273, i32 12}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/comedi/drivers/das1800.c", i32 278, i32 12}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/comedi/drivers/das1800.c", i32 283, i32 12}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/comedi/drivers/das1800.c", i32 288, i32 12}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/comedi/drivers/das1800.c", i32 294, i32 12}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/comedi/drivers/das1800.c", i32 299, i32 12}
!83 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/comedi/drivers/das1800.c", i32 305, i32 12}
!85 = !{ptr @das1800_boards, !86, !"das1800_boards", i1 false, i1 false}
!86 = !{!"../drivers/comedi/drivers/das1800.c", i32 211, i32 35}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{i64 4651793}
!97 = !{i64 2154252761}
!98 = !{i64 2154258665}
!99 = !{i64 4651398}
!100 = !{i64 2154259047}
!101 = !{i64 4650975}
!102 = !{i64 2154259546}
!103 = !{i64 2154237880}
!104 = !{i64 2154238153}
!105 = !{i64 2154246748}
!106 = !{i64 2154247102}
!107 = !{i64 2154247450}
!108 = !{i64 2154247802}
!109 = !{i64 2154248514}
!110 = !{i64 2154248860}
!111 = !{i64 4651175}
!112 = !{i64 2154249668}
!113 = !{i64 2154231810}
!114 = !{i64 2154232158}
!115 = !{i64 2154232506}
!116 = !{i64 2154244201}
!117 = !{i64 2154244577}
!118 = !{i64 2154244943}
!119 = !{i64 2154245309}
!120 = !{i64 2154245663}
!121 = !{i64 2154246017}
!122 = !{i32 0, i32 33}
!123 = !{i8 0, i8 2}
!124 = !{i64 2154250305}
!125 = !{i64 2154250689}
!126 = !{i64 2154251171}
!127 = !{i64 2154251555}
!128 = !{i64 2154252075}
!129 = !{i64 2154252302}
!130 = !{i64 2154232931}
!131 = !{i64 2154233157}
!132 = !{i64 2154231462}
!133 = !{!"auto-init"}
!134 = !{i64 2154230483}
!135 = !{i64 2154231170}
!136 = !{i64 2154233573}
!137 = !{i64 2154235499}
!138 = !{i64 2154242337}
!139 = !{i64 2154242689}
!140 = !{i64 2154243133}
!141 = !{i64 2154243580}
!142 = !{i64 2154246442}
!143 = !{i64 2148989090, i64 2148989095, i64 2148989108, i64 2148989152, i64 2148989186, i64 2148989207}
