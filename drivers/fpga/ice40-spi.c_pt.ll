; ModuleID = '/llk/IR_all_yes/drivers/fpga/ice40-spi.c_pt.bc'
source_filename = "../drivers/fpga/ice40-spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fpga_manager_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.ice40_fpga_priv = type { ptr, ptr, ptr }
%struct.fpga_manager = type { ptr, %struct.device, %struct.mutex, i32, ptr, ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_ice40_spi__230_207_ice40_fpga_driver_init6 = internal global ptr @ice40_fpga_driver_init, section ".initcall6.init", align 4
@ice40_fpga_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ice40_fpga_spi_ids, ptr @ice40_fpga_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ice40_fpga_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ice40_fpga_driver_exit = internal global ptr @ice40_fpga_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [60 x i8] c"ice40_spi.author=Joel Holdsworth <joel@airwebreathe.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [49 x i8] c"ice40_spi.description=Lattice iCE40 FPGA Manager\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [38 x i8] c"ice40_spi.file=drivers/fpga/ice40-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [25 x i8] c"ice40_spi.license=GPL v2\00", section ".modinfo", align 1
@ice40_fpga_spi_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ice40-fpga-mgr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ice40spi\00", [23 x i8] zeroinitializer }, align 32
@ice40_fpga_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lattice,ice40-fpga-mgr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ice40_fpga_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 151, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"SPI speed is too high, maximum speed is 25000000\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ice40_fpga_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/fpga/ice40-spi.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ice40_fpga_probe._entry_ptr = internal global ptr @ice40_fpga_probe._entry, section ".printk_index", align 4
@ice40_fpga_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 157, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"SPI speed is too low, minimum speed is 1000000\0A\00", [48 x i8] zeroinitializer }, align 32
@ice40_fpga_probe._entry_ptr.8 = internal global ptr @ice40_fpga_probe._entry.6, section ".printk_index", align 4
@ice40_fpga_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 162, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Bad SPI mode, CPHA not supported\0A\00", [62 x i8] zeroinitializer }, align 32
@ice40_fpga_probe._entry_ptr.11 = internal global ptr @ice40_fpga_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cdone\00", [26 x i8] zeroinitializer }, align 32
@ice40_fpga_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get CDONE GPIO: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ice40_fpga_probe._entry_ptr.15 = internal global ptr @ice40_fpga_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ice40_fpga_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 177, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to get CRESET_B GPIO: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ice40_fpga_probe._entry_ptr.19 = internal global ptr @ice40_fpga_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Lattice iCE40 FPGA Manager\00", [37 x i8] zeroinitializer }, align 32
@ice40_fpga_ops = internal constant { %struct.fpga_manager_ops, [60 x i8] } { %struct.fpga_manager_ops { i32 0, ptr @ice40_fpga_ops_state, ptr null, ptr @ice40_fpga_ops_write_init, ptr @ice40_fpga_ops_write, ptr null, ptr @ice40_fpga_ops_write_complete, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ice40_fpga_ops_write_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 64, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Partial reconfiguration is not supported\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ice40_fpga_ops_write_init\00", [38 x i8] zeroinitializer }, align 32
@ice40_fpga_ops_write_init._entry_ptr = internal global ptr @ice40_fpga_ops_write_init._entry, section ".printk_index", align 4
@ice40_fpga_ops_write_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 86, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Device reset failed, CDONE is asserted\0A\00", [56 x i8] zeroinitializer }, align 32
@ice40_fpga_ops_write_init._entry_ptr.25 = internal global ptr @ice40_fpga_ops_write_init._entry.23, section ".printk_index", align 4
@ice40_fpga_ops_write_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"CDONE was not asserted after firmware transfer\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ice40_fpga_ops_write_complete\00", [34 x i8] zeroinitializer }, align 32
@ice40_fpga_ops_write_complete._entry_ptr = internal global ptr @ice40_fpga_ops_write_complete._entry, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"ice40_fpga_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 198, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant [19 x i8] c"ice40_fpga_spi_ids\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 192, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 201, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"ice40_fpga_of_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 186, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 150, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 156, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 162, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 167, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 170, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 174, i32 36 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 177, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 181, i32 36 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"ice40_fpga_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 128, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 63, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 86, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [28 x i8] c"../drivers/fpga/ice40-spi.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 119, i32 3 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_ice40_fpga_driver_exit, ptr @__initcall__kmod_ice40_spi__230_207_ice40_fpga_driver_init6, ptr @ice40_fpga_driver_exit, ptr @ice40_fpga_ops_write_complete._entry, ptr @ice40_fpga_ops_write_complete._entry_ptr, ptr @ice40_fpga_ops_write_init._entry, ptr @ice40_fpga_ops_write_init._entry.23, ptr @ice40_fpga_ops_write_init._entry_ptr, ptr @ice40_fpga_ops_write_init._entry_ptr.25, ptr @ice40_fpga_probe._entry, ptr @ice40_fpga_probe._entry.13, ptr @ice40_fpga_probe._entry.17, ptr @ice40_fpga_probe._entry.6, ptr @ice40_fpga_probe._entry.9, ptr @ice40_fpga_probe._entry_ptr, ptr @ice40_fpga_probe._entry_ptr.11, ptr @ice40_fpga_probe._entry_ptr.15, ptr @ice40_fpga_probe._entry_ptr.19, ptr @ice40_fpga_probe._entry_ptr.8, ptr @ice40_fpga_driver, ptr @ice40_fpga_spi_ids, ptr @.str, ptr @ice40_fpga_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @ice40_fpga_ops, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice40_fpga_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice40_fpga_spi_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice40_fpga_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice40_fpga_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice40_fpga_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice40_fpga_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice40_fpga_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice40_fpga_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice40_fpga_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice40_fpga_ops_write_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice40_fpga_ops_write_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ice40_fpga_ops_write_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ice40_fpga_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ice40_fpga_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ice40_fpga_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ice40_fpga_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice40_fpga_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %spi, ptr %call.i, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %1 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %2)
  %cmp = icmp ugt i32 %2, 25000000
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %2)
  %cmp7 = icmp ult i32 %2, 1000000
  br i1 %cmp7, label %do.end11, label %if.end12

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 8
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %call19 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.12, i32 noundef 1) #5
  %cdone = getelementptr inbounds %struct.ice40_fpga_priv, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %cdone to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call19, ptr %cdone, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call19 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.14, i32 noundef %6) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %call29 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.16, i32 noundef 7) #5
  %reset = getelementptr inbounds %struct.ice40_fpga_priv, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call29, ptr %reset, align 4
  %cmp.i67 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %if.then32, label %if.end38

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call29 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.18, i32 noundef %8) #8
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = tail call ptr @devm_fpga_mgr_register(ptr noundef %spi, ptr noundef nonnull @.str.20, ptr noundef nonnull @ice40_fpga_ops, ptr noundef nonnull %call.i) #5
  %cmp.i.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %call39 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %9, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then32, %if.then22, %do.end17, %do.end11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ -22, %do.end17 ], [ %6, %if.then22 ], [ %8, %if.then32 ], [ %spec.select.i, %if.end38 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fpga_mgr_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice40_fpga_ops_state(ptr nocapture noundef readonly %mgr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %cdone = getelementptr inbounds %struct.ice40_fpga_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cdone to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cdone, align 4
  %call = tail call i32 @gpiod_get_value(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %cond = select i1 %tobool.not, i32 0, i32 12
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice40_fpga_ops_write_init(ptr nocapture noundef readonly %mgr, ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  %message = alloca %struct.spi_message, align 4
  %assert_cs_then_reset_delay = alloca %struct.spi_transfer, align 4
  %housekeeping_delay_then_release_cs = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %message) #5
  %4 = call ptr @memset(ptr %message, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %assert_cs_then_reset_delay) #5
  %5 = call ptr @memset(ptr %assert_cs_then_reset_delay, i32 0, i32 96)
  %6 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %assert_cs_then_reset_delay, i32 0, i32 7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %6, align 4
  %8 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %assert_cs_then_reset_delay, i32 0, i32 9
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %8, align 2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %housekeeping_delay_then_release_cs) #5
  %10 = call ptr @memset(ptr %housekeeping_delay_then_release_cs, i32 0, i32 96)
  %11 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %housekeeping_delay_then_release_cs, i32 0, i32 9
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1200, ptr %11, align 2
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %info, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.21) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %master = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master, align 4
  %call = tail call i32 @spi_bus_lock(ptr noundef %16) #5
  %reset = getelementptr inbounds %struct.ice40_fpga_priv, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %18, i32 noundef 1) #5
  %19 = getelementptr inbounds i8, ptr %message, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %message, ptr %message, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %message, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %message, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %message, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %assert_cs_then_reset_delay, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %message, ptr noundef nonnull %message) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.spi_message_add_tail.exit_crit_edge

if.end.spi_message_add_tail.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %message, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %assert_cs_then_reset_delay, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %message, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i, ptr %message, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end.spi_message_add_tail.exit_crit_edge
  %call4 = call i32 @spi_sync_locked(ptr noundef %3, ptr noundef nonnull %message) #5
  %29 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reset, align 4
  call void @gpiod_set_value(ptr noundef %30, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool6.not = icmp eq i32 %call4, 0
  br i1 %tobool6.not, label %if.end8, label %spi_message_add_tail.exit.fail_crit_edge

spi_message_add_tail.exit.fail_crit_edge:         ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %fail

if.end8:                                          ; preds = %spi_message_add_tail.exit
  %cdone = getelementptr inbounds %struct.ice40_fpga_priv, ptr %1, i32 0, i32 2
  %31 = ptrtoint ptr %cdone to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cdone, align 4
  %call9 = call i32 @gpiod_get_value(ptr noundef %32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.24) #8
  br label %fail

if.end16:                                         ; preds = %if.end8
  %33 = call ptr @memset(ptr %19, i32 0, i32 40)
  %34 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %message, ptr %message, align 4
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %message, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %37 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i37 = getelementptr inbounds %struct.spi_transfer, ptr %housekeeping_delay_then_release_cs, i32 0, i32 18
  %call.i.i.i39 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i37, ptr noundef nonnull %message, ptr noundef nonnull %message) #5
  br i1 %call.i.i.i39, label %if.end.i.i.i41, label %if.end16.spi_message_add_tail.exit42_crit_edge

if.end16.spi_message_add_tail.exit42_crit_edge:   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit42

if.end.i.i.i41:                                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %transfer_list.i37, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %transfer_list.i37 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %message, ptr %transfer_list.i37, align 4
  %prev3.i.i.i40 = getelementptr inbounds %struct.spi_transfer, ptr %housekeeping_delay_then_release_cs, i32 0, i32 18, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %message, ptr %prev3.i.i.i40, align 4
  %41 = ptrtoint ptr %message to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %transfer_list.i37, ptr %message, align 4
  br label %spi_message_add_tail.exit42

spi_message_add_tail.exit42:                      ; preds = %if.end.i.i.i41, %if.end16.spi_message_add_tail.exit42_crit_edge
  %call17 = call i32 @spi_sync_locked(ptr noundef %3, ptr noundef nonnull %message) #5
  br label %fail

fail:                                             ; preds = %spi_message_add_tail.exit42, %do.end14, %spi_message_add_tail.exit.fail_crit_edge
  %ret.0 = phi i32 [ %call4, %spi_message_add_tail.exit.fail_crit_edge ], [ -5, %do.end14 ], [ %call17, %spi_message_add_tail.exit42 ]
  %42 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %master, align 4
  %call19 = call i32 @spi_bus_unlock(ptr noundef %43) #5
  br label %cleanup

cleanup:                                          ; preds = %fail, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ %ret.0, %fail ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %housekeeping_delay_then_release_cs) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %assert_cs_then_reset_delay) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %message) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice40_fpga_ops_write(ptr nocapture noundef readonly %mgr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %4 = getelementptr inbounds i8, ptr %t.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  %6 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %buf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %7 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %count, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ice40_fpga_ops_write_complete(ptr nocapture noundef readonly %mgr, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %padding = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %padding) #5
  %4 = call ptr @memset(ptr %padding, i32 0, i32 7)
  %cdone = getelementptr inbounds %struct.ice40_fpga_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %cdone to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cdone, align 4
  %call = tail call i32 @gpiod_get_value(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.26) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %7 = getelementptr inbounds i8, ptr %t.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %padding, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 7, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_write.exit_crit_edge

if.end.spi_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %do.end
  %retval.0 = phi i32 [ %call.i.i, %spi_write.exit ], [ -5, %do.end ]
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %padding) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bus_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync_locked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bus_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_ice40_spi__230_207_ice40_fpga_driver_init6, !1, !"__initcall__kmod_ice40_spi__230_207_ice40_fpga_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/fpga/ice40-spi.c", i32 207, i32 1}
!2 = !{ptr @__exitcall_ice40_fpga_driver_exit, !1, !"__exitcall_ice40_fpga_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/fpga/ice40-spi.c", i32 209, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/fpga/ice40-spi.c", i32 210, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/fpga/ice40-spi.c", i32 211, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/fpga/ice40-spi.c", i32 201, i32 11}
!12 = !{ptr @ice40_fpga_driver, !13, !"ice40_fpga_driver", i1 false, i1 false}
!13 = !{!"../drivers/fpga/ice40-spi.c", i32 198, i32 26}
!14 = !{ptr @ice40_fpga_spi_ids, !15, !"ice40_fpga_spi_ids", i1 false, i1 false}
!15 = !{!"../drivers/fpga/ice40-spi.c", i32 192, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/fpga/ice40-spi.c", i32 150, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ice40_fpga_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ice40_fpga_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/fpga/ice40-spi.c", i32 156, i32 3}
!26 = !{ptr @ice40_fpga_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ice40_fpga_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/fpga/ice40-spi.c", i32 162, i32 3}
!30 = !{ptr @ice40_fpga_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ice40_fpga_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/fpga/ice40-spi.c", i32 167, i32 36}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/fpga/ice40-spi.c", i32 170, i32 3}
!36 = !{ptr @ice40_fpga_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ice40_fpga_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/fpga/ice40-spi.c", i32 174, i32 36}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/fpga/ice40-spi.c", i32 177, i32 3}
!42 = !{ptr @ice40_fpga_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ice40_fpga_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/fpga/ice40-spi.c", i32 181, i32 36}
!46 = !{ptr @ice40_fpga_ops, !47, !"ice40_fpga_ops", i1 false, i1 false}
!47 = !{!"../drivers/fpga/ice40-spi.c", i32 128, i32 38}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/fpga/ice40-spi.c", i32 63, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ice40_fpga_ops_write_init._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ice40_fpga_ops_write_init._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/fpga/ice40-spi.c", i32 86, i32 3}
!55 = !{ptr @ice40_fpga_ops_write_init._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ice40_fpga_ops_write_init._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/fpga/ice40-spi.c", i32 119, i32 3}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ice40_fpga_ops_write_complete._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @ice40_fpga_ops_write_complete._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @ice40_fpga_of_match, !63, !"ice40_fpga_of_match", i1 false, i1 false}
!63 = !{!"../drivers/fpga/ice40-spi.c", i32 186, i32 34}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
