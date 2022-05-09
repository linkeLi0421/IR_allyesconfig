; ModuleID = '/llk/IR_all_yes/drivers/staging/wfx/bus_spi.c_pt.bc'
source_filename = "../drivers/staging/wfx/bus_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wfx_platform_data = type { ptr, ptr, ptr, i8 }
%struct.hwbus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.wfx_spi_priv = type { ptr, ptr, ptr, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@wfx_spi_id = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"wfx-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"wf200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wfx-spi\00", [24 x i8] zeroinitializer }, align 32
@wfx_spi_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,wfx-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"silabs,wf200\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@wfx_spi_driver = dso_local global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @wfx_spi_id, ptr @wfx_spi_probe, ptr @wfx_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wfx_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@wfx_spi_probe.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wfx\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wfx_spi_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/staging/wfx/bus_spi.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"SPI params: CS=%d, mode=%d bits/word=%d speed=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@wfx_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 197, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unusual bits/word value: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wfx_spi_probe._entry_ptr = internal global ptr @wfx_spi_probe._entry, section ".printk_index", align 4
@wfx_spi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 200, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%dHz is a very high speed\0A\00", [37 x i8] zeroinitializer }, align 32
@wfx_spi_probe._entry_ptr.10 = internal global ptr @wfx_spi_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@wfx_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 216, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"gpio reset is not defined, trying to load firmware anyway\0A\00", [37 x i8] zeroinitializer }, align 32
@wfx_spi_probe._entry_ptr.14 = internal global ptr @wfx_spi_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wfx reset\00", [22 x i8] zeroinitializer }, align 32
@wfx_spi_pdata = internal constant { %struct.wfx_platform_data, [16 x i8] } { %struct.wfx_platform_data { ptr @.str.16, ptr @.str.17, ptr null, i8 1 }, [16 x i8] zeroinitializer }, align 32
@wfx_spi_hwbus_ops = internal constant { %struct.hwbus_ops, [36 x i8] } { %struct.hwbus_ops { ptr @wfx_spi_copy_from_io, ptr @wfx_spi_copy_to_io, ptr @wfx_spi_irq_subscribe, ptr @wfx_spi_irq_unsubscribe, ptr @wfx_spi_lock, ptr @wfx_spi_unlock, ptr @wfx_spi_align_size }, [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wfm_wf200\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"wf200.pds\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"buffer size must be a multiple of 2\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bad addr or size overflow\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 16]
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"wfx_spi_id\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 247, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 265, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"wfx_spi_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 255, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"wfx_spi_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 263, i32 19 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 192, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 196, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 199, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 210, i32 56 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 215, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 218, i32 44 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"wfx_spi_pdata\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 28, i32 39 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"wfx_spi_hwbus_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 171, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 29, i32 13 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 30, i32 14 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 66, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [33 x i8] c"../drivers/staging/wfx/bus_spi.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 102, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @wfx_spi_probe._entry, ptr @wfx_spi_probe._entry.12, ptr @wfx_spi_probe._entry.8, ptr @wfx_spi_probe._entry_ptr, ptr @wfx_spi_probe._entry_ptr.10, ptr @wfx_spi_probe._entry_ptr.14, ptr @wfx_spi_id, ptr @.str, ptr @wfx_spi_of_match, ptr @wfx_spi_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @wfx_spi_pdata, ptr @wfx_spi_hwbus_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_spi_id to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_spi_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_spi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_spi_pdata to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wfx_spi_hwbus_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_spi_probe(ptr noundef %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %func, i32 0, i32 5
  %0 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bits_per_word, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %bits_per_word, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @spi_setup(ptr noundef %func) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wfx_spi_probe.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wfx_spi_probe, %if.then9)) #6
          to label %do.end [label %if.then9], !srcloc !53

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %func, i32 0, i32 4
  %3 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %chip_select, align 4
  %conv = zext i8 %4 to i32
  %mode = getelementptr inbounds %struct.spi_device, ptr %func, i32 0, i32 7
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 8
  %7 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bits_per_word, align 1
  %conv11 = zext i8 %8 to i32
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %func, i32 0, i32 3
  %9 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_speed_hz, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wfx_spi_probe.__UNIQUE_ID_ddebug353, ptr noundef %func, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %6, i32 noundef %conv11, i32 noundef %10) #6
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %11 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bits_per_word, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %do.end23 [
    i8 16, label %do.end.if.end27_crit_edge
    i8 8, label %do.end.if.end27_crit_edge124
  ]

do.end.if.end27_crit_edge124:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.end23:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %conv14 = zext i8 %12 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %func, ptr noundef nonnull @.str.5, i32 noundef %conv14) #9
  br label %if.end27

if.end27:                                         ; preds = %do.end23, %do.end.if.end27_crit_edge, %do.end.if.end27_crit_edge124
  %max_speed_hz28 = getelementptr inbounds %struct.spi_device, ptr %func, i32 0, i32 3
  %14 = ptrtoint ptr %max_speed_hz28 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max_speed_hz28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000000, i32 %15)
  %cmp29 = icmp ugt i32 %15, 50000000
  br i1 %cmp29, label %do.end34, label %if.end27.if.end37_crit_edge

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %func, ptr noundef nonnull @.str.9, i32 noundef %15) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %if.end27.if.end37_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %func, i32 noundef 16, i32 noundef 3520) #6
  %tobool40.not = icmp eq ptr %call.i, null
  br i1 %tobool40.not, label %if.end37.cleanup_crit_edge, label %if.end42

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %func, ptr %call.i, align 4
  %need_swab = getelementptr inbounds %struct.wfx_spi_priv, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %need_swab to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %need_swab, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %func, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call51 = tail call ptr @devm_gpiod_get_optional(ptr noundef %func, ptr noundef nonnull @.str.11, i32 noundef 3) #6
  %gpio_reset = getelementptr inbounds %struct.wfx_spi_priv, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call51, ptr %gpio_reset, align 4
  %cmp.i = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %call51 to i32
  br label %cleanup

if.end57:                                         ; preds = %if.end42
  %tobool59.not = icmp eq ptr %call51, null
  br i1 %tobool59.not, label %do.end63, label %if.else

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %func, ptr noundef nonnull @.str.13) #9
  br label %if.end74

if.else:                                          ; preds = %if.end57
  %call66 = tail call i32 @gpiod_set_consumer_name(ptr noundef nonnull %call51, ptr noundef nonnull @.str.15) #6
  %call67 = tail call ptr @spi_get_device_id(ptr noundef %func) #6
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call67, i32 0, i32 1
  %21 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %driver_data, align 4
  %and = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %if.else.if.end71_crit_edge, label %if.then69

if.else.if.end71_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then69:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gpio_reset, align 4
  tail call void @gpiod_toggle_active_low(ptr noundef %24) #6
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.else.if.end71_crit_edge
  %25 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gpio_reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %26, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %27 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %gpio_reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %28, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #6
  br label %if.end74

if.end74:                                         ; preds = %if.end71, %do.end63
  %call76 = tail call ptr @wfx_init_common(ptr noundef %func, ptr noundef nonnull @wfx_spi_pdata, ptr noundef nonnull @wfx_spi_hwbus_ops, ptr noundef nonnull %call.i) #6
  %core = getelementptr inbounds %struct.wfx_spi_priv, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call76, ptr %core, align 4
  %tobool78.not = icmp eq ptr %call76, null
  br i1 %tobool78.not, label %if.end74.cleanup_crit_edge, label %if.end80

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #8
  %call82 = tail call i32 @wfx_probe(ptr noundef nonnull %call76) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end74.cleanup_crit_edge, %if.then54, %if.end37.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.then54 ], [ %call82, %if.end80 ], [ %call, %if.end.cleanup_crit_edge ], [ -12, %if.end37.cleanup_crit_edge ], [ -5, %if.end74.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_spi_remove(ptr nocapture noundef readonly %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %func, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %core = getelementptr inbounds %struct.wfx_spi_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %core, align 4
  tail call void @wfx_release(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_toggle_active_low(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wfx_init_common(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wfx_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_spi_copy_from_io(ptr nocapture noundef readonly %priv, i32 noundef %addr, ptr noundef %dst, i32 noundef %count) #0 align 64 {
entry:
  %regaddr = alloca i16, align 2
  %m = alloca %struct.spi_message, align 4
  %t_addr = alloca %struct.spi_transfer, align 4
  %t_msg = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regaddr) #6
  %shl = shl i32 %addr, 12
  %div49 = lshr i32 %count, 1
  %or = or i32 %div49, %shl
  %0 = trunc i32 %or to i16
  %conv = or i16 %0, -32768
  %1 = ptrtoint ptr %regaddr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %conv, ptr %regaddr, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #6
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t_addr) #6
  %2 = getelementptr inbounds i8, ptr %t_addr, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 92)
  %4 = ptrtoint ptr %t_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regaddr, ptr %t_addr, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t_addr, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t_msg) #6
  %6 = call ptr @memset(ptr %t_msg, i32 0, i32 96)
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t_msg, i32 0, i32 1
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dst, ptr %rx_buf, align 4
  %len3 = getelementptr inbounds %struct.spi_transfer, ptr %t_msg, i32 0, i32 2
  %8 = ptrtoint ptr %len3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %count, ptr %len3, align 4
  %rem = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !54

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 66, i32 noundef 9, ptr noundef nonnull @.str.18) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %regaddr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %regaddr, align 2
  %11 = call i16 @llvm.bswap.i16(i16 %10) #6
  %need_swab = getelementptr inbounds %struct.wfx_spi_priv, ptr %priv, i32 0, i32 3
  %12 = ptrtoint ptr %need_swab to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %need_swab, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool27.not = icmp eq i8 %13, 0
  %spec.store.select = select i1 %tobool27.not, i16 %11, i16 %10
  %14 = ptrtoint ptr %regaddr to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %spec.store.select, ptr %regaddr, align 2
  %15 = getelementptr inbounds i8, ptr %m, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t_addr, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t_addr, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %transfer_list.i50 = getelementptr inbounds %struct.spi_transfer, ptr %t_msg, i32 0, i32 18
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i52 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i50, ptr noundef %26, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i52, label %if.end.i.i.i54, label %spi_message_add_tail.exit.spi_message_add_tail.exit55_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit55_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit55

if.end.i.i.i54:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i50, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i50 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %m, ptr %transfer_list.i50, align 4
  %prev3.i.i.i53 = getelementptr inbounds %struct.spi_transfer, ptr %t_msg, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i53, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i50, ptr %26, align 4
  br label %spi_message_add_tail.exit55

spi_message_add_tail.exit55:                      ; preds = %if.end.i.i.i54, %spi_message_add_tail.exit.spi_message_add_tail.exit55_crit_edge
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 4
  %call = call i32 @spi_sync(ptr noundef %32, ptr noundef nonnull %m) #6
  %33 = ptrtoint ptr %need_swab to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %need_swab, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool31.not = icmp ne i8 %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %cmp = icmp eq i32 %addr, 0
  %or.cond = and i1 %cmp, %tobool31.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp3656 = icmp ugt i32 %count, 1
  %or.cond58 = and i1 %or.cond, %cmp3656
  br i1 %or.cond58, label %for.body.preheader, label %spi_message_add_tail.exit55.if.end38_crit_edge

spi_message_add_tail.exit55.if.end38_crit_edge:   ; preds = %spi_message_add_tail.exit55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

for.body.preheader:                               ; preds = %spi_message_add_tail.exit55
  %umax = call i32 @llvm.umax.i32(i32 %div49, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.057 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i16, ptr %dst, i32 %i.057
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx, align 2
  %37 = call i16 @llvm.bswap.i16(i16 %36) #6
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.if.end38_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end38_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end38:                                         ; preds = %for.body.if.end38_crit_edge, %spi_message_add_tail.exit55.if.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t_msg) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t_addr) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regaddr) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_spi_copy_to_io(ptr nocapture noundef readonly %priv, i32 noundef %addr, ptr noundef %src, i32 noundef %count) #0 align 64 {
entry:
  %regaddr = alloca i16, align 2
  %m = alloca %struct.spi_message, align 4
  %t_addr = alloca %struct.spi_transfer, align 4
  %t_msg = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regaddr) #6
  %shl = shl i32 %addr, 12
  %div105 = lshr i32 %count, 1
  %or = or i32 %div105, %shl
  %conv = trunc i32 %or to i16
  %0 = ptrtoint ptr %regaddr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %regaddr, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #6
  %1 = call ptr @memset(ptr %m, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t_addr) #6
  %2 = getelementptr inbounds i8, ptr %t_addr, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 92)
  %4 = ptrtoint ptr %t_addr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %regaddr, ptr %t_addr, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t_addr, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t_msg) #6
  %6 = getelementptr inbounds i8, ptr %t_msg, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 92)
  %8 = ptrtoint ptr %t_msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %src, ptr %t_msg, align 4
  %len2 = getelementptr inbounds %struct.spi_transfer, ptr %t_msg, i32 0, i32 2
  %9 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %count, ptr %len2, align 4
  %rem = and i32 %count, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !54

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 101, i32 noundef 9, ptr noundef nonnull @.str.18) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %regaddr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %regaddr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %tobool28.not = icmp sgt i16 %11, -1
  br i1 %tobool28.not, label %if.end.if.end50_crit_edge, label %do.end44, !prof !54

if.end.if.end50_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 102, i32 noundef 9, ptr noundef nonnull @.str.19) #6
  br label %if.end50

if.end50:                                         ; preds = %do.end44, %if.end.if.end50_crit_edge
  %12 = ptrtoint ptr %regaddr to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %regaddr, align 2
  %14 = call i16 @llvm.bswap.i16(i16 %13) #6
  %15 = ptrtoint ptr %regaddr to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %regaddr, align 2
  %need_swab = getelementptr inbounds %struct.wfx_spi_priv, ptr %priv, i32 0, i32 3
  %16 = ptrtoint ptr %need_swab to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %need_swab, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool58.not = icmp eq i8 %17, 0
  br i1 %tobool58.not, label %if.end60.thread, label %if.end60

if.end60.thread:                                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %cmp114 = icmp eq i32 %addr, 0
  br label %if.end69

if.end60:                                         ; preds = %if.end50
  %18 = ptrtoint ptr %regaddr to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %13, ptr %regaddr, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addr)
  %cmp = icmp eq i32 %addr, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp67117 = icmp ugt i32 %count, 1
  %or.cond = and i1 %cmp, %cmp67117
  br i1 %or.cond, label %for.body.preheader, label %if.end60.if.end69_crit_edge

if.end60.if.end69_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

for.body.preheader:                               ; preds = %if.end60
  %umax = call i32 @llvm.umax.i32(i32 %div105, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0118 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i16, ptr %src, i32 %i.0118
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx, align 2
  %21 = call i16 @llvm.bswap.i16(i16 %20) #6
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %arrayidx, align 2
  %inc = add nuw nsw i32 %i.0118, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.if.end69_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.if.end69_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.end69:                                         ; preds = %for.body.if.end69_crit_edge, %if.end60.if.end69_crit_edge, %if.end60.thread
  %cmp116 = phi i1 [ %cmp114, %if.end60.thread ], [ %cmp, %if.end60.if.end69_crit_edge ], [ true, %for.body.if.end69_crit_edge ]
  %23 = getelementptr inbounds i8, ptr %m, i32 8
  %24 = call ptr @memset(ptr %23, i32 0, i32 40)
  %25 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %27 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %28 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t_addr, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end69.spi_message_add_tail.exit_crit_edge

if.end69.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t_addr, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %32 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end69.spi_message_add_tail.exit_crit_edge
  %transfer_list.i107 = getelementptr inbounds %struct.spi_transfer, ptr %t_msg, i32 0, i32 18
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i109 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i107, ptr noundef %34, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i109, label %if.end.i.i.i111, label %spi_message_add_tail.exit.spi_message_add_tail.exit112_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit112_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit112

if.end.i.i.i111:                                  ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %transfer_list.i107, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %transfer_list.i107 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %m, ptr %transfer_list.i107, align 4
  %prev3.i.i.i110 = getelementptr inbounds %struct.spi_transfer, ptr %t_msg, i32 0, i32 18, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i110, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %transfer_list.i107, ptr %34, align 4
  br label %spi_message_add_tail.exit112

spi_message_add_tail.exit112:                     ; preds = %if.end.i.i.i111, %spi_message_add_tail.exit.spi_message_add_tail.exit112_crit_edge
  %39 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %priv, align 4
  %call = call i32 @spi_sync(ptr noundef %40, ptr noundef nonnull %m) #6
  %41 = ptrtoint ptr %need_swab to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %need_swab, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool71.not = icmp ne i8 %42, 0
  %or.cond106 = and i1 %cmp116, %tobool71.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp79119 = icmp ugt i32 %count, 1
  %or.cond121 = and i1 %or.cond106, %cmp79119
  br i1 %or.cond121, label %for.body81.preheader, label %spi_message_add_tail.exit112.if.end86_crit_edge

spi_message_add_tail.exit112.if.end86_crit_edge:  ; preds = %spi_message_add_tail.exit112
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

for.body81.preheader:                             ; preds = %spi_message_add_tail.exit112
  %umax122 = call i32 @llvm.umax.i32(i32 %div105, i32 1)
  br label %for.body81

for.body81:                                       ; preds = %for.body81.for.body81_crit_edge, %for.body81.preheader
  %i.1120 = phi i32 [ %inc84, %for.body81.for.body81_crit_edge ], [ 0, %for.body81.preheader ]
  %arrayidx82 = getelementptr i16, ptr %src, i32 %i.1120
  %43 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx82, align 2
  %45 = call i16 @llvm.bswap.i16(i16 %44) #6
  %46 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %45, ptr %arrayidx82, align 2
  %inc84 = add nuw nsw i32 %i.1120, 1
  %exitcond123.not = icmp eq i32 %inc84, %umax122
  br i1 %exitcond123.not, label %for.body81.if.end86_crit_edge, label %for.body81.for.body81_crit_edge

for.body81.for.body81_crit_edge:                  ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body81

for.body81.if.end86_crit_edge:                    ; preds = %for.body81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.end86:                                         ; preds = %for.body81.if.end86_crit_edge, %spi_message_add_tail.exit112.if.end86_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t_msg) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t_addr) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regaddr) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_spi_irq_subscribe(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %3) #6
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %irq3 = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq3, align 4
  %call4 = tail call i32 @devm_request_threaded_irq(ptr noundef %5, i32 noundef %7, ptr noundef null, ptr noundef nonnull @wfx_spi_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str.1, ptr noundef %priv) #6
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_spi_irq_unsubscribe(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %1, i32 noundef %3, ptr noundef %priv) #6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wfx_spi_lock(ptr nocapture noundef %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wfx_spi_unlock(ptr nocapture noundef %priv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wfx_spi_align_size(ptr nocapture noundef readnone %priv, i32 noundef %size) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 3
  %and = and i32 %add, -4
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wfx_spi_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.wfx_spi_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  tail call void @wfx_bh_request_rx(ptr noundef %1) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_bh_request_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wfx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/wfx/bus_spi.c", i32 265, i32 11}
!2 = !{ptr @wfx_spi_driver, !3, !"wfx_spi_driver", i1 false, i1 false}
!3 = !{!"../drivers/staging/wfx/bus_spi.c", i32 263, i32 19}
!4 = !{ptr @wfx_spi_id, !5, !"wfx_spi_id", i1 false, i1 false}
!5 = !{!"../drivers/staging/wfx/bus_spi.c", i32 247, i32 35}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/wfx/bus_spi.c", i32 192, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @wfx_spi_probe.__UNIQUE_ID_ddebug353, !7, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/wfx/bus_spi.c", i32 196, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @wfx_spi_probe._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @wfx_spi_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/wfx/bus_spi.c", i32 199, i32 3}
!20 = !{ptr @wfx_spi_probe._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @wfx_spi_probe._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/wfx/bus_spi.c", i32 210, i32 56}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/wfx/bus_spi.c", i32 215, i32 3}
!26 = !{ptr @wfx_spi_probe._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @wfx_spi_probe._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/wfx/bus_spi.c", i32 218, i32 44}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/staging/wfx/bus_spi.c", i32 29, i32 13}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/wfx/bus_spi.c", i32 30, i32 14}
!34 = !{ptr @wfx_spi_pdata, !35, !"wfx_spi_pdata", i1 false, i1 false}
!35 = !{!"../drivers/staging/wfx/bus_spi.c", i32 28, i32 39}
!36 = !{ptr @wfx_spi_hwbus_ops, !37, !"wfx_spi_hwbus_ops", i1 false, i1 false}
!37 = !{!"../drivers/staging/wfx/bus_spi.c", i32 171, i32 31}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/staging/wfx/bus_spi.c", i32 66, i32 2}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/wfx/bus_spi.c", i32 102, i32 2}
!42 = !{ptr @wfx_spi_of_match, !43, !"wfx_spi_of_match", i1 false, i1 false}
!43 = !{!"../drivers/staging/wfx/bus_spi.c", i32 255, i32 34}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i64 2148958410, i64 2148958415, i64 2148958428, i64 2148958472, i64 2148958506, i64 2148958527}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{i8 0, i8 2}
