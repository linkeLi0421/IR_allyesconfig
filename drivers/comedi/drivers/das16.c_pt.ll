; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/das16.c_pt.bc'
source_filename = "../drivers/comedi/drivers/das16.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.comedi_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.das16_board = type { ptr, i32, i32, i32, i8, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.das16_private_struct = type { ptr, ptr, i32, i32, i32, i32, %struct.timer_list, i32, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.comedi_isadma = type { ptr, ptr, i32, i32, i32, i32 }
%struct.comedi_isadma_desc = type { ptr, i32, i32, i32, i32, i8 }

@__initcall__kmod_das16__236_1194_das16_driver_init6 = internal global ptr @das16_driver_init, section ".initcall6.init", align 4
@das16_driver = internal global { %struct.comedi_driver, [60 x i8] } { %struct.comedi_driver { ptr null, ptr @.str, ptr null, ptr @das16_attach, ptr @das16_detach, ptr null, i32 22, ptr @das16_boards, i32 32 }, [60 x i8] zeroinitializer }, align 32
@__exitcall_das16_driver_exit = internal global ptr @das16_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [43 x i8] c"das16.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [60 x i8] c"das16.description=Comedi driver for DAS16 compatible boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [40 x i8] c"das16.file=drivers/comedi/drivers/das16\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [18 x i8] c"das16.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"das16\00", [26 x i8] zeroinitializer }, align 32
@das16_boards = internal constant { [22 x %struct.das16_board], [160 x i8] } { [22 x %struct.das16_board] [%struct.das16_board { ptr @.str.22, i32 4095, i32 15000, i32 0, i8 -64, i32 16, i32 20, i32 0 }, %struct.das16_board { ptr @.str.23, i32 4095, i32 15000, i32 0, i8 -64, i32 16, i32 20, i32 0 }, %struct.das16_board { ptr @.str.24, i32 4095, i32 8500, i32 0, i8 -64, i32 16, i32 20, i32 0 }, %struct.das16_board { ptr @.str.25, i32 4095, i32 20000, i32 0, i8 -64, i32 16, i32 20, i32 128 }, %struct.das16_board { ptr @.str.26, i32 4095, i32 10000, i32 0, i8 -64, i32 16, i32 20, i32 128 }, %struct.das16_board { ptr @.str.27, i32 4095, i32 7692, i32 1, i8 0, i32 0, i32 16, i32 0 }, %struct.das16_board { ptr @.str.28, i32 4095, i32 3300, i32 1, i8 0, i32 0, i32 16, i32 0 }, %struct.das16_board { ptr @.str.29, i32 65535, i32 10000, i32 2, i8 0, i32 0, i32 16, i32 0 }, %struct.das16_board { ptr @.str.30, i32 65535, i32 10000, i32 2, i8 0, i32 0, i32 16, i32 0 }, %struct.das16_board { ptr @.str.31, i32 4095, i32 20000, i32 0, i8 64, i32 1024, i32 1032, i32 32 }, %struct.das16_board { ptr @.str.32, i32 4095, i32 10000, i32 0, i8 64, i32 1024, i32 1032, i32 32 }, %struct.das16_board { ptr @.str.33, i32 4095, i32 10000, i32 3, i8 0, i32 0, i32 1032, i32 192 }, %struct.das16_board { ptr @.str.34, i32 4095, i32 10000, i32 4, i8 0, i32 0, i32 1032, i32 192 }, %struct.das16_board { ptr @.str.35, i32 4095, i32 10000, i32 3, i8 -64, i32 1024, i32 1032, i32 192 }, %struct.das16_board { ptr @.str.36, i32 4095, i32 10000, i32 4, i8 -64, i32 1024, i32 1032, i32 192 }, %struct.das16_board { ptr @.str.37, i32 4095, i32 6250, i32 3, i8 0, i32 0, i32 1032, i32 192 }, %struct.das16_board { ptr @.str.38, i32 4095, i32 6250, i32 4, i8 0, i32 0, i32 1032, i32 192 }, %struct.das16_board { ptr @.str.39, i32 65535, i32 10000, i32 4, i8 0, i32 0, i32 1032, i32 192 }, %struct.das16_board { ptr @.str.40, i32 4095, i32 6250, i32 3, i8 -64, i32 1024, i32 1032, i32 192 }, %struct.das16_board { ptr @.str.41, i32 4095, i32 10000, i32 4, i8 -64, i32 1024, i32 1032, i32 192 }, %struct.das16_board { ptr @.str.42, i32 65535, i32 10000, i32 4, i8 -64, i32 1024, i32 1032, i32 192 }, %struct.das16_board { ptr @.str.43, i32 4095, i32 3030, i32 1, i8 0, i32 0, i32 20, i32 240 }], [160 x i8] zeroinitializer }, align 32
@das16_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1028, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Invalid option. Master clock must be set to 1 or 10 (MHz)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"das16_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/comedi/drivers/das16.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@das16_attach._entry_ptr = internal global ptr @das16_attach._entry, section ".printk_index", align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@das16_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 909, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"requested board's id bits are incorrect (0x%x != 0x%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"das16_probe\00", [20 x i8] zeroinitializer }, align 32
@das16_probe._entry_ptr = internal global ptr @das16_probe._entry, section ".printk_index", align 4
@das16_alloc_dma.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"(&devpriv->timer)\00", [46 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@das16_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 494, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"residue > transfer size!\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"das16_interrupt\00", [16 x i8] zeroinitializer }, align 32
@das16_interrupt._entry_ptr = internal global ptr @das16_interrupt._entry, section ".printk_index", align 4
@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@das16_ai_uni_lranges = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @range_unknown, ptr @range_das16jr, ptr @range_das16jr_16, ptr @range_das1x01_unip, ptr @range_das1x02_unip], [44 x i8] zeroinitializer }, align 32
@das16_ai_bip_lranges = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @range_unknown, ptr @range_das16jr, ptr @range_das16jr_16, ptr @range_das1x01_bip, ptr @range_das1x02_bip], [44 x i8] zeroinitializer }, align 32
@range_das16jr = internal constant { { i32, [9 x %struct.comedi_krange] }, [48 x i8] } { { i32, [9 x %struct.comedi_krange] } { i32 9, [9 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@range_das16jr_16 = internal constant { { i32, [8 x %struct.comedi_krange] }, [60 x i8] } { { i32, [8 x %struct.comedi_krange] } { i32 8, [8 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [60 x i8] zeroinitializer }, align 32
@range_das1x01_unip = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_das1x02_unip = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_das1x01_bip = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -10000, i32 10000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@range_das1x02_bip = internal constant { { i32, [4 x %struct.comedi_krange] }, [44 x i8] } { { i32, [4 x %struct.comedi_krange] } { i32 4, [4 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@das16_gainlists = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr @das16jr_gainlist, ptr @das16jr_16_gainlist, ptr @das1600_gainlist, ptr @das1600_gainlist], [44 x i8] zeroinitializer }, align 32
@das16jr_gainlist = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 8, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], [60 x i8] zeroinitializer }, align 32
@das16jr_16_gainlist = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], [32 x i8] zeroinitializer }, align 32
@das1600_gainlist = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@das16_ai_check_chanlist.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 -114, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"das16_ai_check_chanlist\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"entries in chanlist must be consecutive channels, counting upwards\0A\00", [60 x i8] zeroinitializer }, align 32
@das16_ai_check_chanlist.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.19, i8 0, i8 -113, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"entries in chanlist must all have the same gain\0A\00", [47 x i8] zeroinitializer }, align 32
@das16_cmd_exec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 707, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"isa dma transfers cannot be performed with CMDF_PRIORITY, aborting\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"das16_cmd_exec\00", [17 x i8] zeroinitializer }, align 32
@das16_cmd_exec._entry_ptr = internal global ptr @das16_cmd_exec._entry, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"das-16\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"das-16g\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"das-16f\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cio-das16\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cio-das16/f\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cio-das16/jr\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc104-das16jr\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cio-das16jr/16\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pc104-das16jr/16\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"das-1201\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"das-1202\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"das-1401\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"das-1402\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"das-1601\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"das-1602\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cio-das1401/12\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cio-das1402/12\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cio-das1402/16\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cio-das1601/12\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cio-das1602/12\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cio-das1602/16\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cio-das16/330\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 10]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"das16_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1185, i32 29 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1186, i32 17 }
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"das16_boards\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 229, i32 33 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 1027, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 907, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 927, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 494, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"das16_ai_uni_lranges\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 199, i32 42 }
@___asan_gen_.99 = private unnamed_addr constant [21 x i8] c"das16_ai_bip_lranges\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 207, i32 42 }
@___asan_gen_.102 = private unnamed_addr constant [14 x i8] c"range_das16jr\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 152, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"range_das16jr_16\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 166, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"range_das1x01_unip\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 125, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"range_das1x02_unip\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 143, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant [18 x i8] c"range_das1x01_bip\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 116, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"range_das1x02_bip\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 134, i32 35 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"das16_gainlists\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 191, i32 25 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"das16jr_gainlist\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 179, i32 18 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"das16jr_16_gainlist\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 180, i32 18 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"das1600_gainlist\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 181, i32 18 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 568, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 574, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 706, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 231, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 241, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 251, i32 12 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 261, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 271, i32 12 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 281, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 288, i32 12 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 295, i32 12 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 302, i32 12 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 309, i32 12 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 318, i32 12 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 327, i32 12 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 334, i32 12 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 341, i32 12 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 351, i32 12 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 361, i32 12 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 368, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 375, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 382, i32 12 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 392, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 402, i32 12 }
@___asan_gen_.213 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.214 = private constant [34 x i8] c"../drivers/comedi/drivers/das16.c\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 412, i32 12 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_das16_driver_exit, ptr @__initcall__kmod_das16__236_1194_das16_driver_init6, ptr @das16_attach._entry, ptr @das16_attach._entry_ptr, ptr @das16_cmd_exec._entry, ptr @das16_cmd_exec._entry_ptr, ptr @das16_driver_exit, ptr @das16_interrupt._entry, ptr @das16_interrupt._entry_ptr, ptr @das16_probe._entry, ptr @das16_probe._entry_ptr, ptr @das16_driver, ptr @.str, ptr @das16_boards, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @das16_alloc_dma.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @das16_ai_uni_lranges, ptr @das16_ai_bip_lranges, ptr @range_das16jr, ptr @range_das16jr_16, ptr @range_das1x01_unip, ptr @range_das1x02_unip, ptr @range_das1x01_bip, ptr @range_das1x02_bip, ptr @das16_gainlists, ptr @das16jr_gainlist, ptr @das16jr_16_gainlist, ptr @das1600_gainlist, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16_driver to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16_boards to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16_alloc_dma.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16_ai_uni_lranges to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16_ai_bip_lranges to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_das16jr to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_das16jr_16 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_das1x01_unip to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_das1x02_unip to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_das1x01_bip to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @range_das1x02_bip to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16_gainlists to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16jr_gainlist to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16jr_16_gainlist to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das1600_gainlist to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das16_cmd_exec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @das16_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_driver_register(ptr noundef nonnull @das16_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @das16_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @comedi_driver_unregister(ptr noundef nonnull @das16_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16_attach(ptr noundef %dev, ptr nocapture noundef readonly %it) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %options = getelementptr inbounds %struct.comedi_devconfig, ptr %it, i32 0, i32 1
  %arrayidx = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 0, label %entry.if.end7_crit_edge
    i32 1, label %entry.if.end7_crit_edge328
    i32 10, label %entry.if.end7_crit_edge329
  ]

entry.if.end7_crit_edge329:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

entry.if.end7_crit_edge328:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %5 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %entry.if.end7_crit_edge328, %entry.if.end7_crit_edge329
  %call = tail call ptr @comedi_alloc_devpriv(ptr noundef %dev, i32 noundef 80) #7
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %dev11 = getelementptr inbounds %struct.das16_private_struct, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %dev11, align 4
  %size = getelementptr inbounds %struct.das16_board, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %9)
  %cmp12 = icmp ult i32 %9, 1024
  %10 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %options, align 4
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %call17 = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %11, i32 noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then13.if.end34_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13.if.end34_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.else:                                          ; preds = %if.end10
  %call23 = tail call i32 @comedi_request_region(ptr noundef %dev, i32 noundef %11, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.else
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %add = add i32 %13, 1024
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %and = and i32 %15, 1023
  %call28 = tail call i32 @__comedi_request_region(ptr noundef %dev, i32 noundef %add, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iobase, align 4
  %add33 = add i32 %17, 1024
  %extra_iobase = getelementptr inbounds %struct.das16_private_struct, ptr %call, i32 0, i32 7
  %18 = ptrtoint ptr %extra_iobase to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add33, ptr %extra_iobase, align 4
  %can_burst = getelementptr inbounds %struct.das16_private_struct, ptr %call, i32 0, i32 8
  %19 = ptrtoint ptr %can_burst to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %can_burst, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %can_burst, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %if.then13.if.end34_crit_edge
  %20 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %board_ptr, align 4
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %22 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %23, 3
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %24 = inttoptr i32 %add1.i to ptr
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %24) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %26 = and i8 %25, -16
  %and3.i = zext i8 %26 to i32
  %id.i = getelementptr inbounds %struct.das16_board, ptr %21, i32 0, i32 7
  %27 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %and3.i)
  %cmp.not.i = icmp eq i32 %28, %and3.i
  br i1 %cmp.not.i, label %if.end38, label %das16_probe.exit

das16_probe.exit:                                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %29 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.6, i32 noundef %28, i32 noundef %and3.i) #10
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %can_burst39 = getelementptr inbounds %struct.das16_private_struct, ptr %call, i32 0, i32 8
  %31 = ptrtoint ptr %can_burst39 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load40 = load i8, ptr %can_burst39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load40)
  %tobool41.not = icmp sgt i8 %bf.load40, -1
  br i1 %tobool41.not, label %if.else53, label %if.then42

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %iobase.i, align 4
  %add44 = add i32 %33, 1031
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %34 = inttoptr i32 %add46 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  %36 = and i8 %35, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool50.not = icmp eq i8 %36, 0
  %spec.select = select i1 %tobool50.not, i32 1000, i32 100
  br label %if.end61

if.else53:                                        ; preds = %if.end38
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool56.not = icmp eq i32 %38, 0
  br i1 %tobool56.not, label %if.else53.if.end61_crit_edge, label %if.then57

if.else53.if.end61_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then57:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  %div = sdiv i32 1000, %38
  br label %if.end61

if.end61:                                         ; preds = %if.then57, %if.else53.if.end61_crit_edge, %if.then42
  %osc_base.0 = phi i32 [ %div, %if.then57 ], [ 1000, %if.else53.if.end61_crit_edge ], [ %spec.select, %if.then42 ]
  %39 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %iobase.i, align 4
  %add63 = add i32 %40, 12
  %call64 = tail call ptr @comedi_8254_init(i32 noundef %add63, i32 noundef %osc_base.0, i32 noundef 1, i32 noundef 0) #7
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %41 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call64, ptr %pacer, align 4
  %tobool66.not = icmp eq ptr %call64, null
  br i1 %tobool66.not, label %if.end61.cleanup_crit_edge, label %if.end68

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end68:                                         ; preds = %if.end61
  %arrayidx70 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 2
  %42 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx70, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %44 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %private.i, align 4
  %timer.i = getelementptr inbounds %struct.das16_private_struct, ptr %45, i32 0, i32 6
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @das16_timer_interrupt, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @das16_alloc_dma.__key) #7
  %46 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %43, label %if.end68.das16_alloc_dma.exit_crit_edge [
    i32 1, label %if.end68.if.end.i_crit_edge
    i32 3, label %if.end68.if.end.i_crit_edge330
  ]

if.end68.if.end.i_crit_edge330:                   ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end68.if.end.i_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end68.das16_alloc_dma.exit_crit_edge:          ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %das16_alloc_dma.exit

if.end.i:                                         ; preds = %if.end68.if.end.i_crit_edge, %if.end68.if.end.i_crit_edge330
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %45, align 4
  br label %das16_alloc_dma.exit

das16_alloc_dma.exit:                             ; preds = %if.end.i, %if.end68.das16_alloc_dma.exit_crit_edge
  %has_8255 = getelementptr inbounds %struct.das16_board, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %has_8255 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load71 = load i8, ptr %has_8255, align 4
  %bf.lshr72 = lshr i8 %bf.load71, 6
  %bf.clear73 = and i8 %bf.lshr72, 1
  %49 = or i8 %bf.clear73, 4
  %add75 = zext i8 %49 to i32
  %call76 = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef %add75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %das16_alloc_dma.exit.cleanup_crit_edge

das16_alloc_dma.exit.cleanup_crit_edge:           ; preds = %das16_alloc_dma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end79:                                         ; preds = %das16_alloc_dma.exit
  %50 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %iobase.i, align 4
  %add82 = add i32 %51, 8
  %and83 = and i32 %add82, 1048575
  %add84 = or i32 %and83, -18874368
  %52 = inttoptr i32 %add84 to ptr
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %52) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %conv88 = zext i8 %53 to i32
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %54 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %subdevices, align 4
  %type = getelementptr inbounds %struct.comedi_subdevice, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %type, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %55, i32 0, i32 4
  %and90 = and i32 %conv88, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  %spec.select326 = select i1 %tobool91.not, i32 4259840, i32 1114112
  %spec.select327 = select i1 %tobool91.not, i32 8, i32 16
  %57 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %spec.select326, ptr %subdev_flags, align 4
  %58 = getelementptr inbounds %struct.comedi_subdevice, ptr %55, i32 0, i32 3
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %spec.select327, ptr %58, align 4
  %len_chanlist = getelementptr inbounds %struct.comedi_subdevice, ptr %55, i32 0, i32 5
  %60 = ptrtoint ptr %len_chanlist to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %spec.select327, ptr %len_chanlist, align 4
  %ai_maxdata = getelementptr inbounds %struct.das16_board, ptr %1, i32 0, i32 1
  %61 = ptrtoint ptr %ai_maxdata to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ai_maxdata, align 4
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %55, i32 0, i32 13
  %63 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %maxdata, align 4
  %ai_pg = getelementptr inbounds %struct.das16_board, ptr %1, i32 0, i32 3
  %64 = ptrtoint ptr %ai_pg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ai_pg, align 4
  %call100 = tail call fastcc ptr @das16_ai_range(ptr noundef %55, ptr noundef %it, i32 noundef %65, i32 noundef %conv88)
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %55, i32 0, i32 15
  %66 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call100, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %55, i32 0, i32 18
  %67 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @das16_ai_insn_read, ptr %insn_read, align 4
  %68 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call, align 4
  %tobool101.not = icmp eq ptr %69, null
  br i1 %tobool101.not, label %if.end79.if.end105_crit_edge, label %if.then102

if.end79.if.end105_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then102:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %read_subdev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 21
  %70 = ptrtoint ptr %read_subdev to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %55, ptr %read_subdev, align 4
  %71 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %subdev_flags, align 4
  %or104 = or i32 %72, 32768
  store i32 %or104, ptr %subdev_flags, align 4
  %do_cmdtest = getelementptr inbounds %struct.comedi_subdevice, ptr %55, i32 0, i32 23
  %73 = ptrtoint ptr %do_cmdtest to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @das16_cmd_test, ptr %do_cmdtest, align 4
  %do_cmd = getelementptr inbounds %struct.comedi_subdevice, ptr %55, i32 0, i32 22
  %74 = ptrtoint ptr %do_cmd to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @das16_cmd_exec, ptr %do_cmd, align 4
  %cancel = getelementptr inbounds %struct.comedi_subdevice, ptr %55, i32 0, i32 25
  %75 = ptrtoint ptr %cancel to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @das16_cancel, ptr %cancel, align 4
  %munge = getelementptr inbounds %struct.comedi_subdevice, ptr %55, i32 0, i32 27
  %76 = ptrtoint ptr %munge to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @das16_ai_munge, ptr %munge, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.then102, %if.end79.if.end105_crit_edge
  %77 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %subdevices, align 4
  %79 = ptrtoint ptr %has_8255 to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load108 = load i8, ptr %has_8255, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load108)
  %tobool111.not = icmp sgt i8 %bf.load108, -1
  br i1 %tobool111.not, label %if.else123, label %if.then112

if.then112:                                       ; preds = %if.end105
  %arrayidx107 = getelementptr %struct.comedi_subdevice, ptr %78, i32 1
  %type113 = getelementptr %struct.comedi_subdevice, ptr %78, i32 1, i32 2
  %80 = ptrtoint ptr %type113 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %type113, align 4
  %subdev_flags114 = getelementptr %struct.comedi_subdevice, ptr %78, i32 1, i32 4
  %81 = ptrtoint ptr %subdev_flags114 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 131072, ptr %subdev_flags114, align 4
  %n_chan115 = getelementptr %struct.comedi_subdevice, ptr %78, i32 1, i32 3
  %82 = ptrtoint ptr %n_chan115 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2, ptr %n_chan115, align 4
  %maxdata116 = getelementptr %struct.comedi_subdevice, ptr %78, i32 1, i32 13
  %83 = ptrtoint ptr %maxdata116 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 4095, ptr %maxdata116, align 4
  %call117 = tail call fastcc ptr @das16_ao_range(ptr noundef %arrayidx107, ptr noundef %it)
  %range_table118 = getelementptr %struct.comedi_subdevice, ptr %78, i32 1, i32 15
  %84 = ptrtoint ptr %range_table118 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call117, ptr %range_table118, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %78, i32 1, i32 19
  %85 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @das16_ao_insn_write, ptr %insn_write, align 4
  %call119 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx107) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119)
  %tobool120.not = icmp eq i32 %call119, 0
  br i1 %tobool120.not, label %if.then112.if.end125_crit_edge, label %if.then112.cleanup_crit_edge

if.then112.cleanup_crit_edge:                     ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then112.if.end125_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

if.else123:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %type124 = getelementptr %struct.comedi_subdevice, ptr %78, i32 1, i32 2
  %86 = ptrtoint ptr %type124 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %type124, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.else123, %if.then112.if.end125_crit_edge
  %87 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %subdevices, align 4
  %type128 = getelementptr %struct.comedi_subdevice, ptr %88, i32 2, i32 2
  %89 = ptrtoint ptr %type128 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 3, ptr %type128, align 4
  %subdev_flags129 = getelementptr %struct.comedi_subdevice, ptr %88, i32 2, i32 4
  %90 = ptrtoint ptr %subdev_flags129 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 65536, ptr %subdev_flags129, align 4
  %n_chan130 = getelementptr %struct.comedi_subdevice, ptr %88, i32 2, i32 3
  %91 = ptrtoint ptr %n_chan130 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 4, ptr %n_chan130, align 4
  %maxdata131 = getelementptr %struct.comedi_subdevice, ptr %88, i32 2, i32 13
  %92 = ptrtoint ptr %maxdata131 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %maxdata131, align 4
  %range_table132 = getelementptr %struct.comedi_subdevice, ptr %88, i32 2, i32 15
  %93 = ptrtoint ptr %range_table132 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @range_unipolar5, ptr %range_table132, align 4
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %88, i32 2, i32 20
  %94 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @das16_di_insn_bits, ptr %insn_bits, align 4
  %95 = load ptr, ptr %subdevices, align 4
  %type135 = getelementptr %struct.comedi_subdevice, ptr %95, i32 3, i32 2
  %96 = ptrtoint ptr %type135 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 4, ptr %type135, align 4
  %subdev_flags136 = getelementptr %struct.comedi_subdevice, ptr %95, i32 3, i32 4
  %97 = ptrtoint ptr %subdev_flags136 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 131072, ptr %subdev_flags136, align 4
  %n_chan137 = getelementptr %struct.comedi_subdevice, ptr %95, i32 3, i32 3
  %98 = ptrtoint ptr %n_chan137 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 4, ptr %n_chan137, align 4
  %maxdata138 = getelementptr %struct.comedi_subdevice, ptr %95, i32 3, i32 13
  %99 = ptrtoint ptr %maxdata138 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %maxdata138, align 4
  %range_table139 = getelementptr %struct.comedi_subdevice, ptr %95, i32 3, i32 15
  %100 = ptrtoint ptr %range_table139 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @range_unipolar5, ptr %range_table139, align 4
  %insn_bits140 = getelementptr %struct.comedi_subdevice, ptr %95, i32 3, i32 20
  %101 = ptrtoint ptr %insn_bits140 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @das16_do_insn_bits, ptr %insn_bits140, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %state = getelementptr %struct.comedi_subdevice, ptr %95, i32 3, i32 29
  %102 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %state, align 4
  %conv144 = trunc i32 %103 to i8
  %104 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %iobase.i, align 4
  %add146 = add i32 %105, 3
  %and147 = and i32 %add146, 1048575
  %add148 = or i32 %and147, -18874368
  %106 = inttoptr i32 %add148 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 %conv144) #7, !srcloc !131
  %107 = ptrtoint ptr %has_8255 to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load151 = load i8, ptr %has_8255, align 4
  %108 = and i8 %bf.load151, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool155.not = icmp eq i8 %108, 0
  br i1 %tobool155.not, label %if.end125.if.end163_crit_edge, label %if.then156

if.end125.if.end163_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

if.then156:                                       ; preds = %if.end125
  %109 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %subdevices, align 4
  %arrayidx158 = getelementptr %struct.comedi_subdevice, ptr %110, i32 4
  %i8255_offset = getelementptr inbounds %struct.das16_board, ptr %1, i32 0, i32 5
  %111 = ptrtoint ptr %i8255_offset to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %i8255_offset, align 4
  %call159 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %arrayidx158, ptr noundef null, i32 noundef %112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.then156.if.end163_crit_edge, label %if.then156.cleanup_crit_edge

if.then156.cleanup_crit_edge:                     ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then156.if.end163_crit_edge:                   ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end163

if.end163:                                        ; preds = %if.then156.if.end163_crit_edge, %if.end125.if.end163_crit_edge
  tail call fastcc void @das16_reset(ptr noundef %dev)
  %irq = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 20
  %113 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %irq, align 4
  %and164 = shl i32 %114, 4
  %shl = and i32 %and164, 112
  %ctrl_reg = getelementptr inbounds %struct.das16_private_struct, ptr %call, i32 0, i32 3
  %115 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %shl, ptr %ctrl_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %116 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ctrl_reg, align 4
  %conv169 = trunc i32 %117 to i8
  %118 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %iobase.i, align 4
  %add171 = add i32 %119, 9
  %and172 = and i32 %add171, 1048575
  %add173 = or i32 %and172, -18874368
  %120 = inttoptr i32 %add173 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %120, i8 %conv169) #7, !srcloc !131
  %121 = ptrtoint ptr %can_burst39 to i32
  call void @__asan_load1_noabort(i32 %121)
  %bf.load176 = load i8, ptr %can_burst39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load176)
  %tobool179.not = icmp sgt i8 %bf.load176, -1
  br i1 %tobool179.not, label %if.end163.cleanup_crit_edge, label %do.body181

if.end163.cleanup_crit_edge:                      ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body181:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  tail call void @arm_heavy_mb() #7
  %122 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %iobase.i, align 4
  %add185 = add i32 %123, 1030
  %and186 = and i32 %add185, 1048575
  %add187 = or i32 %and186, -18874368
  %124 = inttoptr i32 %add187 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 64) #7, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  tail call void @arm_heavy_mb() #7
  %125 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %iobase.i, align 4
  %add193 = add i32 %126, 1028
  %and194 = and i32 %add193, 1048575
  %add195 = or i32 %and194, -18874368
  %127 = inttoptr i32 %add195 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %127, i8 0) #7, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %128 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %iobase.i, align 4
  %add201 = add i32 %129, 1029
  %and202 = and i32 %add201, 1048575
  %add203 = or i32 %and202, -18874368
  %130 = inttoptr i32 %add203 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %130, i8 0) #7, !srcloc !131
  br label %cleanup

cleanup:                                          ; preds = %do.body181, %if.end163.cleanup_crit_edge, %if.then156.cleanup_crit_edge, %if.then112.cleanup_crit_edge, %das16_alloc_dma.exit.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %das16_probe.exit, %if.end26.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %if.end7.cleanup_crit_edge ], [ %call17, %if.then13.cleanup_crit_edge ], [ %call23, %if.else.cleanup_crit_edge ], [ %call28, %if.end26.cleanup_crit_edge ], [ -22, %das16_probe.exit ], [ -12, %if.end61.cleanup_crit_edge ], [ %call76, %das16_alloc_dma.exit.cleanup_crit_edge ], [ %call119, %if.then112.cleanup_crit_edge ], [ %call159, %if.then156.cleanup_crit_edge ], [ 0, %do.body181 ], [ 0, %if.end163.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @das16_detach(ptr noundef %dev) #2 align 64 {
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
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %entry
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add.i = add i32 %7, 8
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %8 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #7, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add5.i = add i32 %10, 9
  %and6.i = and i32 %add5.i, 1048575
  %add7.i = or i32 %and6.i, -18874368
  %11 = inttoptr i32 %add7.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #7, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %add12.i = add i32 %13, 10
  %and13.i = and i32 %add12.i, 1048575
  %add14.i = or i32 %and13.i, -18874368
  %14 = inttoptr i32 %add14.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #7, !srcloc !131
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %15 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.das16_free_dma.exit_crit_edge, label %if.then.i

if.end.das16_free_dma.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %das16_free_dma.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %timer.i = getelementptr inbounds %struct.das16_private_struct, ptr %16, i32 0, i32 6
  %call.i = tail call i32 @del_timer_sync(ptr noundef %timer.i) #7
  br label %das16_free_dma.exit

das16_free_dma.exit:                              ; preds = %if.then.i, %if.end.das16_free_dma.exit_crit_edge
  %extra_iobase = getelementptr inbounds %struct.das16_private_struct, ptr %3, i32 0, i32 7
  %17 = ptrtoint ptr %extra_iobase to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %extra_iobase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool3.not = icmp eq i32 %18, 0
  br i1 %tobool3.not, label %das16_free_dma.exit.if.end7_crit_edge, label %if.then4

das16_free_dma.exit.if.end7_crit_edge:            ; preds = %das16_free_dma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %das16_free_dma.exit
  call void @__sanitizer_cov_trace_pc() #9
  %size = getelementptr inbounds %struct.das16_board, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  %and = and i32 %20, 1023
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %18, i32 noundef %and) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %das16_free_dma.exit.if.end7_crit_edge, %entry.if.end7_crit_edge
  tail call void @comedi_legacy_detach(ptr noundef %dev) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_devpriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__comedi_request_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @das16_ai_range(ptr noundef %s, ptr nocapture noundef readonly %it, i32 noundef %pg_type, i32 noundef %status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pg_type)
  %cmp = icmp eq i32 %pg_type, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %land.lhs.true.if.end9_crit_edge, label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %call = tail call ptr @comedi_alloc_spriv(ptr noundef %s, i32 noundef 16) #7
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then.cleanup15_crit_edge, label %if.end

if.then.cleanup15_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup15

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %call, align 4
  %range = getelementptr inbounds %struct.comedi_lrange, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %range, align 4
  %max7 = getelementptr inbounds %struct.comedi_lrange, ptr %call, i32 2
  %6 = ptrtoint ptr %max7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %max7, align 4
  %flags = getelementptr inbounds %struct.comedi_lrange, ptr %call, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags, align 4
  br label %cleanup15

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %entry.if.end9_crit_edge
  %and = and i32 %status, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx12 = getelementptr [5 x ptr], ptr @das16_ai_uni_lranges, i32 0, i32 %pg_type
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx12, align 4
  br label %cleanup15

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx14 = getelementptr [5 x ptr], ptr @das16_ai_bip_lranges, i32 0, i32 %pg_type
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 4
  br label %cleanup15

cleanup15:                                        ; preds = %if.end13, %if.then11, %if.end, %if.then.cleanup15_crit_edge
  %retval.1 = phi ptr [ %9, %if.then11 ], [ %11, %if.end13 ], [ %call, %if.end ], [ @range_unknown, %if.then.cleanup15_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %2 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board_ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  tail call void @arm_heavy_mb() #7
  %and = shl i32 %1, 4
  %or.i = or i32 %and, %1
  %conv.i = trunc i32 %or.i to i8
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %5, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv.i) #7, !srcloc !131
  %ai_pg.i = getelementptr inbounds %struct.das16_board, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %ai_pg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ai_pg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %entry.das16_ai_set_mux_range.exit_crit_edge, label %do.body3.i

entry.das16_ai_set_mux_range.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %das16_ai_set_mux_range.exit

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %1, 16
  %and2 = and i32 %shr, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %ai_pg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ai_pg.i, align 4
  %arrayidx.i = getelementptr [5 x ptr], ptr @das16_gainlists, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %12, i32 %and2
  %13 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7.i, align 4
  %conv8.i = trunc i32 %14 to i8
  %15 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase.i, align 4
  %add10.i = add i32 %16, 11
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %17 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv8.i) #7, !srcloc !131
  br label %das16_ai_set_mux_range.exit

das16_ai_set_mux_range.exit:                      ; preds = %do.body3.i, %entry.das16_ai_set_mux_range.exit_crit_edge
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %18 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp49.not = icmp eq i32 %19, 0
  br i1 %cmp49.not, label %das16_ai_set_mux_range.exit.cleanup_crit_edge, label %for.body.lr.ph

das16_ai_set_mux_range.exit.cleanup_crit_edge:    ; preds = %das16_ai_set_mux_range.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %das16_ai_set_mux_range.exit
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.050 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %20 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iobase.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %and.i47 = and i32 %21, 1048575
  %add.i48 = or i32 %and.i47, -18874368
  %22 = inttoptr i32 %add.i48 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 0) #7, !srcloc !131
  %call = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @das16_ai_eoc, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %23 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %iobase.i, align 4
  %add4 = add i32 %24, 1
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %25 = inttoptr i32 %add6 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  %conv = zext i8 %26 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %27 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %iobase.i, align 4
  %and12 = and i32 %28, 1048575
  %add13 = or i32 %and12, -18874368
  %29 = inttoptr i32 %add13 to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %conv17 = zext i8 %30 to i32
  %or = or i32 %shl, %conv17
  %31 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %maxdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %32)
  %cmp18 = icmp eq i32 %32, 4095
  %shr21 = lshr i32 %or, 4
  %spec.select = select i1 %cmp18, i32 %shr21, i32 %or
  %and24 = and i32 %spec.select, %32
  %arrayidx = getelementptr i32, ptr %data, i32 %i.050
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and24, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.050, 1
  %34 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %35
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %das16_ai_set_mux_range.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %das16_ai_set_mux_range.exit.cleanup_crit_edge ], [ %35, %if.end.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16_cmd_test(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef %cmd) #2 align 64 {
entry:
  %arg = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #7
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %arg, align 4, !annotation !144
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %5 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start_src, align 4
  %and.i = and i32 %6, 2
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %6)
  %cmp1.not.i = icmp eq i32 %and.i, %6
  %or.cond.i = and i1 %cmp.i, %cmp1.not.i
  %can_burst = getelementptr inbounds %struct.das16_private_struct, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %can_burst to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %can_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  %spec.select = select i1 %tobool.not, i32 4, i32 84
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %8 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %scan_begin_src, align 4
  %and.i190 = and i32 %spec.select, %9
  store i32 %and.i190, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i190)
  %cmp.i191 = icmp ne i32 %and.i190, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i190, i32 %9)
  %cmp1.not.i192 = icmp eq i32 %and.i190, %9
  %or.cond.i193 = and i1 %cmp.i191, %cmp1.not.i192
  %10 = select i1 %or.cond.i, i1 %or.cond.i193, i1 false
  %11 = ptrtoint ptr %can_burst to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load5 = load i8, ptr %can_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load5)
  %tobool8.not = icmp sgt i8 %bf.load5, -1
  %trig_mask.1 = select i1 %tobool8.not, i32 80, i32 82
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %12 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %convert_src, align 4
  %and.i195 = and i32 %trig_mask.1, %13
  store i32 %and.i195, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i195)
  %cmp.i196 = icmp ne i32 %and.i195, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i195, i32 %13)
  %cmp1.not.i197 = icmp eq i32 %and.i195, %13
  %or.cond.i198 = and i1 %cmp.i196, %cmp1.not.i197
  %14 = select i1 %10, i1 %or.cond.i198, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %15 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scan_end_src, align 4
  %and.i200 = and i32 %16, 32
  store i32 %and.i200, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i200)
  %cmp.i201 = icmp ne i32 %and.i200, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i200, i32 %16)
  %cmp1.not.i202 = icmp eq i32 %and.i200, %16
  %or.cond.i203 = and i1 %cmp.i201, %cmp1.not.i202
  %17 = select i1 %14, i1 %or.cond.i203, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %18 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stop_src, align 4
  %and.i205 = and i32 %19, 33
  store i32 %and.i205, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i205)
  %cmp.i206 = icmp ne i32 %and.i205, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i205, i32 %19)
  %cmp1.not.i207 = icmp eq i32 %and.i205, %19
  %or.cond.i208 = and i1 %cmp.i206, %cmp1.not.i207
  %20 = select i1 %17, i1 %or.cond.i208, i1 false
  br i1 %20, label %if.end20, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %entry
  %21 = tail call i32 @llvm.ctpop.i32(i32 %9) #7, !range !145
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.not.i = icmp ult i32 %21, 2
  %22 = tail call i32 @llvm.ctpop.i32(i32 %13) #7, !range !145
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.not.i210 = icmp ult i32 %22, 2
  %23 = select i1 %cmp.not.i, i1 %cmp.not.i210, i1 false
  %24 = tail call i32 @llvm.ctpop.i32(i32 %19) #7, !range !145
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.not.i212 = icmp ult i32 %24, 2
  %25 = select i1 %23, i1 %cmp.not.i212, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp = icmp eq i32 %9, 4
  br i1 %cmp, label %if.end35.thread, label %land.lhs.true38

if.end35.thread:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp32 = icmp eq i32 %13, 2
  %.not = xor i1 %25, true
  %brmerge = select i1 %cmp32, i1 true, i1 %.not
  br i1 %brmerge, label %if.end35.thread.cleanup_crit_edge, label %if.end35.thread.if.end46_crit_edge

if.end35.thread.if.end46_crit_edge:               ; preds = %if.end35.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.end35.thread.cleanup_crit_edge:                ; preds = %if.end35.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true38:                                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp40.not = icmp ne i32 %13, 2
  %.not255 = xor i1 %25, true
  %brmerge256 = select i1 %cmp40.not, i1 true, i1 %.not255
  br i1 %brmerge256, label %land.lhs.true38.cleanup_crit_edge, label %land.lhs.true38.if.end46_crit_edge

land.lhs.true38.if.end46_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

land.lhs.true38.cleanup_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %land.lhs.true38.if.end46_crit_edge, %if.end35.thread.if.end46_crit_edge
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %26 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not.i214 = icmp eq i32 %27, 0
  br i1 %cmp.not.i214, label %if.end46.comedi_check_trigger_arg_is.exit_crit_edge, label %if.then.i

if.end46.comedi_check_trigger_arg_is.exit_crit_edge: ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %start_arg, align 4
  br label %comedi_check_trigger_arg_is.exit

comedi_check_trigger_arg_is.exit:                 ; preds = %if.then.i, %if.end46.comedi_check_trigger_arg_is.exit_crit_edge
  %retval.0.i215 = phi i32 [ -22, %if.then.i ], [ 0, %if.end46.comedi_check_trigger_arg_is.exit_crit_edge ]
  br i1 %cmp, label %if.then51, label %comedi_check_trigger_arg_is.exit.if.end54_crit_edge

comedi_check_trigger_arg_is.exit.if.end54_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then51:                                        ; preds = %comedi_check_trigger_arg_is.exit
  %scan_begin_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %29 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %scan_begin_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.not.i216 = icmp eq i32 %30, 0
  br i1 %cmp.not.i216, label %if.then51.comedi_check_trigger_arg_is.exit219_crit_edge, label %if.then.i217

if.then51.comedi_check_trigger_arg_is.exit219_crit_edge: ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit219

if.then.i217:                                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %scan_begin_arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %scan_begin_arg, align 4
  br label %comedi_check_trigger_arg_is.exit219

comedi_check_trigger_arg_is.exit219:              ; preds = %if.then.i217, %if.then51.comedi_check_trigger_arg_is.exit219_crit_edge
  %retval.0.i218 = phi i32 [ -22, %if.then.i217 ], [ 0, %if.then51.comedi_check_trigger_arg_is.exit219_crit_edge ]
  %or53 = or i32 %retval.0.i218, %retval.0.i215
  br label %if.end54

if.end54:                                         ; preds = %comedi_check_trigger_arg_is.exit219, %comedi_check_trigger_arg_is.exit.if.end54_crit_edge
  %err.2 = phi i32 [ %or53, %comedi_check_trigger_arg_is.exit219 ], [ %retval.0.i215, %comedi_check_trigger_arg_is.exit.if.end54_crit_edge ]
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %32 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %chanlist_len, align 4
  %34 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %33)
  %cmp.not.i220 = icmp eq i32 %35, %33
  br i1 %cmp.not.i220, label %if.end54.comedi_check_trigger_arg_is.exit223_crit_edge, label %if.then.i221

if.end54.comedi_check_trigger_arg_is.exit223_crit_edge: ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit223

if.then.i221:                                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit223

comedi_check_trigger_arg_is.exit223:              ; preds = %if.then.i221, %if.end54.comedi_check_trigger_arg_is.exit223_crit_edge
  %retval.0.i222 = phi i32 [ -22, %if.then.i221 ], [ 0, %if.end54.comedi_check_trigger_arg_is.exit223_crit_edge ]
  %or56 = or i32 %retval.0.i222, %err.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp58 = icmp eq i32 %9, 16
  br i1 %cmp58, label %if.then59, label %comedi_check_trigger_arg_is.exit223.if.end64_crit_edge

comedi_check_trigger_arg_is.exit223.if.end64_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit223
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then59:                                        ; preds = %comedi_check_trigger_arg_is.exit223
  %scan_begin_arg60 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %ai_speed = getelementptr inbounds %struct.das16_board, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %ai_speed to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ai_speed, align 4
  %mul = mul i32 %38, %33
  %39 = ptrtoint ptr %scan_begin_arg60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %scan_begin_arg60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %mul)
  %cmp.i224 = icmp ult i32 %40, %mul
  br i1 %cmp.i224, label %if.then.i225, label %if.then59.comedi_check_trigger_arg_min.exit_crit_edge

if.then59.comedi_check_trigger_arg_min.exit_crit_edge: ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit

if.then.i225:                                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %scan_begin_arg60 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul, ptr %scan_begin_arg60, align 4
  br label %comedi_check_trigger_arg_min.exit

comedi_check_trigger_arg_min.exit:                ; preds = %if.then.i225, %if.then59.comedi_check_trigger_arg_min.exit_crit_edge
  %retval.0.i226 = phi i32 [ -22, %if.then.i225 ], [ 0, %if.then59.comedi_check_trigger_arg_min.exit_crit_edge ]
  %or63 = or i32 %retval.0.i226, %or56
  br label %if.end64

if.end64:                                         ; preds = %comedi_check_trigger_arg_min.exit, %comedi_check_trigger_arg_is.exit223.if.end64_crit_edge
  %err.3 = phi i32 [ %or63, %comedi_check_trigger_arg_min.exit ], [ %or56, %comedi_check_trigger_arg_is.exit223.if.end64_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp66 = icmp eq i32 %13, 16
  br i1 %cmp66, label %if.then67, label %if.end64.if.end71_crit_edge

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then67:                                        ; preds = %if.end64
  %convert_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %ai_speed68 = getelementptr inbounds %struct.das16_board, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %ai_speed68 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ai_speed68, align 4
  %44 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %convert_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %cmp.i227 = icmp ult i32 %45, %43
  br i1 %cmp.i227, label %if.then.i228, label %if.then67.comedi_check_trigger_arg_min.exit230_crit_edge

if.then67.comedi_check_trigger_arg_min.exit230_crit_edge: ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_min.exit230

if.then.i228:                                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %convert_arg, align 4
  br label %comedi_check_trigger_arg_min.exit230

comedi_check_trigger_arg_min.exit230:             ; preds = %if.then.i228, %if.then67.comedi_check_trigger_arg_min.exit230_crit_edge
  %retval.0.i229 = phi i32 [ -22, %if.then.i228 ], [ 0, %if.then67.comedi_check_trigger_arg_min.exit230_crit_edge ]
  %or70 = or i32 %retval.0.i229, %err.3
  br label %if.end71

if.end71:                                         ; preds = %comedi_check_trigger_arg_min.exit230, %if.end64.if.end71_crit_edge
  %err.4 = phi i32 [ %or70, %comedi_check_trigger_arg_min.exit230 ], [ %err.3, %if.end64.if.end71_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %cmp73 = icmp eq i32 %19, 32
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %47 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i231 = icmp eq i32 %48, 0
  br i1 %cmp73, label %if.then74, label %if.else

if.then74:                                        ; preds = %if.end71
  br i1 %cmp.i231, label %if.then74.if.end80.sink.split_crit_edge, label %if.then74.if.end80_crit_edge

if.then74.if.end80_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then74.if.end80.sink.split_crit_edge:          ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.sink.split

if.else:                                          ; preds = %if.end71
  br i1 %cmp.i231, label %if.else.if.end80_crit_edge, label %if.else.if.end80.sink.split_crit_edge

if.else.if.end80.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.sink.split

if.else.if.end80_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.end80.sink.split:                              ; preds = %if.else.if.end80.sink.split_crit_edge, %if.then74.if.end80.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then74.if.end80.sink.split_crit_edge ], [ 0, %if.else.if.end80.sink.split_crit_edge ]
  %49 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink, ptr %stop_arg, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.end80.sink.split, %if.else.if.end80_crit_edge, %if.then74.if.end80_crit_edge
  %call75.pn = phi i32 [ 0, %if.then74.if.end80_crit_edge ], [ 0, %if.else.if.end80_crit_edge ], [ -22, %if.end80.sink.split ]
  %err.5 = or i32 %call75.pn, %err.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.5)
  %tobool81.not = icmp eq i32 %err.5, 0
  br i1 %tobool81.not, label %if.end83, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end83:                                         ; preds = %if.end80
  br i1 %cmp58, label %if.then86, label %if.end83.if.end91_crit_edge

if.end83.if.end91_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then86:                                        ; preds = %if.end83
  %scan_begin_arg87 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %50 = ptrtoint ptr %scan_begin_arg87 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %scan_begin_arg87, align 4
  %52 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arg, align 4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %53 = ptrtoint ptr %pacer to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pacer, align 4
  %flags = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %55 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %54, ptr noundef nonnull %arg, i32 noundef %56) #7
  %57 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arg, align 4
  %59 = ptrtoint ptr %scan_begin_arg87 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %scan_begin_arg87, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %58)
  %cmp.not.i239 = icmp eq i32 %60, %58
  br i1 %cmp.not.i239, label %if.then86.if.end91_crit_edge, label %if.then.i240

if.then86.if.end91_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then.i240:                                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %scan_begin_arg87 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %58, ptr %scan_begin_arg87, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then.i240, %if.then86.if.end91_crit_edge, %if.end83.if.end91_crit_edge
  %err.6 = phi i32 [ 0, %if.end83.if.end91_crit_edge ], [ -22, %if.then.i240 ], [ 0, %if.then86.if.end91_crit_edge ]
  %62 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %63)
  %cmp93 = icmp eq i32 %63, 16
  br i1 %cmp93, label %if.then94, label %if.end91.if.end101_crit_edge

if.end91.if.end101_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then94:                                        ; preds = %if.end91
  %convert_arg95 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %64 = ptrtoint ptr %convert_arg95 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %convert_arg95, align 4
  %66 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arg, align 4
  %pacer96 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %67 = ptrtoint ptr %pacer96 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pacer96, align 4
  %flags97 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 1
  %69 = ptrtoint ptr %flags97 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags97, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %68, ptr noundef nonnull %arg, i32 noundef %70) #7
  %71 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arg, align 4
  %73 = ptrtoint ptr %convert_arg95 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %convert_arg95, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %72)
  %cmp.not.i243 = icmp eq i32 %74, %72
  br i1 %cmp.not.i243, label %if.then94.comedi_check_trigger_arg_is.exit246_crit_edge, label %if.then.i244

if.then94.comedi_check_trigger_arg_is.exit246_crit_edge: ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %comedi_check_trigger_arg_is.exit246

if.then.i244:                                     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %convert_arg95 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %72, ptr %convert_arg95, align 4
  br label %comedi_check_trigger_arg_is.exit246

comedi_check_trigger_arg_is.exit246:              ; preds = %if.then.i244, %if.then94.comedi_check_trigger_arg_is.exit246_crit_edge
  %retval.0.i245 = phi i32 [ -22, %if.then.i244 ], [ 0, %if.then94.comedi_check_trigger_arg_is.exit246_crit_edge ]
  %or100 = or i32 %retval.0.i245, %err.6
  br label %if.end101

if.end101:                                        ; preds = %comedi_check_trigger_arg_is.exit246, %if.end91.if.end101_crit_edge
  %err.7 = phi i32 [ %or100, %comedi_check_trigger_arg_is.exit246 ], [ %err.6, %if.end91.if.end101_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.7)
  %tobool102.not = icmp eq i32 %err.7, 0
  br i1 %tobool102.not, label %if.end104, label %if.end101.cleanup_crit_edge

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end104:                                        ; preds = %if.end101
  %chanlist = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 12
  %76 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %chanlist, align 4
  %tobool105.not = icmp eq ptr %77, null
  br i1 %tobool105.not, label %if.end104.if.end112.thread_crit_edge, label %land.lhs.true106

if.end104.if.end112.thread_crit_edge:             ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112.thread

land.lhs.true106:                                 ; preds = %if.end104
  %78 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp108.not = icmp eq i32 %79, 0
  br i1 %cmp108.not, label %land.lhs.true106.if.end112.thread_crit_edge, label %if.end112

land.lhs.true106.if.end112.thread_crit_edge:      ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112.thread

if.end112:                                        ; preds = %land.lhs.true106
  %call110 = call fastcc i32 @das16_ai_check_chanlist(ptr noundef %dev, ptr noundef %s, ptr noundef %cmd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %phi.cmp = icmp eq i32 %call110, 0
  br i1 %phi.cmp, label %if.end112.if.end112.thread_crit_edge, label %if.end112.cleanup_crit_edge

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end112.if.end112.thread_crit_edge:             ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112.thread

if.end112.thread:                                 ; preds = %if.end112.if.end112.thread_crit_edge, %land.lhs.true106.if.end112.thread_crit_edge, %if.end104.if.end112.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end112.thread, %if.end112.cleanup_crit_edge, %if.end101.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %land.lhs.true38.cleanup_crit_edge, %if.end35.thread.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 3, %if.end80.cleanup_crit_edge ], [ 4, %if.end101.cleanup_crit_edge ], [ 0, %if.end112.thread ], [ 5, %if.end112.cleanup_crit_edge ], [ 2, %land.lhs.true38.cleanup_crit_edge ], [ 2, %if.end35.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16_cmd_exec(ptr noundef %dev, ptr noundef %s) #2 align 64 {
entry:
  %ns.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %async2 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %4 = ptrtoint ptr %async2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %async2, align 4
  %chanlist = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 12
  %6 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chanlist, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %chanlist_len = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 13
  %10 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chanlist_len, align 4
  %sub = add i32 %11, -1
  %arrayidx5 = getelementptr i32, ptr %7, i32 %sub
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx5, align 4
  %shr = lshr i32 %9, 16
  %and9 = and i32 %shr, 255
  %flags10 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 1
  %14 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags10, align 4
  %and11 = and i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %16 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %can_burst = getelementptr inbounds %struct.das16_private_struct, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %can_burst to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load = load i8, ptr %can_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool12.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool12.not, label %if.end.if.end19_crit_edge, label %do.body14

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  tail call void @arm_heavy_mb() #7
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %iobase, align 4
  %add = add i32 %20, 1028
  %and17 = and i32 %add, 1048575
  %add18 = or i32 %and17, -18874368
  %21 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 64) #7, !srcloc !131
  br label %if.end19

if.end19:                                         ; preds = %do.body14, %if.end.if.end19_crit_edge
  %board_ptr.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %22 = ptrtoint ptr %board_ptr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %board_ptr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  tail call void @arm_heavy_mb() #7
  %and6 = shl i32 %13, 4
  %or.i = or i32 %and6, %9
  %conv.i = trunc i32 %or.i to i8
  %iobase.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %24 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iobase.i, align 4
  %add.i = add i32 %25, 2
  %and.i = and i32 %add.i, 1048575
  %add1.i = or i32 %and.i, -18874368
  %26 = inttoptr i32 %add1.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %conv.i) #7, !srcloc !131
  %ai_pg.i = getelementptr inbounds %struct.das16_board, ptr %23, i32 0, i32 3
  %27 = ptrtoint ptr %ai_pg.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ai_pg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i = icmp eq i32 %28, 0
  br i1 %cmp.i, label %if.end19.das16_ai_set_mux_range.exit_crit_edge, label %do.body3.i

if.end19.das16_ai_set_mux_range.exit_crit_edge:   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %das16_ai_set_mux_range.exit

do.body3.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %ai_pg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ai_pg.i, align 4
  %arrayidx.i = getelementptr [5 x ptr], ptr @das16_gainlists, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx7.i = getelementptr i32, ptr %32, i32 %and9
  %33 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx7.i, align 4
  %conv8.i = trunc i32 %34 to i8
  %35 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %iobase.i, align 4
  %add10.i = add i32 %36, 11
  %and11.i = and i32 %add10.i, 1048575
  %add12.i = or i32 %and11.i, -18874368
  %37 = inttoptr i32 %add12.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %conv8.i) #7, !srcloc !131
  br label %das16_ai_set_mux_range.exit

das16_ai_set_mux_range.exit:                      ; preds = %do.body3.i, %if.end19.das16_ai_set_mux_range.exit_crit_edge
  %convert_arg = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 7
  %38 = ptrtoint ptr %convert_arg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %convert_arg, align 4
  %40 = ptrtoint ptr %flags10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags10, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ns.addr.i)
  %42 = ptrtoint ptr %ns.addr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %ns.addr.i, align 4
  %pacer.i = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %43 = ptrtoint ptr %pacer.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pacer.i, align 4
  call void @comedi_8254_cascade_ns_to_timer(ptr noundef %44, ptr noundef nonnull %ns.addr.i, i32 noundef %41) #7
  %45 = ptrtoint ptr %pacer.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pacer.i, align 4
  call void @comedi_8254_update_divisors(ptr noundef %46) #7
  %47 = ptrtoint ptr %pacer.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pacer.i, align 4
  call void @comedi_8254_pacer_enable(ptr noundef %48, i32 noundef 1, i32 noundef 2, i1 noundef zeroext true) #7
  %49 = ptrtoint ptr %ns.addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ns.addr.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ns.addr.i)
  %51 = ptrtoint ptr %convert_arg to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %convert_arg, align 4
  %52 = ptrtoint ptr %can_burst to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load24 = load i8, ptr %can_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load24)
  %tobool27.not = icmp sgt i8 %bf.load24, -1
  br i1 %tobool27.not, label %das16_ai_set_mux_range.exit.do.body51_crit_edge, label %if.then28

das16_ai_set_mux_range.exit.do.body51_crit_edge:  ; preds = %das16_ai_set_mux_range.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51

if.then28:                                        ; preds = %das16_ai_set_mux_range.exit
  %convert_src = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 6
  %53 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp = icmp eq i32 %54, 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  %55 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %iobase.i, align 4
  %add34 = add i32 %56, 1029
  %and35 = and i32 %add34, 1048575
  %add36 = or i32 %and35, -18874368
  %57 = inttoptr i32 %add36 to ptr
  br i1 %cmp, label %do.body30, label %do.body41

do.body30:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 64) #7, !srcloc !131
  %58 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %chanlist_len, align 4
  %60 = trunc i32 %59 to i8
  %sub39.tr = shl i8 %60, 4
  %phi.cast = add i8 %sub39.tr, -16
  br label %do.body51

do.body41:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 0) #7, !srcloc !131
  br label %do.body51

do.body51:                                        ; preds = %do.body41, %do.body30, %das16_ai_set_mux_range.exit.do.body51_crit_edge
  %byte.0 = phi i8 [ %phi.cast, %do.body30 ], [ 0, %do.body41 ], [ 0, %das16_ai_set_mux_range.exit.do.body51_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  call void @arm_heavy_mb() #7
  %61 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %iobase.i, align 4
  %add55 = add i32 %62, 10
  %and56 = and i32 %add55, 1048575
  %add57 = or i32 %and56, -18874368
  %63 = inttoptr i32 %add57 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %byte.0) #7, !srcloc !131
  %cur_dma = getelementptr inbounds %struct.comedi_isadma, ptr %3, i32 0, i32 3
  %64 = ptrtoint ptr %cur_dma to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %cur_dma, align 4
  %65 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %private, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %desc2.i = getelementptr inbounds %struct.comedi_isadma, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %desc2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %desc2.i, align 4
  %cur_dma.i = getelementptr inbounds %struct.comedi_isadma, ptr %68, i32 0, i32 3
  %71 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %cur_dma.i, align 4
  %maxsize.i = getelementptr %struct.comedi_isadma_desc, ptr %70, i32 %72, i32 3
  %73 = ptrtoint ptr %maxsize.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %maxsize.i, align 4
  %subdev_flags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %75 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i = and i32 %76, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %shr.i.i = lshr i32 %74, %cond.i.i.i
  %call3.i = call i32 @comedi_nsamples_left(ptr noundef %s, i32 noundef %shr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i155.not = icmp eq i32 %call3.i, 0
  br i1 %cmp.i155.not, label %do.body51.das16_ai_setup_dma.exit_crit_edge, label %if.then.i

do.body51.das16_ai_setup_dma.exit_crit_edge:      ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %das16_ai_setup_dma.exit

if.then.i:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i15.i = and i32 %78, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i15.i)
  %tobool.not.i.i16.i = icmp eq i32 %and.i.i15.i, 0
  %cond.i.i17.i = select i1 %tobool.not.i.i16.i, i32 1, i32 2
  %shl.i.i = shl i32 %call3.i, %cond.i.i17.i
  %size.i = getelementptr %struct.comedi_isadma_desc, ptr %70, i32 %72, i32 4
  %79 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %shl.i.i, ptr %size.i, align 4
  br label %das16_ai_setup_dma.exit

das16_ai_setup_dma.exit:                          ; preds = %if.then.i, %do.body51.das16_ai_setup_dma.exit_crit_edge
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call64 = call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %80 = ptrtoint ptr %can_burst to i32
  call void @__asan_load1_noabort(i32 %80)
  %bf.load69 = load i8, ptr %can_burst, align 4
  %bf.set = or i8 %bf.load69, 64
  store i8 %bf.set, ptr %can_burst, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %81 = load volatile i32, ptr @jiffies, align 128
  %add71 = add i32 %81, 5
  %timer = getelementptr inbounds %struct.das16_private_struct, ptr %1, i32 0, i32 6
  %expires = getelementptr inbounds %struct.das16_private_struct, ptr %1, i32 0, i32 6, i32 1
  %82 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %add71, ptr %expires, align 4
  call void @add_timer(ptr noundef %timer) #7
  %ctrl_reg = getelementptr inbounds %struct.das16_private_struct, ptr %1, i32 0, i32 3
  %83 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ctrl_reg, align 4
  %and73 = and i32 %84, -136
  %or75 = or i32 %and73, 4
  store i32 %or75, ptr %ctrl_reg, align 4
  %convert_src76 = getelementptr inbounds %struct.comedi_async, ptr %5, i32 0, i32 17, i32 6
  %85 = ptrtoint ptr %convert_src76 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %convert_src76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %86)
  %cmp77 = icmp eq i32 %86, 64
  %storemerge.v = select i1 %cmp77, i32 6, i32 7
  %storemerge = or i32 %storemerge.v, %and73
  %87 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %storemerge, ptr %ctrl_reg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  call void @arm_heavy_mb() #7
  %88 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ctrl_reg, align 4
  %conv90 = trunc i32 %89 to i8
  %90 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %iobase.i, align 4
  %add92 = add i32 %91, 9
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %92 = inttoptr i32 %add94 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 %conv90) #7, !srcloc !131
  %93 = ptrtoint ptr %can_burst to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load97 = load i8, ptr %can_burst, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load97)
  %tobool100.not = icmp sgt i8 %bf.load97, -1
  br i1 %tobool100.not, label %das16_ai_setup_dma.exit.if.end110_crit_edge, label %do.body102

das16_ai_setup_dma.exit.if.end110_crit_edge:      ; preds = %das16_ai_setup_dma.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

do.body102:                                       ; preds = %das16_ai_setup_dma.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  call void @arm_heavy_mb() #7
  %94 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %iobase.i, align 4
  %add106 = add i32 %95, 1028
  %and107 = and i32 %add106, 1048575
  %add108 = or i32 %and107, -18874368
  %96 = inttoptr i32 %add108 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 0) #7, !srcloc !131
  br label %if.end110

if.end110:                                        ; preds = %do.body102, %das16_ai_setup_dma.exit.if.end110_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call64) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end110 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16_cancel(ptr noundef %dev, ptr nocapture noundef readnone %s) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #7
  %ctrl_reg = getelementptr inbounds %struct.das16_private_struct, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ctrl_reg, align 4
  %and = and i32 %3, -136
  store i32 %and, ptr %ctrl_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctrl_reg, align 4
  %conv10 = trunc i32 %5 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add = add i32 %7, 9
  %and11 = and i32 %add, 1048575
  %add12 = or i32 %and11, -18874368
  %8 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv10) #7, !srcloc !131
  %timer_running = getelementptr inbounds %struct.das16_private_struct, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %timer_running to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %timer_running, align 4
  %10 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear17 = and i8 %bf.load, -65
  %11 = ptrtoint ptr %timer_running to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.clear17, ptr %timer_running, align 4
  %timer = getelementptr inbounds %struct.das16_private_struct, ptr %1, i32 0, i32 6
  %call18 = tail call i32 @del_timer(ptr noundef %timer) #7
  %12 = ptrtoint ptr %timer_running to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load19.pr = load i8, ptr %timer_running, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bf.load19 = phi i8 [ %bf.load19.pr, %if.then ], [ %bf.load, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load19)
  %tobool22.not = icmp sgt i8 %bf.load19, -1
  br i1 %tobool22.not, label %if.end.if.end32_crit_edge, label %do.body24

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.body24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %iobase, align 4
  %add28 = add i32 %14, 1029
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %15 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 0) #7, !srcloc !131
  br label %if.end32

if.end32:                                         ; preds = %do.body24, %if.end.if.end32_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call3) #7
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @das16_ai_munge(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef %array, i32 noundef %num_bytes, i32 noundef %start_chan_index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev_flags.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 4
  %0 = ptrtoint ptr %subdev_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %subdev_flags.i.i, align 4
  %and.i.i = and i32 %1, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 1, i32 2
  %shr.i = lshr i32 %num_bytes, %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %cmp19.not = icmp eq i32 %shr.i, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %array, i32 %i.020
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %arrayidx, align 2
  %6 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %7)
  %cmp2 = icmp eq i32 %7, 4095
  br i1 %cmp2, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = lshr i16 %4, 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %arrayidx, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %10 = ptrtoint ptr %maxdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxdata, align 4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx, align 2
  %14 = trunc i32 %11 to i16
  %conv8 = and i16 %13, %14
  store i16 %conv8, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %shr.i
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @das16_ao_range(ptr noundef %s, ptr nocapture noundef readonly %it) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.comedi_devconfig, ptr %it, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 %tobool3.not, i1 false
  br i1 %or.cond, label %entry.cleanup10_crit_edge, label %if.then

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

if.then:                                          ; preds = %entry
  %call = tail call ptr @comedi_alloc_spriv(ptr noundef %s, i32 noundef 16) #7
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then.cleanup10_crit_edge, label %if.end

if.then.cleanup10_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup10

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %call, align 4
  %range = getelementptr inbounds %struct.comedi_lrange, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %range, align 4
  %max7 = getelementptr inbounds %struct.comedi_lrange, ptr %call, i32 2
  %6 = ptrtoint ptr %max7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %max7, align 4
  %flags = getelementptr inbounds %struct.comedi_lrange, ptr %call, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags, align 4
  br label %cleanup10

cleanup10:                                        ; preds = %if.end, %if.then.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.1 = phi ptr [ %call, %if.end ], [ @range_unknown, %if.then.cleanup10_crit_edge ], [ @range_unknown, %entry.cleanup10_crit_edge ]
  ret ptr %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %2 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp28.not = icmp eq i32 %3, 0
  br i1 %cmp28.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 4, i32 6
  %cond12 = select i1 %tobool.not, i32 5, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.029 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %data, i32 %i.029
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %readback, align 4
  %arrayidx1 = getelementptr i32, ptr %7, i32 %and
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %arrayidx1, align 4
  %shl = shl i32 %5, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %conv = trunc i32 %shl to i8
  %9 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iobase, align 4
  %add = add i32 %10, %cond
  %and3 = and i32 %add, 1048575
  %add4 = or i32 %and3, -18874368
  %11 = inttoptr i32 %add4 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %conv) #7, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %shr = lshr i32 %shl, 8
  %conv9 = trunc i32 %shr to i8
  %12 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %iobase, align 4
  %add13 = add i32 %13, %cond12
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %14 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv9) #7, !srcloc !131
  %inc = add nuw i32 %i.029, 1
  %15 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %16, %for.body.for.end_crit_edge ]
  ret i32 %.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  %4 = and i8 %3, 15
  %and3 = zext i8 %4 to i32
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and3, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
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
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #7, !srcloc !131
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @das16_reset(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 8
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #7, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %iobase, align 4
  %add5 = add i32 %4, 9
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %5 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #7, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %add12 = add i32 %7, 10
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %8 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #7, !srcloc !131
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @das16_timer_interrupt(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %t, i32 -20
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %private.i = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 4
  %read_subdev.i = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %read_subdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_subdev.i, align 4
  %async1.i = getelementptr inbounds %struct.comedi_subdevice, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %async1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %async1.i, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %desc4.i = getelementptr inbounds %struct.comedi_isadma, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %desc4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc4.i, align 4
  %cur_dma.i = getelementptr inbounds %struct.comedi_isadma, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur_dma.i, align 4
  %arrayidx.i = getelementptr %struct.comedi_isadma_desc, ptr %11, i32 %13
  %spinlock.i = getelementptr inbounds %struct.comedi_device, ptr %1, i32 0, i32 11
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  %ctrl_reg.i = getelementptr inbounds %struct.das16_private_struct, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctrl_reg.i, align 4
  %and.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call6.i) #7
  br label %das16_interrupt.exit

if.end.i:                                         ; preds = %entry
  %size.i = getelementptr %struct.comedi_isadma_desc, ptr %11, i32 %13, i32 4
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 4
  %subdev_flags.i.i.i = getelementptr inbounds %struct.comedi_subdevice, ptr %5, i32 0, i32 4
  %18 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i = and i32 %19, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 1, i32 2
  %shr.i.i = lshr i32 %17, %cond.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %tobool21.not.i = icmp eq i32 %shr.i.i, 0
  br i1 %tobool21.not.i, label %if.end.i.if.end26.i_crit_edge, label %if.then22.i

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then22.i:                                      ; preds = %if.end.i
  %20 = ptrtoint ptr %cur_dma.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cur_dma.i, align 4
  %sub24.i = sub i32 1, %21
  store i32 %sub24.i, ptr %cur_dma.i, align 4
  %22 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %desc2.i.i = getelementptr inbounds %struct.comedi_isadma, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %desc2.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc2.i.i, align 4
  %cur_dma.i.i = getelementptr inbounds %struct.comedi_isadma, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %cur_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cur_dma.i.i, align 4
  %maxsize.i.i = getelementptr %struct.comedi_isadma_desc, ptr %27, i32 %29, i32 3
  %30 = ptrtoint ptr %maxsize.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maxsize.i.i, align 4
  %32 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i.i.i = and i32 %33, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %cond.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 1, i32 2
  %shr.i.i.i = lshr i32 %31, %cond.i.i.i.i
  %add.i.i = add nuw i32 %shr.i.i.i, %shr.i.i
  %call3.i.i = tail call i32 @comedi_nsamples_left(ptr noundef %5, i32 noundef %add.i.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i.i, i32 %shr.i.i)
  %cmp.i.i = icmp ugt i32 %call3.i.i, %shr.i.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then22.i.if.end26.i_crit_edge

if.then22.i.if.end26.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

if.then.i.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = sub i32 %call3.i.i, %shr.i.i
  %34 = ptrtoint ptr %subdev_flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %subdev_flags.i.i.i, align 4
  %and.i.i15.i.i = and i32 %35, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i15.i.i)
  %tobool.not.i.i16.i.i = icmp eq i32 %and.i.i15.i.i, 0
  %cond.i.i17.i.i = select i1 %tobool.not.i.i16.i.i, i32 1, i32 2
  %shl.i.i.i = shl i32 %sub.i.i, %cond.i.i17.i.i
  %size.i.i = getelementptr %struct.comedi_isadma_desc, ptr %27, i32 %29, i32 4
  %36 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shl.i.i.i, ptr %size.i.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then.i.i, %if.then22.i.if.end26.i_crit_edge, %if.end.i.if.end26.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call6.i) #7
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %call28.i = tail call i32 @comedi_buf_write_samples(ptr noundef %5, ptr noundef %38, i32 noundef %shr.i.i) #7
  %stop_src.i = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 17, i32 10
  %39 = ptrtoint ptr %stop_src.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %stop_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %40)
  %cmp29.i = icmp eq i32 %40, 32
  br i1 %cmp29.i, label %land.lhs.true.i, label %if.end26.i.if.end36.i_crit_edge

if.end26.i.if.end36.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.end26.i
  %scans_done.i = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 11
  %41 = ptrtoint ptr %scans_done.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %scans_done.i, align 4
  %stop_arg.i = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 17, i32 11
  %43 = ptrtoint ptr %stop_arg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %stop_arg.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp31.not.i = icmp ult i32 %42, %44
  br i1 %cmp31.not.i, label %land.lhs.true.i.if.end36.i_crit_edge, label %if.then33.i

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

if.then33.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %events34.i = getelementptr inbounds %struct.comedi_async, ptr %7, i32 0, i32 16
  %45 = ptrtoint ptr %events34.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %events34.i, align 4
  %or35.i = or i32 %46, 2
  store i32 %or35.i, ptr %events34.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %land.lhs.true.i.if.end36.i_crit_edge, %if.end26.i.if.end36.i_crit_edge
  %call37.i = tail call i32 @comedi_handle_events(ptr noundef %1, ptr noundef %5) #7
  br label %das16_interrupt.exit

das16_interrupt.exit:                             ; preds = %if.end36.i, %if.then.i
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock.i) #7
  %timer_running = getelementptr i8, ptr %t, i32 52
  %47 = ptrtoint ptr %timer_running to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load = load i8, ptr %timer_running, align 4
  %48 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not = icmp eq i8 %48, 0
  br i1 %tobool.not, label %das16_interrupt.exit.if.end_crit_edge, label %if.then

das16_interrupt.exit.if.end_crit_edge:            ; preds = %das16_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %das16_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %49, 5
  %call8 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %das16_interrupt.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock.i, i32 noundef %call4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_samples(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_handle_events(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_nsamples_left(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_alloc_spriv(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das16_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 8
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp sgt i8 %3, -1
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_cascade_ns_to_timer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @das16_ai_check_chanlist(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %cmd) unnamed_addr #2 align 64 {
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
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %4 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanlist_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp61 = icmp ugt i32 %5, 1
  br i1 %cmp61, label %for.body.lr.ph, label %entry.cleanup40_crit_edge

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup40_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @das16_ai_check_chanlist.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@das16_ai_check_chanlist, %cleanup40)) #7
          to label %if.then15 [label %cleanup40], !srcloc !157

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %10 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @das16_ai_check_chanlist.__UNIQUE_ID_ddebug234, ptr noundef %11, ptr noundef nonnull @.str.18) #7
  br label %cleanup40

if.end16:                                         ; preds = %for.body
  %shr952 = xor i32 %9, %3
  %12 = and i32 %shr952, 16711680
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp17.not = icmp eq i32 %12, 0
  br i1 %cmp17.not, label %for.cond, label %do.body19

do.body19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @das16_ai_check_chanlist.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@das16_ai_check_chanlist, %cleanup40)) #7
          to label %if.then33 [label %cleanup40], !srcloc !157

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  %class_dev34 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %13 = ptrtoint ptr %class_dev34 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %class_dev34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @das16_ai_check_chanlist.__UNIQUE_ID_ddebug235, ptr noundef %14, ptr noundef nonnull @.str.19) #7
  br label %cleanup40

cleanup40:                                        ; preds = %if.then33, %do.body19, %if.then15, %do.body, %for.cond.cleanup40_crit_edge, %entry.cleanup40_crit_edge
  %retval.2 = phi i32 [ -22, %if.then15 ], [ -22, %if.then33 ], [ -22, %do.body ], [ -22, %do.body19 ], [ 0, %entry.cleanup40_crit_edge ], [ 0, %for.cond.cleanup40_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_update_divisors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_pacer_enable(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_legacy_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !62, !63, !65, !66, !68, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__initcall__kmod_das16__236_1194_das16_driver_init6, !1, !"__initcall__kmod_das16__236_1194_das16_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/das16.c", i32 1194, i32 1}
!2 = !{ptr @__exitcall_das16_driver_exit, !1, !"__exitcall_das16_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/comedi/drivers/das16.c", i32 1196, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/comedi/drivers/das16.c", i32 1197, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/comedi/drivers/das16.c", i32 1198, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/das16.c", i32 1186, i32 17}
!12 = !{ptr @das16_driver, !13, !"das16_driver", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/das16.c", i32 1185, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/das16.c", i32 1027, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @das16_attach._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @das16_attach._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/comedi/drivers/das16.c", i32 907, i32 3}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @das16_probe._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @das16_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @das16_alloc_dma.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/comedi/drivers/das16.c", i32 927, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/das16.c", i32 494, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @das16_interrupt._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @das16_interrupt._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @das16_ai_uni_lranges, !36, !"das16_ai_uni_lranges", i1 false, i1 false}
!36 = !{!"../drivers/comedi/drivers/das16.c", i32 199, i32 42}
!37 = !{ptr @range_das16jr, !38, !"range_das16jr", i1 false, i1 false}
!38 = !{!"../drivers/comedi/drivers/das16.c", i32 152, i32 35}
!39 = !{ptr @range_das16jr_16, !40, !"range_das16jr_16", i1 false, i1 false}
!40 = !{!"../drivers/comedi/drivers/das16.c", i32 166, i32 35}
!41 = !{ptr @range_das1x01_unip, !42, !"range_das1x01_unip", i1 false, i1 false}
!42 = !{!"../drivers/comedi/drivers/das16.c", i32 125, i32 35}
!43 = !{ptr @range_das1x02_unip, !44, !"range_das1x02_unip", i1 false, i1 false}
!44 = !{!"../drivers/comedi/drivers/das16.c", i32 143, i32 35}
!45 = !{ptr @das16_ai_bip_lranges, !46, !"das16_ai_bip_lranges", i1 false, i1 false}
!46 = !{!"../drivers/comedi/drivers/das16.c", i32 207, i32 42}
!47 = !{ptr @range_das1x01_bip, !48, !"range_das1x01_bip", i1 false, i1 false}
!48 = !{!"../drivers/comedi/drivers/das16.c", i32 116, i32 35}
!49 = !{ptr @range_das1x02_bip, !50, !"range_das1x02_bip", i1 false, i1 false}
!50 = !{!"../drivers/comedi/drivers/das16.c", i32 134, i32 35}
!51 = !{ptr @das16_gainlists, !52, !"das16_gainlists", i1 false, i1 false}
!52 = !{!"../drivers/comedi/drivers/das16.c", i32 191, i32 25}
!53 = !{ptr @das16jr_gainlist, !54, !"das16jr_gainlist", i1 false, i1 false}
!54 = !{!"../drivers/comedi/drivers/das16.c", i32 179, i32 18}
!55 = !{ptr @das16jr_16_gainlist, !56, !"das16jr_16_gainlist", i1 false, i1 false}
!56 = !{!"../drivers/comedi/drivers/das16.c", i32 180, i32 18}
!57 = !{ptr @das1600_gainlist, !58, !"das1600_gainlist", i1 false, i1 false}
!58 = !{!"../drivers/comedi/drivers/das16.c", i32 181, i32 18}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/comedi/drivers/das16.c", i32 568, i32 4}
!61 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @das16_ai_check_chanlist.__UNIQUE_ID_ddebug234, !60, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/comedi/drivers/das16.c", i32 574, i32 4}
!65 = !{ptr @das16_ai_check_chanlist.__UNIQUE_ID_ddebug235, !64, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/comedi/drivers/das16.c", i32 706, i32 3}
!68 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @das16_cmd_exec._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @das16_cmd_exec._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/comedi/drivers/das16.c", i32 231, i32 12}
!73 = !{ptr @.str.23, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/comedi/drivers/das16.c", i32 241, i32 12}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/comedi/drivers/das16.c", i32 251, i32 12}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/comedi/drivers/das16.c", i32 261, i32 12}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/comedi/drivers/das16.c", i32 271, i32 12}
!81 = !{ptr @.str.27, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/comedi/drivers/das16.c", i32 281, i32 12}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/comedi/drivers/das16.c", i32 288, i32 12}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/comedi/drivers/das16.c", i32 295, i32 12}
!87 = !{ptr @.str.30, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/comedi/drivers/das16.c", i32 302, i32 12}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/comedi/drivers/das16.c", i32 309, i32 12}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/comedi/drivers/das16.c", i32 318, i32 12}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/comedi/drivers/das16.c", i32 327, i32 12}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/comedi/drivers/das16.c", i32 334, i32 12}
!97 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/comedi/drivers/das16.c", i32 341, i32 12}
!99 = !{ptr @.str.36, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/comedi/drivers/das16.c", i32 351, i32 12}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/comedi/drivers/das16.c", i32 361, i32 12}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/comedi/drivers/das16.c", i32 368, i32 12}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/comedi/drivers/das16.c", i32 375, i32 12}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/comedi/drivers/das16.c", i32 382, i32 12}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/comedi/drivers/das16.c", i32 392, i32 12}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/comedi/drivers/das16.c", i32 402, i32 12}
!113 = !{ptr @.str.43, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/comedi/drivers/das16.c", i32 412, i32 12}
!115 = !{ptr @das16_boards, !116, !"das16_boards", i1 false, i1 false}
!116 = !{!"../drivers/comedi/drivers/das16.c", i32 229, i32 33}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i64 5049330}
!127 = !{i64 2154243762}
!128 = !{i64 2154249367}
!129 = !{i64 2154249770}
!130 = !{i64 2154250186}
!131 = !{i64 5048935}
!132 = !{i64 2154250591}
!133 = !{i64 2154251050}
!134 = !{i64 2154251402}
!135 = !{i64 2154251754}
!136 = !{i64 2154245919}
!137 = !{i64 2154246268}
!138 = !{i64 2154246617}
!139 = !{i64 2154228317}
!140 = !{i64 2154228703}
!141 = !{i64 2152584991}
!142 = !{i64 2154241627}
!143 = !{i64 2154241929}
!144 = !{!"auto-init"}
!145 = !{i32 0, i32 33}
!146 = !{i64 2154236858}
!147 = !{i64 2154238075}
!148 = !{i64 2154239002}
!149 = !{i64 2154239353}
!150 = !{i64 2154240252}
!151 = !{i64 2154240603}
!152 = !{i64 2154242230}
!153 = !{i64 2154242655}
!154 = !{i64 2154243104}
!155 = !{i64 2154243333}
!156 = !{i64 2154241162}
!157 = !{i64 2148981687, i64 2148981692, i64 2148981705, i64 2148981749, i64 2148981783, i64 2148981804}
