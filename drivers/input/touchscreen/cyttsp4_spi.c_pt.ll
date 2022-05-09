; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/cyttsp4_spi.c_pt.bc'
source_filename = "../drivers/input/touchscreen/cyttsp4_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cyttsp4_bus_ops = type { i16, ptr, ptr }
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

@__initcall__kmod_cyttsp4_spi__234_184_cyttsp4_spi_driver_init6 = internal global ptr @cyttsp4_spi_driver_init, section ".initcall6.init", align 4
@cyttsp4_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @cyttsp4_spi_probe, ptr @cyttsp4_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cyttsp4_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_cyttsp4_spi_driver_exit = internal global ptr @cyttsp4_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file235 = internal constant [55 x i8] c"cyttsp4_spi.file=drivers/input/touchscreen/cyttsp4_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [24 x i8] c"cyttsp4_spi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [80 x i8] c"cyttsp4_spi.description=Cypress TrueTouch(R) Standard Product (TTSP) SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [27 x i8] c"cyttsp4_spi.author=Cypress\00", section ".modinfo", align 1
@__UNIQUE_ID_alias239 = internal constant [30 x i8] c"cyttsp4_spi.alias=spi:cyttsp4\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cyttsp4_spi_adapter\00", [44 x i8] zeroinitializer }, align 32
@cyttsp4_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@cyttsp4_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 157, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: SPI setup error %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cyttsp4_spi_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/input/touchscreen/cyttsp4_spi.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cyttsp4_spi_probe._entry_ptr = internal global ptr @cyttsp4_spi_probe._entry, section ".printk_index", align 4
@cyttsp_spi_bus_ops = internal constant { %struct.cyttsp4_bus_ops, [20 x i8] } { %struct.cyttsp4_bus_ops { i16 28, ptr @cyttsp_spi_write_block_data, ptr @cyttsp_spi_read_block_data }, [20 x i8] zeroinitializer }, align 32
@cyttsp_spi_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 49, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: length %d is too big.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cyttsp_spi_xfer\00", [16 x i8] zeroinitializer }, align 32
@cyttsp_spi_xfer._entry_ptr = internal global ptr @cyttsp_spi_xfer._entry, section ".printk_index", align 4
@cyttsp_spi_xfer._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 88, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: bad operation code=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@cyttsp_spi_xfer._entry_ptr.10 = internal global ptr @cyttsp_spi_xfer._entry.8, section ".printk_index", align 4
@cyttsp_spi_xfer.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.7, ptr @.str.3, ptr @.str.12, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cyttsp4_spi\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: spi_sync() error %d, len=%d, op=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@cyttsp_spi_xfer.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.7, ptr @.str.3, ptr @.str.13, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: operation %d failed\0A\00", [39 x i8] zeroinitializer }, align 32
@cyttsp_spi_xfer.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.7, ptr @.str.3, ptr @.str.14, i8 0, i8 27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: test rd_buf[%d]:0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@cyttsp_spi_xfer.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.7, ptr @.str.3, ptr @.str.15, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: test buf[%d]:0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"cyttsp4_spi_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 175, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 177, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 156, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"cyttsp_spi_bus_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 140, i32 37 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 48, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 88, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 94, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 105, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 108, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [43 x i8] c"../drivers/input/touchscreen/cyttsp4_spi.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 111, i32 4 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_cyttsp4_spi_driver_exit, ptr @__initcall__kmod_cyttsp4_spi__234_184_cyttsp4_spi_driver_init6, ptr @cyttsp4_spi_driver_exit, ptr @cyttsp4_spi_probe._entry, ptr @cyttsp4_spi_probe._entry_ptr, ptr @cyttsp_spi_xfer._entry, ptr @cyttsp_spi_xfer._entry.8, ptr @cyttsp_spi_xfer._entry_ptr, ptr @cyttsp_spi_xfer._entry_ptr.10, ptr @cyttsp4_spi_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cyttsp_spi_bus_ops, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp4_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_spi_bus_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_spi_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyttsp_spi_xfer._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cyttsp4_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @cyttsp4_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cyttsp4_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @cyttsp4_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyttsp4_spi_probe(ptr noundef %spi) #2 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #7
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %conv = trunc i32 %3 to i16
  %call2 = tail call ptr @cyttsp4_probe(ptr noundef nonnull @cyttsp_spi_bus_ops, ptr noundef %spi, i16 noundef zeroext %conv, i32 noundef 514) #5
  %cmp.i.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %4 = ptrtoint ptr %call2 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %4, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %spec.select.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyttsp4_spi_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @cyttsp4_remove(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cyttsp4_probe(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

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
  %call = tail call fastcc i32 @cyttsp_spi_xfer(ptr noundef %dev, ptr noundef %xfer_buf, i8 noundef zeroext 0, i16 noundef zeroext %addr, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i8 %length to i32
  %call1 = tail call fastcc i32 @cyttsp_spi_xfer(ptr noundef %dev, ptr noundef %xfer_buf, i8 noundef zeroext 1, i16 noundef zeroext %addr, ptr noundef %data, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.else ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyttsp_spi_xfer(ptr noundef %dev, ptr noundef %xfer_buf, i8 noundef zeroext %op, i16 noundef zeroext %reg, ptr noundef %buf, i32 noundef %length) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %xfer = alloca [2 x %struct.spi_transfer], align 4
  %rd_buf = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #5
  %0 = call ptr @memset(ptr %msg, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %rd_buf) #5
  %1 = getelementptr inbounds i8, ptr %xfer_buf, i32 1
  %2 = call ptr @memset(ptr %1, i32 0, i32 513)
  %3 = ptrtoint ptr %rd_buf to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %rd_buf, align 2
  %conv = zext i8 %op to i32
  %4 = lshr i16 %reg, 7
  %5 = trunc i16 %4 to i8
  %6 = and i8 %5, 2
  %conv3 = add i8 %6, %op
  %7 = ptrtoint ptr %xfer_buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %xfer_buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %op)
  %cmp6 = icmp eq i8 %op, 0
  br i1 %cmp6, label %if.then8, label %if.end17

if.then8:                                         ; preds = %entry
  %conv11 = trunc i16 %reg to i8
  %arrayidx12 = getelementptr i8, ptr %xfer_buf, i32 1
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv11, ptr %arrayidx12, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp13 = icmp sgt i32 %length, 0
  br i1 %cmp13, label %if.then15, label %if.then8.if.end17.thread_crit_edge

if.then8.if.end17.thread_crit_edge:               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.thread

if.then15:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr = getelementptr i8, ptr %xfer_buf, i32 2
  %9 = call ptr @memcpy(ptr %add.ptr, ptr %buf, i32 %length)
  br label %if.end17.thread

if.end17.thread:                                  ; preds = %if.then15, %if.then8.if.end17.thread_crit_edge
  %10 = getelementptr inbounds i8, ptr %xfer, i32 12
  %11 = call ptr @memset(ptr %10, i32 0, i32 180)
  %12 = getelementptr inbounds i8, ptr %msg, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i183 = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i183 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg, ptr %prev.i.i.i183, align 4
  %resources.i.i184 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i184 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i184, ptr %resources.i.i184, align 4
  %prev.i2.i.i185 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i185 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i184, ptr %prev.i2.i.i185, align 4
  %18 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %xfer_buf, ptr %xfer, align 4
  %rx_buf186 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %19 = ptrtoint ptr %rx_buf186 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %rd_buf, ptr %rx_buf186, align 4
  %add23 = add i32 %length, 2
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %20 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add23, ptr %len, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end17.thread.sw.epilog_crit_edge

if.end17.thread.sw.epilog_crit_edge:              ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end17:                                         ; preds = %entry
  %21 = getelementptr inbounds i8, ptr %xfer, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 184)
  %23 = getelementptr inbounds i8, ptr %msg, i32 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 40)
  %25 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %27 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %29 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %xfer_buf, ptr %xfer, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %30 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %rd_buf, ptr %rx_buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %op)
  %cond = icmp eq i8 %op, 1
  br i1 %cond, label %sw.bb26, label %do.end37

if.end.i.i.i:                                     ; preds = %if.end17.thread
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %prev.i.i.i183 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i, ptr %prev.i.i.i183, align 4
  %32 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end17
  %len28 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %35 = ptrtoint ptr %len28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %len28, align 4
  %transfer_list.i171 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i173 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i171, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i173, label %if.end.i.i.i175, label %sw.bb26.spi_message_add_tail.exit176_crit_edge

sw.bb26.spi_message_add_tail.exit176_crit_edge:   ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit176

if.end.i.i.i175:                                  ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %transfer_list.i171, ptr %prev.i.i.i, align 4
  %37 = ptrtoint ptr %transfer_list.i171 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg, ptr %transfer_list.i171, align 4
  %prev3.i.i.i174 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i174 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg, ptr %prev3.i.i.i174, align 4
  %39 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %transfer_list.i171, ptr %msg, align 4
  br label %spi_message_add_tail.exit176

spi_message_add_tail.exit176:                     ; preds = %if.end.i.i.i175, %sw.bb26.spi_message_add_tail.exit176_crit_edge
  %rx_buf31 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %rx_buf31 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf, ptr %rx_buf31, align 4
  %len33 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %len33 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %length, ptr %len33, align 4
  %transfer_list.i177 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 18
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i179 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i177, ptr noundef %43, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i179, label %if.end.i.i.i181, label %spi_message_add_tail.exit176.sw.epilog_crit_edge

spi_message_add_tail.exit176.sw.epilog_crit_edge: ; preds = %spi_message_add_tail.exit176
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end.i.i.i181:                                  ; preds = %spi_message_add_tail.exit176
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i177, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %transfer_list.i177 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg, ptr %transfer_list.i177, align 4
  %prev3.i.i.i180 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 18, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i180 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i180, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i177, ptr %43, align 4
  br label %sw.epilog

do.end37:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %conv) #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.i.i.i181, %spi_message_add_tail.exit176.sw.epilog_crit_edge, %if.end.i.i.i, %if.end17.thread.sw.epilog_crit_edge
  %call39 = call i32 @spi_sync(ptr noundef %dev, ptr noundef nonnull %msg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.body43, label %sw.epilog.if.end55_crit_edge

sw.epilog.if.end55_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

do.body43:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp_spi_xfer.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp_spi_xfer, %if.then48)) #5
          to label %if.end55 [label %if.then48], !srcloc !57

if.then48:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #7
  %len50 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfer, i32 0, i32 1, i32 2
  %48 = ptrtoint ptr %len50 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len50, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp_spi_xfer.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.7, i32 noundef %call39, i32 noundef %49, i32 noundef %conv) #5
  br label %if.end55

if.end55:                                         ; preds = %if.then48, %do.body43, %sw.epilog.if.end55_crit_edge
  %50 = ptrtoint ptr %rd_buf to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rd_buf, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %51)
  %cmp58.not = icmp eq i8 %51, 98
  br i1 %cmp58.not, label %if.end55.cleanup_crit_edge, label %do.body61

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body61:                                        ; preds = %if.end55
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp_spi_xfer.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp_spi_xfer, %if.then73)) #5
          to label %do.body80 [label %if.then73], !srcloc !57

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp_spi_xfer.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.7, i32 noundef %conv) #5
  br label %do.body80

for.cond98.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp99195 = icmp sgt i32 %length, 0
  br i1 %cmp99195, label %for.cond98.preheader.do.body102_crit_edge, label %for.cond98.preheader.cleanup_crit_edge

for.cond98.preheader.cleanup_crit_edge:           ; preds = %for.cond98.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond98.preheader.do.body102_crit_edge:        ; preds = %for.cond98.preheader
  br label %do.body102

do.body80:                                        ; preds = %for.inc.do.body80_crit_edge, %if.then73, %do.body61
  %cmp78 = phi i1 [ false, %for.inc.do.body80_crit_edge ], [ true, %do.body61 ], [ true, %if.then73 ]
  %i.0193 = phi i32 [ 1, %for.inc.do.body80_crit_edge ], [ 0, %do.body61 ], [ 0, %if.then73 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp_spi_xfer.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp_spi_xfer, %if.then92)) #5
          to label %for.inc [label %if.then92], !srcloc !57

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx93 = getelementptr [2 x i8], ptr %rd_buf, i32 0, i32 %i.0193
  %52 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx93, align 1
  %conv94 = zext i8 %53 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp_spi_xfer.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef %i.0193, i32 noundef %conv94) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then92, %do.body80
  br i1 %cmp78, label %for.inc.do.body80_crit_edge, label %for.cond98.preheader

for.inc.do.body80_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body80

do.body102:                                       ; preds = %for.inc120.do.body102_crit_edge, %for.cond98.preheader.do.body102_crit_edge
  %i.1196 = phi i32 [ %inc121, %for.inc120.do.body102_crit_edge ], [ 0, %for.cond98.preheader.do.body102_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyttsp_spi_xfer.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyttsp_spi_xfer, %if.then114)) #5
          to label %for.inc120 [label %if.then114], !srcloc !57

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx115 = getelementptr i8, ptr %buf, i32 %i.1196
  %54 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx115, align 1
  %conv116 = zext i8 %55 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyttsp_spi_xfer.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.7, i32 noundef %i.1196, i32 noundef %conv116) #5
  br label %for.inc120

for.inc120:                                       ; preds = %if.then114, %do.body102
  %inc121 = add nuw nsw i32 %i.1196, 1
  %exitcond.not = icmp eq i32 %inc121, %length
  br i1 %exitcond.not, label %for.inc120.cleanup_crit_edge, label %for.inc120.do.body102_crit_edge

for.inc120.do.body102_crit_edge:                  ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body102

for.inc120.cleanup_crit_edge:                     ; preds = %for.inc120
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc120.cleanup_crit_edge, %for.cond98.preheader.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %do.end37
  %retval.0 = phi i32 [ -22, %do.end37 ], [ 0, %if.end55.cleanup_crit_edge ], [ -5, %for.cond98.preheader.cleanup_crit_edge ], [ -5, %for.inc120.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %rd_buf) #5
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyttsp4_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !45, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_cyttsp4_spi__234_184_cyttsp4_spi_driver_init6, !1, !"__initcall__kmod_cyttsp4_spi__234_184_cyttsp4_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/cyttsp4_spi.c", i32 184, i32 1}
!2 = !{ptr @__exitcall_cyttsp4_spi_driver_exit, !1, !"__exitcall_cyttsp4_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file235, !4, !"__UNIQUE_ID_file235", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/cyttsp4_spi.c", i32 186, i32 1}
!5 = !{ptr @__UNIQUE_ID_license236, !4, !"__UNIQUE_ID_license236", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description237, !7, !"__UNIQUE_ID_description237", i1 false, i1 false}
!7 = !{!"../drivers/input/touchscreen/cyttsp4_spi.c", i32 187, i32 1}
!8 = !{ptr @__UNIQUE_ID_author238, !9, !"__UNIQUE_ID_author238", i1 false, i1 false}
!9 = !{!"../drivers/input/touchscreen/cyttsp4_spi.c", i32 188, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias239, !11, !"__UNIQUE_ID_alias239", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/cyttsp4_spi.c", i32 189, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/cyttsp4_spi.c", i32 177, i32 11}
!14 = !{ptr @cyttsp4_spi_driver, !15, !"cyttsp4_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/cyttsp4_spi.c", i32 175, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/touchscreen/cyttsp4_spi.c", i32 156, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cyttsp4_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cyttsp4_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @cyttsp_spi_bus_ops, !25, !"cyttsp_spi_bus_ops", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/cyttsp4_spi.c", i32 140, i32 37}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/touchscreen/cyttsp4_spi.c", i32 48, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cyttsp_spi_xfer._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @cyttsp_spi_xfer._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/touchscreen/cyttsp4_spi.c", i32 88, i32 3}
!33 = !{ptr @cyttsp_spi_xfer._entry.8, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cyttsp_spi_xfer._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/input/touchscreen/cyttsp4_spi.c", i32 94, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @cyttsp_spi_xfer.__UNIQUE_ID_ddebug230, !36, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/cyttsp4_spi.c", i32 105, i32 3}
!41 = !{ptr @cyttsp_spi_xfer.__UNIQUE_ID_ddebug231, !40, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/touchscreen/cyttsp4_spi.c", i32 108, i32 4}
!44 = !{ptr @cyttsp_spi_xfer.__UNIQUE_ID_ddebug232, !43, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/touchscreen/cyttsp4_spi.c", i32 111, i32 4}
!47 = !{ptr @cyttsp_spi_xfer.__UNIQUE_ID_ddebug233, !46, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2148290369, i64 2148290374, i64 2148290387, i64 2148290431, i64 2148290465, i64 2148290486}
