; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/pcl818.c_pt.bc'
source_filename = "../drivers/comedi/drivers/pcl818.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.pcl818_board = type { ptr, i32, i32, ptr, i8 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.pcl818_private = type { ptr, i32, [16 x i32], i32, i32, i8 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.comedi_isadma = type { ptr, ptr, i32, i32, i32, i32 }
%struct.comedi_isadma_desc = type { ptr, i32, i32, i32, i32, i8 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@__initcall__kmod_pcl818__237_1131_pcl818_driver_init6 = internal global ptr @pcl818_driver_init, section ".initcall6.init", align 4
@pcl818_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @pcl818_attach, ptr @pcl818_detach, ptr null, i32 7, ptr @boardtypes, i32 20 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_pcl818_driver_exit = internal global ptr @pcl818_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author238 = internal constant [44 x i8] c"pcl818.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [43 x i8] c"pcl818.description=Comedi low-level driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [42 x i8] c"pcl818.file=drivers/comedi/drivers/pcl818\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [19 x i8] c"pcl818.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcl818\00", [25 x i8] zeroinitializer }, align 32
@boardtypes = internal constant { [7 x %struct.pcl818_board], [52 x i8] } { [7 x %struct.pcl818_board] [%struct.pcl818_board { ptr @.str.25, i32 25000, i32 1, ptr @range_pcl818l_l_ai, i8 -96 }, %struct.pcl818_board { ptr @.str.26, i32 10000, i32 1, ptr @range_pcl818h_ai, i8 -96 }, %struct.pcl818_board { ptr @.str.27, i32 10000, i32 1, ptr @range_pcl818h_ai, i8 -32 }, %struct.pcl818_board { ptr @.str.28, i32 10000, i32 1, ptr @range_pcl818hg_ai, i8 -32 }, %struct.pcl818_board { ptr @.str, i32 10000, i32 2, ptr @range_pcl818h_ai, i8 -96 }, %struct.pcl818_board { ptr @.str.29, i32 16000, i32 2, ptr @range_unipolar5, i8 -128 }, %struct.pcl818_board { ptr @.str.30, i32 10000, i32 0, ptr @range_pcl818h_ai, i8 -96 }], [52 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@pcl818_ai_write_sample.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 109, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcl818_ai_write_sample\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/comedi/drivers/pcl818.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"A/D mode1/3 %s - channel dropout %d!=%d !\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FIFO\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IRQ\00", [28 x i8] zeroinitializer }, align 32
@pcl818_handle_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 508, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"A/D mode1/3 FIFO overflow!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcl818_handle_fifo\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcl818_handle_fifo._entry_ptr = internal global ptr @pcl818_handle_fifo._entry, section ".printk_index", align 4
@pcl818_handle_fifo._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.2, i32 515, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"A/D mode1/3 FIFO interrupt without data!\0A\00", [54 x i8] zeroinitializer }, align 32
@pcl818_handle_fifo._entry_ptr.13 = internal global ptr @pcl818_handle_fifo._entry.11, section ".printk_index", align 4
@pcl818_handle_eoc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 463, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"A/D mode1/3 IRQ without DRDY!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcl818_handle_eoc\00", [46 x i8] zeroinitializer }, align 32
@pcl818_handle_eoc._entry_ptr = internal global ptr @pcl818_handle_eoc._entry, section ".printk_index", align 4
@range_bipolar10 = external dso_local constant %struct.comedi_lrange, align 4
@range_bipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_bipolar2_5 = external dso_local constant %struct.comedi_lrange, align 4
@range_pcl818l_h_ai = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range718_bipolar1 = internal constant { { i32, [1 x %struct.comedi_krange] }, [16 x i8] } { { i32, [1 x %struct.comedi_krange] } { i32 1, [1 x %struct.comedi_krange] [%struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }] }, [16 x i8] zeroinitializer }, align 32
@range718_bipolar0_5 = internal constant { { i32, [1 x %struct.comedi_krange] }, [16 x i8] } { { i32, [1 x %struct.comedi_krange] } { i32 1, [1 x %struct.comedi_krange] [%struct.comedi_krange { i32 -500000, i32 500000, i32 0 }] }, [16 x i8] zeroinitializer }, align 32
@range718_unipolar2 = internal constant { { i32, [1 x %struct.comedi_krange] }, [16 x i8] } { { i32, [1 x %struct.comedi_krange] } { i32 1, [1 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 2000000, i32 0 }] }, [16 x i8] zeroinitializer }, align 32
@range718_unipolar1 = internal constant { { i32, [1 x %struct.comedi_krange] }, [16 x i8] } { { i32, [1 x %struct.comedi_krange] } { i32 1, [1 x %struct.comedi_krange] [%struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }] }, [16 x i8] zeroinitializer }, align 32
@check_channel_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 578, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"range/channel list is empty!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"check_channel_list\00", [45 x i8] zeroinitializer }, align 32
@check_channel_list._entry_ptr = internal global ptr @check_channel_list._entry, section ".printk_index", align 4
@check_channel_list.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 -107, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"channel list must be continuous! chanlist[%i]=%d but must be %d or %d!\0A\00", [56 x i8] zeroinitializer }, align 32
@check_channel_list.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 0, i8 -103, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"bad channel or range number! chanlist[%i]=%d,%d,%d and not %d,%d,%d!\0A\00", [58 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcl818l\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcl818h\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcl818hd\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcl818hg\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcl718\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pcm3718\00", [24 x i8] zeroinitializer }, align 32
@range_pcl818l_l_ai = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_pcl818h_ai = internal constant { { i32, [9 x %struct.comedi_krange] }, [48 x i8] } { { i32, [9 x %struct.comedi_krange] } { i32 9, [9 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@range_pcl818hg_ai = internal constant { { i32, [12 x %struct.comedi_krange] }, [44 x i8] } { { i32, [12 x %struct.comedi_krange] } { i32 10, [12 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 -5000, i32 5000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000, i32 0 }, %struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -10000, i32 10000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@switch.table.pcl818_attach = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @range_bipolar10, ptr @range_bipolar5, ptr @range_bipolar2_5, ptr @range718_bipolar1, ptr @range718_bipolar0_5, ptr @range_unknown, ptr @range_unipolar10, ptr @range_unipolar5, ptr @range718_unipolar2, ptr @range718_unipolar1], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 100]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 10]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 10]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 10]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 32]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.40 = private unnamed_addr constant [14 x i8] c"pcl818_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1122, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 1123, i32 17 }
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"boardtypes\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 233, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 432, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 508, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 514, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 463, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"range_pcl818l_h_ai\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 190, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"range718_bipolar1\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 199, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"range718_bipolar0_5\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 205, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"range718_unipolar2\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 211, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"range718_unipolar1\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 217, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 578, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 595, i32 5 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 608, i32 5 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 235, i32 12 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 242, i32 12 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 249, i32 12 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 257, i32 12 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 272, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 278, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant [19 x i8] c"range_pcl818l_l_ai\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 181, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"range_pcl818h_ai\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 150, i32 35 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"range_pcl818hg_ai\00", align 1
@___asan_gen_.152 = private constant [35 x i8] c"../drivers/comedi/drivers/pcl818.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 164, i32 35 }
@___asan_gen_.154 = private unnamed_addr constant [27 x i8] c"switch.table.pcl818_attach\00", align 1
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_pcl818_driver_exit, ptr @__initcall__kmod_pcl818__237_1131_pcl818_driver_init6, ptr @check_channel_list._entry, ptr @check_channel_list._entry_ptr, ptr @pcl818_driver_exit, ptr @pcl818_handle_eoc._entry, ptr @pcl818_handle_eoc._entry_ptr, ptr @pcl818_handle_fifo._entry, ptr @pcl818_handle_fifo._entry.11, ptr @pcl818_handle_fifo._entry_ptr, ptr @pcl818_handle_fifo._entry_ptr.13, ptr @pcl818_driver, ptr @.str, ptr @boardtypes, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @range_pcl818l_h_ai, ptr @range718_bipolar1, ptr @range718_bipolar0_5, ptr @range718_unipolar2, ptr @range718_unipolar1, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @range_pcl818l_l_ai, ptr @range_pcl818h_ai, ptr @range_pcl818hg_ai, ptr @switch.table.pcl818_attach], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcl818_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boardtypes to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcl818_handle_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcl818_handle_fifo._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcl818_handle_eoc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_pcl818l_h_ai to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range718_bipolar1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range718_bipolar0_5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range718_unipolar2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range718_unipolar1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_channel_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_pcl818l_l_ai to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_pcl818h_ai to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_pcl818hg_ai to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pcl818_attach to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl818_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @pcl818_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcl818_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_driver_unregister(ptr noundef nonnull @pcl818_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl818_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %call = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 84) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 4
  %has_fifo = getelementptr inbounds %struct.pcl818_board, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %has_fifo to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %has_fifo, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool1.not, i32 16, i32 32
  %call2 = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %3, i32 noundef %cond) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %arrayidx7 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7, align 4
  %8 = add i32 %7, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %9 = icmp ult i32 %8, 6
  br i1 %9, label %if.then11, label %if.end5.if.end20_crit_edge

if.end5.if.end20_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then11:                                        ; preds = %if.end5
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %10 = ptrtoint ptr %board_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %board_name, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @pcl818_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %11, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15 = icmp eq i32 %call.i, 0
  br i1 %cmp15, label %if.then16, label %if.then11.if.end20_crit_edge

if.then11.if.end20_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then16:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %irq, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then11.if.end20_crit_edge, %if.end5.if.end20_crit_edge
  %irq21 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %15 = ptrtoint ptr %irq21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool22.not = icmp eq i32 %16, 0
  br i1 %tobool22.not, label %if.end20.if.end48_crit_edge, label %land.lhs.true23

if.end20.if.end48_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true23:                                  ; preds = %if.end20
  %17 = ptrtoint ptr %has_fifo to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load25 = load i8, ptr %has_fifo, align 4
  %18 = and i8 %bf.load25, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool29.not = icmp eq i8 %18, 0
  br i1 %tobool29.not, label %land.lhs.true23.if.end37_crit_edge, label %land.lhs.true30

land.lhs.true23.if.end37_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true30:                                  ; preds = %land.lhs.true23
  %arrayidx32 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp33 = icmp eq i32 %20, -1
  br i1 %cmp33, label %if.then34, label %land.lhs.true30.if.end37_crit_edge

land.lhs.true30.if.end37_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then34:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  %usefifo = getelementptr inbounds %struct.pcl818_private, ptr %call, i32 0, i32 5
  %21 = ptrtoint ptr %usefifo to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load35 = load i8, ptr %usefifo, align 4
  %bf.set = or i8 %bf.load35, -128
  store i8 %bf.set, ptr %usefifo, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %land.lhs.true30.if.end37_crit_edge, %land.lhs.true23.if.end37_crit_edge
  %22 = ptrtoint ptr %irq21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %irq21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool39.not = icmp eq i32 %.pr, 0
  br i1 %tobool39.not, label %if.end37.if.end48_crit_edge, label %land.lhs.true40

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

land.lhs.true40:                                  ; preds = %if.end37
  %23 = ptrtoint ptr %has_fifo to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load41 = load i8, ptr %has_fifo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load41)
  %tobool44.not = icmp sgt i8 %bf.load41, -1
  br i1 %tobool44.not, label %land.lhs.true40.if.end48_crit_edge, label %if.then45

land.lhs.true40.if.end48_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then45:                                        ; preds = %land.lhs.true40
  %arrayidx47 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx47, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.then45.if.end48_crit_edge [
    i32 3, label %if.then45.if.end.i_crit_edge
    i32 1, label %if.then45.if.end.i_crit_edge280
  ]

if.then45.if.end.i_crit_edge280:                  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then45.if.end.i_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then45.if.end48_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.end.i:                                         ; preds = %if.then45.if.end.i_crit_edge, %if.then45.if.end.i_crit_edge280
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %27 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %private.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %28, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end.i, %if.then45.if.end48_crit_edge, %land.lhs.true40.if.end48_crit_edge, %if.end37.if.end48_crit_edge, %if.end20.if.end48_crit_edge
  %arrayidx50 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %switch.selectcmp.case1 = icmp eq i32 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %31)
  %switch.selectcmp.case2 = icmp eq i32 %31, 10
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %32 = select i1 %switch.selectcmp, i32 100, i32 1000
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %33 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase, align 4
  %add = add i32 %34, 12
  %call57 = tail call ptr @comedi_8254_init(i32 noundef %add, i32 noundef %32, i32 noundef 1, i32 noundef 0) #6
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %35 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call57, ptr %pacer, align 4
  %tobool59.not = icmp eq ptr %call57, null
  br i1 %tobool59.not, label %if.end48.cleanup_crit_edge, label %if.end61

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end61:                                         ; preds = %if.end48
  %ns_min = getelementptr inbounds %struct.pcl818_board, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %ns_min to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ns_min, align 4
  %ns_min62 = getelementptr inbounds %struct.pcl818_private, ptr %call, i32 0, i32 1
  %38 = ptrtoint ptr %ns_min62 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ns_min62, align 4
  %39 = ptrtoint ptr %has_fifo to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load63 = load i8, ptr %has_fifo, align 4
  %40 = and i8 %bf.load63, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool67.not = icmp eq i8 %40, 0
  br i1 %tobool67.not, label %if.then68, label %if.end61.if.end79_crit_edge

if.end61.if.end79_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then68:                                        ; preds = %if.end61
  %arrayidx70 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 6
  %41 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx70, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %42, label %if.then68.if.end79_crit_edge [
    i32 1, label %if.then68.if.then76_crit_edge
    i32 100, label %if.then68.if.then76_crit_edge281
  ]

if.then68.if.then76_crit_edge281:                 ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then76

if.then68.if.then76_crit_edge:                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then76

if.then68.if.end79_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end79

if.then76:                                        ; preds = %if.then68.if.then76_crit_edge, %if.then68.if.then76_crit_edge281
  %44 = ptrtoint ptr %ns_min62 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 10000, ptr %ns_min62, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then76, %if.then68.if.end79_crit_edge, %if.end61.if.end79_crit_edge
  %call80 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end83:                                         ; preds = %if.end79
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %45 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %46, i32 0, i32 4
  %48 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 65536, ptr %subdev_flags, align 4
  %49 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase, align 4
  %add.i = add i32 %50, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %51 = inttoptr i32 %add1.i to ptr
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %53 = and i8 %52, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool87.not = icmp eq i8 %53, 0
  %54 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %subdev_flags, align 4
  %. = select i1 %tobool87.not, i32 4194304, i32 3145728
  %.279 = select i1 %tobool87.not, i32 8, i32 16
  %or93 = or i32 %55, %.
  %56 = getelementptr inbounds %struct.comedi_subdevice, ptr %46, i32 0, i32 3
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.279, ptr %56, align 4
  store i32 %or93, ptr %subdev_flags, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %46, i32 0, i32 13
  %58 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4095, ptr %maxdata, align 4
  %59 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %board_ptr, align 4
  %ai_range_type.i = getelementptr inbounds %struct.pcl818_board, ptr %60, i32 0, i32 3
  %61 = ptrtoint ptr %ai_range_type.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ai_range_type.i, align 4
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %46, i32 0, i32 15
  %63 = ptrtoint ptr %range_table.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %range_table.i, align 4
  %is_818.i = getelementptr inbounds %struct.pcl818_board, ptr %60, i32 0, i32 4
  %64 = ptrtoint ptr %is_818.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %bf.load.i = load i8, ptr %is_818.i, align 4
  %65 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i = icmp eq i8 %65, 0
  %arrayidx7.i = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 4
  %66 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx7.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end83
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %67, label %if.then.i.pcl818_set_ai_range_table.exit_crit_edge [
    i32 1, label %if.then.i.if.end26.sink.split.i_crit_edge
    i32 10, label %if.then.i.if.end26.sink.split.i_crit_edge282
  ]

if.then.i.if.end26.sink.split.i_crit_edge282:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.sink.split.i

if.then.i.if.end26.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.sink.split.i

if.then.i.pcl818_set_ai_range_table.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcl818_set_ai_range_table.exit

if.else.i:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %67)
  %69 = icmp ult i32 %67, 10
  br i1 %69, label %switch.lookup, label %if.else.i.if.end26.sink.split.i_crit_edge

if.else.i.if.end26.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.sink.split.i

switch.lookup:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [10 x ptr], ptr @switch.table.pcl818_attach, i32 0, i32 %67
  %70 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %70)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %if.end26.sink.split.i

if.end26.sink.split.i:                            ; preds = %switch.lookup, %if.else.i.if.end26.sink.split.i_crit_edge, %if.then.i.if.end26.sink.split.i_crit_edge, %if.then.i.if.end26.sink.split.i_crit_edge282
  %range_bipolar10.sink.i = phi ptr [ @range_pcl818l_h_ai, %if.then.i.if.end26.sink.split.i_crit_edge ], [ @range_pcl818l_h_ai, %if.then.i.if.end26.sink.split.i_crit_edge282 ], [ %switch.load, %switch.lookup ], [ @range_unknown, %if.else.i.if.end26.sink.split.i_crit_edge ]
  %71 = ptrtoint ptr %range_table.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %range_bipolar10.sink.i, ptr %range_table.i, align 4
  br label %pcl818_set_ai_range_table.exit

pcl818_set_ai_range_table.exit:                   ; preds = %if.end26.sink.split.i, %if.then.i.pcl818_set_ai_range_table.exit_crit_edge
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %46, i32 0, i32 18
  %72 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @pcl818_ai_insn_read, ptr %insn_read, align 4
  %73 = ptrtoint ptr %irq21 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %irq21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool96.not = icmp eq i32 %74, 0
  br i1 %tobool96.not, label %pcl818_set_ai_range_table.exit.if.end101_crit_edge, label %if.then97

pcl818_set_ai_range_table.exit.if.end101_crit_edge: ; preds = %pcl818_set_ai_range_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

if.then97:                                        ; preds = %pcl818_set_ai_range_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %75 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %46, ptr %read_subdev, align 4
  %76 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %subdev_flags, align 4
  %or99 = or i32 %77, 32768
  store i32 %or99, ptr %subdev_flags, align 4
  %78 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %56, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %46, i32 0, i32 5
  %80 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %46, i32 0, i32 23
  %81 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %46, i32 0, i32 22
  %82 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @pcl818_ai_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %46, i32 0, i32 25
  %83 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @pcl818_ai_cancel, ptr %cancel, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then97, %pcl818_set_ai_range_table.exit.if.end101_crit_edge
  %84 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %subdevices, align 4
  %arrayidx103 = getelementptr %struct.comedi_subdevice, ptr %85, i32 1
  %n_aochan = getelementptr inbounds %struct.pcl818_board, ptr %1, i32 0, i32 2
  %86 = ptrtoint ptr %n_aochan to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %n_aochan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool104.not = icmp eq i32 %87, 0
  %type157 = getelementptr %struct.comedi_subdevice, ptr %85, i32 1, i32 2
  br i1 %tobool104.not, label %if.else156, label %if.then105

if.then105:                                       ; preds = %if.end101
  %88 = ptrtoint ptr %type157 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2, ptr %type157, align 4
  %subdev_flags107 = getelementptr %struct.comedi_subdevice, ptr %85, i32 1, i32 4
  %89 = ptrtoint ptr %subdev_flags107 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1179648, ptr %subdev_flags107, align 4
  %90 = ptrtoint ptr %n_aochan to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %n_aochan, align 4
  %n_chan109 = getelementptr %struct.comedi_subdevice, ptr %85, i32 1, i32 3
  %92 = ptrtoint ptr %n_chan109 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %n_chan109, align 4
  %maxdata110 = getelementptr %struct.comedi_subdevice, ptr %85, i32 1, i32 13
  %93 = ptrtoint ptr %maxdata110 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 4095, ptr %maxdata110, align 4
  %range_table = getelementptr %struct.comedi_subdevice, ptr %85, i32 1, i32 15
  %94 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @range_unipolar5, ptr %range_table, align 4
  %95 = ptrtoint ptr %has_fifo to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load112 = load i8, ptr %has_fifo, align 4
  %96 = and i8 %bf.load112, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool116.not = icmp eq i8 %96, 0
  br i1 %tobool116.not, label %if.else134, label %if.then117

if.then117:                                       ; preds = %if.then105
  %97 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx7.i, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %98, label %if.then117.if.end127_crit_edge [
    i32 1, label %if.then117.if.then125_crit_edge
    i32 10, label %if.then117.if.then125_crit_edge283
  ]

if.then117.if.then125_crit_edge283:               ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then125

if.then117.if.then125_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then125

if.then117.if.end127_crit_edge:                   ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.then125:                                       ; preds = %if.then117.if.then125_crit_edge, %if.then117.if.then125_crit_edge283
  %100 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @range_unipolar10, ptr %range_table, align 4
  %101 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %.pr276 = load i32, ptr %arrayidx7.i, align 4
  br label %if.end127

if.end127:                                        ; preds = %if.then125, %if.then117.if.end127_crit_edge
  %102 = phi i32 [ %98, %if.then117.if.end127_crit_edge ], [ %.pr276, %if.then125 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %cmp130 = icmp eq i32 %102, 2
  br i1 %cmp130, label %if.end127.if.end151.sink.split_crit_edge, label %if.end127.if.end151_crit_edge

if.end127.if.end151_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

if.end127.if.end151.sink.split_crit_edge:         ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151.sink.split

if.else134:                                       ; preds = %if.then105
  %arrayidx136 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 5
  %103 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx136, align 4
  %105 = zext i32 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %104, label %if.else134.if.end144_crit_edge [
    i32 1, label %if.else134.if.then142_crit_edge
    i32 10, label %if.else134.if.then142_crit_edge284
  ]

if.else134.if.then142_crit_edge284:               ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then142

if.else134.if.then142_crit_edge:                  ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then142

if.else134.if.end144_crit_edge:                   ; preds = %if.else134
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then142:                                       ; preds = %if.else134.if.then142_crit_edge, %if.else134.if.then142_crit_edge284
  %106 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @range_unipolar10, ptr %range_table, align 4
  %107 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr277 = load i32, ptr %arrayidx136, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %if.else134.if.end144_crit_edge
  %108 = phi i32 [ %104, %if.else134.if.end144_crit_edge ], [ %.pr277, %if.then142 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %108)
  %cmp147 = icmp eq i32 %108, 2
  br i1 %cmp147, label %if.end144.if.end151.sink.split_crit_edge, label %if.end144.if.end151_crit_edge

if.end144.if.end151_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151

if.end144.if.end151.sink.split_crit_edge:         ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end151.sink.split

if.end151.sink.split:                             ; preds = %if.end144.if.end151.sink.split_crit_edge, %if.end127.if.end151.sink.split_crit_edge
  %109 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @range_unknown, ptr %range_table, align 4
  br label %if.end151

if.end151:                                        ; preds = %if.end151.sink.split, %if.end144.if.end151_crit_edge, %if.end127.if.end151_crit_edge
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %85, i32 1, i32 19
  %110 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @pcl818_ao_insn_write, ptr %insn_write, align 4
  %call152 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx103) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end151.if.end158_crit_edge, label %if.end151.cleanup_crit_edge

if.end151.cleanup_crit_edge:                      ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end151.if.end158_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end158

if.else156:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %type157 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %type157, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.else156, %if.end151.if.end158_crit_edge
  %112 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %subdevices, align 4
  %type161 = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 2
  %114 = ptrtoint ptr %type161 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 3, ptr %type161, align 4
  %subdev_flags162 = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 4
  %115 = ptrtoint ptr %subdev_flags162 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 65536, ptr %subdev_flags162, align 4
  %n_chan163 = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 3
  %116 = ptrtoint ptr %n_chan163 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 16, ptr %n_chan163, align 4
  %maxdata164 = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 13
  %117 = ptrtoint ptr %maxdata164 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %maxdata164, align 4
  %range_table165 = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 15
  %118 = ptrtoint ptr %range_table165 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @range_unipolar5, ptr %range_table165, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %113, i32 2, i32 20
  %119 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @pcl818_di_insn_bits, ptr %insn_bits, align 4
  %120 = load ptr, ptr %subdevices, align 4
  %type168 = getelementptr %struct.comedi_subdevice, ptr %120, i32 3, i32 2
  %121 = ptrtoint ptr %type168 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 4, ptr %type168, align 4
  %subdev_flags169 = getelementptr %struct.comedi_subdevice, ptr %120, i32 3, i32 4
  %122 = ptrtoint ptr %subdev_flags169 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 131072, ptr %subdev_flags169, align 4
  %n_chan170 = getelementptr %struct.comedi_subdevice, ptr %120, i32 3, i32 3
  %123 = ptrtoint ptr %n_chan170 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 16, ptr %n_chan170, align 4
  %maxdata171 = getelementptr %struct.comedi_subdevice, ptr %120, i32 3, i32 13
  %124 = ptrtoint ptr %maxdata171 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %maxdata171, align 4
  %range_table172 = getelementptr %struct.comedi_subdevice, ptr %120, i32 3, i32 15
  %125 = ptrtoint ptr %range_table172 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @range_unipolar5, ptr %range_table172, align 4
  %insn_bits173 = getelementptr %struct.comedi_subdevice, ptr %120, i32 3, i32 20
  %126 = ptrtoint ptr %insn_bits173 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @pcl818_do_insn_bits, ptr %insn_bits173, align 4
  tail call fastcc void @pcl818_reset(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end158, %if.end151.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end158 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end48.cleanup_crit_edge ], [ %call80, %if.end79.cleanup_crit_edge ], [ %call152, %if.end151.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcl818_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %2 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_subdev, align 4
  %call = tail call i32 @pcl818_ai_cancel(ptr noundef %dev, ptr noundef %3)
  tail call fastcc void @pcl818_reset(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @comedi_legacy_detach(ptr noundef %dev) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl818_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 21
  %2 = ptrtoint ptr %read_subdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_subdev, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async, align 4
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %6 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %ai_cmd_running = getelementptr inbounds %struct.pcl818_private, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load2 = load i8, ptr %ai_cmd_running, align 4
  %8 = and i8 %bf.load2, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %9 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %10, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #6, !srcloc !91
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %12 = and i8 %bf.load2, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 11
  %13 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_arg, align 4
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 11
  %15 = ptrtoint ptr %scans_done to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %scans_done, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 25
  %16 = ptrtoint ptr %cancel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cancel, align 4
  %call = tail call i32 %17(ptr noundef %d, ptr noundef %3) #6
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %tobool14.not = icmp eq ptr %19, null
  br i1 %tobool14.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end13
  %desc2.i = getelementptr inbounds %struct.comedi_isadma, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc2.i, align 4
  %cur_dma.i = getelementptr inbounds %struct.comedi_isadma, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_dma.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_isadma_desc, ptr %21, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %size.i = getelementptr %struct.comedi_isadma_desc, ptr %21, i32 %23, i32 4
  %26 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size.i, align 4
  %subdev_flags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i = and i32 %29, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %shr.i.i = lshr i32 %27, %cond.i.i.i
  %sub.i = sub i32 1, %23
  %30 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub.i, ptr %cur_dma.i, align 4
  %31 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %desc2.i.i = getelementptr inbounds %struct.comedi_isadma, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %desc2.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %desc2.i.i, align 4
  %cur_dma.i.i = getelementptr inbounds %struct.comedi_isadma, ptr %34, i32 0, i32 3
  %37 = ptrtoint ptr %cur_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur_dma.i.i, align 4
  %maxsize.i.i = getelementptr %struct.comedi_isadma_desc, ptr %36, i32 %38, i32 3
  %39 = ptrtoint ptr %maxsize.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %maxsize.i.i, align 4
  %41 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i.i = and i32 %42, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 2
  %shr.i.i.i = lshr i32 %40, %cond.i.i.i.i
  %add.i.i = add nuw i32 %shr.i.i.i, %shr.i.i
  %call4.i.i = tail call i32 @comedi_nsamples_left(ptr noundef %3, i32 noundef %add.i.i) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call4.i.i, i32 %shr.i.i)
  %cmp.i.i = icmp ugt i32 %call4.i.i, %shr.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then15.pcl818_ai_setup_dma.exit.i_crit_edge

if.then15.pcl818_ai_setup_dma.exit.i_crit_edge:   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcl818_ai_setup_dma.exit.i

if.then.i.i:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i = sub i32 %call4.i.i, %shr.i.i
  %43 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i17.i.i = and i32 %44, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i.i)
  %tobool.not.i.i18.i.i = icmp eq i32 %and.i.i17.i.i, 0
  %cond.i.i19.i.i = select i1 %tobool.not.i.i18.i.i, i32 1, i32 2
  %shl.i.i.i = shl i32 %sub.i.i, %cond.i.i19.i.i
  %size.i.i = getelementptr %struct.comedi_isadma_desc, ptr %36, i32 %38, i32 4
  %45 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %shl.i.i.i, ptr %size.i.i, align 4
  br label %pcl818_ai_setup_dma.exit.i

pcl818_ai_setup_dma.exit.i:                       ; preds = %if.then.i.i, %if.then15.pcl818_ai_setup_dma.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %cmp23.not.i = icmp eq i32 %shr.i.i, 0
  br i1 %cmp23.not.i, label %pcl818_ai_setup_dma.exit.i.if.end23_crit_edge, label %for.body.lr.ph.i

pcl818_ai_setup_dma.exit.i.if.end23_crit_edge:    ; preds = %pcl818_ai_setup_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

for.body.lr.ph.i:                                 ; preds = %pcl818_ai_setup_dma.exit.i
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr i16, ptr %25, i32 %i.024.i
  %46 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx5.i, align 2
  %conv.i = zext i16 %47 to i32
  %and.i47 = and i32 %conv.i, 15
  %shr.i = lshr i32 %conv.i, 4
  %48 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %maxdata.i, align 4
  %and6.i = and i32 %shr.i, %49
  %conv7.i = trunc i32 %and6.i to i16
  %call8.i = tail call fastcc zeroext i1 @pcl818_ai_write_sample(ptr noundef %d, ptr noundef %3, i32 noundef %and.i47, i16 noundef zeroext %conv7.i) #6
  %call8.not.i = xor i1 %call8.i, true
  %inc.i = add nuw nsw i32 %i.024.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %shr.i.i)
  %exitcond.not.i = icmp eq i32 %inc.i, %shr.i.i
  %or.cond.i = select i1 %call8.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %for.body.i.if.end23_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.if.end23_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load2)
  %tobool19.not = icmp sgt i8 %bf.load2, -1
  br i1 %tobool19.not, label %if.else21, label %if.then20

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @pcl818_handle_fifo(ptr noundef %d, ptr noundef %3)
  br label %if.end23

if.else21:                                        ; preds = %if.else
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %50 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %iobase.i.i, align 4
  %add.i.i48 = add i32 %51, 8
  %and.i.i = and i32 %add.i.i48, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %52 = inttoptr i32 %add1.i.i to ptr
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %54 = and i8 %53, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i.not.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %55 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.14) #9
  %57 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %async, align 4
  %events.i = getelementptr inbounds %struct.comedi_async, ptr %58, i32 0, i32 16
  %59 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %events.i, align 4
  %or.i = or i32 %60, 16
  store i32 %or.i, ptr %events.i, align 4
  br label %if.end23

if.end.i:                                         ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %iobase.i.i, align 4
  %add.i11.i = add i32 %62, 1
  %and.i12.i = and i32 %add.i11.i, 1048575
  %add1.i13.i = or i32 %and.i12.i, -18874368
  %63 = inttoptr i32 %add1.i13.i to ptr
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %63) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %65 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %iobase.i.i, align 4
  %and6.i.i = and i32 %66, 1048575
  %add7.i.i = or i32 %and6.i.i, -18874368
  %67 = inttoptr i32 %add7.i.i to ptr
  %68 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %67) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %conv11.i.i = zext i8 %68 to i32
  %and12.i.i = and i32 %conv11.i.i, 15
  %conv.i.i = zext i8 %64 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv11.i.i
  %shr.i.i49 = lshr i32 %or.i.i, 4
  %maxdata.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 13
  %69 = ptrtoint ptr %maxdata.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %maxdata.i.i, align 4
  %and13.i.i = and i32 %shr.i.i49, %70
  %conv.i50 = trunc i32 %and13.i.i to i16
  %call2.i = tail call fastcc zeroext i1 @pcl818_ai_write_sample(ptr noundef %d, ptr noundef %3, i32 noundef %and12.i.i, i16 noundef zeroext %conv.i50) #6
  br label %if.end23

if.end23:                                         ; preds = %if.end.i, %do.end.i, %if.then20, %for.body.i.if.end23_crit_edge, %pcl818_ai_setup_dma.exit.i.if.end23_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %iobase.i51 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %71 = ptrtoint ptr %iobase.i51 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %iobase.i51, align 4
  %add.i52 = add i32 %72, 8
  %and.i53 = and i32 %add.i52, 1048575
  %add1.i54 = or i32 %and.i53, -18874368
  %73 = inttoptr i32 %add1.i54 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 0) #6, !srcloc !91
  %call24 = tail call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then11, %if.then
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl818_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %shr = lshr i32 %1, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add = add i32 %3, 9
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %4 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 1) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %conv.i = trunc i32 %1 to i8
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add.i = add i32 %6, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %conv4.i = trunc i32 %shr to i8
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add6.i = add i32 %9, 1
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %10 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv4.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %and = shl i32 %1, 4
  %or.i = or i32 %and, %1
  %conv.i27 = trunc i32 %or.i to i8
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add.i29 = add i32 %12, 2
  %and.i30 = and i32 %add.i29, 1048575
  %add1.i31 = or i32 %and.i30, -18874368
  %13 = inttoptr i32 %add1.i31 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv.i27) #6, !srcloc !91
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp50.not = icmp eq i32 %15, 0
  br i1 %cmp50.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add.i33 = add i32 %17, 8
  %and.i34 = and i32 %add.i33, 1048575
  %add1.i35 = or i32 %and.i34, -18874368
  %18 = inttoptr i32 %add1.i35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase, align 4
  %and.i37 = and i32 %20, 1048575
  %add1.i38 = or i32 %and.i37, -18874368
  %21 = inttoptr i32 %add1.i38 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 0) #6, !srcloc !91
  %call5 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @pcl818_ai_eoc, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end:                                           ; preds = %for.body
  %22 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase, align 4
  %add.i40 = add i32 %23, 1
  %and.i41 = and i32 %add.i40, 1048575
  %add1.i42 = or i32 %and.i41, -18874368
  %24 = inttoptr i32 %add1.i42 to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase, align 4
  %and6.i = and i32 %27, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %28 = inttoptr i32 %add7.i to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  %conv11.i = zext i8 %29 to i32
  %conv.i43 = zext i8 %25 to i32
  %shl.i44 = shl nuw nsw i32 %conv.i43, 8
  %or.i45 = or i32 %shl.i44, %conv11.i
  %shr.i = lshr i32 %or.i45, 4
  %30 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maxdata.i, align 4
  %and13.i = and i32 %shr.i, %31
  %arrayidx = getelementptr i32, ptr %data, i32 %i.051
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and13.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.051, 1
  %33 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %34
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.1 = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call5, %for.body.for.end_crit_edge ], [ 0, %if.end.for.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase, align 4
  %add.i47 = add i32 %36, 8
  %and.i48 = and i32 %add.i47, 1048575
  %add1.i49 = or i32 %and.i48, -18874368
  %37 = inttoptr i32 %add1.i49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 0) #6, !srcloc !91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool7.not = icmp eq i32 %ret.1, 0
  br i1 %tobool7.not, label %cond.false, label %for.end.cond.end_crit_edge

for.end.cond.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.end.cond.end_crit_edge
  %cond = phi i32 [ %39, %cond.false ], [ %ret.1, %for.end.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_src, align 4
  %and.i = and i32 %3, 2
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
  %and.i109 = and i32 %5, 4
  store i32 %and.i109, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i109)
  %cmp.i110 = icmp ne i32 %and.i109, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i109, i32 %5)
  %cmp1.not.i111 = icmp eq i32 %and.i109, %5
  %or.cond.i112 = and i1 %cmp.i110, %cmp1.not.i111
  %6 = select i1 %or.cond.i, i1 %or.cond.i112, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %convert_src, align 4
  %and.i114 = and i32 %8, 80
  store i32 %and.i114, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i114)
  %cmp.i115 = icmp ne i32 %and.i114, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i114, i32 %8)
  %cmp1.not.i116 = icmp eq i32 %and.i114, %8
  %or.cond.i117 = and i1 %cmp.i115, %cmp1.not.i116
  %9 = select i1 %6, i1 %or.cond.i117, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %10 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_end_src, align 4
  %and.i119 = and i32 %11, 32
  store i32 %and.i119, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i119)
  %cmp.i120 = icmp ne i32 %and.i119, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i119, i32 %11)
  %cmp1.not.i121 = icmp eq i32 %and.i119, %11
  %or.cond.i122 = and i1 %cmp.i120, %cmp1.not.i121
  %12 = select i1 %9, i1 %or.cond.i122, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %13 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_src, align 4
  %and.i124 = and i32 %14, 33
  store i32 %and.i124, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i124)
  %cmp.i125 = icmp ne i32 %and.i124, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i124, i32 %14)
  %cmp1.not.i126 = icmp eq i32 %and.i124, %14
  %or.cond.i127 = and i1 %cmp.i125, %cmp1.not.i126
  %15 = select i1 %12, i1 %or.cond.i127, i1 false
  br i1 %15, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = tail call i32 @llvm.ctpop.i32(i32 %8) #6, !range !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i = icmp ult i32 %16, 2
  %17 = tail call i32 @llvm.ctpop.i32(i32 %14) #6, !range !100
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i129 = icmp ult i32 %17, 2
  %18 = select i1 %cmp.not.i, i1 %cmp.not.i129, i1 false
  br i1 %18, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.not.i131 = icmp eq i32 %20, 0
  br i1 %cmp.not.i131, label %if.end17.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end17.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i132 = phi i32 [ -22, %if.then.i ], [ 0, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %22 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not.i133 = icmp eq i32 %23, 0
  br i1 %cmp.not.i133, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit136_crit_edge, label %if.then.i134

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit136_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit136

if.then.i134:                                     ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit136

comedi_check_trigger_arg_is.exit136:              ; preds = %if.then.i134, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit136_crit_edge
  %retval.0.i135 = phi i32 [ -22, %if.then.i134 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit136_crit_edge ]
  %or21 = or i32 %retval.0.i135, %retval.0.i132
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp = icmp eq i32 %8, 16
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  br i1 %cmp, label %if.then23, label %if.else

if.then23:                                        ; preds = %comedi_check_trigger_arg_is.exit136
  %ns_min = getelementptr inbounds %struct.pcl818_board, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %ns_min to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ns_min, align 4
  %27 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp.i137 = icmp ult i32 %28, %26
  br i1 %cmp.i137, label %if.then23.if.end29.sink.split_crit_edge, label %if.then23.if.end29_crit_edge

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then23.if.end29.sink.split_crit_edge:          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit136
  %29 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i140 = icmp eq i32 %30, 0
  br i1 %cmp.not.i140, label %if.else.if.end29_crit_edge, label %if.else.if.end29.sink.split_crit_edge

if.else.if.end29.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.sink.split

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end29.sink.split:                              ; preds = %if.else.if.end29.sink.split_crit_edge, %if.then23.if.end29.sink.split_crit_edge
  %.sink = phi i32 [ %26, %if.then23.if.end29.sink.split_crit_edge ], [ 0, %if.else.if.end29.sink.split_crit_edge ]
  %31 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink, ptr %convert_arg, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.else.if.end29_crit_edge, %if.then23.if.end29_crit_edge
  %call24.pn = phi i32 [ 0, %if.then23.if.end29_crit_edge ], [ 0, %if.else.if.end29_crit_edge ], [ -22, %if.end29.sink.split ]
  %err.0 = or i32 %or21, %call24.pn
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %32 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chanlist_len, align 4
  %34 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %33)
  %cmp.not.i144 = icmp eq i32 %35, %33
  br i1 %cmp.not.i144, label %if.end29.comedi_check_trigger_arg_is.exit147_crit_edge, label %if.then.i145

if.end29.comedi_check_trigger_arg_is.exit147_crit_edge: ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit147

if.then.i145:                                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit147

comedi_check_trigger_arg_is.exit147:              ; preds = %if.then.i145, %if.end29.comedi_check_trigger_arg_is.exit147_crit_edge
  %retval.0.i146 = phi i32 [ -22, %if.then.i145 ], [ 0, %if.end29.comedi_check_trigger_arg_is.exit147_crit_edge ]
  %or31 = or i32 %err.0, %retval.0.i146
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp33 = icmp eq i32 %14, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %37 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i148 = icmp eq i32 %38, 0
  br i1 %cmp33, label %if.then34, label %if.else37

if.then34:                                        ; preds = %comedi_check_trigger_arg_is.exit147
  br i1 %cmp.i148, label %if.then34.if.end41.sink.split_crit_edge, label %if.then34.if.end41_crit_edge

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.then34.if.end41.sink.split_crit_edge:          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.sink.split

if.else37:                                        ; preds = %comedi_check_trigger_arg_is.exit147
  br i1 %cmp.i148, label %if.else37.if.end41_crit_edge, label %if.else37.if.end41.sink.split_crit_edge

if.else37.if.end41.sink.split_crit_edge:          ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41.sink.split

if.else37.if.end41_crit_edge:                     ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

if.end41.sink.split:                              ; preds = %if.else37.if.end41.sink.split_crit_edge, %if.then34.if.end41.sink.split_crit_edge
  %.sink162 = phi i32 [ 1, %if.then34.if.end41.sink.split_crit_edge ], [ 0, %if.else37.if.end41.sink.split_crit_edge ]
  %39 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink162, ptr %stop_arg, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.else37.if.end41_crit_edge, %if.then34.if.end41_crit_edge
  %call35.pn = phi i32 [ 0, %if.then34.if.end41_crit_edge ], [ 0, %if.else37.if.end41_crit_edge ], [ -22, %if.end41.sink.split ]
  %err.1 = or i32 %or31, %call35.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool42.not = icmp eq i32 %err.1, 0
  br i1 %tobool42.not, label %if.end44, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.end41
  br i1 %cmp, label %if.then47, label %if.end44.if.end55_crit_edge

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then47:                                        ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
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
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %44, ptr noundef nonnull %arg, i32 noundef %46) #6
  %47 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arg, align 4
  %49 = ptrtoint ptr %convert_arg48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %convert_arg48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %48)
  %cmp.not.i156 = icmp eq i32 %50, %48
  br i1 %cmp.not.i156, label %comedi_check_trigger_arg_is.exit159.thread, label %comedi_check_trigger_arg_is.exit159

comedi_check_trigger_arg_is.exit159.thread:       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  br label %if.end55

comedi_check_trigger_arg_is.exit159:              ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %convert_arg48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %convert_arg48, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  br label %cleanup

if.end55:                                         ; preds = %comedi_check_trigger_arg_is.exit159.thread, %if.end44.if.end55_crit_edge
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %52 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chanlist, align 4
  %tobool56.not = icmp eq ptr %53, null
  br i1 %tobool56.not, label %if.end55.if.end64_crit_edge, label %if.then57

if.end55.if.end64_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then57:                                        ; preds = %if.end55
  %54 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %chanlist_len, align 4
  %call60 = call fastcc i32 @check_channel_list(ptr noundef %dev, ptr noundef %s, ptr noundef nonnull %53, i32 noundef %55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then57.cleanup_crit_edge, label %if.then57.if.end64_crit_edge

if.then57.if.end64_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end64:                                         ; preds = %if.then57.if.end64_crit_edge, %if.end55.if.end64_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %if.then57.cleanup_crit_edge, %comedi_check_trigger_arg_is.exit159, %if.end41.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end64 ], [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end41.cleanup_crit_edge ], [ 4, %comedi_check_trigger_arg_is.exit159 ], [ 5, %if.then57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl818_ai_cmd(ptr nocapture noundef readonly %dev, ptr noundef %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %ai_cmd_running = getelementptr inbounds %struct.pcl818_private, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %ai_cmd_running, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  %8 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chanlist, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %10 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chanlist_len, align 4
  %call = tail call fastcc i32 @check_channel_list(ptr noundef %dev, ptr noundef %s, ptr noundef %9, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %for.body.lr.ph.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %12 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chanlist, align 4
  %14 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %private, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 4
  %act_chanlist_len.i = getelementptr inbounds %struct.pcl818_private, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %act_chanlist_len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call, ptr %act_chanlist_len.i, align 4
  %act_chanlist_pos.i = getelementptr inbounds %struct.pcl818_private, ptr %15, i32 0, i32 4
  %19 = ptrtoint ptr %act_chanlist_pos.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %act_chanlist_pos.i, align 4
  %iobase.i.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx1.i = getelementptr i32, ptr %13, i32 %i.025.i
  %20 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx1.i, align 4
  %and2.i = and i32 %21, 65535
  %shr.i = lshr i32 %21, 16
  %arrayidx5.i = getelementptr %struct.pcl818_private, ptr %15, i32 0, i32 2, i32 %i.025.i
  %22 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %and2.i, ptr %arrayidx5.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %conv.i.i = trunc i32 %21 to i8
  %23 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase.i.i, align 4
  %add.i.i = add i32 %24, 2
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %25 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %conv.i.i) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %conv4.i.i = trunc i32 %shr.i to i8
  %26 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase.i.i, align 4
  %add6.i.i = add i32 %27, 1
  %and7.i.i = and i32 %add6.i.i, 1048575
  %add8.i.i = or i32 %and7.i.i, -18874368
  %28 = inttoptr i32 %add8.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv4.i.i) #6, !srcloc !91
  %inc.i = add nuw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call
  br i1 %exitcond.not.i, label %pcl818_ai_setup_chanlist.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

pcl818_ai_setup_chanlist.exit:                    ; preds = %for.body.i
  %phi.bo.le.i = shl nuw nsw i32 %and2.i, 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %or.i.i = or i32 %phi.bo.le.i, %17
  %conv.i19.i = trunc i32 %or.i.i to i8
  %30 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iobase.i.i, align 4
  %add.i21.i = add i32 %31, 2
  %and.i22.i = and i32 %add.i21.i, 1048575
  %add1.i23.i = or i32 %and.i22.i, -18874368
  %32 = inttoptr i32 %add1.i23.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 %conv.i19.i) #6, !srcloc !91
  %33 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load7 = load i8, ptr %ai_cmd_running, align 4
  %bf.set = and i8 %bf.load7, -97
  %bf.clear10 = or i8 %bf.set, 64
  store i8 %bf.clear10, ptr %ai_cmd_running, align 4
  %act_chanlist_pos = getelementptr inbounds %struct.pcl818_private, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %act_chanlist_pos to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %act_chanlist_pos, align 4
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 6
  %35 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %36)
  %cmp12 = icmp eq i32 %36, 16
  %. = select i1 %cmp12, i32 3, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %iobase.i.i, align 4
  %add = add i32 %38, 10
  %and = and i32 %add, 1048575
  %add16 = or i32 %and, -18874368
  %39 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %39, i8 0) #6, !srcloc !91
  %tobool18.not = icmp eq ptr %3, null
  br i1 %tobool18.not, label %if.else23, label %if.then19

if.then19:                                        ; preds = %pcl818_ai_setup_chanlist.exit
  %cur_dma = getelementptr inbounds %struct.comedi_isadma, ptr %3, i32 0, i32 3
  %40 = ptrtoint ptr %cur_dma to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %cur_dma, align 4
  %41 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %private, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %desc2.i = getelementptr inbounds %struct.comedi_isadma, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc2.i, align 4
  %cur_dma.i = getelementptr inbounds %struct.comedi_isadma, ptr %44, i32 0, i32 3
  %47 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cur_dma.i, align 4
  %maxsize.i = getelementptr %struct.comedi_isadma_desc, ptr %46, i32 %48, i32 3
  %49 = ptrtoint ptr %maxsize.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %maxsize.i, align 4
  %subdev_flags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %51 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i = and i32 %52, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %shr.i.i = lshr i32 %50, %cond.i.i.i
  %call4.i = tail call i32 @comedi_nsamples_left(ptr noundef %s, i32 noundef %shr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i.not = icmp eq i32 %call4.i, 0
  br i1 %cmp.i.not, label %if.then19.pcl818_ai_setup_dma.exit_crit_edge, label %if.then.i

if.then19.pcl818_ai_setup_dma.exit_crit_edge:     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %pcl818_ai_setup_dma.exit

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i17.i = and i32 %54, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i17.i)
  %tobool.not.i.i18.i = icmp eq i32 %and.i.i17.i, 0
  %cond.i.i19.i = select i1 %tobool.not.i.i18.i, i32 1, i32 2
  %shl.i.i = shl i32 %call4.i, %cond.i.i19.i
  %size.i = getelementptr %struct.comedi_isadma_desc, ptr %46, i32 %48, i32 4
  %55 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %shl.i.i, ptr %size.i, align 4
  br label %pcl818_ai_setup_dma.exit

pcl818_ai_setup_dma.exit:                         ; preds = %if.then.i, %if.then19.pcl818_ai_setup_dma.exit_crit_edge
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %56 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq, align 4
  %shl = shl i32 %57, 4
  %or21 = or i32 %., %shl
  %or22 = or i32 %or21, 132
  br label %do.body44

if.else23:                                        ; preds = %pcl818_ai_setup_chanlist.exit
  %58 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load24 = load i8, ptr %ai_cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load24)
  %tobool27.not = icmp sgt i8 %bf.load24, -1
  br i1 %tobool27.not, label %if.else37, label %do.body29

do.body29:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iobase.i.i, align 4
  %add33 = add i32 %60, 6
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %61 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 1) #6, !srcloc !91
  br label %do.body44

if.else37:                                        ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #8
  %irq38 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %62 = ptrtoint ptr %irq38 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq38, align 4
  %shl39 = shl i32 %63, 4
  %or40 = or i32 %., %shl39
  %or41 = or i32 %or40, 128
  br label %do.body44

do.body44:                                        ; preds = %if.else37, %do.body29, %pcl818_ai_setup_dma.exit
  %ctrl.1 = phi i32 [ %or22, %pcl818_ai_setup_dma.exit ], [ %., %do.body29 ], [ %or41, %if.else37 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %ctrl.1 to i8
  %64 = ptrtoint ptr %iobase.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iobase.i.i, align 4
  %add48 = add i32 %65, 9
  %and49 = and i32 %add48, 1048575
  %add50 = or i32 %and49, -18874368
  %66 = inttoptr i32 %add50 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 %conv) #6, !srcloc !91
  %67 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %68)
  %cmp53 = icmp eq i32 %68, 16
  br i1 %cmp53, label %if.then55, label %do.body44.cleanup_crit_edge

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then55:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #8
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %69 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_update_divisors(ptr noundef %70) #6
  %71 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %72, i32 noundef 1, i32 noundef 2, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %do.body44.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then55 ], [ 0, %do.body44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl818_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %ai_cmd_running = getelementptr inbounds %struct.pcl818_private, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %ai_cmd_running, align 4
  %5 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.do.body_crit_edge, label %if.then4

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then4:                                         ; preds = %if.end
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 10
  %8 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stop_src, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %9, label %if.then4.do.body_crit_edge [
    i32 1, label %if.then9
    i32 32, label %land.lhs.true
  ]

if.then4.do.body_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true:                                    ; preds = %if.then4
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 11
  %11 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 11
  %13 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp8 = icmp ult i32 %12, %14
  %15 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  %or.cond = select i1 %cmp8, i1 %tobool14.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.then15_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

land.lhs.true.if.then15_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then9:                                         ; preds = %if.then4
  %.old = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.old)
  %tobool14.not.old = icmp eq i8 %.old, 0
  br i1 %tobool14.not.old, label %if.then9.if.then15_crit_edge, label %if.then9.do.body_crit_edge

if.then9.do.body_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then9.if.then15_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.then15:                                        ; preds = %if.then9.if.then15_crit_edge, %land.lhs.true.if.then15_crit_edge
  %bf.set = or i8 %bf.load, 32
  br label %cleanup.sink.split

do.body:                                          ; preds = %if.then9.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %if.then4.do.body_crit_edge, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add = add i32 %17, 9
  %and = and i32 %add, 1048575
  %add22 = or i32 %and, -18874368
  %18 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 0) #6, !srcloc !91
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %19 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pacer, align 4
  tail call void @comedi_8254_pacer_enable(ptr noundef %20, i32 noundef 1, i32 noundef 2, i1 noundef zeroext false) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase, align 4
  %add.i = add i32 %22, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %23 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 0) #6, !srcloc !91
  %24 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load24 = load i8, ptr %ai_cmd_running, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load24)
  %tobool27.not = icmp sgt i8 %bf.load24, -1
  br i1 %tobool27.not, label %do.body.if.end53_crit_edge, label %do.body29

do.body.if.end53_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.body29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase, align 4
  %add33 = add i32 %26, 20
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %27 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iobase, align 4
  %add41 = add i32 %29, 25
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %30 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %iobase, align 4
  %add49 = add i32 %32, 6
  %and50 = and i32 %add49, 1048575
  %add51 = or i32 %and50, -18874368
  %33 = inttoptr i32 %add51 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 0) #6, !srcloc !91
  br label %if.end53

if.end53:                                         ; preds = %do.body29, %do.body.if.end53_crit_edge
  %34 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load55 = load i8, ptr %ai_cmd_running, align 4
  %bf.clear60 = and i8 %bf.load55, -97
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end53, %if.then15
  %bf.clear60.sink = phi i8 [ %bf.clear60, %if.end53 ], [ %bf.set, %if.then15 ]
  %35 = ptrtoint ptr %ai_cmd_running to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %bf.clear60.sink, ptr %ai_cmd_running, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl818_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %.tr = trunc i32 %9 to i8
  %conv = shl i8 %.tr, 4
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add3 = add i32 %add, %11
  %and4 = and i32 %add3, 1048575
  %add5 = or i32 %and4, -18874368
  %12 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %and9 = lshr i32 %9, 4
  %conv10 = trunc i32 %and9 to i8
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %add14 = add i32 %add13, %14
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %15 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv10) #6, !srcloc !91
  %inc = add nuw i32 %i.033, 1
  %16 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %5, %entry.for.end_crit_edge ], [ %9, %for.body.for.end_crit_edge ]
  %18 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %readback, align 4
  %arrayidx19 = getelementptr i32, ptr %19, i32 %and
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %val.0.lcssa, ptr %arrayidx19, align 4
  %21 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n, align 4
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl818_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add5 = add i32 %5, 11
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %6 = inttoptr i32 %add7 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
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
define internal i32 @pcl818_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
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
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %4 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %shr = lshr i32 %6, 8
  %conv7 = trunc i32 %shr to i8
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add9 = add i32 %8, 11
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %9 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv7) #6, !srcloc !91
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcl818_reset(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %has_fifo = getelementptr inbounds %struct.pcl818_board, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %has_fifo to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %has_fifo, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.body18_crit_edge, label %do.body

entry.do.body18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body18

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  %add = add i32 %5, 20
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add6 = add i32 %8, 25
  %and7 = and i32 %add6, 1048575
  %add8 = or i32 %and7, -18874368
  %9 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add14 = add i32 %11, 6
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %12 = inttoptr i32 %add16 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 0) #6, !srcloc !91
  br label %do.body18

do.body18:                                        ; preds = %do.body, %entry.do.body18_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %iobase21 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %13 = ptrtoint ptr %iobase21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase21, align 4
  %add22 = add i32 %14, 9
  %and23 = and i32 %add22, 1048575
  %add24 = or i32 %and23, -18874368
  %15 = inttoptr i32 %add24 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %iobase21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase21, align 4
  %add.i = add i32 %17, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %18 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %iobase21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase21, align 4
  %add.i85 = add i32 %20, 2
  %and.i86 = and i32 %add.i85, 1048575
  %add1.i87 = or i32 %and.i86, -18874368
  %21 = inttoptr i32 %add1.i87 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %iobase21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase21, align 4
  %add6.i = add i32 %23, 1
  %and7.i = and i32 %add6.i, 1048575
  %add8.i = or i32 %and7.i, -18874368
  %24 = inttoptr i32 %add8.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %iobase21 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase21, align 4
  %add30 = add i32 %26, 10
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %27 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 0) #6, !srcloc !91
  %n_aochan = getelementptr inbounds %struct.pcl818_board, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %n_aochan to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_aochan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp88.not = icmp eq i32 %29, 0
  br i1 %cmp88.not, label %do.body18.do.body53_crit_edge, label %do.body18.do.body34_crit_edge

do.body18.do.body34_crit_edge:                    ; preds = %do.body18
  br label %do.body34

do.body18.do.body53_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body53

do.body34:                                        ; preds = %do.body34.do.body34_crit_edge, %do.body18.do.body34_crit_edge
  %chan.089 = phi i32 [ %inc, %do.body34.do.body34_crit_edge ], [ 0, %do.body18.do.body34_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %iobase21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iobase21, align 4
  %mul = shl i32 %chan.089, 1
  %add38 = add i32 %mul, 4
  %add39 = add i32 %add38, %31
  %and40 = and i32 %add39, 1048575
  %add41 = or i32 %and40, -18874368
  %32 = inttoptr i32 %add41 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %32, i8 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %iobase21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase21, align 4
  %add48 = add i32 %mul, 5
  %add49 = add i32 %add48, %34
  %and50 = and i32 %add49, 1048575
  %add51 = or i32 %and50, -18874368
  %35 = inttoptr i32 %add51 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 0) #6, !srcloc !91
  %inc = add nuw i32 %chan.089, 1
  %36 = ptrtoint ptr %n_aochan to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n_aochan, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %do.body34.do.body34_crit_edge, label %do.body34.do.body53_crit_edge

do.body34.do.body53_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body53

do.body34.do.body34_crit_edge:                    ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

do.body53:                                        ; preds = %do.body34.do.body53_crit_edge, %do.body18.do.body53_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %iobase21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iobase21, align 4
  %add57 = add i32 %39, 11
  %and58 = and i32 %add57, 1048575
  %add59 = or i32 %and58, -18874368
  %40 = inttoptr i32 %add59 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 0) #6, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %iobase21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %iobase21, align 4
  %add65 = add i32 %42, 3
  %and66 = and i32 %add65, 1048575
  %add67 = or i32 %and66, -18874368
  %43 = inttoptr i32 %add67 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 0) #6, !srcloc !91
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcl818_handle_fifo(ptr nocapture noundef readonly %dev, ptr noundef %s) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 25
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  %conv = zext i8 %3 to i32
  %and3 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %and4 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end14, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end14:                                         ; preds = %if.end
  %and15 = shl nuw nsw i32 %conv, 8
  %4 = and i32 %and15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp39.not = icmp eq i32 %4, 0
  br i1 %cmp39.not, label %if.end14.cleanup_crit_edge, label %for.body.lr.ph

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end14
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iobase, align 4
  %add.i = add i32 %6, 23
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %7 = inttoptr i32 %add1.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %conv.i = zext i8 %8 to i32
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add5.i = add i32 %10, 24
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %11 = inttoptr i32 %add7.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  %and12.i = and i32 %conv.i, 15
  %conv11.i = zext i8 %12 to i32
  %shl.i = shl nuw nsw i32 %conv11.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %shr.i = lshr i32 %or.i, 4
  %13 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %maxdata.i, align 4
  %and13.i = and i32 %shr.i, %14
  %conv21 = trunc i32 %and13.i to i16
  %call22 = tail call fastcc zeroext i1 @pcl818_ai_write_sample(ptr noundef %dev, ptr noundef %s, i32 noundef %and12.i, i16 noundef zeroext %conv21)
  %call22.not = xor i1 %call22, true
  %inc = add nuw nsw i32 %i.040, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %4)
  %exitcond.not = icmp eq i32 %inc, %4
  %or.cond = select i1 %call22.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.7, %entry.cleanup.sink.split_crit_edge ], [ @.str.12, %if.end.cleanup.sink.split_crit_edge ]
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %15 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull %.str.7.sink) #9
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %17 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %async, align 4
  %events = getelementptr inbounds %struct.comedi_async, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %events, align 4
  %or13 = or i32 %20, 16
  store i32 %or13, ptr %events, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.body.cleanup_crit_edge, %if.end14.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @pcl818_ai_write_sample(ptr nocapture noundef readonly %dev, ptr noundef %s, i32 noundef %chan, i16 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %val.addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val.addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %val, ptr %val.addr, align 2
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %1 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %3 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %async, align 4
  %act_chanlist_pos = getelementptr inbounds %struct.pcl818_private, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %act_chanlist_pos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %act_chanlist_pos, align 4
  %arrayidx = getelementptr %struct.pcl818_private, ptr %2, i32 0, i32 2, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %chan)
  %cmp.not = icmp eq i32 %8, %chan
  br i1 %cmp.not, label %if.end10, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcl818_ai_write_sample.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pcl818_ai_write_sample, %do.end)) #6
          to label %if.then5 [label %do.end], !srcloc !126

if.then5:                                         ; preds = %do.body
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %9 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %class_dev, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %tobool6.not = icmp eq ptr %12, null
  br i1 %tobool6.not, label %cond.false, label %if.then5.cond.end_crit_edge

if.then5.cond.end_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %usefifo = getelementptr inbounds %struct.pcl818_private, ptr %2, i32 0, i32 5
  %13 = ptrtoint ptr %usefifo to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %usefifo, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  %cond = select i1 %tobool7.not, ptr @.str.6, ptr @.str.5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then5.cond.end_crit_edge
  %cond8 = phi ptr [ %cond, %cond.false ], [ @.str.4, %if.then5.cond.end_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcl818_ai_write_sample.__UNIQUE_ID_ddebug234, ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond8, i32 noundef %chan, i32 noundef %8) #6
  br label %do.end

do.end:                                           ; preds = %cond.end, %do.body
  %14 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %async, align 4
  br label %cleanup.sink.split

if.end10:                                         ; preds = %entry
  %call11 = call i32 @comedi_buf_write_samples(ptr noundef %s, ptr noundef nonnull %val.addr, i32 noundef 1) #6
  %16 = ptrtoint ptr %act_chanlist_pos to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %act_chanlist_pos, align 4
  %inc = add i32 %17, 1
  %act_chanlist_len = getelementptr inbounds %struct.pcl818_private, ptr %2, i32 0, i32 3
  %18 = ptrtoint ptr %act_chanlist_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %act_chanlist_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %19)
  %cmp14.not = icmp ult i32 %inc, %19
  %spec.store.select = select i1 %cmp14.not, i32 %inc, i32 0
  %20 = ptrtoint ptr %act_chanlist_pos to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %spec.store.select, ptr %act_chanlist_pos, align 4
  %stop_src = getelementptr inbounds %struct.comedi_async, ptr %4, i32 0, i32 17, i32 10
  %21 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %22)
  %cmp18 = icmp eq i32 %22, 32
  br i1 %cmp18, label %land.lhs.true, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end10
  %23 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %async, align 4
  %scans_done = getelementptr inbounds %struct.comedi_async, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %scans_done to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scans_done, align 4
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %4, i32 0, i32 17, i32 11
  %27 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp20.not = icmp ult i32 %26, %28
  br i1 %cmp20.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true.cleanup.sink.split_crit_edge, %do.end
  %.sink = phi ptr [ %15, %do.end ], [ %24, %land.lhs.true.cleanup.sink.split_crit_edge ]
  %.sink44 = phi i32 [ 16, %do.end ], [ 2, %land.lhs.true.cleanup.sink.split_crit_edge ]
  %events = getelementptr inbounds %struct.comedi_async, ptr %.sink, i32 0, i32 16
  %29 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %events, align 4
  %or24 = or i32 %30, %.sink44
  store i32 %or24, ptr %events, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %if.end10.cleanup_crit_edge ], [ false, %cleanup.sink.split ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_nsamples_left(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcl818_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 8
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  %4 = and i8 %3, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %. = select i1 %tobool.not, i32 -16, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_cascade_ns_to_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_channel_list(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %chanlist, i32 noundef %n_chan) unnamed_addr #2 align 64 {
entry:
  %chansegment = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %chansegment) #6
  %0 = getelementptr inbounds i8, ptr %chansegment, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 60)
  %2 = zext i32 %n_chan to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %n_chan, label %for.body.lr.ph [
    i32 0, label %do.end
    i32 1, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %3 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.21) #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %5 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chanlist, align 4
  %7 = ptrtoint ptr %chansegment to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %chansegment, align 4
  %n_chan11 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end29.for.body_crit_edge, %for.body.lr.ph
  %i.0135 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %if.end29.for.body_crit_edge ]
  %arrayidx6 = getelementptr i32, ptr %chanlist, i32 %i.0135
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %9)
  %cmp7 = icmp eq i32 %6, %9
  br i1 %cmp7, label %for.body.for.end_crit_edge, label %if.end9

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end9:                                          ; preds = %for.body
  %sub = add i32 %i.0135, -1
  %arrayidx10 = getelementptr [16 x i32], ptr %chansegment, i32 0, i32 %sub
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx10, align 4
  %and = and i32 %11, 65535
  %add = add nuw nsw i32 %and, 1
  %12 = ptrtoint ptr %n_chan11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_chan11, align 4
  %rem = urem i32 %add, %13
  %and13 = and i32 %9, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %and13)
  %cmp14.not = icmp eq i32 %rem, %and13
  br i1 %cmp14.not, label %if.end29, label %do.body16

do.body16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_channel_list.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@check_channel_list, %cleanup)) #6
          to label %if.then20 [label %cleanup], !srcloc !126

if.then20:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx6.le = getelementptr i32, ptr %chanlist, i32 %i.0135
  %class_dev21 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %class_dev21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %class_dev21, align 4
  %16 = ptrtoint ptr %arrayidx6.le to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.le, align 4
  %and23 = and i32 %17, 65535
  %18 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chanlist, align 4
  %and25 = and i32 %19, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_channel_list.__UNIQUE_ID_ddebug235, ptr noundef %15, ptr noundef nonnull @.str.23, i32 noundef %i.0135, i32 noundef %and23, i32 noundef %rem, i32 noundef %and25) #6
  br label %cleanup

if.end29:                                         ; preds = %if.end9
  %arrayidx31 = getelementptr [16 x i32], ptr %chansegment, i32 0, i32 %i.0135
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %9, ptr %arrayidx31, align 4
  %inc = add nuw i32 %i.0135, 1
  %exitcond.not = icmp eq i32 %inc, %n_chan
  br i1 %exitcond.not, label %if.end29.for.end_crit_edge, label %if.end29.for.body_crit_edge

if.end29.for.body_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end29.for.end_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end29.for.end_crit_edge, %for.body.for.end_crit_edge
  %seglen.0.lcssa = phi i32 [ %n_chan, %if.end29.for.end_crit_edge ], [ %i.0135, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_chan)
  %cmp34137.not = icmp eq i32 %n_chan, 0
  br i1 %cmp34137.not, label %for.end.cleanup_crit_edge, label %for.end.for.body35_crit_edge

for.end.for.body35_crit_edge:                     ; preds = %for.end
  br label %for.body35

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body35:                                       ; preds = %for.inc79.for.body35_crit_edge, %for.end.for.body35_crit_edge
  %i.1138 = phi i32 [ %inc80, %for.inc79.for.body35_crit_edge ], [ 0, %for.end.for.body35_crit_edge ]
  %arrayidx36 = getelementptr i32, ptr %chanlist, i32 %i.1138
  %21 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx36, align 4
  %rem37 = urem i32 %i.1138, %seglen.0.lcssa
  %arrayidx38 = getelementptr [16 x i32], ptr %chansegment, i32 0, i32 %rem37
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp39.not = icmp eq i32 %22, %24
  br i1 %cmp39.not, label %for.inc79, label %do.body41

do.body41:                                        ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_channel_list.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@check_channel_list, %cleanup)) #6
          to label %if.then55 [label %cleanup], !srcloc !126

if.then55:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev56 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %25 = ptrtoint ptr %class_dev56 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %class_dev56, align 4
  %arrayidx57 = getelementptr [16 x i32], ptr %chansegment, i32 0, i32 %i.1138
  %27 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx57, align 4
  %and58 = and i32 %28, 65535
  %shr = lshr i32 %28, 16
  %and60 = and i32 %shr, 255
  %shr62 = lshr i32 %28, 24
  %and63 = and i32 %shr62, 3
  %arrayidx65 = getelementptr i32, ptr %chanlist, i32 %rem37
  %29 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx65, align 4
  %and66 = and i32 %30, 65535
  %shr69 = lshr i32 %30, 16
  %and70 = and i32 %shr69, 255
  %shr73 = lshr i32 %24, 24
  %and74 = and i32 %shr73, 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_channel_list.__UNIQUE_ID_ddebug236, ptr noundef %26, ptr noundef nonnull @.str.24, i32 noundef %i.1138, i32 noundef %and58, i32 noundef %and60, i32 noundef %and63, i32 noundef %and66, i32 noundef %and70, i32 noundef %and74) #6
  br label %cleanup

for.inc79:                                        ; preds = %for.body35
  %inc80 = add nuw i32 %i.1138, 1
  %exitcond143.not = icmp eq i32 %inc80, %n_chan
  br i1 %exitcond143.not, label %for.inc79.cleanup_crit_edge, label %for.inc79.for.body35_crit_edge

for.inc79.for.body35_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body35

for.inc79.cleanup_crit_edge:                      ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc79.cleanup_crit_edge, %if.then55, %do.body41, %for.end.cleanup_crit_edge, %if.then20, %do.body16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.then20 ], [ 0, %if.then55 ], [ %n_chan, %entry.cleanup_crit_edge ], [ 0, %do.body16 ], [ 0, %do.body41 ], [ %seglen.0.lcssa, %for.end.cleanup_crit_edge ], [ %seglen.0.lcssa, %for.inc79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %chansegment) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_update_divisors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_pacer_enable(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_pcl818__237_1131_pcl818_driver_init6, !1, !"__initcall__kmod_pcl818__237_1131_pcl818_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/pcl818.c", i32 1131, i32 1}
!2 = !{ptr @__exitcall_pcl818_driver_exit, !1, !"__exitcall_pcl818_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author238, !4, !"__UNIQUE_ID_author238", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/pcl818.c", i32 1133, i32 1}
!5 = !{ptr @__UNIQUE_ID_description239, !6, !"__UNIQUE_ID_description239", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/pcl818.c", i32 1134, i32 1}
!7 = !{ptr @__UNIQUE_ID_file240, !8, !"__UNIQUE_ID_file240", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/pcl818.c", i32 1135, i32 1}
!9 = !{ptr @__UNIQUE_ID_license241, !8, !"__UNIQUE_ID_license241", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/pcl818.c", i32 1123, i32 17}
!12 = !{ptr @pcl818_driver, !13, !"pcl818_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/pcl818.c", i32 1122, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/pcl818.c", i32 432, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @pcl818_ai_write_sample.__UNIQUE_ID_ddebug234, !15, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!19 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/pcl818.c", i32 508, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pcl818_handle_fifo._entry, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @pcl818_handle_fifo._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/comedi/drivers/pcl818.c", i32 514, i32 3}
!31 = !{ptr @pcl818_handle_fifo._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @pcl818_handle_fifo._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/comedi/drivers/pcl818.c", i32 463, i32 3}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @pcl818_handle_eoc._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @pcl818_handle_eoc._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @range_pcl818l_h_ai, !39, !"range_pcl818l_h_ai", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/pcl818.c", i32 190, i32 35}
!40 = !{ptr @range718_bipolar1, !41, !"range718_bipolar1", i1 false, i1 false}
!41 = !{!"../drivers/comedi/drivers/pcl818.c", i32 199, i32 35}
!42 = !{ptr @range718_bipolar0_5, !43, !"range718_bipolar0_5", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/pcl818.c", i32 205, i32 35}
!44 = !{ptr @range718_unipolar2, !45, !"range718_unipolar2", i1 false, i1 false}
!45 = !{!"../drivers/comedi/drivers/pcl818.c", i32 211, i32 35}
!46 = !{ptr @range718_unipolar1, !47, !"range718_unipolar1", i1 false, i1 false}
!47 = !{!"../drivers/comedi/drivers/pcl818.c", i32 217, i32 35}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/comedi/drivers/pcl818.c", i32 578, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @check_channel_list._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @check_channel_list._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/comedi/drivers/pcl818.c", i32 595, i32 5}
!55 = !{ptr @check_channel_list.__UNIQUE_ID_ddebug235, !54, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/comedi/drivers/pcl818.c", i32 608, i32 5}
!58 = !{ptr @check_channel_list.__UNIQUE_ID_ddebug236, !57, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/comedi/drivers/pcl818.c", i32 235, i32 12}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/comedi/drivers/pcl818.c", i32 242, i32 12}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/comedi/drivers/pcl818.c", i32 249, i32 12}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/comedi/drivers/pcl818.c", i32 257, i32 12}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/comedi/drivers/pcl818.c", i32 272, i32 12}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/comedi/drivers/pcl818.c", i32 278, i32 12}
!71 = !{ptr @boardtypes, !72, !"boardtypes", i1 false, i1 false}
!72 = !{!"../drivers/comedi/drivers/pcl818.c", i32 233, i32 34}
!73 = !{ptr @range_pcl818l_l_ai, !74, !"range_pcl818l_l_ai", i1 false, i1 false}
!74 = !{!"../drivers/comedi/drivers/pcl818.c", i32 181, i32 35}
!75 = !{ptr @range_pcl818h_ai, !76, !"range_pcl818h_ai", i1 false, i1 false}
!76 = !{!"../drivers/comedi/drivers/pcl818.c", i32 150, i32 35}
!77 = !{ptr @range_pcl818hg_ai, !78, !"range_pcl818hg_ai", i1 false, i1 false}
!78 = !{!"../drivers/comedi/drivers/pcl818.c", i32 164, i32 35}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{i64 4563649}
!89 = !{i64 2154251336}
!90 = !{i64 2154232284}
!91 = !{i64 4563254}
!92 = !{i64 2154234258}
!93 = !{i64 2154233654}
!94 = !{i64 2154233956}
!95 = !{i64 2154254770}
!96 = !{i64 2154230523}
!97 = !{i64 2154230876}
!98 = !{i64 2154231312}
!99 = !{i64 2154232633}
!100 = !{i32 0, i32 33}
!101 = !{i64 2154251849}
!102 = !{i64 2154252376}
!103 = !{i64 2154252827}
!104 = !{i64 2154253269}
!105 = !{i64 2154253614}
!106 = !{i64 2154253957}
!107 = !{i64 2154254298}
!108 = !{i64 2154255217}
!109 = !{i64 2154255641}
!110 = !{i64 2154256089}
!111 = !{i64 2154256391}
!112 = !{i64 2154256627}
!113 = !{i64 2154256990}
!114 = !{i64 2154257335}
!115 = !{i64 2154257678}
!116 = !{i64 2154258019}
!117 = !{i64 2154258425}
!118 = !{i64 2154258774}
!119 = !{i64 2154259161}
!120 = !{i64 2154259567}
!121 = !{i64 2154259935}
!122 = !{i64 2154260284}
!123 = !{i64 2154239145}
!124 = !{i64 2154233056}
!125 = !{i64 2154233352}
!126 = !{i64 2148981142, i64 2148981147, i64 2148981160, i64 2148981204, i64 2148981238, i64 2148981259}
