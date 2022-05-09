; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/cyttsp_spi.c_pt.bc'
source_filename = "../drivers/input/touchscreen/cyttsp_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cyttsp_bus_ops = type { i16, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_cyttsp_spi__294_181_cyttsp_spi_driver_init6 = internal global ptr @cyttsp_spi_driver_init, section ".initcall6.init", align 4
@cyttsp_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @cyttsp_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cyttsp_of_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cyttsp_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cyttsp_spi_driver_exit = internal global ptr @cyttsp_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file295 = internal constant [53 x i8] c"cyttsp_spi.file=drivers/input/touchscreen/cyttsp_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [23 x i8] c"cyttsp_spi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [79 x i8] c"cyttsp_spi.description=Cypress TrueTouch(R) Standard Product (TTSP) SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [26 x i8] c"cyttsp_spi.author=Cypress\00", section ".modinfo", align 1
@__UNIQUE_ID_alias299 = internal constant [28 x i8] c"cyttsp_spi.alias=spi:cyttsp\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cyttsp-spi\00", [21 x i8] zeroinitializer }, align 32
@cyttsp_of_spi_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cypress,cy8ctma340\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cypress,cy8ctst341\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@cyttsp_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@cyttsp_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: SPI setup error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cyttsp_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/input/touchscreen/cyttsp_spi.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cyttsp_spi_probe._entry_ptr = internal global ptr @cyttsp_spi_probe._entry, section ".printk_index", align 4
@cyttsp_spi_bus_ops = internal constant { %struct.cyttsp_bus_ops, [20 x i8] } { %struct.cyttsp_bus_ops { i16 28, ptr @cyttsp_spi_write_block_data, ptr @cyttsp_spi_read_block_data }, [20 x i8] zeroinitializer }, align 32
@cyttsp_spi_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 48, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: length %d is too big.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cyttsp_spi_xfer\00", [16 x i8] zeroinitializer }, align 32
@cyttsp_spi_xfer._entry_ptr = internal global ptr @cyttsp_spi_xfer._entry, section ".printk_index", align 4
@cyttsp_spi_xfer._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 87, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: bad operation code=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@cyttsp_spi_xfer._entry_ptr.10 = internal global ptr @cyttsp_spi_xfer._entry.8, section ".printk_index", align 4
@cyttsp_spi_xfer.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.7, ptr @.str.3, ptr @.str.12, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cyttsp_spi\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: spi_sync() error %d, len=%d, op=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@cyttsp_spi_xfer.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.7, ptr @.str.3, ptr @.str.13, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: operation %d failed\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp_spi_xfer.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.7, ptr @.str.3, ptr @.str.14, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: test rd_buf[%d]:0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@cyttsp_spi_xfer.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.7, ptr @.str.3, ptr @.str.15, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: test buf[%d]:0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"cyttsp_spi_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 172, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 174, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"cyttsp_of_spi_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 165, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 150, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"cyttsp_spi_bus_ops\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 134, i32 36 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 47, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 87, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 93, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 105, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 108, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [42 x i8] c"../drivers/input/touchscreen/cyttsp_spi.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 111, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias299, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_cyttsp_spi_driver_exit, ptr @__initcall__kmod_cyttsp_spi__294_181_cyttsp_spi_driver_init6, ptr @cyttsp_spi_driver_exit, ptr @cyttsp_spi_probe._entry, ptr @cyttsp_spi_probe._entry_ptr, ptr @cyttsp_spi_xfer._entry, ptr @cyttsp_spi_xfer._entry.8, ptr @cyttsp_spi_xfer._entry_ptr, ptr @cyttsp_spi_xfer._entry_ptr.10, ptr @cyttsp_spi_driver, ptr @.str, ptr @cyttsp_of_spi_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cyttsp_spi_bus_ops, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_of_spi_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_spi_bus_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_spi_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_spi_xfer._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cyttsp_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @cyttsp_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cyttsp_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @cyttsp_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyttsp_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 8, ptr %bits_per_word, align 1
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %1 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %mode, align 8
  %call = tail call i32 @spi_setup(ptr noundef %spi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @cyttsp_probe(ptr noundef nonnull @cyttsp_spi_bus_ops, ptr noundef %spi, i32 noundef %3, i32 noundef 264) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %4, %if.then4 ], [ 0, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cyttsp_probe(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyttsp_spi_write_block_data(ptr noundef %dev, ptr noundef %xfer_buf, i16 noundef zeroext %addr, i8 noundef zeroext %length, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %length to i32
  %call = tail call fastcc i32 @cyttsp_spi_xfer(ptr noundef %dev, ptr noundef %xfer_buf, i8 noundef zeroext 0, i16 noundef zeroext %addr, ptr noundef %data, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyttsp_spi_read_block_data(ptr noundef %dev, ptr noundef %xfer_buf, i16 noundef zeroext %addr, i8 noundef zeroext %length, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %length to i32
  %call = tail call fastcc i32 @cyttsp_spi_xfer(ptr noundef %dev, ptr noundef %xfer_buf, i8 noundef zeroext 1, i16 noundef zeroext %addr, ptr noundef %data, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp_spi_xfer(ptr noundef %dev, ptr noundef %xfer_buf, i8 noundef zeroext %op, i16 noundef zeroext %reg, ptr noundef %buf, i32 noundef %length) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %xfer = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #5
  %0 = call ptr @memset(ptr %msg, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer) #5
  %arrayidx1 = getelementptr i8, ptr %xfer_buf, i32 132
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %length)
  %cmp = icmp sgt i32 %length, 128
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %length) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx4 = getelementptr i8, ptr %xfer_buf, i32 1
  %1 = call ptr @memset(ptr %xfer_buf, i32 0, i32 264)
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %arrayidx4, align 1
  %conv = trunc i16 %reg to i8
  %arrayidx5 = getelementptr i8, ptr %xfer_buf, i32 2
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %arrayidx5, align 1
  %arrayidx6 = getelementptr i8, ptr %xfer_buf, i32 3
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %op, ptr %arrayidx6, align 1
  %conv7 = zext i8 %op to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %op)
  %cmp8 = icmp eq i8 %op, 0
  br i1 %cmp8, label %if.end11.thread, label %if.end11

if.end11.thread:                                  ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %xfer_buf, i32 4
  %5 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %length)
  %6 = getelementptr inbounds i8, ptr %xfer, i32 12
  %7 = call ptr @memset(ptr %6, i32 0, i32 180)
  %8 = getelementptr inbounds i8, ptr %msg, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i182 = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i182 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg, ptr %prev.i.i.i182, align 4
  %resources.i.i183 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i183 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i183, ptr %resources.i.i183, align 4
  %prev.i2.i.i184 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i184 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i183, ptr %prev.i2.i.i184, align 4
  %14 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %xfer_buf, ptr %xfer, align 4
  %rx_buf185 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %15 = ptrtoint ptr %rx_buf185 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx1, ptr %rx_buf185, align 4
  %add = add nsw i32 %length, 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %len, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end11.thread.sw.epilog_crit_edge

if.end11.thread.sw.epilog_crit_edge:              ; preds = %if.end11.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end11:                                         ; preds = %if.end
  %17 = getelementptr inbounds i8, ptr %xfer, i32 8
  %18 = call ptr @memset(ptr %17, i32 0, i32 184)
  %19 = getelementptr inbounds i8, ptr %msg, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %25 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %xfer_buf, ptr %xfer, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %26 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx1, ptr %rx_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %op)
  %cond = icmp eq i8 %op, 1
  br i1 %cond, label %sw.bb17, label %do.end28

if.end.i.i.i:                                     ; preds = %if.end11.thread
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %prev.i.i.i182 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i, ptr %prev.i.i.i182, align 4
  %28 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %30 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end11
  %len19 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %31 = ptrtoint ptr %len19 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %len19, align 4
  %transfer_list.i170 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i172 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i170, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i172, label %if.end.i.i.i174, label %sw.bb17.spi_message_add_tail.exit175_crit_edge

sw.bb17.spi_message_add_tail.exit175_crit_edge:   ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit175

if.end.i.i.i174:                                  ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i170, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %transfer_list.i170 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg, ptr %transfer_list.i170, align 4
  %prev3.i.i.i173 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i173 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg, ptr %prev3.i.i.i173, align 4
  %35 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i170, ptr %msg, align 4
  br label %spi_message_add_tail.exit175

spi_message_add_tail.exit175:                     ; preds = %if.end.i.i.i174, %sw.bb17.spi_message_add_tail.exit175_crit_edge
  %rx_buf22 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %rx_buf22 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf, ptr %rx_buf22, align 4
  %len24 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %len24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %length, ptr %len24, align 4
  %transfer_list.i176 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 18
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i178 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i176, ptr noundef %39, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i178, label %if.end.i.i.i180, label %spi_message_add_tail.exit175.sw.epilog_crit_edge

spi_message_add_tail.exit175.sw.epilog_crit_edge: ; preds = %spi_message_add_tail.exit175
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i.i.i180:                                  ; preds = %spi_message_add_tail.exit175
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %transfer_list.i176, ptr %prev.i.i.i, align 4
  %41 = ptrtoint ptr %transfer_list.i176 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg, ptr %transfer_list.i176, align 4
  %prev3.i.i.i179 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 18, i32 1
  %42 = ptrtoint ptr %prev3.i.i.i179 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i.i179, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %transfer_list.i176, ptr %39, align 4
  br label %sw.epilog

do.end28:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %conv7) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.i.i.i180, %spi_message_add_tail.exit175.sw.epilog_crit_edge, %if.end.i.i.i, %if.end11.thread.sw.epilog_crit_edge
  %call30 = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %do.body34, label %sw.epilog.if.end45_crit_edge

sw.epilog.if.end45_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

do.body34:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp_spi_xfer.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp_spi_xfer, %if.then38)) #5
          to label %if.end45 [label %if.then38], !srcloc !59

if.then38:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #7
  %len40 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 2
  %44 = ptrtoint ptr %len40 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len40, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp_spi_xfer.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7, i32 noundef %call30, i32 noundef %45, i32 noundef %conv7) #5
  br label %if.end45

if.end45:                                         ; preds = %if.then38, %do.body34, %sw.epilog.if.end45_crit_edge
  %arrayidx46 = getelementptr i8, ptr %xfer_buf, i32 134
  %46 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %47)
  %cmp48.not = icmp eq i8 %47, 98
  br i1 %cmp48.not, label %lor.lhs.false, label %if.end45.do.body55_crit_edge

if.end45.do.body55_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body55

lor.lhs.false:                                    ; preds = %if.end45
  %arrayidx50 = getelementptr i8, ptr %xfer_buf, i32 135
  %48 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -99, i8 %49)
  %cmp52.not = icmp eq i8 %49, -99
  br i1 %cmp52.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.body55_crit_edge

lor.lhs.false.do.body55_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body55

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body55:                                        ; preds = %lor.lhs.false.do.body55_crit_edge, %if.end45.do.body55_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp_spi_xfer.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp_spi_xfer, %if.then67)) #5
          to label %do.body74 [label %if.then67], !srcloc !59

if.then67:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp_spi_xfer.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.7, i32 noundef %conv7) #5
  br label %do.body74

for.cond92.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp93194 = icmp sgt i32 %length, 0
  br i1 %cmp93194, label %for.cond92.preheader.do.body96_crit_edge, label %for.cond92.preheader.cleanup_crit_edge

for.cond92.preheader.cleanup_crit_edge:           ; preds = %for.cond92.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond92.preheader.do.body96_crit_edge:         ; preds = %for.cond92.preheader
  br label %do.body96

do.body74:                                        ; preds = %for.inc.do.body74_crit_edge, %if.then67, %do.body55
  %i.0192 = phi i32 [ %inc, %for.inc.do.body74_crit_edge ], [ 0, %do.body55 ], [ 0, %if.then67 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp_spi_xfer.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp_spi_xfer, %if.then86)) #5
          to label %for.inc [label %if.then86], !srcloc !59

if.then86:                                        ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx87 = getelementptr i8, ptr %arrayidx1, i32 %i.0192
  %50 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %51 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp_spi_xfer.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef %i.0192, i32 noundef %conv88) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then86, %do.body74
  %inc = add nuw nsw i32 %i.0192, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.cond92.preheader, label %for.inc.do.body74_crit_edge

for.inc.do.body74_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body74

do.body96:                                        ; preds = %for.inc114.do.body96_crit_edge, %for.cond92.preheader.do.body96_crit_edge
  %i.1195 = phi i32 [ %inc115, %for.inc114.do.body96_crit_edge ], [ 0, %for.cond92.preheader.do.body96_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp_spi_xfer.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp_spi_xfer, %if.then108)) #5
          to label %for.inc114 [label %if.then108], !srcloc !59

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx109 = getelementptr i8, ptr %buf, i32 %i.1195
  %52 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx109, align 1
  %conv110 = zext i8 %53 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp_spi_xfer.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.7, i32 noundef %i.1195, i32 noundef %conv110) #5
  br label %for.inc114

for.inc114:                                       ; preds = %if.then108, %do.body96
  %inc115 = add nuw nsw i32 %i.1195, 1
  %exitcond197.not = icmp eq i32 %inc115, %length
  br i1 %exitcond197.not, label %for.inc114.cleanup_crit_edge, label %for.inc114.do.body96_crit_edge

for.inc114.do.body96_crit_edge:                   ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body96

for.inc114.cleanup_crit_edge:                     ; preds = %for.inc114
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc114.cleanup_crit_edge, %for.cond92.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end28, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end28 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ -5, %for.cond92.preheader.cleanup_crit_edge ], [ -5, %for.inc114.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_cyttsp_spi__294_181_cyttsp_spi_driver_init6, !1, !"__initcall__kmod_cyttsp_spi__294_181_cyttsp_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/cyttsp_spi.c", i32 181, i32 1}
!2 = !{ptr @__exitcall_cyttsp_spi_driver_exit, !1, !"__exitcall_cyttsp_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file295, !4, !"__UNIQUE_ID_file295", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/cyttsp_spi.c", i32 183, i32 1}
!5 = !{ptr @__UNIQUE_ID_license296, !4, !"__UNIQUE_ID_license296", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description297, !7, !"__UNIQUE_ID_description297", i1 false, i1 false}
!7 = !{!"../drivers/input/touchscreen/cyttsp_spi.c", i32 184, i32 1}
!8 = !{ptr @__UNIQUE_ID_author298, !9, !"__UNIQUE_ID_author298", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/cyttsp_spi.c", i32 185, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias299, !11, !"__UNIQUE_ID_alias299", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/cyttsp_spi.c", i32 186, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/cyttsp_spi.c", i32 174, i32 11}
!14 = !{ptr @cyttsp_spi_driver, !15, !"cyttsp_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/cyttsp_spi.c", i32 172, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/cyttsp_spi.c", i32 150, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cyttsp_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cyttsp_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @cyttsp_spi_bus_ops, !25, !"cyttsp_spi_bus_ops", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/cyttsp_spi.c", i32 134, i32 36}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/cyttsp_spi.c", i32 47, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cyttsp_spi_xfer._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @cyttsp_spi_xfer._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/cyttsp_spi.c", i32 87, i32 3}
!33 = !{ptr @cyttsp_spi_xfer._entry.8, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cyttsp_spi_xfer._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/cyttsp_spi.c", i32 93, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cyttsp_spi_xfer.__UNIQUE_ID_ddebug290, !36, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/cyttsp_spi.c", i32 105, i32 3}
!41 = !{ptr @cyttsp_spi_xfer.__UNIQUE_ID_ddebug291, !40, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/cyttsp_spi.c", i32 108, i32 4}
!44 = !{ptr @cyttsp_spi_xfer.__UNIQUE_ID_ddebug292, !43, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/cyttsp_spi.c", i32 111, i32 4}
!47 = !{ptr @cyttsp_spi_xfer.__UNIQUE_ID_ddebug293, !46, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!48 = !{ptr @cyttsp_of_spi_match, !49, !"cyttsp_of_spi_match", i1 false, i1 false}
!49 = !{!"../drivers/input/touchscreen/cyttsp_spi.c", i32 165, i32 34}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148697370, i64 2148697375, i64 2148697388, i64 2148697432, i64 2148697466, i64 2148697487}
