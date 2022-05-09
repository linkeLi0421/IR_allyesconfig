; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-fsi.c_pt.bc'
source_filename = "../drivers/spi/spi-fsi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsi_driver = type { %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fsi_device_id = type { i8, i8 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fsi_device = type { %struct.device, i8, i8, i8, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.fsi2spi = type { ptr, %struct.mutex }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.fsi_spi = type { ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_spi_fsi__245_576_fsi_spi_driver_init6 = internal global ptr @fsi_spi_driver_init, section ".initcall6.init", align 4
@fsi_spi_driver = internal global { %struct.fsi_driver, [48 x i8] } { %struct.fsi_driver { %struct.device_driver { ptr @.str, ptr @fsi_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr @fsi_spi_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @fsi_spi_ids }, [48 x i8] zeroinitializer }, align 32
@__exitcall_fsi_spi_driver_exit = internal global ptr @fsi_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author246 = internal constant [51 x i8] c"spi_fsi.author=Eddie James <eajames@linux.ibm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description247 = internal constant [48 x i8] c"spi_fsi.description=FSI attached SPI controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file248 = internal constant [33 x i8] c"spi_fsi.file=drivers/spi/spi-fsi\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [20 x i8] c"spi_fsi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi-fsi\00", [24 x i8] zeroinitializer }, align 32
@fsi_bus_type = external dso_local global %struct.bus_type, align 4
@fsi_spi_ids = internal constant { [2 x %struct.fsi_device_id], [28 x i8] } { [2 x %struct.fsi_device_id] [%struct.fsi_device_id { i8 35, i8 0 }, %struct.fsi_device_id zeroinitializer], [28 x i8] zeroinitializer }, align 32
@fsi_spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&bridge->lock\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@fsi_spi_check_mux.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 24, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_fsi\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsi_spi_check_mux\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/spi/spi-fsi.c\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Root control register 8: %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@fsi_spi_transfer_one_message.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.7, ptr @.str.5, ptr @.str.8, i8 0, i8 108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fsi_spi_transfer_one_message\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Start tx of %d bytes.\0A\00", [41 x i8] zeroinitializer }, align 32
@fsi_spi_transfer_one_message.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.7, ptr @.str.5, ptr @.str.9, i8 0, i8 116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Sequence rx of %d bytes.\0A\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fsi_spi_transfer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.5, i32 379, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Initialization error: %08llx\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsi_spi_transfer_init\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsi_spi_transfer_init._entry_ptr = internal global ptr @fsi_spi_transfer_init._entry, section ".printk_index", align 4
@fsi_spi_read_reg.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.14, ptr @.str.5, ptr @.str.15, i8 0, i8 41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsi_spi_read_reg\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Read %02x[%016llx].\0A\00", [43 x i8] zeroinitializer }, align 32
@fsi_spi_check_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 119, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error with FSI2SPI interface: %08x.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fsi_spi_check_status\00", [43 x i8] zeroinitializer }, align 32
@fsi_spi_check_status._entry_ptr = internal global ptr @fsi_spi_check_status._entry, section ".printk_index", align 4
@fsi_spi_reset.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.18, ptr @.str.5, ptr @.str.19, i8 0, i8 61, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsi_spi_reset\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Resetting SPI controller.\0A\00", [37 x i8] zeroinitializer }, align 32
@fsi_spi_write_reg.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.20, ptr @.str.5, ptr @.str.21, i8 0, i8 47, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsi_spi_write_reg\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Write %02x[%016llx].\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"TX\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RX\00", [29 x i8] zeroinitializer }, align 32
@fsi_spi_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 268, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s error: %016llx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsi_spi_status\00", [17 x i8] zeroinitializer }, align 32
@fsi_spi_status._entry_ptr = internal global ptr @fsi_spi_status._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 56, i64 0, i64 281474976710656]
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"fsi_spi_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 568, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 571, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"fsi_spi_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 562, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 522, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 529, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 98, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 434, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 464, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 377, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 166, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 119, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 245, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 188, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 319, i32 39 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 333, i32 39 }
@___asan_gen_.113 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [25 x i8] c"../drivers/spi/spi-fsi.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 268, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_fsi_spi_driver_exit, ptr @__initcall__kmod_spi_fsi__245_576_fsi_spi_driver_init6, ptr @fsi_spi_check_status._entry, ptr @fsi_spi_check_status._entry_ptr, ptr @fsi_spi_driver_exit, ptr @fsi_spi_status._entry, ptr @fsi_spi_status._entry_ptr, ptr @fsi_spi_transfer_init._entry, ptr @fsi_spi_transfer_init._entry_ptr, ptr @fsi_spi_driver, ptr @.str, ptr @fsi_spi_ids, ptr @fsi_spi_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_spi_driver to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_spi_ids to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_spi_transfer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_spi_check_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsi_spi_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fsi_driver_register(ptr noundef nonnull @fsi_spi_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsi_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @fsi_driver_unregister(ptr noundef nonnull @fsi_spi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_spi_probe(ptr noundef %dev) #2 align 64 {
entry:
  %root_ctrl_8_be.i = alloca i32, align 4
  %base = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root_ctrl_8_be.i) #7
  %0 = ptrtoint ptr %root_ctrl_8_be.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %root_ctrl_8_be.i, align 4, !annotation !76
  %slave.i = getelementptr inbounds %struct.fsi_device, ptr %dev, i32 0, i32 4
  %1 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %slave.i, align 4
  %call.i = call i32 @fsi_slave_read(ptr noundef %2, i32 noundef 10336, ptr noundef nonnull %root_ctrl_8_be.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.fsi_spi_check_mux.exit.thread_crit_edge

entry.fsi_spi_check_mux.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_check_mux.exit.thread

if.end.i:                                         ; preds = %entry
  %3 = ptrtoint ptr %root_ctrl_8_be.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %root_ctrl_8_be.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_spi_check_mux.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsi_spi_probe, %do.end.i)) #7
          to label %if.then6.i [label %do.end.i], !srcloc !77

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_spi_check_mux.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %4) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435457, i32 %4)
  %cmp.i = icmp ugt i32 %4, -268435457
  br i1 %cmp.i, label %if.end, label %do.end.i.fsi_spi_check_mux.exit.thread_crit_edge

do.end.i.fsi_spi_check_mux.exit.thread_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_check_mux.exit.thread

fsi_spi_check_mux.exit.thread:                    ; preds = %do.end.i.fsi_spi_check_mux.exit.thread_crit_edge, %entry.fsi_spi_check_mux.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_ctrl_8_be.i) #7
  br label %cleanup35

if.end:                                           ; preds = %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_ctrl_8_be.i) #7
  %call.i68 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 96, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i68, null
  br i1 %tobool2.not, label %if.end.cleanup35_crit_edge, label %if.end4

if.end.cleanup35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup35

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call.i68 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i68, align 4
  %lock = getelementptr inbounds %struct.fsi2spi, ptr %call.i68, i32 0, i32 1
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @fsi_spi_probe.__key) #7
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call6 = call ptr @of_get_next_available_child(ptr noundef %7, ptr noundef null) #7
  %cmp.not85 = icmp eq ptr %call6, null
  br i1 %cmp.not85, label %if.end4.for.end.thread_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end.thread_crit_edge:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %num_controllers_registered.090 = phi i32 [ %num_controllers_registered.2.ph, %for.inc.for.body_crit_edge ], [ 0, %if.end4.for.body_crit_edge ]
  %np.086 = phi ptr [ %call31, %for.inc.for.body_crit_edge ], [ %call6, %if.end4.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %base) #7
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %base, align 4, !annotation !76
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.086, ptr noundef nonnull @.str.2, ptr noundef nonnull %base, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool8.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool8.not, label %if.end10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %call.i69 = call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 12, i1 noundef zeroext false) #7
  %tobool12.not = icmp eq ptr %call.i69, null
  br i1 %tobool12.not, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.end10
  %of_node16 = getelementptr inbounds %struct.device, ptr %call.i69, i32 0, i32 27
  %9 = ptrtoint ptr %of_node16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %np.086, ptr %of_node16, align 8
  %call.i70 = call ptr @of_get_next_available_child(ptr noundef nonnull %np.086, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i70, null
  br i1 %cmp.not5.i, label %if.end14.of_get_available_child_count.exit.thread_crit_edge, label %if.end14.for.body.i_crit_edge

if.end14.for.body.i_crit_edge:                    ; preds = %if.end14
  br label %for.body.i

if.end14.of_get_available_child_count.exit.thread_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_available_child_count.exit.thread

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end14.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end14.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i70, %if.end14.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = call ptr @of_get_next_available_child(ptr noundef nonnull %np.086, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

of_get_available_child_count.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool18.not = icmp eq i32 %inc.i, 0
  %10 = trunc i32 %inc.i to i16
  br i1 %tobool18.not, label %of_get_available_child_count.exit.of_get_available_child_count.exit.thread_crit_edge, label %of_get_available_child_count.exit._crit_edge

of_get_available_child_count.exit._crit_edge:     ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %11

of_get_available_child_count.exit.of_get_available_child_count.exit.thread_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_available_child_count.exit.thread

of_get_available_child_count.exit.thread:         ; preds = %of_get_available_child_count.exit.of_get_available_child_count.exit.thread_crit_edge, %if.end14.of_get_available_child_count.exit.thread_crit_edge
  br label %11

11:                                               ; preds = %of_get_available_child_count.exit.thread, %of_get_available_child_count.exit._crit_edge
  %12 = phi i16 [ 1, %of_get_available_child_count.exit.thread ], [ %10, %of_get_available_child_count.exit._crit_edge ]
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i69, i32 0, i32 3
  %13 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %num_chipselect, align 2
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i69, i32 0, i32 10
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags, align 4
  %max_transfer_size = getelementptr inbounds %struct.spi_controller, ptr %call.i69, i32 0, i32 13
  %15 = ptrtoint ptr %max_transfer_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @fsi_spi_max_transfer_size, ptr %max_transfer_size, align 8
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i69, i32 0, i32 45
  %16 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @fsi_spi_transfer_one_message, ptr %transfer_one_message, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i69, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i69, ptr %18, align 4
  %bridge22 = getelementptr inbounds %struct.fsi_spi, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %bridge22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i68, ptr %bridge22, align 4
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base, align 4
  %add = add i32 %22, 458752
  %base23 = getelementptr inbounds %struct.fsi_spi, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %base23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add, ptr %base23, align 4
  %call24 = call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.else, label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %11
  call void @__sanitizer_cov_trace_pc() #9
  call void @put_device(ptr noundef nonnull %call.i69) #7
  br label %for.inc

if.else:                                          ; preds = %11
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add i32 %num_controllers_registered.090, 1
  br label %for.inc

cleanup:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %np.086) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base) #7
  br label %for.end

for.inc:                                          ; preds = %if.else, %spi_controller_put.exit, %for.body.for.inc_crit_edge
  %num_controllers_registered.2.ph = phi i32 [ %inc, %if.else ], [ %num_controllers_registered.090, %spi_controller_put.exit ], [ %num_controllers_registered.090, %for.body.for.inc_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %base) #7
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %call31 = call ptr @of_get_next_available_child(ptr noundef %25, ptr noundef nonnull %np.086) #7
  %cmp.not = icmp eq ptr %call31, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %cleanup
  %num_controllers_registered.083 = phi i32 [ %num_controllers_registered.090, %cleanup ], [ %num_controllers_registered.2.ph, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_controllers_registered.083)
  %tobool32.not = icmp eq i32 %num_controllers_registered.083, 0
  br i1 %tobool32.not, label %for.end.for.end.thread_crit_edge, label %for.end.cleanup35_crit_edge

for.end.cleanup35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup35

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.end4.for.end.thread_crit_edge
  br label %cleanup35

cleanup35:                                        ; preds = %for.end.thread, %for.end.cleanup35_crit_edge, %if.end.cleanup35_crit_edge, %fsi_spi_check_mux.exit.thread
  %retval.0 = phi i32 [ -12, %if.end.cleanup35_crit_edge ], [ -19, %fsi_spi_check_mux.exit.thread ], [ -19, %for.end.thread ], [ 0, %for.end.cleanup35_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fsi_spi_max_transfer_size(ptr nocapture noundef readnone %spi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsi_spi_transfer_one_message(ptr noundef %ctlr, ptr noundef %mesg) #2 align 64 {
entry:
  %root_ctrl_8_be.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spi = getelementptr inbounds %struct.spi_message, ptr %mesg, i32 0, i32 1
  %0 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_select, align 4
  %4 = add i8 %3, 1
  %5 = and i8 %4, 15
  %6 = or i8 %5, 16
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %bridge = getelementptr inbounds %struct.fsi_spi, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bridge, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %root_ctrl_8_be.i) #7
  %15 = ptrtoint ptr %root_ctrl_8_be.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %root_ctrl_8_be.i, align 4, !annotation !76
  %slave.i = getelementptr inbounds %struct.fsi_device, ptr %12, i32 0, i32 4
  %16 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slave.i, align 4
  %call.i = call i32 @fsi_slave_read(ptr noundef %17, i32 noundef 10336, ptr noundef nonnull %root_ctrl_8_be.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.fsi_spi_check_mux.exit.thread_crit_edge

entry.fsi_spi_check_mux.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_check_mux.exit.thread

if.end.i:                                         ; preds = %entry
  %18 = ptrtoint ptr %root_ctrl_8_be.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %root_ctrl_8_be.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_spi_check_mux.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsi_spi_transfer_one_message, %do.end.i)) #7
          to label %if.then6.i [label %do.end.i], !srcloc !77

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_spi_check_mux.__UNIQUE_ID_ddebug230, ptr noundef %14, ptr noundef nonnull @.str.6, i32 noundef %19) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435457, i32 %19)
  %cmp.i = icmp ugt i32 %19, -268435457
  br i1 %cmp.i, label %fsi_spi_check_mux.exit, label %do.end.i.fsi_spi_check_mux.exit.thread_crit_edge

do.end.i.fsi_spi_check_mux.exit.thread_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_check_mux.exit.thread

fsi_spi_check_mux.exit.thread:                    ; preds = %do.end.i.fsi_spi_check_mux.exit.thread_crit_edge, %entry.fsi_spi_check_mux.exit.thread_crit_edge
  %retval.0.i144.ph = phi i32 [ -67, %do.end.i.fsi_spi_check_mux.exit.thread_crit_edge ], [ %call.i, %entry.fsi_spi_check_mux.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_ctrl_8_be.i) #7
  br label %cleanup101

fsi_spi_check_mux.exit:                           ; preds = %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %root_ctrl_8_be.i) #7
  %20 = ptrtoint ptr %mesg to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn197 = load ptr, ptr %mesg, align 4
  %cmp.not199 = icmp eq ptr %.pn197, %mesg
  br i1 %cmp.not199, label %fsi_spi_check_mux.exit.cleanup101_crit_edge, label %for.body.lr.ph

fsi_spi_check_mux.exit.cleanup101_crit_edge:      ; preds = %fsi_spi_check_mux.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

for.body.lr.ph:                                   ; preds = %fsi_spi_check_mux.exit
  %conv.i = zext i8 %6 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 56
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn200 = phi ptr [ %.pn197, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %transfer.0201 = getelementptr i8, ptr %.pn200, i32 -84
  %21 = ptrtoint ptr %transfer.0201 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %transfer.0201, align 4
  %tobool6.not = icmp eq ptr %22, null
  br i1 %tobool6.not, label %for.body.cleanup101_crit_edge, label %lor.lhs.false

for.body.cleanup101_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

lor.lhs.false:                                    ; preds = %for.body
  %len7 = getelementptr i8, ptr %.pn200, i32 -76
  %23 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %24)
  %cmp8 = icmp ugt i32 %24, 40
  br i1 %cmp8, label %lor.lhs.false.cleanup101_crit_edge, label %do.body

lor.lhs.false.cleanup101_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_spi_transfer_one_message.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsi_spi_transfer_one_message, %do.end)) #7
          to label %if.then19 [label %do.end], !srcloc !77

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %8, align 4
  %27 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len7, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_spi_transfer_one_message.__UNIQUE_ID_ddebug243, ptr noundef %26, ptr noundef nonnull @.str.8, i32 noundef %28) #7
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  %call23 = call fastcc i32 @fsi_spi_transfer_init(ptr noundef %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end.cleanup101_crit_edge, label %if.end27

do.end.cleanup101_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

if.end27:                                         ; preds = %do.end
  %29 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %30)
  %cmp29191 = icmp ugt i32 %30, 8
  br i1 %cmp29191, label %while.body.preheader, label %if.end27.while.end_crit_edge

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.preheader:                             ; preds = %if.end27
  %31 = add i32 %30, -9
  %32 = and i32 %31, -8
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %len.0194 = phi i32 [ %sub, %while.body.while.body_crit_edge ], [ %30, %while.body.preheader ]
  %seq.sroa.0.0193 = phi i32 [ %sub.i150, %while.body.while.body_crit_edge ], [ 48, %while.body.preheader ]
  %seq.sroa.14174.0192 = phi i64 [ %or.i149, %while.body.while.body_crit_edge ], [ %shl.i, %while.body.preheader ]
  %sh_prom.i146 = zext i32 %seq.sroa.0.0193 to i64
  %shl.i147 = shl i64 56, %sh_prom.i146
  %or.i149 = or i64 %shl.i147, %seq.sroa.14174.0192
  %sub.i150 = add i32 %seq.sroa.0.0193, -8
  %sub = add i32 %len.0194, -8
  %cmp29 = icmp ugt i32 %sub, 8
  br i1 %cmp29, label %while.body.while.body_crit_edge, label %while.end.loopexit

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %33 = sub i32 40, %32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %if.end27.while.end_crit_edge
  %seq.sroa.14174.0.lcssa = phi i64 [ %shl.i, %if.end27.while.end_crit_edge ], [ %or.i149, %while.end.loopexit ]
  %seq.sroa.0.0.lcssa = phi i32 [ 48, %if.end27.while.end_crit_edge ], [ %33, %while.end.loopexit ]
  %len.0.lcssa = phi i32 [ %30, %if.end27.while.end_crit_edge ], [ %sub, %while.end.loopexit ]
  %34 = trunc i32 %len.0.lcssa to i8
  %conv33 = or i8 %34, 48
  %conv.i151 = zext i8 %conv33 to i64
  %sh_prom.i152 = zext i32 %seq.sroa.0.0.lcssa to i64
  %shl.i153 = shl i64 %conv.i151, %sh_prom.i152
  %or.i155 = or i64 %shl.i153, %seq.sroa.14174.0.lcssa
  %sub.i156 = add i32 %seq.sroa.0.0.lcssa, -8
  %35 = ptrtoint ptr %.pn200 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %.pn200, align 4
  %cmp.i157.not = icmp eq ptr %36, %mesg
  br i1 %cmp.i157.not, label %while.end.if.end76_crit_edge, label %if.then38

while.end.if.end76_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then38:                                        ; preds = %while.end
  %add.ptr43 = getelementptr i8, ptr %36, i32 -84
  %rx_buf = getelementptr i8, ptr %36, i32 -80
  %37 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_buf, align 4
  %tobool44.not = icmp eq ptr %38, null
  br i1 %tobool44.not, label %if.then38.if.end76_crit_edge, label %if.then45

if.then38.if.end76_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then45:                                        ; preds = %if.then38
  %len46 = getelementptr i8, ptr %36, i32 -76
  %39 = ptrtoint ptr %len46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %40)
  %cmp47 = icmp ugt i32 %40, 8
  br i1 %cmp47, label %if.then45.cleanup101_crit_edge, label %do.body51

if.then45.cleanup101_crit_edge:                   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

do.body51:                                        ; preds = %if.then45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_spi_transfer_one_message.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsi_spi_transfer_one_message, %cleanup)) #7
          to label %if.then65 [label %cleanup], !srcloc !77

if.then65:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %8, align 4
  %43 = ptrtoint ptr %len46 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len46, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_spi_transfer_one_message.__UNIQUE_ID_ddebug244, ptr noundef %42, ptr noundef nonnull @.str.9, i32 noundef %44) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %do.body51
  %45 = ptrtoint ptr %len46 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len46, align 4
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 15
  %conv74 = or i8 %48, 64
  %conv.i159 = zext i8 %conv74 to i64
  %sh_prom.i160 = zext i32 %sub.i156 to i64
  %shl.i161 = shl i64 %conv.i159, %sh_prom.i160
  %or.i163 = or i64 %shl.i161, %or.i155
  %sub.i164 = add i32 %seq.sroa.0.0.lcssa, -16
  br label %if.end76

if.end76:                                         ; preds = %cleanup, %if.then38.if.end76_crit_edge, %while.end.if.end76_crit_edge
  %seq.sroa.14174.2 = phi i64 [ %or.i155, %if.then38.if.end76_crit_edge ], [ %or.i163, %cleanup ], [ %or.i155, %while.end.if.end76_crit_edge ]
  %seq.sroa.0.2 = phi i32 [ %sub.i156, %if.then38.if.end76_crit_edge ], [ %sub.i164, %cleanup ], [ %sub.i156, %while.end.if.end76_crit_edge ]
  %next5.0 = phi ptr [ null, %if.then38.if.end76_crit_edge ], [ %add.ptr43, %cleanup ], [ null, %while.end.if.end76_crit_edge ]
  %sh_prom.i165 = zext i32 %seq.sroa.0.2 to i64
  %shl.i166 = shl i64 16, %sh_prom.i165
  %or.i168 = or i64 %shl.i166, %seq.sroa.14174.2
  %call77 = call fastcc i32 @fsi_spi_write_reg(ptr noundef %8, i32 noundef 7, i64 noundef %or.i168)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end76.cleanup101_crit_edge

if.end76.cleanup101_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

if.end80:                                         ; preds = %if.end76
  %call81 = call fastcc i32 @fsi_spi_transfer_data(ptr noundef %8, ptr noundef %transfer.0201)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end80.cleanup101_crit_edge

if.end80.cleanup101_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

if.end84:                                         ; preds = %if.end80
  %tobool85.not = icmp eq ptr %next5.0, null
  br i1 %tobool85.not, label %if.end84.for.inc_crit_edge, label %if.then86

if.end84.for.inc_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then86:                                        ; preds = %if.end84
  %call87 = call fastcc i32 @fsi_spi_transfer_data(ptr noundef %8, ptr noundef nonnull %next5.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then86.for.inc_crit_edge, label %if.then86.cleanup101_crit_edge

if.then86.cleanup101_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

if.then86.for.inc_crit_edge:                      ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.then86.for.inc_crit_edge, %if.end84.for.inc_crit_edge
  %transfer.1 = phi ptr [ %transfer.0201, %if.end84.for.inc_crit_edge ], [ %next5.0, %if.then86.for.inc_crit_edge ]
  %transfer_list97 = getelementptr inbounds %struct.spi_transfer, ptr %transfer.1, i32 0, i32 18
  %49 = ptrtoint ptr %transfer_list97 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn = load ptr, ptr %transfer_list97, align 4
  %cmp.not = icmp eq ptr %.pn, %mesg
  br i1 %cmp.not, label %for.inc.cleanup101_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup101_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup101

cleanup101:                                       ; preds = %for.inc.cleanup101_crit_edge, %if.then86.cleanup101_crit_edge, %if.end80.cleanup101_crit_edge, %if.end76.cleanup101_crit_edge, %if.then45.cleanup101_crit_edge, %do.end.cleanup101_crit_edge, %lor.lhs.false.cleanup101_crit_edge, %for.body.cleanup101_crit_edge, %fsi_spi_check_mux.exit.cleanup101_crit_edge, %fsi_spi_check_mux.exit.thread
  %rc.4 = phi i32 [ %retval.0.i144.ph, %fsi_spi_check_mux.exit.thread ], [ 0, %fsi_spi_check_mux.exit.cleanup101_crit_edge ], [ 0, %for.inc.cleanup101_crit_edge ], [ -22, %lor.lhs.false.cleanup101_crit_edge ], [ -22, %for.body.cleanup101_crit_edge ], [ %call23, %do.end.cleanup101_crit_edge ], [ %call77, %if.end76.cleanup101_crit_edge ], [ %call81, %if.end80.cleanup101_crit_edge ], [ %call87, %if.then86.cleanup101_crit_edge ], [ -22, %if.then45.cleanup101_crit_edge ]
  %status = getelementptr inbounds %struct.spi_message, ptr %mesg, i32 0, i32 7
  %50 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %rc.4, ptr %status, align 4
  call void @spi_finalize_current_message(ptr noundef %ctlr) #7
  ret i32 %rc.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_slave_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_spi_transfer_init(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  %clock_cfg = alloca i64, align 8
  %status = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clock_cfg) #7
  %0 = ptrtoint ptr %clock_cfg to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %clock_cfg, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %status) #7
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %status, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 100
  br label %do.body13

do.body13:                                        ; preds = %do.cond31.do.body13_crit_edge, %entry
  %reset.0.off0 = phi i1 [ false, %entry ], [ %reset.1.off0, %do.cond31.do.body13_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body13.cleanup_crit_edge, label %if.end

do.body13.cleanup_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %do.body13
  %call14 = call fastcc i32 @fsi_spi_read_reg(ptr noundef %ctx, i32 noundef 8, ptr noundef nonnull %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %status, align 8
  %and17 = and i64 %5, -1441151876465627136
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %if.end16.do.cond31_crit_edge, label %if.then19

if.end16.do.cond31_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond31

if.then19:                                        ; preds = %if.end16
  br i1 %reset.0.off0, label %do.end24, label %if.end25

do.end24:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.10, i64 noundef %5) #10
  br label %cleanup

if.end25:                                         ; preds = %if.then19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_spi_reset.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsi_spi_transfer_init, %do.end.i)) #7
          to label %if.then.i [label %do.end.i], !srcloc !77

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_spi_reset.__UNIQUE_ID_ddebug237, ptr noundef %9, ptr noundef nonnull @.str.19) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end25
  %call4.i = tail call fastcc i32 @fsi_spi_write_reg(ptr noundef %ctx, i32 noundef 3, i64 noundef 343597383680) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %do.end.i
  %call8.i = tail call fastcc i32 @fsi_spi_write_reg(ptr noundef %ctx, i32 noundef 3, i64 noundef 687194767360) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %fsi_spi_reset.exit, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fsi_spi_reset.exit:                               ; preds = %if.end7.i
  %call12.i = tail call fastcc i32 @fsi_spi_write_reg(ptr noundef %ctx, i32 noundef 8, i64 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool27.not = icmp eq i32 %call12.i, 0
  br i1 %tobool27.not, label %fsi_spi_reset.exit.do.cond31_crit_edge, label %fsi_spi_reset.exit.cleanup_crit_edge

fsi_spi_reset.exit.cleanup_crit_edge:             ; preds = %fsi_spi_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fsi_spi_reset.exit.do.cond31_crit_edge:           ; preds = %fsi_spi_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond31

do.cond31:                                        ; preds = %fsi_spi_reset.exit.do.cond31_crit_edge, %if.end16.do.cond31_crit_edge
  %reset.1.off0 = phi i1 [ %reset.0.off0, %if.end16.do.cond31_crit_edge ], [ true, %fsi_spi_reset.exit.do.cond31_crit_edge ]
  %10 = trunc i64 %5 to i56
  %trunc = and i56 %10, -281474976710656
  %11 = zext i56 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i56 %trunc, label %do.cond31.do.body13_crit_edge [
    i56 0, label %do.cond31.do.end34_crit_edge
    i56 281474976710656, label %do.cond31.do.end34_crit_edge78
  ]

do.cond31.do.end34_crit_edge78:                   ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

do.cond31.do.end34_crit_edge:                     ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

do.cond31.do.body13_crit_edge:                    ; preds = %do.cond31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body13

do.end34:                                         ; preds = %do.cond31.do.end34_crit_edge, %do.cond31.do.end34_crit_edge78
  %call35 = tail call fastcc i32 @fsi_spi_write_reg(ptr noundef %ctx, i32 noundef 1, i64 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %do.end34.cleanup_crit_edge

do.end34.cleanup_crit_edge:                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %do.end34
  %call39 = call fastcc i32 @fsi_spi_read_reg(ptr noundef %ctx, i32 noundef 3, ptr noundef nonnull %clock_cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  %12 = ptrtoint ptr %clock_cfg to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %clock_cfg, align 8
  %and43 = and i64 %13, -10947871637504
  call void @__sanitizer_cov_trace_const_cmp8(i64 87820235683397632, i64 %and43)
  %cmp44.not = icmp eq i64 %and43, 87820235683397632
  br i1 %cmp44.not, label %if.end42.cleanup_crit_edge, label %if.then45

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then45:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = tail call fastcc i32 @fsi_spi_write_reg(ptr noundef %ctx, i32 noundef 3, i64 noundef 87820235683397632)
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %if.end42.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %do.end34.cleanup_crit_edge, %fsi_spi_reset.exit.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %do.end24, %if.end.cleanup_crit_edge, %do.body13.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end24 ], [ %call35, %do.end34.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ], [ %call46, %if.then45 ], [ 0, %if.end42.cleanup_crit_edge ], [ %call4.i, %do.end.i.cleanup_crit_edge ], [ %call8.i, %if.end7.i.cleanup_crit_edge ], [ %call12.i, %fsi_spi_reset.exit.cleanup_crit_edge ], [ %call14, %if.end.cleanup_crit_edge ], [ -110, %do.body13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %status) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clock_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_spi_write_reg(ptr nocapture noundef readonly %ctx, i32 noundef %offset, i64 noundef %value) unnamed_addr #2 align 64 {
entry:
  %cmd_be = alloca i32, align 4
  %data_be = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_be) #7
  %0 = ptrtoint ptr %cmd_be to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd_be, align 4, !annotation !76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be) #7
  %base = getelementptr inbounds %struct.fsi_spi, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base, align 4
  %add = add i32 %2, %offset
  %bridge1 = getelementptr inbounds %struct.fsi_spi, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bridge1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add)
  %tobool.not = icmp sgt i32 %add, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fsi2spi, ptr %4, i32 0, i32 1
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_spi_write_reg.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsi_spi_write_reg, %do.end)) #7
          to label %if.then10 [label %do.end], !srcloc !77

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_spi_write_reg.__UNIQUE_ID_ddebug232, ptr noundef %6, ptr noundef nonnull @.str.21, i32 noundef %offset, i64 noundef %value) #7
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %shr = lshr i64 %value, 32
  %conv = trunc i64 %shr to i32
  %7 = ptrtoint ptr %data_be to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %data_be, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %4, align 4
  %call13 = call i32 @fsi_device_write(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %data_be, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %do.end.unlock_crit_edge

do.end.unlock_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end16:                                         ; preds = %do.end
  %conv18 = trunc i64 %value to i32
  %10 = ptrtoint ptr %data_be to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv18, ptr %data_be, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  %call20 = call i32 @fsi_device_write(ptr noundef %12, i32 noundef 4, ptr noundef nonnull %data_be, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end16.unlock_crit_edge

if.end16.unlock_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end23:                                         ; preds = %if.end16
  %or = or i32 %add, -2147483648
  %13 = ptrtoint ptr %cmd_be to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %cmd_be, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %4, align 4
  %call25 = call i32 @fsi_device_write(ptr noundef %15, i32 noundef 8, ptr noundef nonnull %cmd_be, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.unlock_crit_edge

if.end23.unlock_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = call fastcc i32 @fsi_spi_check_status(ptr noundef %ctx)
  br label %unlock

unlock:                                           ; preds = %if.end28, %if.end23.unlock_crit_edge, %if.end16.unlock_crit_edge, %do.end.unlock_crit_edge
  %rc.0 = phi i32 [ %call13, %do.end.unlock_crit_edge ], [ %call20, %if.end16.unlock_crit_edge ], [ %call25, %if.end23.unlock_crit_edge ], [ %call29, %if.end28 ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %unlock ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_be) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_spi_transfer_data(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %transfer) unnamed_addr #2 align 64 {
entry:
  %status = alloca i64, align 8
  %out = alloca i64, align 8
  %in = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %status, align 8
  %1 = ptrtoint ptr %transfer to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %transfer, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out) #7
  %len = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp94.not = icmp eq i32 %4, 0
  br i1 %cmp94.not, label %if.then.cleanup.thread_crit_edge, label %while.body.preheader

if.then.cleanup.thread_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

while.body.preheader:                             ; preds = %if.then
  %arrayidx2.i = getelementptr inbounds i8, ptr %out, i32 7
  %arrayidx2.i.1 = getelementptr inbounds i8, ptr %out, i32 6
  %arrayidx2.i.2 = getelementptr inbounds i8, ptr %out, i32 5
  %arrayidx2.i.3 = getelementptr inbounds i8, ptr %out, i32 4
  %arrayidx2.i.4 = getelementptr inbounds i8, ptr %out, i32 3
  %arrayidx2.i.5 = getelementptr inbounds i8, ptr %out, i32 2
  %arrayidx2.i.6 = getelementptr inbounds i8, ptr %out, i32 1
  br label %while.body

cleanup.thread:                                   ; preds = %do.end.cleanup.thread_crit_edge, %if.then.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out) #7
  br label %cleanup47

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.preheader
  %5 = phi i32 [ %37, %do.end.while.body_crit_edge ], [ %4, %while.body.preheader ]
  %sent.095 = phi i32 [ %add, %do.end.while.body_crit_edge ], [ 0, %while.body.preheader ]
  %arrayidx = getelementptr i8, ptr %2, i32 %sent.095
  %sub = sub i32 %5, %sent.095
  %6 = tail call i32 @llvm.smin.i32(i32 %sub, i32 8) #7
  %7 = ptrtoint ptr %out to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %out, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp110.i = icmp sgt i32 %sub, 0
  br i1 %cmp110.i, label %for.body.preheader.i, label %while.body.fsi_spi_data_out.exit_crit_edge

while.body.fsi_spi_data_out.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_data_out.exit

for.body.preheader.i:                             ; preds = %while.body
  %smax.i = tail call i32 @llvm.smax.i32(i32 %6, i32 1) #7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %exitcond.not.i = icmp slt i32 %6, 2
  br i1 %exitcond.not.i, label %for.body.preheader.i.fsi_spi_data_out.exit_crit_edge, label %for.body.i.1

for.body.preheader.i.fsi_spi_data_out.exit_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_data_out.exit

for.body.i.1:                                     ; preds = %for.body.preheader.i
  %arrayidx.i.1 = getelementptr i8, ptr %arrayidx, i32 1
  %11 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.1, align 1
  %13 = ptrtoint ptr %arrayidx2.i.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx2.i.1, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax.i)
  %exitcond.not.i.1 = icmp eq i32 %smax.i, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.fsi_spi_data_out.exit_crit_edge, label %for.body.i.2

for.body.i.1.fsi_spi_data_out.exit_crit_edge:     ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_data_out.exit

for.body.i.2:                                     ; preds = %for.body.i.1
  %arrayidx.i.2 = getelementptr i8, ptr %arrayidx, i32 2
  %14 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.2, align 1
  %16 = ptrtoint ptr %arrayidx2.i.2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx2.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax.i)
  %exitcond.not.i.2 = icmp eq i32 %smax.i, 3
  br i1 %exitcond.not.i.2, label %for.body.i.2.fsi_spi_data_out.exit_crit_edge, label %for.body.i.3

for.body.i.2.fsi_spi_data_out.exit_crit_edge:     ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_data_out.exit

for.body.i.3:                                     ; preds = %for.body.i.2
  %arrayidx.i.3 = getelementptr i8, ptr %arrayidx, i32 3
  %17 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.3, align 1
  %19 = ptrtoint ptr %arrayidx2.i.3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx2.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %smax.i)
  %exitcond.not.i.3 = icmp eq i32 %smax.i, 4
  br i1 %exitcond.not.i.3, label %for.body.i.3.fsi_spi_data_out.exit_crit_edge, label %for.body.i.4

for.body.i.3.fsi_spi_data_out.exit_crit_edge:     ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_data_out.exit

for.body.i.4:                                     ; preds = %for.body.i.3
  %arrayidx.i.4 = getelementptr i8, ptr %arrayidx, i32 4
  %20 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.4, align 1
  %22 = ptrtoint ptr %arrayidx2.i.4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx2.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %smax.i)
  %exitcond.not.i.4 = icmp eq i32 %smax.i, 5
  br i1 %exitcond.not.i.4, label %for.body.i.4.fsi_spi_data_out.exit_crit_edge, label %for.body.i.5

for.body.i.4.fsi_spi_data_out.exit_crit_edge:     ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_data_out.exit

for.body.i.5:                                     ; preds = %for.body.i.4
  %arrayidx.i.5 = getelementptr i8, ptr %arrayidx, i32 5
  %23 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.5, align 1
  %25 = ptrtoint ptr %arrayidx2.i.5 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx2.i.5, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %smax.i)
  %exitcond.not.i.5 = icmp eq i32 %smax.i, 6
  br i1 %exitcond.not.i.5, label %for.body.i.5.fsi_spi_data_out.exit_crit_edge, label %for.body.i.6

for.body.i.5.fsi_spi_data_out.exit_crit_edge:     ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_data_out.exit

for.body.i.6:                                     ; preds = %for.body.i.5
  %arrayidx.i.6 = getelementptr i8, ptr %arrayidx, i32 6
  %26 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.6, align 1
  %28 = ptrtoint ptr %arrayidx2.i.6 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx2.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %smax.i)
  %exitcond.not.i.6 = icmp eq i32 %smax.i, 7
  br i1 %exitcond.not.i.6, label %for.body.i.6.fsi_spi_data_out.exit_crit_edge, label %for.body.i.7

for.body.i.6.fsi_spi_data_out.exit_crit_edge:     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_data_out.exit

for.body.i.7:                                     ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.7 = getelementptr i8, ptr %arrayidx, i32 7
  %29 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i.7, align 1
  %31 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %out, align 8
  br label %fsi_spi_data_out.exit

fsi_spi_data_out.exit:                            ; preds = %for.body.i.7, %for.body.i.6.fsi_spi_data_out.exit_crit_edge, %for.body.i.5.fsi_spi_data_out.exit_crit_edge, %for.body.i.4.fsi_spi_data_out.exit_crit_edge, %for.body.i.3.fsi_spi_data_out.exit_crit_edge, %for.body.i.2.fsi_spi_data_out.exit_crit_edge, %for.body.i.1.fsi_spi_data_out.exit_crit_edge, %for.body.preheader.i.fsi_spi_data_out.exit_crit_edge, %while.body.fsi_spi_data_out.exit_crit_edge
  %32 = ptrtoint ptr %out to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %out, align 8
  %call3 = tail call fastcc i32 @fsi_spi_write_reg(ptr noundef %ctx, i32 noundef 5, i64 noundef %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %fsi_spi_data_out.exit.do.body_crit_edge, label %fsi_spi_data_out.exit.cleanup_crit_edge

fsi_spi_data_out.exit.cleanup_crit_edge:          ; preds = %fsi_spi_data_out.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fsi_spi_data_out.exit.do.body_crit_edge:          ; preds = %fsi_spi_data_out.exit
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %fsi_spi_data_out.exit.do.body_crit_edge
  %call6 = call fastcc i32 @fsi_spi_status(ptr noundef %ctx, ptr noundef nonnull %status, ptr noundef nonnull @.str.22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.cond, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %status, align 8
  %and = and i64 %35, 576460752303423488
  %tobool10.not = icmp eq i64 %and, 0
  br i1 %tobool10.not, label %do.end, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %do.cond
  %add = add i32 %6, %sent.095
  %36 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len, align 4
  %cmp = icmp ugt i32 %37, %add
  br i1 %cmp, label %do.end.while.body_crit_edge, label %do.end.cleanup.thread_crit_edge

do.end.cleanup.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %fsi_spi_data_out.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.body.cleanup_crit_edge ], [ %call3, %fsi_spi_data_out.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out) #7
  br label %cleanup47

if.else:                                          ; preds = %entry
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 1
  %38 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rx_buf, align 4
  %tobool14.not = icmp eq ptr %39, null
  br i1 %tobool14.not, label %if.else.cleanup47_crit_edge, label %if.then15

if.else.cleanup47_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

if.then15:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %in) #7
  %40 = ptrtoint ptr %in to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %in, align 8
  %len18 = getelementptr inbounds %struct.spi_transfer, ptr %transfer, i32 0, i32 2
  %41 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp1997.not = icmp eq i32 %42, 0
  br i1 %cmp1997.not, label %if.then15.cleanup40.thread_crit_edge, label %if.then15.do.body21.preheader_crit_edge

if.then15.do.body21.preheader_crit_edge:          ; preds = %if.then15
  br label %do.body21.preheader

if.then15.cleanup40.thread_crit_edge:             ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40.thread

do.body21.preheader:                              ; preds = %fsi_spi_data_in.exit.do.body21.preheader_crit_edge, %if.then15.do.body21.preheader_crit_edge
  %recv.098 = phi i32 [ %add38, %fsi_spi_data_in.exit.do.body21.preheader_crit_edge ], [ 0, %if.then15.do.body21.preheader_crit_edge ]
  br label %do.body21

cleanup40.thread:                                 ; preds = %fsi_spi_data_in.exit.cleanup40.thread_crit_edge, %if.then15.cleanup40.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in) #7
  br label %cleanup47

do.body21:                                        ; preds = %do.cond26.do.body21_crit_edge, %do.body21.preheader
  %call22 = call fastcc i32 @fsi_spi_status(ptr noundef %ctx, ptr noundef nonnull %status, ptr noundef nonnull @.str.23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.cond26, label %do.body21.cleanup40_crit_edge

do.body21.cleanup40_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

do.cond26:                                        ; preds = %do.body21
  %43 = ptrtoint ptr %status to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %status, align 8
  %tobool28.not = icmp sgt i64 %44, -1
  br i1 %tobool28.not, label %do.cond26.do.body21_crit_edge, label %do.end29

do.cond26.do.body21_crit_edge:                    ; preds = %do.cond26
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21

do.end29:                                         ; preds = %do.cond26
  %call30 = call fastcc i32 @fsi_spi_read_reg(ptr noundef %ctx, i32 noundef 6, ptr noundef nonnull %in)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %do.end29.cleanup40_crit_edge

do.end29.cleanup40_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40

if.end33:                                         ; preds = %do.end29
  %45 = ptrtoint ptr %in to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %in, align 8
  %arrayidx34 = getelementptr i8, ptr %39, i32 %recv.098
  %47 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len18, align 4
  %sub36 = sub i32 %48, %recv.098
  %49 = tail call i32 @llvm.smin.i32(i32 %sub36, i32 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub36)
  %cmp110.i74 = icmp sgt i32 %sub36, 0
  br i1 %cmp110.i74, label %for.body.preheader.i76, label %if.end33.fsi_spi_data_in.exit_crit_edge

if.end33.fsi_spi_data_in.exit_crit_edge:          ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_data_in.exit

for.body.preheader.i76:                           ; preds = %if.end33
  %smax.i75 = tail call i32 @llvm.smax.i32(i32 %49, i32 1) #7
  %sub2.i = shl i32 %49, 3
  %mul.i = add i32 %sub2.i, -8
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %46, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i8
  %50 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %exitcond.not.i79 = icmp slt i32 %49, 2
  br i1 %exitcond.not.i79, label %for.body.preheader.i76.fsi_spi_data_in.exit_crit_edge, label %for.body.i80.1

for.body.preheader.i76.fsi_spi_data_in.exit_crit_edge: ; preds = %for.body.preheader.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_data_in.exit

for.body.i80.1:                                   ; preds = %for.body.preheader.i76
  %sub2.i.1 = shl i32 %49, 3
  %mul.i.1 = add i32 %sub2.i.1, -16
  %sh_prom.i.1 = zext i32 %mul.i.1 to i64
  %shr.i.1 = lshr i64 %46, %sh_prom.i.1
  %conv.i.1 = trunc i64 %shr.i.1 to i8
  %arrayidx.i78.1 = getelementptr i8, ptr %arrayidx34, i32 1
  %51 = ptrtoint ptr %arrayidx.i78.1 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.i.1, ptr %arrayidx.i78.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax.i75)
  %exitcond.not.i79.1 = icmp eq i32 %smax.i75, 2
  br i1 %exitcond.not.i79.1, label %for.body.i80.1.fsi_spi_data_in.exit_crit_edge, label %for.body.i80.2

for.body.i80.1.fsi_spi_data_in.exit_crit_edge:    ; preds = %for.body.i80.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_data_in.exit

for.body.i80.2:                                   ; preds = %for.body.i80.1
  %sub2.i.2 = shl i32 %49, 3
  %mul.i.2 = add i32 %sub2.i.2, -24
  %sh_prom.i.2 = zext i32 %mul.i.2 to i64
  %shr.i.2 = lshr i64 %46, %sh_prom.i.2
  %conv.i.2 = trunc i64 %shr.i.2 to i8
  %arrayidx.i78.2 = getelementptr i8, ptr %arrayidx34, i32 2
  %52 = ptrtoint ptr %arrayidx.i78.2 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.i.2, ptr %arrayidx.i78.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %smax.i75)
  %exitcond.not.i79.2 = icmp eq i32 %smax.i75, 3
  br i1 %exitcond.not.i79.2, label %for.body.i80.2.fsi_spi_data_in.exit_crit_edge, label %for.body.i80.3

for.body.i80.2.fsi_spi_data_in.exit_crit_edge:    ; preds = %for.body.i80.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_data_in.exit

for.body.i80.3:                                   ; preds = %for.body.i80.2
  %sub2.i.3 = shl i32 %49, 3
  %mul.i.3 = add i32 %sub2.i.3, -32
  %sh_prom.i.3 = zext i32 %mul.i.3 to i64
  %shr.i.3 = lshr i64 %46, %sh_prom.i.3
  %conv.i.3 = trunc i64 %shr.i.3 to i8
  %arrayidx.i78.3 = getelementptr i8, ptr %arrayidx34, i32 3
  %53 = ptrtoint ptr %arrayidx.i78.3 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv.i.3, ptr %arrayidx.i78.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %smax.i75)
  %exitcond.not.i79.3 = icmp eq i32 %smax.i75, 4
  br i1 %exitcond.not.i79.3, label %for.body.i80.3.fsi_spi_data_in.exit_crit_edge, label %for.body.i80.4

for.body.i80.3.fsi_spi_data_in.exit_crit_edge:    ; preds = %for.body.i80.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_data_in.exit

for.body.i80.4:                                   ; preds = %for.body.i80.3
  %sub2.i.4 = shl i32 %49, 3
  %mul.i.4 = add i32 %sub2.i.4, -40
  %sh_prom.i.4 = zext i32 %mul.i.4 to i64
  %shr.i.4 = lshr i64 %46, %sh_prom.i.4
  %conv.i.4 = trunc i64 %shr.i.4 to i8
  %arrayidx.i78.4 = getelementptr i8, ptr %arrayidx34, i32 4
  %54 = ptrtoint ptr %arrayidx.i78.4 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv.i.4, ptr %arrayidx.i78.4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %smax.i75)
  %exitcond.not.i79.4 = icmp eq i32 %smax.i75, 5
  br i1 %exitcond.not.i79.4, label %for.body.i80.4.fsi_spi_data_in.exit_crit_edge, label %for.body.i80.5

for.body.i80.4.fsi_spi_data_in.exit_crit_edge:    ; preds = %for.body.i80.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_data_in.exit

for.body.i80.5:                                   ; preds = %for.body.i80.4
  %sub2.i.5 = shl i32 %49, 3
  %mul.i.5 = add i32 %sub2.i.5, -48
  %sh_prom.i.5 = zext i32 %mul.i.5 to i64
  %shr.i.5 = lshr i64 %46, %sh_prom.i.5
  %conv.i.5 = trunc i64 %shr.i.5 to i8
  %arrayidx.i78.5 = getelementptr i8, ptr %arrayidx34, i32 5
  %55 = ptrtoint ptr %arrayidx.i78.5 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i.5, ptr %arrayidx.i78.5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %smax.i75)
  %exitcond.not.i79.5 = icmp eq i32 %smax.i75, 6
  br i1 %exitcond.not.i79.5, label %for.body.i80.5.fsi_spi_data_in.exit_crit_edge, label %for.body.i80.6

for.body.i80.5.fsi_spi_data_in.exit_crit_edge:    ; preds = %for.body.i80.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_data_in.exit

for.body.i80.6:                                   ; preds = %for.body.i80.5
  %sub2.i.6 = shl i32 %49, 3
  %mul.i.6 = add i32 %sub2.i.6, -56
  %sh_prom.i.6 = zext i32 %mul.i.6 to i64
  %shr.i.6 = lshr i64 %46, %sh_prom.i.6
  %conv.i.6 = trunc i64 %shr.i.6 to i8
  %arrayidx.i78.6 = getelementptr i8, ptr %arrayidx34, i32 6
  %56 = ptrtoint ptr %arrayidx.i78.6 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i.6, ptr %arrayidx.i78.6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %smax.i75)
  %exitcond.not.i79.6 = icmp eq i32 %smax.i75, 7
  br i1 %exitcond.not.i79.6, label %for.body.i80.6.fsi_spi_data_in.exit_crit_edge, label %for.body.i80.7

for.body.i80.6.fsi_spi_data_in.exit_crit_edge:    ; preds = %for.body.i80.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_data_in.exit

for.body.i80.7:                                   ; preds = %for.body.i80.6
  call void @__sanitizer_cov_trace_pc() #9
  %sub2.i.7 = shl i32 %49, 3
  %mul.i.7 = add i32 %sub2.i.7, -64
  %sh_prom.i.7 = zext i32 %mul.i.7 to i64
  %shr.i.7 = lshr i64 %46, %sh_prom.i.7
  %conv.i.7 = trunc i64 %shr.i.7 to i8
  %arrayidx.i78.7 = getelementptr i8, ptr %arrayidx34, i32 7
  %57 = ptrtoint ptr %arrayidx.i78.7 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv.i.7, ptr %arrayidx.i78.7, align 1
  br label %fsi_spi_data_in.exit

fsi_spi_data_in.exit:                             ; preds = %for.body.i80.7, %for.body.i80.6.fsi_spi_data_in.exit_crit_edge, %for.body.i80.5.fsi_spi_data_in.exit_crit_edge, %for.body.i80.4.fsi_spi_data_in.exit_crit_edge, %for.body.i80.3.fsi_spi_data_in.exit_crit_edge, %for.body.i80.2.fsi_spi_data_in.exit_crit_edge, %for.body.i80.1.fsi_spi_data_in.exit_crit_edge, %for.body.preheader.i76.fsi_spi_data_in.exit_crit_edge, %if.end33.fsi_spi_data_in.exit_crit_edge
  %add38 = add i32 %49, %recv.098
  %58 = ptrtoint ptr %len18 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len18, align 4
  %cmp19 = icmp ugt i32 %59, %add38
  br i1 %cmp19, label %fsi_spi_data_in.exit.do.body21.preheader_crit_edge, label %fsi_spi_data_in.exit.cleanup40.thread_crit_edge

fsi_spi_data_in.exit.cleanup40.thread_crit_edge:  ; preds = %fsi_spi_data_in.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup40.thread

fsi_spi_data_in.exit.do.body21.preheader_crit_edge: ; preds = %fsi_spi_data_in.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body21.preheader

cleanup40:                                        ; preds = %do.end29.cleanup40_crit_edge, %do.body21.cleanup40_crit_edge
  %retval.1 = phi i32 [ %call22, %do.body21.cleanup40_crit_edge ], [ %call30, %do.end29.cleanup40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %in) #7
  br label %cleanup47

cleanup47:                                        ; preds = %cleanup40, %cleanup40.thread, %if.else.cleanup47_crit_edge, %cleanup, %cleanup.thread
  %retval.2 = phi i32 [ %retval.0, %cleanup ], [ %retval.1, %cleanup40 ], [ 0, %cleanup40.thread ], [ 0, %cleanup.thread ], [ 0, %if.else.cleanup47_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %status) #7
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_spi_read_reg(ptr nocapture noundef readonly %ctx, i32 noundef %offset, ptr nocapture noundef %value) unnamed_addr #2 align 64 {
entry:
  %sts_be.i = alloca i32, align 4
  %cmd_be = alloca i32, align 4
  %data_be = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd_be) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_be) #7
  %0 = ptrtoint ptr %data_be to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data_be, align 4, !annotation !76
  %base = getelementptr inbounds %struct.fsi_spi, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base, align 4
  %add = add i32 %2, %offset
  %bridge1 = getelementptr inbounds %struct.fsi_spi, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bridge1, align 4
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %add)
  %tobool.not = icmp sgt i32 %add, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.fsi2spi, ptr %4, i32 0, i32 1
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %cmd_be to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %cmd_be, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %call5 = call i32 @fsi_device_write(ptr noundef %8, i32 noundef 8, ptr noundef nonnull %cmd_be, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.unlock_crit_edge

if.end4.unlock_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts_be.i) #7
  %9 = ptrtoint ptr %sts_be.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %sts_be.i, align 4, !annotation !76
  %10 = ptrtoint ptr %bridge1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bridge1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call.i = call i32 @fsi_device_read(ptr noundef %13, i32 noundef 28, ptr noundef nonnull %sts_be.i, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end8.fsi_spi_check_status.exit.thread_crit_edge

if.end8.fsi_spi_check_status.exit.thread_crit_edge: ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_check_status.exit.thread

if.end.i:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %sts_be.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sts_be.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool1.not.i = icmp sgt i32 %15, -1
  br i1 %tobool1.not.i, label %if.end12, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.16, i32 noundef %15) #10
  br label %fsi_spi_check_status.exit.thread

fsi_spi_check_status.exit.thread:                 ; preds = %do.end.i, %if.end8.fsi_spi_check_status.exit.thread_crit_edge
  %retval.0.i55.ph = phi i32 [ %call.i, %if.end8.fsi_spi_check_status.exit.thread_crit_edge ], [ -5, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts_be.i) #7
  br label %unlock

if.end12:                                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts_be.i) #7
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %4, align 4
  %call14 = call i32 @fsi_device_read(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %data_be, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.unlock_crit_edge

if.end12.unlock_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end17:                                         ; preds = %if.end12
  %20 = ptrtoint ptr %data_be to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_be, align 4
  %conv = zext i32 %21 to i64
  %shl = shl nuw i64 %conv, 32
  %22 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %value, align 8
  %or = or i64 %shl, %23
  store i64 %or, ptr %value, align 8
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %4, align 4
  %call19 = call i32 @fsi_device_read(ptr noundef %25, i32 noundef 4, ptr noundef nonnull %data_be, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.unlock_crit_edge

if.end17.unlock_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %data_be to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_be, align 4
  %conv23 = zext i32 %27 to i64
  %28 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %value, align 8
  %or24 = or i64 %29, %conv23
  store i64 %or24, ptr %value, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_spi_read_reg.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsi_spi_read_reg, %unlock)) #7
          to label %if.then30 [label %unlock], !srcloc !77

if.then30:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx, align 4
  %32 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %value, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_spi_read_reg.__UNIQUE_ID_ddebug231, ptr noundef %31, ptr noundef nonnull @.str.15, i32 noundef %offset, i64 noundef %33) #7
  br label %unlock

unlock:                                           ; preds = %if.then30, %if.end22, %if.end17.unlock_crit_edge, %if.end12.unlock_crit_edge, %fsi_spi_check_status.exit.thread, %if.end4.unlock_crit_edge
  %rc.0 = phi i32 [ %call5, %if.end4.unlock_crit_edge ], [ %call14, %if.end12.unlock_crit_edge ], [ %call19, %if.end17.unlock_crit_edge ], [ 0, %if.then30 ], [ %retval.0.i55.ph, %fsi_spi_check_status.exit.thread ], [ 0, %if.end22 ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %unlock ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_be) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd_be) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_device_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_spi_check_status(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  %sts_be = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts_be) #7
  %0 = ptrtoint ptr %sts_be to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sts_be, align 4, !annotation !76
  %bridge = getelementptr inbounds %struct.fsi_spi, ptr %ctx, i32 0, i32 1
  %1 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bridge, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = call i32 @fsi_device_read(ptr noundef %4, i32 noundef 28, ptr noundef nonnull %sts_be, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %sts_be to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sts_be, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %tobool1.not = icmp sgt i32 %6, -1
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.16, i32 noundef %6) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts_be) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsi_device_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsi_spi_status(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %status, ptr noundef %dir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @fsi_spi_read_reg(ptr noundef %ctx, i32 noundef 8, ptr noundef %status)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %status, align 8
  %and = and i64 %1, 7205759408085725184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24, ptr noundef %dir, i64 noundef %1) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsi_spi_reset.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsi_spi_status, %do.end.i)) #7
          to label %if.then.i [label %do.end.i], !srcloc !77

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsi_spi_reset.__UNIQUE_ID_ddebug237, ptr noundef %5, ptr noundef nonnull @.str.19) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %call4.i = tail call fastcc i32 @fsi_spi_write_reg(ptr noundef %ctx, i32 noundef 3, i64 noundef 343597383680) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %do.end.i.fsi_spi_reset.exit_crit_edge

do.end.i.fsi_spi_reset.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_reset.exit

if.end7.i:                                        ; preds = %do.end.i
  %call8.i = tail call fastcc i32 @fsi_spi_write_reg(ptr noundef %ctx, i32 noundef 3, i64 noundef 687194767360) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.fsi_spi_reset.exit_crit_edge

if.end7.i.fsi_spi_reset.exit_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsi_spi_reset.exit

if.end11.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %call12.i = tail call fastcc i32 @fsi_spi_write_reg(ptr noundef %ctx, i32 noundef 8, i64 noundef 0) #7
  br label %fsi_spi_reset.exit

fsi_spi_reset.exit:                               ; preds = %if.end11.i, %if.end7.i.fsi_spi_reset.exit_crit_edge, %do.end.i.fsi_spi_reset.exit_crit_edge
  %retval.0.i = phi i32 [ %call12.i, %if.end11.i ], [ %call4.i, %do.end.i.fsi_spi_reset.exit_crit_edge ], [ %call8.i, %if.end7.i.fsi_spi_reset.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not = icmp eq i32 %retval.0.i, 0
  %.call3 = select i1 %tobool4.not, i32 -121, i32 %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %fsi_spi_reset.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %.call3, %fsi_spi_reset.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !63, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_spi_fsi__245_576_fsi_spi_driver_init6, !1, !"__initcall__kmod_spi_fsi__245_576_fsi_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-fsi.c", i32 576, i32 1}
!2 = !{ptr @__exitcall_fsi_spi_driver_exit, !1, !"__exitcall_fsi_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author246, !4, !"__UNIQUE_ID_author246", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-fsi.c", i32 578, i32 1}
!5 = !{ptr @__UNIQUE_ID_description247, !6, !"__UNIQUE_ID_description247", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-fsi.c", i32 579, i32 1}
!7 = !{ptr @__UNIQUE_ID_file248, !8, !"__UNIQUE_ID_file248", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-fsi.c", i32 580, i32 1}
!9 = !{ptr @__UNIQUE_ID_license249, !8, !"__UNIQUE_ID_license249", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-fsi.c", i32 571, i32 11}
!12 = !{ptr @fsi_spi_driver, !13, !"fsi_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-fsi.c", i32 568, i32 26}
!14 = !{ptr @fsi_spi_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-fsi.c", i32 522, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/spi/spi-fsi.c", i32 529, i32 32}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/spi/spi-fsi.c", i32 98, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @fsi_spi_check_mux.__UNIQUE_ID_ddebug230, !20, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/spi/spi-fsi.c", i32 434, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @fsi_spi_transfer_one_message.__UNIQUE_ID_ddebug243, !26, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/spi/spi-fsi.c", i32 464, i32 5}
!31 = !{ptr @fsi_spi_transfer_one_message.__UNIQUE_ID_ddebug244, !30, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-fsi.c", i32 377, i32 5}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @fsi_spi_transfer_init._entry, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @fsi_spi_transfer_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-fsi.c", i32 166, i32 2}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @fsi_spi_read_reg.__UNIQUE_ID_ddebug231, !40, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-fsi.c", i32 119, i32 3}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @fsi_spi_check_status._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @fsi_spi_check_status._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-fsi.c", i32 245, i32 2}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @fsi_spi_reset.__UNIQUE_ID_ddebug237, !49, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-fsi.c", i32 188, i32 2}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @fsi_spi_write_reg.__UNIQUE_ID_ddebug232, !53, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spi/spi-fsi.c", i32 319, i32 39}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/spi/spi-fsi.c", i32 333, i32 39}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-fsi.c", i32 268, i32 3}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @fsi_spi_status._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @fsi_spi_status._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @fsi_spi_ids, !66, !"fsi_spi_ids", i1 false, i1 false}
!66 = !{!"../drivers/spi/spi-fsi.c", i32 562, i32 35}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
!77 = !{i64 2148335609, i64 2148335614, i64 2148335627, i64 2148335671, i64 2148335705, i64 2148335726}
