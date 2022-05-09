; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/dt282x.c_pt.bc'
source_filename = "../drivers/comedi/drivers/dt282x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.dt282x_board = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.comedi_devconfig = type { [20 x i8], [32 x i32] }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.dt282x_private = type { ptr, i8, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.comedi_isadma = type { ptr, ptr, i32, i32, i32, i32 }
%struct.comedi_isadma_desc = type { ptr, i32, i32, i32, i32, i8 }

@__initcall__kmod_dt282x__234_1166_dt282x_driver_init6 = internal global ptr @dt282x_driver_init, section ".initcall6.init", align 4
@dt282x_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @dt282x_attach, ptr @dt282x_detach, ptr null, i32 14, ptr @boardtypes, i32 32 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_dt282x_driver_exit = internal global ptr @dt282x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [44 x i8] c"dt282x.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [68 x i8] c"dt282x.description=Comedi driver for Data Translation DT2821 series\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [42 x i8] c"dt282x.file=drivers/comedi/drivers/dt282x\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [19 x i8] c"dt282x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt282x\00", [25 x i8] zeroinitializer }, align 32
@boardtypes = internal constant { [14 x %struct.dt282x_board], [96 x i8] } { [14 x %struct.dt282x_board] [%struct.dt282x_board { ptr @.str.28, i32 4095, i32 16, i32 8, i32 20000, i32 0, i32 2, i32 4095 }, %struct.dt282x_board { ptr @.str.29, i32 4095, i32 16, i32 8, i32 6500, i32 0, i32 2, i32 4095 }, %struct.dt282x_board { ptr @.str.30, i32 4095, i32 16, i32 8, i32 4000, i32 0, i32 2, i32 4095 }, %struct.dt282x_board { ptr @.str.31, i32 65535, i32 0, i32 4, i32 10000, i32 0, i32 2, i32 65535 }, %struct.dt282x_board { ptr @.str.32, i32 4095, i32 16, i32 8, i32 20000, i32 0, i32 0, i32 0 }, %struct.dt282x_board { ptr @.str.33, i32 4095, i32 16, i32 8, i32 20000, i32 1, i32 0, i32 0 }, %struct.dt282x_board { ptr @.str.34, i32 4095, i32 16, i32 8, i32 20000, i32 1, i32 2, i32 4095 }, %struct.dt282x_board { ptr @.str.35, i32 65535, i32 0, i32 4, i32 10000, i32 0, i32 2, i32 4095 }, %struct.dt282x_board { ptr @.str.36, i32 4095, i32 4, i32 0, i32 10000, i32 0, i32 2, i32 4095 }, %struct.dt282x_board { ptr @.str.37, i32 65535, i32 8, i32 0, i32 33250, i32 0, i32 2, i32 65535 }, %struct.dt282x_board { ptr @.str.38, i32 4095, i32 16, i32 8, i32 10000, i32 0, i32 2, i32 4095 }, %struct.dt282x_board { ptr @.str.39, i32 65535, i32 16, i32 8, i32 10000, i32 0, i32 0, i32 0 }, %struct.dt282x_board { ptr @.str.40, i32 4095, i32 16, i32 8, i32 10000, i32 0, i32 0, i32 0 }, %struct.dt282x_board { ptr @.str.41, i32 4095, i32 16, i32 8, i32 10000, i32 1, i32 0, i32 0 }], [96 x i8] zeroinitializer }, align 32
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@dt282x_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1054, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"board not found\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dt282x_initialize\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/comedi/drivers/dt282x.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dt282x_initialize._entry_ptr = internal global ptr @dt282x_initialize._entry, section ".printk_index", align 4
@dt282x_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spurious interrupt\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dt282x_interrupt\00", [47 x i8] zeroinitializer }, align 32
@dt282x_interrupt._entry_ptr = internal global ptr @dt282x_interrupt._entry, section ".printk_index", align 4
@dt282x_interrupt._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 518, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"A/D error\0A\00", [21 x i8] zeroinitializer }, align 32
@dt282x_interrupt._entry_ptr.10 = internal global ptr @dt282x_interrupt._entry.8, section ".printk_index", align 4
@dt282x_interrupt._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.3, i32 524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"D/A error\0A\00", [21 x i8] zeroinitializer }, align 32
@dt282x_interrupt._entry_ptr.13 = internal global ptr @dt282x_interrupt._entry.11, section ".printk_index", align 4
@dt282x_ai_dma_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 478, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nread off by one\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dt282x_ai_dma_interrupt\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dt282x_ai_dma_interrupt._entry_ptr = internal global ptr @dt282x_ai_dma_interrupt._entry, section ".printk_index", align 4
@dt282x_munge._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 408, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bug! odd number of bytes from dma xfer\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dt282x_munge\00", [19 x i8] zeroinitializer }, align 32
@dt282x_munge._entry_ptr = internal global ptr @dt282x_munge._entry, section ".printk_index", align 4
@dt282x_ao_setup_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 434, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AO underrun\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dt282x_ao_setup_dma\00", [44 x i8] zeroinitializer }, align 32
@dt282x_ao_setup_dma._entry_ptr = internal global ptr @dt282x_ao_setup_dma._entry, section ".printk_index", align 4
@ai_range_pgl_table = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @range_dt282x_ai_hi_bipolar, ptr @range_dt282x_ai_hi_unipolar], [24 x i8] zeroinitializer }, align 32
@ai_range_table = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @range_dt282x_ai_lo_bipolar, ptr @range_dt282x_ai_lo_unipolar, ptr @range_dt282x_ai_5_bipolar, ptr @range_dt282x_ai_5_unipolar], [16 x i8] zeroinitializer }, align 32
@range_dt282x_ai_hi_bipolar = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -20000, i32 20000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_dt282x_ai_hi_unipolar = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 0, i32 20000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_dt282x_ai_lo_bipolar = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_dt282x_ai_lo_unipolar = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_dt282x_ai_5_bipolar = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_dt282x_ai_5_unipolar = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 625000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@dt282x_ao_range = internal constant { { i32, [5 x %struct.comedi_krange] }, [32 x i8] } { { i32, [5 x %struct.comedi_krange] } { i32 5, [5 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }] }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt2821\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dt2821-f\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dt2821-g\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt2823\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dt2824-pgh\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dt2824-pgl\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt2825\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt2827\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt2828\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dt2829\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dt21-ez\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dt23-ez\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dt24-ez\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dt24-ez-pgl\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 65536, i64 131072]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 128, i64 256]
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"dt282x_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1157, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1158, i32 17 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"boardtypes\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 197, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1054, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 502, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 518, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 524, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 478, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 407, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 434, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [19 x i8] c"ai_range_pgl_table\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 981, i32 42 }
@___asan_gen_.125 = private unnamed_addr constant [15 x i8] c"ai_range_table\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 974, i32 42 }
@___asan_gen_.128 = private unnamed_addr constant [27 x i8] c"range_dt282x_ai_hi_bipolar\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 153, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant [28 x i8] c"range_dt282x_ai_hi_unipolar\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 162, i32 35 }
@___asan_gen_.134 = private unnamed_addr constant [27 x i8] c"range_dt282x_ai_lo_bipolar\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 117, i32 35 }
@___asan_gen_.137 = private unnamed_addr constant [28 x i8] c"range_dt282x_ai_lo_unipolar\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 126, i32 35 }
@___asan_gen_.140 = private unnamed_addr constant [26 x i8] c"range_dt282x_ai_5_bipolar\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 135, i32 35 }
@___asan_gen_.143 = private unnamed_addr constant [27 x i8] c"range_dt282x_ai_5_unipolar\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 144, i32 35 }
@___asan_gen_.146 = private unnamed_addr constant [16 x i8] c"dt282x_ao_range\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 176, i32 35 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 199, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 207, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 215, i32 12 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 223, i32 12 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 230, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 236, i32 12 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 243, i32 12 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 252, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 259, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 266, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 273, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 281, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 287, i32 12 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [35 x i8] c"../drivers/comedi/drivers/dt282x.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 293, i32 12 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_dt282x_driver_exit, ptr @__initcall__kmod_dt282x__234_1166_dt282x_driver_init6, ptr @dt282x_ai_dma_interrupt._entry, ptr @dt282x_ai_dma_interrupt._entry_ptr, ptr @dt282x_ao_setup_dma._entry, ptr @dt282x_ao_setup_dma._entry_ptr, ptr @dt282x_driver_exit, ptr @dt282x_initialize._entry, ptr @dt282x_initialize._entry_ptr, ptr @dt282x_interrupt._entry, ptr @dt282x_interrupt._entry.11, ptr @dt282x_interrupt._entry.8, ptr @dt282x_interrupt._entry_ptr, ptr @dt282x_interrupt._entry_ptr.10, ptr @dt282x_interrupt._entry_ptr.13, ptr @dt282x_munge._entry, ptr @dt282x_munge._entry_ptr, ptr @dt282x_driver, ptr @.str, ptr @boardtypes, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ai_range_pgl_table, ptr @ai_range_table, ptr @range_dt282x_ai_hi_bipolar, ptr @range_dt282x_ai_hi_unipolar, ptr @range_dt282x_ai_lo_bipolar, ptr @range_dt282x_ai_lo_unipolar, ptr @range_dt282x_ai_5_bipolar, ptr @range_dt282x_ai_5_unipolar, ptr @dt282x_ao_range, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt282x_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boardtypes to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt282x_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt282x_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt282x_interrupt._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt282x_interrupt._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt282x_ai_dma_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt282x_munge._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt282x_ao_setup_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_range_pgl_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ai_range_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_dt282x_ai_hi_bipolar to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_dt282x_ai_hi_unipolar to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_dt282x_ai_lo_bipolar to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_dt282x_ai_lo_unipolar to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_dt282x_ai_5_bipolar to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_dt282x_ai_5_unipolar to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt282x_ao_range to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dt282x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @dt282x_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dt282x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @comedi_driver_unregister(ptr noundef nonnull @dt282x_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt282x_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 4
  %call = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %3, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %5, 12
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %6, i16 256) #6, !srcloc !109
  %7 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase.i, align 4
  %and4.i = and i32 %8, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %9 = inttoptr i32 %add5.i to ptr
  %10 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %9) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase.i, align 4
  %and11.i = and i32 %12, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %13 = inttoptr i32 %add12.i to ptr
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %13) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  %15 = and i16 %14, -3841
  call void @__sanitizer_cov_trace_const_cmp2(i16 124, i16 %15)
  %cmp.not.i = icmp eq i16 %15, 124
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.dt282x_initialize.exit_crit_edge

if.end.dt282x_initialize.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt282x_initialize.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %16 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase.i, align 4
  %add20.i = add i32 %17, 2
  %and21.i = and i32 %add20.i, 1048575
  %add22.i = or i32 %and21.i, -18874368
  %18 = inttoptr i32 %add22.i to ptr
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %18) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  %20 = and i16 %19, -3856
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3984, i16 %20)
  %cmp28.not.i = icmp eq i16 %20, -3984
  br i1 %cmp28.not.i, label %lor.lhs.false30.i, label %lor.lhs.false.i.dt282x_initialize.exit_crit_edge

lor.lhs.false.i.dt282x_initialize.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt282x_initialize.exit

lor.lhs.false30.i:                                ; preds = %lor.lhs.false.i
  %21 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %iobase.i, align 4
  %add33.i = add i32 %22, 6
  %and34.i = and i32 %add33.i, 1048575
  %add35.i = or i32 %and34.i, -18874368
  %23 = inttoptr i32 %add35.i to ptr
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %23) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  %25 = and i16 %24, -27780
  call void @__sanitizer_cov_trace_const_cmp2(i16 -28548, i16 %25)
  %cmp41.not.i = icmp eq i16 %25, -28548
  br i1 %cmp41.not.i, label %lor.lhs.false43.i, label %lor.lhs.false30.i.dt282x_initialize.exit_crit_edge

lor.lhs.false30.i.dt282x_initialize.exit_crit_edge: ; preds = %lor.lhs.false30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt282x_initialize.exit

lor.lhs.false43.i:                                ; preds = %lor.lhs.false30.i
  %26 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase.i, align 4
  %add46.i = add i32 %27, 12
  %and47.i = and i32 %add46.i, 1048575
  %add48.i = or i32 %and47.i, -18874368
  %28 = inttoptr i32 %add48.i to ptr
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %28) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %29)
  %cmp54.not.i = icmp ult i16 %29, 8
  br i1 %cmp54.not.i, label %lor.lhs.false56.i, label %lor.lhs.false43.i.dt282x_initialize.exit_crit_edge

lor.lhs.false43.i.dt282x_initialize.exit_crit_edge: ; preds = %lor.lhs.false43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt282x_initialize.exit

lor.lhs.false56.i:                                ; preds = %lor.lhs.false43.i
  %30 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %iobase.i, align 4
  %add59.i = add i32 %31, 14
  %and60.i = and i32 %add59.i, 1048575
  %add61.i = or i32 %and60.i, -18874368
  %32 = inttoptr i32 %add61.i to ptr
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %32) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %.mask.i = and i16 %33, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 240, i16 %.mask.i)
  %cmp67.not.i = icmp eq i16 %.mask.i, 240
  br i1 %cmp67.not.i, label %if.end4, label %lor.lhs.false56.i.dt282x_initialize.exit_crit_edge

lor.lhs.false56.i.dt282x_initialize.exit_crit_edge: ; preds = %lor.lhs.false56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt282x_initialize.exit

dt282x_initialize.exit:                           ; preds = %lor.lhs.false56.i.dt282x_initialize.exit_crit_edge, %lor.lhs.false43.i.dt282x_initialize.exit_crit_edge, %lor.lhs.false30.i.dt282x_initialize.exit_crit_edge, %lor.lhs.false.i.dt282x_initialize.exit_crit_edge, %if.end.dt282x_initialize.exit_crit_edge
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %34 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false56.i
  %call5 = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 36) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %36 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %private.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 2
  %40 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 3
  %42 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx4.i, align 4
  %44 = tail call i32 @llvm.smax.i32(i32 %41, i32 %43) #6
  %45 = tail call i32 @llvm.smin.i32(i32 %41, i32 %43) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %44)
  %cmp19.i = icmp eq i32 %45, %44
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %45)
  %cmp22.i = icmp ult i32 %45, 5
  %or.cond73.i = select i1 %or.cond.i, i1 true, i1 %cmp22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %45)
  %cmp25.i = icmp ugt i32 %45, 7
  %or.cond74.i = select i1 %or.cond73.i, i1 true, i1 %cmp25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %44)
  %cmp28.i = icmp ult i32 %44, 5
  %or.cond75.i = select i1 %or.cond74.i, i1 true, i1 %cmp28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %44)
  %cmp31.i = icmp ugt i32 %44, 7
  %or.cond76.i = select i1 %or.cond75.i, i1 true, i1 %cmp31.i
  br i1 %or.cond76.i, label %if.end8.dt282x_alloc_dma.exit_crit_edge, label %if.end33.i

if.end8.dt282x_alloc_dma.exit_crit_edge:          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt282x_alloc_dma.exit

if.end33.i:                                       ; preds = %if.end8
  %board_name.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %46 = ptrtoint ptr %board_name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %board_name.i, align 4
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %39, ptr noundef nonnull @dt282x_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %47, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool34.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %if.end33.i.dt282x_alloc_dma.exit_crit_edge

if.end33.i.dt282x_alloc_dma.exit_crit_edge:       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt282x_alloc_dma.exit

if.end36.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %37, align 4
  %call43.i = tail call ptr @free_irq(i32 noundef %39, ptr noundef %dev) #6
  br label %dt282x_alloc_dma.exit

dt282x_alloc_dma.exit:                            ; preds = %if.end36.i, %if.end33.i.dt282x_alloc_dma.exit_crit_edge, %if.end8.dt282x_alloc_dma.exit_crit_edge
  %call9 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %dt282x_alloc_dma.exit.cleanup_crit_edge

dt282x_alloc_dma.exit.cleanup_crit_edge:          ; preds = %dt282x_alloc_dma.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %dt282x_alloc_dma.exit
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %49 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %50, i32 0, i32 4
  %52 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 65536, ptr %subdev_flags, align 4
  %arrayidx15 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 4
  %53 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool16.not = icmp eq i32 %54, 0
  br i1 %tobool16.not, label %if.end12.lor.lhs.false_crit_edge, label %land.lhs.true

if.end12.lor.lhs.false_crit_edge:                 ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end12
  %adchan_di = getelementptr inbounds %struct.dt282x_board, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %adchan_di to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %adchan_di, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool17.not = icmp eq i32 %56, 0
  br i1 %tobool17.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then18_crit_edge

land.lhs.true.if.then18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end12.lor.lhs.false_crit_edge
  %adchan_se = getelementptr inbounds %struct.dt282x_board, ptr %1, i32 0, i32 2
  %57 = ptrtoint ptr %adchan_se to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %adchan_se, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp = icmp eq i32 %58, 0
  br i1 %cmp, label %lor.lhs.false.if.then18_crit_edge, label %if.else

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false.if.then18_crit_edge, %land.lhs.true.if.then18_crit_edge
  %59 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4259840, ptr %subdev_flags, align 4
  %adchan_di20 = getelementptr inbounds %struct.dt282x_board, ptr %1, i32 0, i32 3
  br label %if.end25

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2162688, ptr %subdev_flags, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then18
  %adchan_se.sink = phi ptr [ %adchan_se, %if.else ], [ %adchan_di20, %if.then18 ]
  %61 = ptrtoint ptr %adchan_se.sink to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %adchan_se.sink, align 4
  %n_chan24 = getelementptr inbounds %struct.comedi_subdevice, ptr %50, i32 0, i32 3
  %63 = ptrtoint ptr %n_chan24 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %n_chan24, align 4
  %ai_maxdata = getelementptr inbounds %struct.dt282x_board, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %ai_maxdata to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ai_maxdata, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %50, i32 0, i32 13
  %66 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %maxdata, align 4
  %ispgl = getelementptr inbounds %struct.dt282x_board, ptr %1, i32 0, i32 5
  %67 = ptrtoint ptr %ispgl to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ispgl, align 4
  %arrayidx27 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 8
  %69 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i145 = icmp eq i32 %68, 0
  br i1 %tobool.not.i145, label %if.end3.i, label %if.then.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %71 = icmp ugt i32 %70, 1
  %x.addr.0.i = select i1 %71, i32 0, i32 %70
  %arrayidx.i146 = getelementptr [2 x ptr], ptr @ai_range_pgl_table, i32 0, i32 %x.addr.0.i
  br label %opt_ai_range_lkup.exit

if.end3.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %70)
  %72 = icmp ugt i32 %70, 3
  %x.addr.1.i = select i1 %72, i32 0, i32 %70
  %arrayidx9.i = getelementptr [4 x ptr], ptr @ai_range_table, i32 0, i32 %x.addr.1.i
  br label %opt_ai_range_lkup.exit

opt_ai_range_lkup.exit:                           ; preds = %if.end3.i, %if.then.i
  %retval.0.in.i = phi ptr [ %arrayidx.i146, %if.then.i ], [ %arrayidx9.i, %if.end3.i ]
  %73 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %retval.0.i147 = load ptr, ptr %retval.0.in.i, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %50, i32 0, i32 15
  %74 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %retval.0.i147, ptr %range_table, align 4
  %arrayidx30 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 5
  %75 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool31.not.not = icmp eq i32 %76, 0
  %ad_2scomp = getelementptr inbounds %struct.dt282x_private, ptr %call5, i32 0, i32 1
  %77 = ptrtoint ptr %ad_2scomp to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load = load i8, ptr %ad_2scomp, align 4
  %bf.shl = select i1 %tobool31.not.not, i8 0, i8 -128
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %ad_2scomp, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %50, i32 0, i32 18
  %78 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @dt282x_ai_insn_read, ptr %insn_read, align 4
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %79 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool32.not = icmp eq i32 %80, 0
  br i1 %tobool32.not, label %opt_ai_range_lkup.exit.if.end37_crit_edge, label %if.then33

opt_ai_range_lkup.exit.if.end37_crit_edge:        ; preds = %opt_ai_range_lkup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then33:                                        ; preds = %opt_ai_range_lkup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %81 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %50, ptr %read_subdev, align 4
  %82 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %subdev_flags, align 4
  %or35 = or i32 %83, 32768
  store i32 %or35, ptr %subdev_flags, align 4
  %n_chan36 = getelementptr inbounds %struct.comedi_subdevice, ptr %50, i32 0, i32 3
  %84 = ptrtoint ptr %n_chan36 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %n_chan36, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %50, i32 0, i32 5
  %86 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %len_chanlist, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %50, i32 0, i32 23
  %87 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @dt282x_ai_cmdtest, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %50, i32 0, i32 22
  %88 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @dt282x_ai_cmd, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %50, i32 0, i32 25
  %89 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @dt282x_ai_cancel, ptr %cancel, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %opt_ai_range_lkup.exit.if.end37_crit_edge
  %90 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %subdevices, align 4
  %arrayidx39 = getelementptr %struct.comedi_subdevice, ptr %91, i32 1
  %dachan = getelementptr inbounds %struct.dt282x_board, ptr %1, i32 0, i32 6
  %92 = ptrtoint ptr %dachan to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dachan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool40.not = icmp eq i32 %93, 0
  %type64 = getelementptr %struct.comedi_subdevice, ptr %91, i32 1, i32 2
  br i1 %tobool40.not, label %if.else63, label %if.then41

if.then41:                                        ; preds = %if.end37
  %94 = ptrtoint ptr %type64 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 2, ptr %type64, align 4
  %subdev_flags43 = getelementptr %struct.comedi_subdevice, ptr %91, i32 1, i32 4
  %95 = ptrtoint ptr %subdev_flags43 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 131072, ptr %subdev_flags43, align 4
  %96 = ptrtoint ptr %dachan to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dachan, align 4
  %n_chan45 = getelementptr %struct.comedi_subdevice, ptr %91, i32 1, i32 3
  %98 = ptrtoint ptr %n_chan45 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %n_chan45, align 4
  %ao_maxdata = getelementptr inbounds %struct.dt282x_board, ptr %1, i32 0, i32 7
  %99 = ptrtoint ptr %ao_maxdata to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ao_maxdata, align 4
  %maxdata46 = getelementptr %struct.comedi_subdevice, ptr %91, i32 1, i32 13
  %101 = ptrtoint ptr %maxdata46 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %maxdata46, align 4
  %range_table47 = getelementptr %struct.comedi_subdevice, ptr %91, i32 1, i32 15
  %102 = ptrtoint ptr %range_table47 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @dt282x_ao_range, ptr %range_table47, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %91, i32 1, i32 19
  %103 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @dt282x_ao_insn_write, ptr %insn_write, align 4
  %104 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool49.not = icmp eq i32 %105, 0
  br i1 %tobool49.not, label %if.then41.if.end58_crit_edge, label %if.then50

if.then41.if.end58_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then50:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %write_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 22
  %106 = ptrtoint ptr %write_subdev to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %arrayidx39, ptr %write_subdev, align 4
  %107 = ptrtoint ptr %subdev_flags43 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %subdev_flags43, align 4
  %or52 = or i32 %108, 16384
  store i32 %or52, ptr %subdev_flags43, align 4
  %109 = ptrtoint ptr %n_chan45 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %n_chan45, align 4
  %len_chanlist54 = getelementptr %struct.comedi_subdevice, ptr %91, i32 1, i32 5
  %111 = ptrtoint ptr %len_chanlist54 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %len_chanlist54, align 4
  %do_cmdtest55 = getelementptr %struct.comedi_subdevice, ptr %91, i32 1, i32 23
  %112 = ptrtoint ptr %do_cmdtest55 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @dt282x_ao_cmdtest, ptr %do_cmdtest55, align 4
  %do_cmd56 = getelementptr %struct.comedi_subdevice, ptr %91, i32 1, i32 22
  %113 = ptrtoint ptr %do_cmd56 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @dt282x_ao_cmd, ptr %do_cmd56, align 4
  %cancel57 = getelementptr %struct.comedi_subdevice, ptr %91, i32 1, i32 25
  %114 = ptrtoint ptr %cancel57 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @dt282x_ao_cancel, ptr %cancel57, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then50, %if.then41.if.end58_crit_edge
  %call59 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx39) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end58.if.end65_crit_edge, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end58.if.end65_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.else63:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %type64 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %type64, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.else63, %if.end58.if.end65_crit_edge
  %116 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %subdevices, align 4
  %type68 = getelementptr %struct.comedi_subdevice, ptr %117, i32 2, i32 2
  %118 = ptrtoint ptr %type68 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 5, ptr %type68, align 4
  %subdev_flags69 = getelementptr %struct.comedi_subdevice, ptr %117, i32 2, i32 4
  %119 = ptrtoint ptr %subdev_flags69 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 196608, ptr %subdev_flags69, align 4
  %n_chan70 = getelementptr %struct.comedi_subdevice, ptr %117, i32 2, i32 3
  %120 = ptrtoint ptr %n_chan70 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 16, ptr %n_chan70, align 4
  %maxdata71 = getelementptr %struct.comedi_subdevice, ptr %117, i32 2, i32 13
  %121 = ptrtoint ptr %maxdata71 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %maxdata71, align 4
  %range_table72 = getelementptr %struct.comedi_subdevice, ptr %117, i32 2, i32 15
  %122 = ptrtoint ptr %range_table72 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @range_unipolar5, ptr %range_table72, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %117, i32 2, i32 20
  %123 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @dt282x_dio_insn_bits, ptr %insn_bits, align 4
  %insn_config = getelementptr %struct.comedi_subdevice, ptr %117, i32 2, i32 21
  %124 = ptrtoint ptr %insn_config to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @dt282x_dio_insn_config, ptr %insn_config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end65, %if.end58.cleanup_crit_edge, %dt282x_alloc_dma.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %dt282x_initialize.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end65 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %dt282x_initialize.exit ], [ -12, %if.end4.cleanup_crit_edge ], [ %call9, %dt282x_alloc_dma.exit.cleanup_crit_edge ], [ %call59, %if.end58.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dt282x_detach(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @comedi_legacy_detach(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt282x_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %adcsr = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %adcsr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 512, ptr %adcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %adcsr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %adcsr, align 4
  %conv = trunc i32 %4 to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %and = and i32 %7, 1048575
  %add2 = or i32 %and, -18874368
  %8 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %5) #6, !srcloc !109
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  tail call fastcc void @dt282x_load_changain(ptr noundef %dev, i32 noundef 1, ptr noundef %chanspec)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %supcsr = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %supcsr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %supcsr, align 4
  %11 = trunc i32 %10 to i16
  %conv6 = or i16 %11, 16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv6)
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %add8 = add i32 %14, 12
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %15 = inttoptr i32 %add10 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %15, i16 %12) #6, !srcloc !109
  %call12 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @dt282x_ai_timeout, i32 noundef 256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %16 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp70.not = icmp eq i32 %17, 0
  br i1 %cmp70.not, label %for.cond.preheader.cleanup_crit_edge, label %do.body14.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body14.lr.ph:                                  ; preds = %for.cond.preheader
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %ad_2scomp = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 1
  br label %do.body14

do.body14:                                        ; preds = %if.end28.do.body14_crit_edge, %do.body14.lr.ph
  %i.071 = phi i32 [ 0, %do.body14.lr.ph ], [ %inc, %if.end28.do.body14_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %supcsr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %supcsr, align 4
  %20 = trunc i32 %19 to i16
  %conv19 = or i16 %20, 8
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv19)
  %22 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase, align 4
  %add21 = add i32 %23, 12
  %and22 = and i32 %add21, 1048575
  %add23 = or i32 %and22, -18874368
  %24 = inttoptr i32 %add23 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %21) #6, !srcloc !109
  %call25 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @dt282x_ai_timeout, i32 noundef 128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %do.body14.cleanup_crit_edge

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %do.body14
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase, align 4
  %add30 = add i32 %26, 4
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %27 = inttoptr i32 %add32 to ptr
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %27) #6, !srcloc !110
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %conv35 = zext i16 %29 to i32
  %30 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maxdata, align 4
  %and36 = and i32 %31, %conv35
  %32 = ptrtoint ptr %ad_2scomp to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %ad_2scomp, align 4
  %xor.i = xor i32 %and36, %31
  %shr.i = lshr i32 %31, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %tobool37.not69 = icmp slt i8 %bf.load, 0
  %val.0 = select i1 %tobool37.not69, i32 %xor2.i, i32 %and36
  %arrayidx = getelementptr i32, ptr %data, i32 %i.071
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %val.0, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.071, 1
  %34 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %35
  br i1 %cmp, label %if.end28.do.body14_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28.do.body14_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body14

cleanup:                                          ; preds = %if.end28.cleanup_crit_edge, %do.body14.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call25, %do.body14.cleanup_crit_edge ], [ %inc, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt282x_ai_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %and.i88 = and i32 %7, 68
  store i32 %and.i88, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88)
  %cmp.i89 = icmp ne i32 %and.i88, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i88, i32 %7)
  %cmp1.not.i90 = icmp eq i32 %and.i88, %7
  %or.cond.i91 = and i1 %cmp.i89, %cmp1.not.i90
  %8 = select i1 %or.cond.i, i1 %or.cond.i91, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %9 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %convert_src, align 4
  %and.i93 = and i32 %10, 16
  store i32 %and.i93, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93)
  %cmp.i94 = icmp ne i32 %and.i93, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i93, i32 %10)
  %cmp1.not.i95 = icmp eq i32 %and.i93, %10
  %or.cond.i96 = and i1 %cmp.i94, %cmp1.not.i95
  %11 = select i1 %8, i1 %or.cond.i96, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %12 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scan_end_src, align 4
  %and.i98 = and i32 %13, 32
  store i32 %and.i98, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i98)
  %cmp.i99 = icmp ne i32 %and.i98, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i98, i32 %13)
  %cmp1.not.i100 = icmp eq i32 %and.i98, %13
  %or.cond.i101 = and i1 %cmp.i99, %cmp1.not.i100
  %14 = select i1 %11, i1 %or.cond.i101, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %15 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %stop_src, align 4
  %and.i103 = and i32 %16, 33
  store i32 %and.i103, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i103)
  %cmp.i104 = icmp ne i32 %and.i103, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i103, i32 %16)
  %cmp1.not.i105 = icmp eq i32 %and.i103, %16
  %or.cond.i106 = and i1 %cmp.i104, %cmp1.not.i105
  %17 = select i1 %14, i1 %or.cond.i106, i1 false
  br i1 %17, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %18 = tail call i32 @llvm.ctpop.i32(i32 %7) #6, !range !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.not.i = icmp ult i32 %18, 2
  %19 = tail call i32 @llvm.ctpop.i32(i32 %16) #6, !range !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.not.i108 = icmp ult i32 %19, 2
  %20 = select i1 %cmp.not.i, i1 %cmp.not.i108, i1 false
  br i1 %20, label %if.end17, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %21 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i110 = icmp eq i32 %22, 0
  br i1 %cmp.not.i110, label %if.end17.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end17.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i111 = phi i32 [ -22, %if.then.i ], [ 0, %if.end17.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %24 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp.not.i112 = icmp eq i32 %25, 0
  br i1 %cmp.not.i112, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit115_crit_edge, label %if.then.i113

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit115_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit115

if.then.i113:                                     ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit115

comedi_check_trigger_arg_is.exit115:              ; preds = %if.then.i113, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit115_crit_edge
  %retval.0.i114 = phi i32 [ -22, %if.then.i113 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_is.exit115_crit_edge ]
  %or21 = or i32 %retval.0.i114, %retval.0.i111
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %27 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2088960000, i32 %28)
  %cmp.i116 = icmp ugt i32 %28, 2088960000
  br i1 %cmp.i116, label %if.then.i117, label %comedi_check_trigger_arg_is.exit115.comedi_check_trigger_arg_max.exit_crit_edge

comedi_check_trigger_arg_is.exit115.comedi_check_trigger_arg_max.exit_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit115
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_max.exit

if.then.i117:                                     ; preds = %comedi_check_trigger_arg_is.exit115
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2088960000, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_max.exit

comedi_check_trigger_arg_max.exit:                ; preds = %if.then.i117, %comedi_check_trigger_arg_is.exit115.comedi_check_trigger_arg_max.exit_crit_edge
  %retval.0.i118 = phi i32 [ -22, %if.then.i117 ], [ 0, %comedi_check_trigger_arg_is.exit115.comedi_check_trigger_arg_max.exit_crit_edge ]
  %or23 = or i32 %or21, %retval.0.i118
  %ai_speed = getelementptr inbounds %struct.dt282x_board, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %ai_speed to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ai_speed, align 4
  %32 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp.i119 = icmp ult i32 %33, %31
  br i1 %cmp.i119, label %if.then.i120, label %comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_min.exit_crit_edge

comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %comedi_check_trigger_arg_max.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_min.exit

if.then.i120:                                     ; preds = %comedi_check_trigger_arg_max.exit
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %31, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i120, %comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i121 = phi i32 [ -22, %if.then.i120 ], [ 0, %comedi_check_trigger_arg_max.exit.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or26 = or i32 %or23, %retval.0.i121
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %35 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %chanlist_len, align 4
  %37 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %36)
  %cmp.not.i122 = icmp eq i32 %38, %36
  br i1 %cmp.not.i122, label %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit125_crit_edge, label %if.then.i123

comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit125_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit125

if.then.i123:                                     ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit125

comedi_check_trigger_arg_is.exit125:              ; preds = %if.then.i123, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit125_crit_edge
  %retval.0.i124 = phi i32 [ -22, %if.then.i123 ], [ 0, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit125_crit_edge ]
  %or28 = or i32 %or26, %retval.0.i124
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %16)
  %cmp = icmp eq i32 %16, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %40 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i126 = icmp eq i32 %41, 0
  br i1 %cmp, label %if.then30, label %if.else

if.then30:                                        ; preds = %comedi_check_trigger_arg_is.exit125
  br i1 %cmp.i126, label %if.then30.if.end36.sink.split_crit_edge, label %if.then30.if.end36_crit_edge

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then30.if.end36.sink.split_crit_edge:          ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit125
  br i1 %cmp.i126, label %if.else.if.end36_crit_edge, label %if.else.if.end36.sink.split_crit_edge

if.else.if.end36.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36.sink.split

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.end36.sink.split:                              ; preds = %if.else.if.end36.sink.split_crit_edge, %if.then30.if.end36.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then30.if.end36.sink.split_crit_edge ], [ 0, %if.else.if.end36.sink.split_crit_edge ]
  %42 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %if.else.if.end36_crit_edge, %if.then30.if.end36_crit_edge
  %call31.pn = phi i32 [ 0, %if.then30.if.end36_crit_edge ], [ 0, %if.else.if.end36_crit_edge ], [ -22, %if.end36.sink.split ]
  %err.0 = or i32 %or28, %call31.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool37.not = icmp eq i32 %err.0, 0
  br i1 %tobool37.not, label %if.end39, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %if.end36
  %43 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %convert_arg, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 4
  %and.i134 = and i32 %46, 196608
  %add6.i = add i32 %44, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end39
  %prescale.041.i = phi i32 [ 0, %if.end39 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %base.040.i = phi i32 [ -1, %if.end39 ], [ %base.1.i, %for.inc.i.for.body.i_crit_edge ]
  %divider.039.i = phi i32 [ -1, %if.end39 ], [ %divider.2.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %prescale.041.i)
  %cmp1.i = icmp eq i32 %prescale.041.i, 1
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %mul.i = shl nuw nsw i32 250, %prescale.041.i
  %47 = zext i32 %and.i134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i134, label %sw.default.i [
    i32 131072, label %sw.bb5.i
    i32 65536, label %if.end.i.sw.epilog.i_crit_edge
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %div38.i = lshr exact i32 %mul.i, 1
  %add.i = add i32 %div38.i, %44
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i32 %add6.i, %mul.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.default.i, %if.end.i.sw.epilog.i_crit_edge
  %add.pn.i = phi i32 [ %add.i, %sw.default.i ], [ %sub.i, %sw.bb5.i ], [ %44, %if.end.i.sw.epilog.i_crit_edge ]
  %divider.1.i = udiv i32 %add.pn.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %divider.1.i)
  %cmp8.i = icmp ult i32 %divider.1.i, 256
  br i1 %cmp8.i, label %sw.epilog.i.dt282x_ns_to_timer.exit_crit_edge, label %sw.epilog.i.for.inc.i_crit_edge

sw.epilog.i.for.inc.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.epilog.i.dt282x_ns_to_timer.exit_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt282x_ns_to_timer.exit

for.inc.i:                                        ; preds = %sw.epilog.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %divider.2.i = phi i32 [ %divider.039.i, %for.body.i.for.inc.i_crit_edge ], [ %divider.1.i, %sw.epilog.i.for.inc.i_crit_edge ]
  %base.1.i = phi i32 [ %base.040.i, %for.body.i.for.inc.i_crit_edge ], [ %mul.i, %sw.epilog.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %prescale.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.dt282x_ns_to_timer.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.dt282x_ns_to_timer.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt282x_ns_to_timer.exit

dt282x_ns_to_timer.exit:                          ; preds = %for.inc.i.dt282x_ns_to_timer.exit_crit_edge, %sw.epilog.i.dt282x_ns_to_timer.exit_crit_edge
  %prescale.0.lcssa.i = phi i32 [ %prescale.041.i, %sw.epilog.i.dt282x_ns_to_timer.exit_crit_edge ], [ 16, %for.inc.i.dt282x_ns_to_timer.exit_crit_edge ]
  %divider.3.i = phi i32 [ %divider.1.i, %sw.epilog.i.dt282x_ns_to_timer.exit_crit_edge ], [ %divider.2.i, %for.inc.i.dt282x_ns_to_timer.exit_crit_edge ]
  %base.2.i = phi i32 [ %mul.i, %sw.epilog.i.dt282x_ns_to_timer.exit_crit_edge ], [ %base.1.i, %for.inc.i.dt282x_ns_to_timer.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %divider.3.i)
  %cmp11.i = icmp ugt i32 %divider.3.i, 255
  %48 = tail call i32 @llvm.umin.i32(i32 %divider.3.i, i32 255) #6
  %base.3.i = select i1 %cmp11.i, i32 8192000, i32 %base.2.i
  %mul16.i = mul i32 %base.3.i, %48
  %prescale.0.op.i = shl i32 %prescale.0.lcssa.i, 8
  %prescale.0.op.op.i = and i32 %prescale.0.op.i, 3840
  %shl18.i = select i1 %cmp11.i, i32 3840, i32 %prescale.0.op.op.i
  %49 = or i32 %shl18.i, %48
  %or.i = xor i32 %49, 255
  %divisor = getelementptr inbounds %struct.dt282x_private, ptr %3, i32 0, i32 2
  %50 = ptrtoint ptr %divisor to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i, ptr %divisor, align 4
  %51 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %mul16.i)
  %cmp.not.i135 = icmp eq i32 %52, %mul16.i
  br i1 %cmp.not.i135, label %dt282x_ns_to_timer.exit.cleanup_crit_edge, label %comedi_check_trigger_arg_is.exit138

dt282x_ns_to_timer.exit.cleanup_crit_edge:        ; preds = %dt282x_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

comedi_check_trigger_arg_is.exit138:              ; preds = %dt282x_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul16.i, ptr %convert_arg, align 4
  br label %cleanup

cleanup:                                          ; preds = %comedi_check_trigger_arg_is.exit138, %dt282x_ns_to_timer.exit.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end36.cleanup_crit_edge ], [ 4, %comedi_check_trigger_arg_is.exit138 ], [ 0, %dt282x_ns_to_timer.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt282x_ai_cmd(ptr noundef %dev, ptr noundef %s) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %divisor = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %divisor, align 4
  %conv = trunc i32 %7 to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add = add i32 %10, 14
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %11 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %11, i16 %8) #6, !srcloc !109
  %supcsr = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %supcsr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16384, ptr %supcsr, align 4
  %scan_begin_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 4
  %13 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %cmp = icmp eq i32 %14, 4
  %. = select i1 %cmp, i32 1024, i32 3072
  %15 = ptrtoint ptr %supcsr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %., ptr %supcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %supcsr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %supcsr, align 4
  %18 = trunc i32 %17 to i16
  %conv13 = or i16 %18, 8768
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv13)
  %20 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase, align 4
  %add15 = add i32 %21, 12
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %22 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %22, i16 %19) #6, !srcloc !109
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 11
  %23 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stop_arg, align 4
  %scan_end_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 9
  %25 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_end_arg, align 4
  %mul = mul i32 %26, %24
  %ntrig = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %ntrig to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul, ptr %ntrig, align 4
  %nread = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 7
  %28 = ptrtoint ptr %nread to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %nread, align 4
  %dma_dir = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %dma_dir to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %dma_dir, align 4
  %cur_dma = getelementptr inbounds %struct.comedi_isadma, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %cur_dma to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %cur_dma, align 4
  %31 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %private, align 4
  %ntrig.i = getelementptr inbounds %struct.dt282x_private, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %ntrig.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ntrig.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i, label %entry.dt282x_prep_ai_dma.exit_crit_edge, label %if.end4.i

entry.dt282x_prep_ai_dma.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt282x_prep_ai_dma.exit

if.end4.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  %desc2.i = getelementptr inbounds %struct.comedi_isadma, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %desc2.i, align 4
  %maxsize.i = getelementptr %struct.comedi_isadma_desc, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %maxsize.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %maxsize.i, align 4
  %mul.i = shl i32 %34, 1
  %41 = tail call i32 @llvm.smin.i32(i32 %40, i32 %mul.i) #6
  %div.neg.i = sdiv i32 %41, -2
  %sub.i = add i32 %div.neg.i, %34
  %42 = ptrtoint ptr %ntrig.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %sub.i, ptr %ntrig.i, align 4
  %size.i = getelementptr %struct.comedi_isadma_desc, ptr %38, i32 0, i32 4
  %43 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %41, ptr %size.i, align 4
  br label %dt282x_prep_ai_dma.exit

dt282x_prep_ai_dma.exit:                          ; preds = %if.end4.i, %entry.dt282x_prep_ai_dma.exit_crit_edge
  %44 = ptrtoint ptr %ntrig to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ntrig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not = icmp eq i32 %45, 0
  br i1 %tobool.not, label %dt282x_prep_ai_dma.exit.if.end36_crit_edge, label %if.then22

dt282x_prep_ai_dma.exit.if.end36_crit_edge:       ; preds = %dt282x_prep_ai_dma.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then22:                                        ; preds = %dt282x_prep_ai_dma.exit
  %46 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %private, align 4
  %ntrig.i134 = getelementptr inbounds %struct.dt282x_private, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %ntrig.i134 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ntrig.i134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i135 = icmp eq i32 %49, 0
  br i1 %tobool.not.i135, label %if.then22.dt282x_prep_ai_dma.exit143_crit_edge, label %if.end4.i142

if.then22.dt282x_prep_ai_dma.exit143_crit_edge:   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt282x_prep_ai_dma.exit143

if.end4.i142:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  %desc2.i136 = getelementptr inbounds %struct.comedi_isadma, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %desc2.i136 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %desc2.i136, align 4
  %maxsize.i137 = getelementptr %struct.comedi_isadma_desc, ptr %53, i32 1, i32 3
  %54 = ptrtoint ptr %maxsize.i137 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %maxsize.i137, align 4
  %mul.i138 = shl i32 %49, 1
  %56 = tail call i32 @llvm.smin.i32(i32 %55, i32 %mul.i138) #6
  %div.neg.i139 = sdiv i32 %56, -2
  %sub.i140 = add i32 %div.neg.i139, %49
  %57 = ptrtoint ptr %ntrig.i134 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %sub.i140, ptr %ntrig.i134, align 4
  %size.i141 = getelementptr %struct.comedi_isadma_desc, ptr %53, i32 1, i32 4
  %58 = ptrtoint ptr %size.i141 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %56, ptr %size.i141, align 4
  br label %dt282x_prep_ai_dma.exit143

dt282x_prep_ai_dma.exit143:                       ; preds = %if.end4.i142, %if.then22.dt282x_prep_ai_dma.exit143_crit_edge
  %59 = ptrtoint ptr %supcsr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %supcsr, align 4
  %or25 = or i32 %60, 4096
  store i32 %or25, ptr %supcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %supcsr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %supcsr, align 4
  %conv30 = trunc i32 %62 to i16
  %63 = tail call i16 @llvm.bswap.i16(i16 %conv30)
  %64 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %iobase, align 4
  %add32 = add i32 %65, 12
  %and33 = and i32 %add32, 1048575
  %add34 = or i32 %and33, -18874368
  %66 = inttoptr i32 %add34 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %66, i16 %63) #6, !srcloc !109
  br label %if.end36

if.end36:                                         ; preds = %dt282x_prep_ai_dma.exit143, %dt282x_prep_ai_dma.exit.if.end36_crit_edge
  %adcsr = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 4
  %67 = ptrtoint ptr %adcsr to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %adcsr, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %68 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %chanlist_len, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  %70 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chanlist, align 4
  tail call fastcc void @dt282x_load_changain(ptr noundef %dev, i32 noundef %69, ptr noundef %71)
  %72 = ptrtoint ptr %adcsr to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 576, ptr %adcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %73 = ptrtoint ptr %adcsr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %adcsr, align 4
  %conv42 = trunc i32 %74 to i16
  %75 = tail call i16 @llvm.bswap.i16(i16 %conv42)
  %76 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %iobase, align 4
  %and45 = and i32 %77, 1048575
  %add46 = or i32 %and45, -18874368
  %78 = inttoptr i32 %add46 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %78, i16 %75) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  tail call void @arm_heavy_mb() #6
  %79 = ptrtoint ptr %supcsr to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %supcsr, align 4
  %81 = trunc i32 %80 to i16
  %conv53 = or i16 %81, 16
  %82 = tail call i16 @llvm.bswap.i16(i16 %conv53)
  %83 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %iobase, align 4
  %add55 = add i32 %84, 12
  %and56 = and i32 %add55, 1048575
  %add57 = or i32 %and56, -18874368
  %85 = inttoptr i32 %add57 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %85, i16 %82) #6, !srcloc !109
  %call59 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef null, ptr noundef nonnull @dt282x_ai_timeout, i32 noundef 256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end62:                                         ; preds = %if.end36
  %86 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %87)
  %cmp64 = icmp eq i32 %87, 4
  br i1 %cmp64, label %do.body67, label %if.else78

do.body67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %88 = ptrtoint ptr %supcsr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %supcsr, align 4
  %90 = trunc i32 %89 to i16
  %conv72 = or i16 %90, 8
  %91 = tail call i16 @llvm.bswap.i16(i16 %conv72)
  %92 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %iobase, align 4
  %add74 = add i32 %93, 12
  %and75 = and i32 %add74, 1048575
  %add76 = or i32 %and75, -18874368
  %94 = inttoptr i32 %add76 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %94, i16 %91) #6, !srcloc !109
  br label %cleanup

if.else78:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %supcsr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %supcsr, align 4
  %or80 = or i32 %96, 4
  store i32 %or80, ptr %supcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %97 = ptrtoint ptr %supcsr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %supcsr, align 4
  %conv85 = trunc i32 %98 to i16
  %99 = tail call i16 @llvm.bswap.i16(i16 %conv85)
  %100 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %iobase, align 4
  %add87 = add i32 %101, 12
  %and88 = and i32 %add87, 1048575
  %add89 = or i32 %and88, -18874368
  %102 = inttoptr i32 %add89 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %102, i16 %99) #6, !srcloc !109
  br label %cleanup

cleanup:                                          ; preds = %if.else78, %do.body67, %if.end36.cleanup_crit_edge
  ret i32 %call59
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt282x_ai_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %adcsr = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %adcsr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %adcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %adcsr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %adcsr, align 4
  %conv = trunc i32 %4 to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %and = and i32 %7, 1048575
  %add2 = or i32 %and, -18874368
  %8 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %5) #6, !srcloc !109
  %supcsr = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %supcsr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %supcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %supcsr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %supcsr, align 4
  %12 = trunc i32 %11 to i16
  %conv7 = or i16 %12, 64
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv7)
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %iobase, align 4
  %add9 = add i32 %15, 12
  %and10 = and i32 %add9, 1048575
  %add11 = or i32 %and10, -18874368
  %16 = inttoptr i32 %add11 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %16, i16 %13) #6, !srcloc !109
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt282x_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65535
  %shr = lshr i32 %3, 16
  %and2 = and i32 %shr, 255
  %shl = shl nuw nsw i32 %and, 9
  %dacsr = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dacsr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dacsr, align 4
  %or = or i32 %shl, %5
  %or3 = or i32 %or, 256
  store i32 %or3, ptr %dacsr, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp45.not = icmp eq i32 %7, 0
  br i1 %cmp45.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %range_table.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 15
  %maxdata.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %supcsr = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %i.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.046
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %readback, align 4
  %arrayidx4 = getelementptr i32, ptr %11, i32 %and
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %arrayidx4, align 4
  %13 = ptrtoint ptr %range_table.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %range_table.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_lrange, ptr %14, i32 0, i32 1, i32 %and2
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp slt i32 %16, 0
  br i1 %cmp.i, label %if.then, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %maxdata.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %maxdata.i, align 4
  %xor.i = xor i32 %18, %9
  %shr.i = lshr i32 %18, 1
  %xor2.i = xor i32 %xor.i, %shr.i
  br label %do.body

do.body:                                          ; preds = %if.then, %for.body.do.body_crit_edge
  %val.0 = phi i32 [ %xor2.i, %if.then ], [ %9, %for.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %dacsr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dacsr, align 4
  %conv = trunc i32 %20 to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %22 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase, align 4
  %add = add i32 %23, 6
  %and7 = and i32 %add, 1048575
  %add8 = or i32 %and7, -18874368
  %24 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %24, i16 %21) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  tail call void @arm_heavy_mb() #6
  %conv13 = trunc i32 %val.0 to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv13)
  %26 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iobase, align 4
  %add15 = add i32 %27, 8
  %and16 = and i32 %add15, 1048575
  %add17 = or i32 %and16, -18874368
  %28 = inttoptr i32 %add17 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %28, i16 %25) #6, !srcloc !109
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %supcsr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %supcsr, align 4
  %31 = trunc i32 %30 to i16
  %conv23 = or i16 %31, 128
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv23)
  %33 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase, align 4
  %add25 = add i32 %34, 12
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %35 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %35, i16 %32) #6, !srcloc !109
  %inc = add nuw i32 %i.046, 1
  %36 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %do.body.for.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %37, %do.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt282x_ao_cmdtest(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef %cmd) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %start_src, align 4
  %and.i = and i32 %3, 128
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
  %and.i76 = and i32 %5, 16
  store i32 %and.i76, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %cmp.i77 = icmp ne i32 %and.i76, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i76, i32 %5)
  %cmp1.not.i78 = icmp eq i32 %and.i76, %5
  %or.cond.i79 = and i1 %cmp.i77, %cmp1.not.i78
  %6 = select i1 %or.cond.i, i1 %or.cond.i79, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %7 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %convert_src, align 4
  %and.i81 = and i32 %8, 2
  store i32 %and.i81, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81)
  %cmp.i82 = icmp ne i32 %and.i81, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i81, i32 %8)
  %cmp1.not.i83 = icmp eq i32 %and.i81, %8
  %or.cond.i84 = and i1 %cmp.i82, %cmp1.not.i83
  %9 = select i1 %6, i1 %or.cond.i84, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %10 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_end_src, align 4
  %and.i86 = and i32 %11, 32
  store i32 %and.i86, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i86)
  %cmp.i87 = icmp ne i32 %and.i86, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i86, i32 %11)
  %cmp1.not.i88 = icmp eq i32 %and.i86, %11
  %or.cond.i89 = and i1 %cmp.i87, %cmp1.not.i88
  %12 = select i1 %9, i1 %or.cond.i89, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %13 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stop_src, align 4
  %and.i91 = and i32 %14, 33
  store i32 %and.i91, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91)
  %cmp.i92 = icmp ne i32 %and.i91, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i91, i32 %14)
  %cmp1.not.i93 = icmp eq i32 %and.i91, %14
  %or.cond.i94 = and i1 %cmp.i92, %cmp1.not.i93
  %15 = select i1 %12, i1 %or.cond.i94, i1 false
  br i1 %15, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = tail call i32 @llvm.ctpop.i32(i32 %14) #6, !range !121
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not.i = icmp ult i32 %16, 2
  br i1 %cmp.not.i, label %if.end14, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %17 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i96 = icmp eq i32 %18, 0
  br i1 %cmp.not.i96, label %if.end14.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end14.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end14.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i97 = phi i32 [ -22, %if.then.i ], [ 0, %if.end14.comedi_check_trigger_arg_is.exit_crit_edge ]
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %20 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %21)
  %cmp.i98 = icmp ult i32 %21, 5000
  br i1 %cmp.i98, label %if.then.i99, label %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit_crit_edge

comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_min.exit

if.then.i99:                                      ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5000, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i99, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i100 = phi i32 [ -22, %if.then.i99 ], [ 0, %comedi_check_trigger_arg_is.exit.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or18 = or i32 %retval.0.i100, %retval.0.i97
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %23 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not.i101 = icmp eq i32 %24, 0
  br i1 %cmp.not.i101, label %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit104_crit_edge, label %if.then.i102

comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit104_crit_edge: ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit104

if.then.i102:                                     ; preds = %comedi_check_trigger_arg_min.exit
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_is.exit104

comedi_check_trigger_arg_is.exit104:              ; preds = %if.then.i102, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit104_crit_edge
  %retval.0.i103 = phi i32 [ -22, %if.then.i102 ], [ 0, %comedi_check_trigger_arg_min.exit.comedi_check_trigger_arg_is.exit104_crit_edge ]
  %or20 = or i32 %or18, %retval.0.i103
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %26 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %chanlist_len, align 4
  %28 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp.not.i105 = icmp eq i32 %29, %27
  br i1 %cmp.not.i105, label %comedi_check_trigger_arg_is.exit104.comedi_check_trigger_arg_is.exit108_crit_edge, label %if.then.i106

comedi_check_trigger_arg_is.exit104.comedi_check_trigger_arg_is.exit108_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit104
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit108

if.then.i106:                                     ; preds = %comedi_check_trigger_arg_is.exit104
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit108

comedi_check_trigger_arg_is.exit108:              ; preds = %if.then.i106, %comedi_check_trigger_arg_is.exit104.comedi_check_trigger_arg_is.exit108_crit_edge
  %retval.0.i107 = phi i32 [ -22, %if.then.i106 ], [ 0, %comedi_check_trigger_arg_is.exit104.comedi_check_trigger_arg_is.exit108_crit_edge ]
  %or22 = or i32 %or20, %retval.0.i107
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %14)
  %cmp = icmp eq i32 %14, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %31 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i109 = icmp eq i32 %32, 0
  br i1 %cmp, label %if.then24, label %if.else

if.then24:                                        ; preds = %comedi_check_trigger_arg_is.exit108
  br i1 %cmp.i109, label %if.then24.if.end30.sink.split_crit_edge, label %if.then24.if.end30_crit_edge

if.then24.if.end30_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then24.if.end30.sink.split_crit_edge:          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.sink.split

if.else:                                          ; preds = %comedi_check_trigger_arg_is.exit108
  br i1 %cmp.i109, label %if.else.if.end30_crit_edge, label %if.else.if.end30.sink.split_crit_edge

if.else.if.end30.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.sink.split

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end30.sink.split:                              ; preds = %if.else.if.end30.sink.split_crit_edge, %if.then24.if.end30.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then24.if.end30.sink.split_crit_edge ], [ 0, %if.else.if.end30.sink.split_crit_edge ]
  %33 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else.if.end30_crit_edge, %if.then24.if.end30_crit_edge
  %call25.pn = phi i32 [ 0, %if.then24.if.end30_crit_edge ], [ 0, %if.else.if.end30_crit_edge ], [ -22, %if.end30.sink.split ]
  %err.0 = or i32 %or22, %call25.pn
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool31.not = icmp eq i32 %err.0, 0
  br i1 %tobool31.not, label %if.end33, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end33:                                         ; preds = %if.end30
  %34 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scan_begin_arg, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %and.i117 = and i32 %37, 196608
  %add6.i = add i32 %35, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end33
  %prescale.041.i = phi i32 [ 0, %if.end33 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %base.040.i = phi i32 [ -1, %if.end33 ], [ %base.1.i, %for.inc.i.for.body.i_crit_edge ]
  %divider.039.i = phi i32 [ -1, %if.end33 ], [ %divider.2.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %prescale.041.i)
  %cmp1.i = icmp eq i32 %prescale.041.i, 1
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %mul.i = shl nuw nsw i32 250, %prescale.041.i
  %38 = zext i32 %and.i117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %and.i117, label %sw.default.i [
    i32 131072, label %sw.bb5.i
    i32 65536, label %if.end.i.sw.epilog.i_crit_edge
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %div38.i = lshr exact i32 %mul.i, 1
  %add.i = add i32 %div38.i, %35
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i32 %add6.i, %mul.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb5.i, %sw.default.i, %if.end.i.sw.epilog.i_crit_edge
  %add.pn.i = phi i32 [ %add.i, %sw.default.i ], [ %sub.i, %sw.bb5.i ], [ %35, %if.end.i.sw.epilog.i_crit_edge ]
  %divider.1.i = udiv i32 %add.pn.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %divider.1.i)
  %cmp8.i = icmp ult i32 %divider.1.i, 256
  br i1 %cmp8.i, label %sw.epilog.i.dt282x_ns_to_timer.exit_crit_edge, label %sw.epilog.i.for.inc.i_crit_edge

sw.epilog.i.for.inc.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

sw.epilog.i.dt282x_ns_to_timer.exit_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt282x_ns_to_timer.exit

for.inc.i:                                        ; preds = %sw.epilog.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %divider.2.i = phi i32 [ %divider.039.i, %for.body.i.for.inc.i_crit_edge ], [ %divider.1.i, %sw.epilog.i.for.inc.i_crit_edge ]
  %base.1.i = phi i32 [ %base.040.i, %for.body.i.for.inc.i_crit_edge ], [ %mul.i, %sw.epilog.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %prescale.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.inc.i.dt282x_ns_to_timer.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.dt282x_ns_to_timer.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt282x_ns_to_timer.exit

dt282x_ns_to_timer.exit:                          ; preds = %for.inc.i.dt282x_ns_to_timer.exit_crit_edge, %sw.epilog.i.dt282x_ns_to_timer.exit_crit_edge
  %prescale.0.lcssa.i = phi i32 [ %prescale.041.i, %sw.epilog.i.dt282x_ns_to_timer.exit_crit_edge ], [ 16, %for.inc.i.dt282x_ns_to_timer.exit_crit_edge ]
  %divider.3.i = phi i32 [ %divider.1.i, %sw.epilog.i.dt282x_ns_to_timer.exit_crit_edge ], [ %divider.2.i, %for.inc.i.dt282x_ns_to_timer.exit_crit_edge ]
  %base.2.i = phi i32 [ %mul.i, %sw.epilog.i.dt282x_ns_to_timer.exit_crit_edge ], [ %base.1.i, %for.inc.i.dt282x_ns_to_timer.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %divider.3.i)
  %cmp11.i = icmp ugt i32 %divider.3.i, 255
  %39 = tail call i32 @llvm.umin.i32(i32 %divider.3.i, i32 255) #6
  %base.3.i = select i1 %cmp11.i, i32 8192000, i32 %base.2.i
  %mul16.i = mul i32 %base.3.i, %39
  %prescale.0.op.i = shl i32 %prescale.0.lcssa.i, 8
  %prescale.0.op.op.i = and i32 %prescale.0.op.i, 3840
  %shl18.i = select i1 %cmp11.i, i32 3840, i32 %prescale.0.op.op.i
  %40 = or i32 %shl18.i, %39
  %or.i = xor i32 %40, 255
  %divisor = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 2
  %41 = ptrtoint ptr %divisor to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i, ptr %divisor, align 4
  %42 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %mul16.i)
  %cmp.not.i118 = icmp eq i32 %43, %mul16.i
  br i1 %cmp.not.i118, label %dt282x_ns_to_timer.exit.cleanup_crit_edge, label %comedi_check_trigger_arg_is.exit121

dt282x_ns_to_timer.exit.cleanup_crit_edge:        ; preds = %dt282x_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

comedi_check_trigger_arg_is.exit121:              ; preds = %dt282x_ns_to_timer.exit
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul16.i, ptr %scan_begin_arg, align 4
  br label %cleanup

cleanup:                                          ; preds = %comedi_check_trigger_arg_is.exit121, %dt282x_ns_to_timer.exit.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end.cleanup_crit_edge ], [ 3, %if.end30.cleanup_crit_edge ], [ 4, %comedi_check_trigger_arg_is.exit121 ], [ 0, %dt282x_ns_to_timer.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt282x_ao_cmd(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s) #2 align 64 {
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
  %supcsr = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %supcsr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 22528, ptr %supcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %supcsr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %supcsr, align 4
  %9 = trunc i32 %8 to i16
  %conv = or i16 %9, 8736
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %11 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iobase, align 4
  %add = add i32 %12, 12
  %and = and i32 %add, 1048575
  %add6 = or i32 %and, -18874368
  %13 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %13, i16 %10) #6, !srcloc !109
  %stop_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 11
  %14 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stop_arg, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %16 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %chanlist_len, align 4
  %mul = mul i32 %17, %15
  %ntrig = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %ntrig to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %ntrig, align 4
  %nread = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %nread to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %nread, align 4
  %dma_dir = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %dma_dir to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %dma_dir, align 4
  %cur_dma = getelementptr inbounds %struct.comedi_isadma, ptr %3, i32 0, i32 3
  %21 = ptrtoint ptr %cur_dma to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cur_dma, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %divisor = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %divisor, align 4
  %conv11 = trunc i32 %23 to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv11)
  %25 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %iobase, align 4
  %add13 = add i32 %26, 14
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %27 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %27, i16 %24) #6, !srcloc !109
  %dacsr = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %dacsr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dacsr, align 4
  %and17 = and i32 %29, 3
  %or19 = or i32 %and17, 352
  store i32 %or19, ptr %dacsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %dacsr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dacsr, align 4
  %conv24 = trunc i32 %31 to i16
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv24)
  %33 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iobase, align 4
  %add26 = add i32 %34, 6
  %and27 = and i32 %add26, 1048575
  %add28 = or i32 %and27, -18874368
  %35 = inttoptr i32 %add28 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %35, i16 %32) #6, !srcloc !109
  %36 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %37, i32 0, i32 20
  %38 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @dt282x_ao_inttrig, ptr %inttrig, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt282x_ao_cancel(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %dacsr = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dacsr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dacsr, align 4
  %and = and i32 %3, 3
  store i32 %and, ptr %dacsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %dacsr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dacsr, align 4
  %conv = trunc i32 %5 to i16
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %7 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase, align 4
  %add = add i32 %8, 6
  %and2 = and i32 %add, 1048575
  %add3 = or i32 %and2, -18874368
  %9 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %9, i16 %6) #6, !srcloc !109
  %supcsr = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %supcsr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %supcsr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %supcsr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %supcsr, align 4
  %13 = trunc i32 %12 to i16
  %conv8 = or i16 %13, 32
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv8)
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase, align 4
  %add10 = add i32 %16, 12
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %17 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 %14) #6, !srcloc !109
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt282x_dio_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  tail call void @arm_heavy_mb() #6
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i16
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add = add i32 %4, 10
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %5, i16 %2) #6, !srcloc !109
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %iobase3 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase3, align 4
  %add4 = add i32 %7, 10
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %8 = inttoptr i32 %add6 to ptr
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %8) #6, !srcloc !110
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  %conv9 = zext i16 %10 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv9, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %12 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n, align 4
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt282x_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %2 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chanspec, align 4
  %and = and i32 %3, 65528
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %. = select i1 %cmp, i32 255, i32 65280
  %call = tail call i32 @comedi_dio_insn_config(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef %data, i32 noundef %.) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %entry
  %dacsr = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dacsr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dacsr, align 4
  %and3 = and i32 %5, -4
  store i32 %and3, ptr %dacsr, align 4
  %io_bits = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 12
  %6 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %io_bits, align 4
  %and4 = and i32 %7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end2.if.end8_crit_edge, label %if.then6

if.end2.if.end8_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %and3, 1
  %8 = ptrtoint ptr %dacsr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %dacsr, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end2.if.end8_crit_edge
  %9 = ptrtoint ptr %io_bits to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %io_bits, align 4
  %and10 = and i32 %10, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end8.do.body_crit_edge, label %if.then12

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %dacsr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dacsr, align 4
  %or14 = or i32 %12, 2
  store i32 %or14, ptr %dacsr, align 4
  br label %do.body

do.body:                                          ; preds = %if.then12, %if.end8.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %dacsr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dacsr, align 4
  %conv = trunc i32 %14 to i16
  %15 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add = add i32 %17, 6
  %and17 = and i32 %add, 1048575
  %add18 = or i32 %and17, -18874368
  %18 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %18, i16 %15) #6, !srcloc !109
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %19 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %do.body ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt282x_interrupt(i32 noundef %irq, ptr noundef %d) #2 align 64 {
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
  %write_subdev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 22
  %4 = ptrtoint ptr %write_subdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_subdev, align 4
  %attached = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 10
  %6 = ptrtoint ptr %attached to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %7 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 18
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %and = and i32 %10, 1048575
  %add1 = or i32 %and, -18874368
  %11 = inttoptr i32 %add1 to ptr
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %11) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %add5 = add i32 %14, 6
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %15 = inttoptr i32 %add7 to ptr
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %15) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  %17 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iobase, align 4
  %add14 = add i32 %18, 12
  %and15 = and i32 %add14, 1048575
  %add16 = or i32 %and15, -18874368
  %19 = inttoptr i32 %add16 to ptr
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %19) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %.mask = and i16 %20, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %tobool22.not = icmp eq i16 %.mask, 0
  br i1 %tobool22.not, label %if.end.if.end27_crit_edge, label %if.then23

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then23:                                        ; preds = %if.end
  %dma_dir = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %dma_dir to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp eq i32 %22, 0
  %23 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %private, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.then23
  %desc2.i = getelementptr inbounds %struct.comedi_isadma, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc2.i, align 4
  %cur_dma.i = getelementptr inbounds %struct.comedi_isadma, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cur_dma.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_isadma_desc, ptr %28, i32 %30
  %size.i = getelementptr %struct.comedi_isadma_desc, ptr %28, i32 %30, i32 4
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size.i, align 4
  %subdev_flags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 4
  %33 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i = and i32 %34, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %shr.i.i = lshr i32 %32, %cond.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  tail call void @arm_heavy_mb() #6
  %supcsr.i = getelementptr inbounds %struct.dt282x_private, ptr %24, i32 0, i32 5
  %35 = ptrtoint ptr %supcsr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %supcsr.i, align 4
  %37 = trunc i32 %36 to i16
  %conv.i = or i16 %37, 8192
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %39 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase, align 4
  %add.i = add i32 %40, 12
  %and.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %41 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %41, i16 %38) #6, !srcloc !109
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  %44 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size.i, align 4
  %46 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %private, align 4
  %rem.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %if.then25.if.end.i.i_crit_edge, label %do.end.i.i

if.then25.if.end.i.i_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %48 = ptrtoint ptr %class_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %class_dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.17) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then25.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp17.not.i.i = icmp ult i32 %45, 2
  br i1 %cmp17.not.i.i, label %if.end.i.i.dt282x_munge.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.dt282x_munge.exit.i_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt282x_munge.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %div15.i.i = lshr i32 %45, 1
  %maxdata.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 13
  %ad_2scomp.i.i = getelementptr inbounds %struct.dt282x_private, ptr %47, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.018.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %43, i32 %i.018.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %51 to i32
  %52 = ptrtoint ptr %maxdata.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %maxdata.i.i, align 4
  %and.i.i = and i32 %53, %conv.i.i
  %54 = ptrtoint ptr %ad_2scomp.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load.i.i = load i8, ptr %ad_2scomp.i.i, align 4
  %xor.i.i.i = xor i32 %and.i.i, %53
  %shr.i.i.i = lshr i32 %53, 1
  %xor2.i.i.i = xor i32 %xor.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i)
  %tobool1.not16.i.i = icmp slt i8 %bf.load.i.i, 0
  %val.0.i.i = select i1 %tobool1.not16.i.i, i32 %xor2.i.i.i, i32 %and.i.i
  %conv4.i.i = trunc i32 %val.0.i.i to i16
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv4.i.i, ptr %arrayidx.i.i, align 2
  %inc.i.i = add nuw nsw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div15.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.dt282x_munge.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.dt282x_munge.exit.i_crit_edge:       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt282x_munge.exit.i

dt282x_munge.exit.i:                              ; preds = %for.body.i.i.dt282x_munge.exit.i_crit_edge, %if.end.i.i.dt282x_munge.exit.i_crit_edge
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx.i, align 4
  %call8.i = tail call i32 @comedi_buf_write_samples(ptr noundef %3, ptr noundef %57, i32 noundef %shr.i.i) #6
  %58 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %59)
  %cmp.not.i = icmp eq i32 %call8.i, %59
  br i1 %cmp.not.i, label %if.end.i, label %dt282x_munge.exit.i.if.end27_crit_edge

dt282x_munge.exit.i.if.end27_crit_edge:           ; preds = %dt282x_munge.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end.i:                                         ; preds = %dt282x_munge.exit.i
  %nread.i = getelementptr inbounds %struct.dt282x_private, ptr %24, i32 0, i32 7
  %60 = ptrtoint ptr %nread.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nread.i, align 4
  %sub.i = sub i32 %61, %shr.i.i
  store i32 %sub.i, ptr %nread.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp12.i = icmp slt i32 %sub.i, 0
  br i1 %cmp12.i, label %if.end19.thread.i, label %if.end19.i

if.end19.thread.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %62 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.14) #9
  %64 = ptrtoint ptr %nread.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %nread.i, align 4
  br label %if.then21.i

if.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %shr.i.i)
  %tobool.not.i = icmp eq i32 %61, %shr.i.i
  br i1 %tobool.not.i, label %if.end19.i.if.then21.i_crit_edge, label %if.end23.i

if.end19.i.if.then21.i_crit_edge:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21.i

if.then21.i:                                      ; preds = %if.end19.i.if.then21.i_crit_edge, %if.end19.thread.i
  %async.i = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 7
  %65 = ptrtoint ptr %async.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %async.i, align 4
  %events.i = getelementptr inbounds %struct.comedi_async, ptr %66, i32 0, i32 16
  %67 = ptrtoint ptr %events.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %events.i, align 4
  %or22.i = or i32 %68, 2
  store i32 %or22.i, ptr %events.i, align 4
  br label %if.end27

if.end23.i:                                       ; preds = %if.end19.i
  %69 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %private, align 4
  %ntrig.i.i = getelementptr inbounds %struct.dt282x_private, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %ntrig.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ntrig.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i56.i = icmp eq i32 %72, 0
  br i1 %tobool.not.i56.i, label %if.end23.i.dt282x_prep_ai_dma.exit.i_crit_edge, label %if.end4.i.i

if.end23.i.dt282x_prep_ai_dma.exit.i_crit_edge:   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dt282x_prep_ai_dma.exit.i

if.end4.i.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %cur_dma.i, align 4
  %75 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %70, align 4
  %desc2.i.i = getelementptr inbounds %struct.comedi_isadma, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %desc2.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %desc2.i.i, align 4
  %maxsize.i.i = getelementptr %struct.comedi_isadma_desc, ptr %78, i32 %74, i32 3
  %79 = ptrtoint ptr %maxsize.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %maxsize.i.i, align 4
  %mul.i.i = shl i32 %72, 1
  %81 = tail call i32 @llvm.smin.i32(i32 %80, i32 %mul.i.i) #6
  %div.neg.i.i = sdiv i32 %81, -2
  %sub.i.i = add i32 %div.neg.i.i, %72
  %82 = ptrtoint ptr %ntrig.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %sub.i.i, ptr %ntrig.i.i, align 4
  %size.i.i = getelementptr %struct.comedi_isadma_desc, ptr %78, i32 %74, i32 4
  %83 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %81, ptr %size.i.i, align 4
  br label %dt282x_prep_ai_dma.exit.i

dt282x_prep_ai_dma.exit.i:                        ; preds = %if.end4.i.i, %if.end23.i.dt282x_prep_ai_dma.exit.i_crit_edge
  %84 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %cur_dma.i, align 4
  %sub27.i = sub i32 1, %85
  store i32 %sub27.i, ptr %cur_dma.i, align 4
  br label %if.end27

if.else:                                          ; preds = %if.then23
  %cur_dma.i86 = getelementptr inbounds %struct.comedi_isadma, ptr %26, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %supcsr.i87 = getelementptr inbounds %struct.dt282x_private, ptr %24, i32 0, i32 5
  %86 = ptrtoint ptr %supcsr.i87 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %supcsr.i87, align 4
  %88 = trunc i32 %87 to i16
  %conv.i88 = or i16 %88, 8192
  %89 = tail call i16 @llvm.bswap.i16(i16 %conv.i88) #6
  %90 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %iobase, align 4
  %add.i90 = add i32 %91, 12
  %and.i91 = and i32 %add.i90, 1048575
  %add3.i92 = or i32 %and.i91, -18874368
  %92 = inttoptr i32 %add3.i92 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %92, i16 %89) #6, !srcloc !109
  %93 = ptrtoint ptr %cur_dma.i86 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %cur_dma.i86, align 4
  %95 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %private, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %96, align 4
  %desc2.i.i93 = getelementptr inbounds %struct.comedi_isadma, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %desc2.i.i93 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %desc2.i.i93, align 4
  %arrayidx.i.i94 = getelementptr %struct.comedi_isadma_desc, ptr %100, i32 %94
  %maxsize.i.i95 = getelementptr %struct.comedi_isadma_desc, ptr %100, i32 %94, i32 3
  %101 = ptrtoint ptr %maxsize.i.i95 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %maxsize.i.i95, align 4
  %subdev_flags.i.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %5, i32 0, i32 4
  %103 = ptrtoint ptr %subdev_flags.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %subdev_flags.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %104, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 2
  %shr.i.i.i96 = lshr i32 %102, %cond.i.i.i.i
  %105 = ptrtoint ptr %arrayidx.i.i94 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i.i94, align 4
  %call3.i.i = tail call i32 @comedi_buf_read_samples(ptr noundef %5, ptr noundef %106, i32 noundef %shr.i.i.i96) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i97 = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i97, label %if.then.i, label %dt282x_ao_setup_dma.exit.i

dt282x_ao_setup_dma.exit.i:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %private, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %desc2.i.i.i = getelementptr inbounds %struct.comedi_isadma, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %desc2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %desc2.i.i.i, align 4
  %size.i.i.i = getelementptr %struct.comedi_isadma_desc, ptr %112, i32 %94, i32 4
  %113 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %call3.i.i, ptr %size.i.i.i, align 4
  br label %dt282x_ao_dma_interrupt.exit

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i.i98 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %114 = ptrtoint ptr %class_dev.i.i98 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %class_dev.i.i98, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %115, ptr noundef nonnull @.str.19) #9
  %async.i99 = getelementptr inbounds %struct.comedi_subdevice, ptr %5, i32 0, i32 7
  %116 = ptrtoint ptr %async.i99 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %async.i99, align 4
  %events.i100 = getelementptr inbounds %struct.comedi_async, ptr %117, i32 0, i32 16
  %118 = ptrtoint ptr %events.i100 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %events.i100, align 4
  %or7.i = or i32 %119, 32
  store i32 %or7.i, ptr %events.i100, align 4
  br label %dt282x_ao_dma_interrupt.exit

dt282x_ao_dma_interrupt.exit:                     ; preds = %if.then.i, %dt282x_ao_setup_dma.exit.i
  %120 = ptrtoint ptr %cur_dma.i86 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cur_dma.i86, align 4
  %sub.i101 = sub i32 1, %121
  store i32 %sub.i101, ptr %cur_dma.i86, align 4
  br label %if.end27

if.end27:                                         ; preds = %dt282x_ao_dma_interrupt.exit, %dt282x_prep_ai_dma.exit.i, %if.then21.i, %dt282x_munge.exit.i.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %handled.0 = phi i32 [ 0, %if.end.if.end27_crit_edge ], [ 1, %dt282x_ao_dma_interrupt.exit ], [ 1, %dt282x_munge.exit.i.if.end27_crit_edge ], [ 1, %if.then21.i ], [ 1, %dt282x_prep_ai_dma.exit.i ]
  %.mask83 = and i16 %12, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask83)
  %tobool29.not = icmp eq i16 %.mask83, 0
  br i1 %tobool29.not, label %if.end27.if.end39_crit_edge, label %if.then30

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then30:                                        ; preds = %if.end27
  %nread = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 7
  %122 = ptrtoint ptr %nread to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %nread, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %cmp31.not = icmp eq i32 %123, 0
  br i1 %cmp31.not, label %if.then30.if.end39_crit_edge, label %do.end36

if.then30.if.end39_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

do.end36:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev37 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %124 = ptrtoint ptr %class_dev37 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %class_dev37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.9) #9
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %3, i32 0, i32 7
  %126 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %async, align 4
  %events = getelementptr inbounds %struct.comedi_async, ptr %127, i32 0, i32 16
  %128 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %events, align 4
  %or = or i32 %129, 16
  store i32 %or, ptr %events, align 4
  br label %if.end39

if.end39:                                         ; preds = %do.end36, %if.then30.if.end39_crit_edge, %if.end27.if.end39_crit_edge
  %handled.1 = phi i32 [ %handled.0, %if.end27.if.end39_crit_edge ], [ 1, %do.end36 ], [ 1, %if.then30.if.end39_crit_edge ]
  %.mask84 = and i16 %16, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask84)
  %tobool41.not = icmp eq i16 %.mask84, 0
  br i1 %tobool41.not, label %if.end39.if.end50_crit_edge, label %do.end45

if.end39.if.end50_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev46 = getelementptr inbounds %struct.comedi_device, ptr %d, i32 0, i32 4
  %130 = ptrtoint ptr %class_dev46 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %class_dev46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %131, ptr noundef nonnull @.str.12) #9
  %async47 = getelementptr inbounds %struct.comedi_subdevice, ptr %5, i32 0, i32 7
  %132 = ptrtoint ptr %async47 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %async47, align 4
  %events48 = getelementptr inbounds %struct.comedi_async, ptr %133, i32 0, i32 16
  %134 = ptrtoint ptr %events48 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %events48, align 4
  %or49 = or i32 %135, 16
  store i32 %or49, ptr %events48, align 4
  br label %if.end50

if.end50:                                         ; preds = %do.end45, %if.end39.if.end50_crit_edge
  %handled.2 = phi i32 [ 1, %do.end45 ], [ %handled.1, %if.end39.if.end50_crit_edge ]
  %call51 = tail call i32 @comedi_handle_events(ptr noundef %d, ptr noundef %3) #6
  %tobool52.not = icmp eq ptr %5, null
  br i1 %tobool52.not, label %if.end50.if.end55_crit_edge, label %if.then53

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  %call54 = tail call i32 @comedi_handle_events(ptr noundef %d, ptr noundef nonnull %5) #6
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end50.if.end55_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.2)
  %tobool56.not = icmp ne i32 %handled.2, 0
  %cond = zext i1 %tobool56.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end
  %retval.0 = phi i32 [ %cond, %if.end55 ], [ 1, %do.end ]
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_read_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dt282x_load_changain(ptr nocapture noundef readonly %dev, i32 noundef %n, ptr nocapture noundef readonly %chanlist) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void @arm_heavy_mb() #6
  %2 = trunc i32 %n to i16
  %3 = add i16 %2, 15
  %4 = and i16 %3, 15
  %conv = or i16 %4, -32768
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add = add i32 %7, 2
  %and1 = and i32 %add, 1048575
  %add2 = or i32 %and1, -18874368
  %8 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %8, i16 %5) #6, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp43 = icmp sgt i32 %n, 0
  br i1 %cmp43, label %for.body.lr.ph, label %entry.do.body22_crit_edge

entry.do.body22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body22

for.body.lr.ph:                                   ; preds = %entry
  %adcsr = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %chanlist, i32 %i.044
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %adcsr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %adcsr, align 4
  %13 = lshr i32 %10, 12
  %shl11 = and i32 %13, 48
  %and13 = and i32 %10, 15
  %or12 = or i32 %shl11, %and13
  %or15 = or i32 %or12, %12
  %conv16 = trunc i32 %or15 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv16)
  %15 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase, align 4
  %and19 = and i32 %16, 1048575
  %add20 = or i32 %and19, -18874368
  %17 = inttoptr i32 %add20 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %17, i16 %14) #6, !srcloc !109
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.body.do.body22_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.do.body22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body22

do.body22:                                        ; preds = %for.body.do.body22_crit_edge, %entry.do.body22_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %18 = shl nuw nsw i16 %4, 8
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase, align 4
  %add30 = add i32 %20, 2
  %and31 = and i32 %add30, 1048575
  %add32 = or i32 %and31, -18874368
  %21 = inttoptr i32 %add32 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %21, i16 %18) #6, !srcloc !109
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt282x_ai_timeout(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %2) #6, !srcloc !110
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  %conv = zext i16 %4 to i32
  %5 = zext i32 %context to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %context, label %entry.cleanup_crit_edge [
    i32 256, label %sw.bb
    i32 128, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %and3 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp = icmp eq i32 %and3, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %and6 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %sw.bb5.sw.epilog_crit_edge, label %sw.bb5.cleanup_crit_edge

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %sw.epilog ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb5.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dt282x_ao_inttrig(ptr nocapture noundef readonly %dev, ptr noundef %s, i32 noundef %trig_num) #2 align 64 {
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
  %start_src = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 2
  %4 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %trig_num)
  %cmp.not = icmp eq i32 %5, %trig_num
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %desc2.i = getelementptr inbounds %struct.comedi_isadma, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc2.i, align 4
  %maxsize.i = getelementptr %struct.comedi_isadma_desc, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %maxsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxsize.i, align 4
  %subdev_flags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %12 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i = and i32 %13, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %shr.i.i = lshr i32 %11, %cond.i.i.i
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %call3.i = tail call i32 @comedi_buf_read_samples(ptr noundef %s, ptr noundef %15, i32 noundef %shr.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %dt282x_ao_setup_dma.exit.thread, label %if.end3

dt282x_ao_setup_dma.exit.thread:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %18 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %private, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %desc2.i.i = getelementptr inbounds %struct.comedi_isadma, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %desc2.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc2.i.i, align 4
  %size.i.i = getelementptr %struct.comedi_isadma_desc, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call3.i, ptr %size.i.i, align 4
  %25 = load ptr, ptr %private, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %desc2.i19 = getelementptr inbounds %struct.comedi_isadma, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %desc2.i19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc2.i19, align 4
  %arrayidx.i = getelementptr %struct.comedi_isadma_desc, ptr %29, i32 1
  %maxsize.i20 = getelementptr %struct.comedi_isadma_desc, ptr %29, i32 1, i32 3
  %30 = ptrtoint ptr %maxsize.i20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maxsize.i20, align 4
  %32 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i22 = and i32 %33, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i22)
  %tobool.not.i.i.i23 = icmp eq i32 %and.i.i.i22, 0
  %cond.i.i.i24 = select i1 %tobool.not.i.i.i23, i32 1, i32 2
  %shr.i.i25 = lshr i32 %31, %cond.i.i.i24
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %call3.i26 = tail call i32 @comedi_buf_read_samples(ptr noundef %s, ptr noundef %35, i32 noundef %shr.i.i25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i26)
  %tobool.not.i27 = icmp eq i32 %call3.i26, 0
  br i1 %tobool.not.i27, label %dt282x_ao_setup_dma.exit33.thread, label %do.body

dt282x_ao_setup_dma.exit33.thread:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %class_dev.i31 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %36 = ptrtoint ptr %class_dev.i31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %class_dev.i31, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.19) #9
  br label %cleanup

do.body:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %private, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %desc2.i.i28 = getelementptr inbounds %struct.comedi_isadma, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %desc2.i.i28 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc2.i.i28, align 4
  %size.i.i29 = getelementptr %struct.comedi_isadma_desc, ptr %43, i32 1, i32 4
  %44 = ptrtoint ptr %size.i.i29 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call3.i26, ptr %size.i.i29, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !151
  tail call void @arm_heavy_mb() #6
  %supcsr = getelementptr inbounds %struct.dt282x_private, ptr %1, i32 0, i32 5
  %45 = ptrtoint ptr %supcsr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %supcsr, align 4
  %47 = trunc i32 %46 to i16
  %conv = or i16 %47, 8
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %49 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase, align 4
  %add = add i32 %50, 12
  %and = and i32 %add, 1048575
  %add8 = or i32 %and, -18874368
  %51 = inttoptr i32 %add8 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %51, i16 %48) #6, !srcloc !109
  %52 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %53, i32 0, i32 20
  %54 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %inttrig, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %dt282x_ao_setup_dma.exit33.thread, %dt282x_ao_setup_dma.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ -22, %entry.cleanup_crit_edge ], [ -32, %dt282x_ao_setup_dma.exit.thread ], [ -32, %dt282x_ao_setup_dma.exit33.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_insn_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__initcall__kmod_dt282x__234_1166_dt282x_driver_init6, !1, !"__initcall__kmod_dt282x__234_1166_dt282x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/dt282x.c", i32 1166, i32 1}
!2 = !{ptr @__exitcall_dt282x_driver_exit, !1, !"__exitcall_dt282x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/dt282x.c", i32 1168, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/dt282x.c", i32 1169, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/dt282x.c", i32 1170, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/dt282x.c", i32 1158, i32 17}
!12 = !{ptr @dt282x_driver, !13, !"dt282x_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/dt282x.c", i32 1157, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/dt282x.c", i32 1054, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dt282x_initialize._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @dt282x_initialize._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/dt282x.c", i32 502, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @dt282x_interrupt._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @dt282x_interrupt._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/comedi/drivers/dt282x.c", i32 518, i32 4}
!29 = !{ptr @dt282x_interrupt._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @dt282x_interrupt._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/comedi/drivers/dt282x.c", i32 524, i32 3}
!33 = !{ptr @dt282x_interrupt._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @dt282x_interrupt._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/comedi/drivers/dt282x.c", i32 478, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @dt282x_ai_dma_interrupt._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @dt282x_ai_dma_interrupt._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/comedi/drivers/dt282x.c", i32 407, i32 3}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @dt282x_munge._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @dt282x_munge._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/comedi/drivers/dt282x.c", i32 434, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @dt282x_ao_setup_dma._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @dt282x_ao_setup_dma._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ai_range_pgl_table, !52, !"ai_range_pgl_table", i1 false, i1 false}
!52 = !{!"../drivers/comedi/drivers/dt282x.c", i32 981, i32 42}
!53 = !{ptr @range_dt282x_ai_hi_bipolar, !54, !"range_dt282x_ai_hi_bipolar", i1 false, i1 false}
!54 = !{!"../drivers/comedi/drivers/dt282x.c", i32 153, i32 35}
!55 = !{ptr @range_dt282x_ai_hi_unipolar, !56, !"range_dt282x_ai_hi_unipolar", i1 false, i1 false}
!56 = !{!"../drivers/comedi/drivers/dt282x.c", i32 162, i32 35}
!57 = !{ptr @ai_range_table, !58, !"ai_range_table", i1 false, i1 false}
!58 = !{!"../drivers/comedi/drivers/dt282x.c", i32 974, i32 42}
!59 = !{ptr @range_dt282x_ai_lo_bipolar, !60, !"range_dt282x_ai_lo_bipolar", i1 false, i1 false}
!60 = !{!"../drivers/comedi/drivers/dt282x.c", i32 117, i32 35}
!61 = !{ptr @range_dt282x_ai_lo_unipolar, !62, !"range_dt282x_ai_lo_unipolar", i1 false, i1 false}
!62 = !{!"../drivers/comedi/drivers/dt282x.c", i32 126, i32 35}
!63 = !{ptr @range_dt282x_ai_5_bipolar, !64, !"range_dt282x_ai_5_bipolar", i1 false, i1 false}
!64 = !{!"../drivers/comedi/drivers/dt282x.c", i32 135, i32 35}
!65 = !{ptr @range_dt282x_ai_5_unipolar, !66, !"range_dt282x_ai_5_unipolar", i1 false, i1 false}
!66 = !{!"../drivers/comedi/drivers/dt282x.c", i32 144, i32 35}
!67 = !{ptr @dt282x_ao_range, !68, !"dt282x_ao_range", i1 false, i1 false}
!68 = !{!"../drivers/comedi/drivers/dt282x.c", i32 176, i32 35}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/comedi/drivers/dt282x.c", i32 199, i32 12}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/comedi/drivers/dt282x.c", i32 207, i32 12}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/comedi/drivers/dt282x.c", i32 215, i32 12}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/comedi/drivers/dt282x.c", i32 223, i32 12}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/comedi/drivers/dt282x.c", i32 230, i32 12}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/comedi/drivers/dt282x.c", i32 236, i32 12}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/comedi/drivers/dt282x.c", i32 243, i32 12}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/comedi/drivers/dt282x.c", i32 252, i32 12}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/comedi/drivers/dt282x.c", i32 259, i32 12}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/comedi/drivers/dt282x.c", i32 266, i32 12}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/comedi/drivers/dt282x.c", i32 273, i32 12}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/comedi/drivers/dt282x.c", i32 281, i32 12}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/comedi/drivers/dt282x.c", i32 287, i32 12}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/comedi/drivers/dt282x.c", i32 293, i32 12}
!97 = !{ptr @boardtypes, !98, !"boardtypes", i1 false, i1 false}
!98 = !{!"../drivers/comedi/drivers/dt282x.c", i32 197, i32 34}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{i64 2154261547}
!109 = !{i64 4651159}
!110 = !{i64 4651359}
!111 = !{i64 2154262504}
!112 = !{i64 2154263191}
!113 = !{i64 2154263878}
!114 = !{i64 2154264565}
!115 = !{i64 2154265252}
!116 = !{i64 2154265939}
!117 = !{i64 2154243293}
!118 = !{i64 2154243921}
!119 = !{i64 2154244693}
!120 = !{i64 2154245768}
!121 = !{i32 0, i32 33}
!122 = !{i64 2154246320}
!123 = !{i64 2154247358}
!124 = !{i64 2154248144}
!125 = !{i64 2154248825}
!126 = !{i64 2154249453}
!127 = !{i64 2154250248}
!128 = !{i64 2154250908}
!129 = !{i64 2154251425}
!130 = !{i64 2154252053}
!131 = !{i64 2154252794}
!132 = !{i64 2154253298}
!133 = !{i64 2154253904}
!134 = !{i64 2154255819}
!135 = !{i64 2154256522}
!136 = !{i64 2154257451}
!137 = !{i64 2154258130}
!138 = !{i64 2154258758}
!139 = !{i64 2154259329}
!140 = !{i64 2154260248}
!141 = !{i64 2154260877}
!142 = !{i64 2154235156}
!143 = !{i64 2154235843}
!144 = !{i64 2154236530}
!145 = !{i64 2154231034}
!146 = !{i64 2154230339}
!147 = !{i64 2154240228}
!148 = !{i64 2154240991}
!149 = !{i64 2154241651}
!150 = !{i64 2154242606}
!151 = !{i64 2154254680}
