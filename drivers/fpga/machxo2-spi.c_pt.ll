; ModuleID = '/llk/IR_all_yes/drivers/fpga/machxo2-spi.c_pt.bc'
source_filename = "../drivers/fpga/machxo2-spi.c"
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
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.fpga_manager = type { ptr, %struct.device, %struct.mutex, i32, ptr, ptr, ptr }

@__initcall__kmod_machxo2_spi__230_401_machxo2_spi_driver_init6 = internal global ptr @machxo2_spi_driver_init, section ".initcall6.init", align 4
@machxo2_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @lattice_ids, ptr @machxo2_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_machxo2_spi_driver_exit = internal global ptr @machxo2_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [53 x i8] c"machxo2_spi.author=Paolo Pisati <p.pisati@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [60 x i8] c"machxo2_spi.description=Load Lattice FPGA firmware over SPI\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [42 x i8] c"machxo2_spi.file=drivers/fpga/machxo2-spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [27 x i8] c"machxo2_spi.license=GPL v2\00", section ".modinfo", align 1
@lattice_ids = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"machxo2-slave-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"machxo2-slave-spi\00", [46 x i8] zeroinitializer }, align 32
@of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lattice,machxo2-slave-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@machxo2_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 369, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Speed is too high\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"machxo2_spi_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/fpga/machxo2-spi.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@machxo2_spi_probe._entry_ptr = internal global ptr @machxo2_spi_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Lattice MachXO2 SPI FPGA Manager\00", [63 x i8] zeroinitializer }, align 32
@machxo2_ops = internal constant { %struct.fpga_manager_ops, [60 x i8] } { %struct.fpga_manager_ops { i32 0, ptr @machxo2_spi_state, ptr null, ptr @machxo2_write_init, ptr @machxo2_write, ptr null, ptr @machxo2_write_complete, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@get_status.cmd = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"<\00\00\00", [28 x i8] zeroinitializer }, align 32
@machxo2_write_init.enable = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\C6\08\00\00", [28 x i8] zeroinitializer }, align 32
@machxo2_write_init.erase = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\0E\04\00\00", [28 x i8] zeroinitializer }, align 32
@machxo2_write_init.initaddr = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"F\00\00\00", [28 x i8] zeroinitializer }, align 32
@machxo2_write_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Partial reconfiguration is not supported\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"machxo2_write_init\00", [45 x i8] zeroinitializer }, align 32
@machxo2_write_init._entry_ptr = internal global ptr @machxo2_write_init._entry, section ".printk_index", align 4
@machxo2_write_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error during FPGA init.\0A\00", [39 x i8] zeroinitializer }, align 32
@machxo2_write_init._entry_ptr.11 = internal global ptr @machxo2_write_init._entry.9, section ".printk_index", align 4
@machxo2_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 264, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Malformed payload.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"machxo2_write\00", [18 x i8] zeroinitializer }, align 32
@machxo2_write._entry_ptr = internal global ptr @machxo2_write._entry, section ".printk_index", align 4
@machxo2_write._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 281, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error loading the bitstream.\0A\00", [34 x i8] zeroinitializer }, align 32
@machxo2_write._entry_ptr.16 = internal global ptr @machxo2_write._entry.14, section ".printk_index", align 4
@machxo2_write_complete.progdone = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"^\00\00\00", [28 x i8] zeroinitializer }, align 32
@machxo2_write_complete.refresh = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"y\00\00\00", [28 x i8] zeroinitializer }, align 32
@machxo2_write_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 351, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Refresh failed.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"machxo2_write_complete\00", [41 x i8] zeroinitializer }, align 32
@machxo2_write_complete._entry_ptr = internal global ptr @machxo2_write_complete._entry, section ".printk_index", align 4
@machxo2_cleanup.erase = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\0E\04\00\00", [28 x i8] zeroinitializer }, align 32
@machxo2_cleanup.refresh = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"y\00\00\00", [28 x i8] zeroinitializer }, align 32
@machxo2_cleanup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 169, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Cleanup failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"machxo2_cleanup\00", [16 x i8] zeroinitializer }, align 32
@machxo2_cleanup._entry_ptr = internal global ptr @machxo2_cleanup._entry, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"machxo2_spi_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 392, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"lattice_ids\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 386, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 394, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [9 x i8] c"of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 379, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 369, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 373, i32 36 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"machxo2_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 356, i32 38 }
@___asan_gen_.57 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 70, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 194, i32 18 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 195, i32 18 }
@___asan_gen_.66 = private unnamed_addr constant [9 x i8] c"initaddr\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 196, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 201, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 247, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 264, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 281, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant [9 x i8] c"progdone\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 297, i32 18 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 298, i32 18 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 351, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant [6 x i8] c"erase\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 140, i32 18 }
@___asan_gen_.117 = private unnamed_addr constant [8 x i8] c"refresh\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 141, i32 18 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [30 x i8] c"../drivers/fpga/machxo2-spi.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 169, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_machxo2_spi_driver_exit, ptr @__initcall__kmod_machxo2_spi__230_401_machxo2_spi_driver_init6, ptr @machxo2_cleanup._entry, ptr @machxo2_cleanup._entry_ptr, ptr @machxo2_spi_driver_exit, ptr @machxo2_spi_probe._entry, ptr @machxo2_spi_probe._entry_ptr, ptr @machxo2_write._entry, ptr @machxo2_write._entry.14, ptr @machxo2_write._entry_ptr, ptr @machxo2_write._entry_ptr.16, ptr @machxo2_write_complete._entry, ptr @machxo2_write_complete._entry_ptr, ptr @machxo2_write_init._entry, ptr @machxo2_write_init._entry.9, ptr @machxo2_write_init._entry_ptr, ptr @machxo2_write_init._entry_ptr.11, ptr @machxo2_spi_driver, ptr @lattice_ids, ptr @.str, ptr @of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @machxo2_ops, ptr @get_status.cmd, ptr @machxo2_write_init.enable, ptr @machxo2_write_init.erase, ptr @machxo2_write_init.initaddr, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @machxo2_write_complete.progdone, ptr @machxo2_write_complete.refresh, ptr @.str.17, ptr @.str.18, ptr @machxo2_cleanup.erase, ptr @machxo2_cleanup.refresh, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machxo2_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lattice_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machxo2_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machxo2_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_status.cmd to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machxo2_write_init.enable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machxo2_write_init.erase to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machxo2_write_init.initaddr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machxo2_write_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machxo2_write_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machxo2_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machxo2_write._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machxo2_write_complete.progdone to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machxo2_write_complete.refresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machxo2_write_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machxo2_cleanup.erase to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machxo2_cleanup.refresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @machxo2_cleanup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @machxo2_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @machxo2_spi_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @machxo2_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @machxo2_spi_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @machxo2_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %0 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 66000000, i32 %1)
  %cmp = icmp ugt i32 %1, 66000000
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @devm_fpga_mgr_register(ptr noundef %spi, ptr noundef nonnull @.str.6, ptr noundef nonnull @machxo2_ops, ptr noundef %spi) #5
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %2 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %2, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %spec.select.i, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fpga_mgr_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @machxo2_spi_state(ptr nocapture noundef readonly %mgr) #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %rx.i = alloca %struct.spi_transfer, align 4
  %tx.i = alloca %struct.spi_transfer, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %rx.i) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx.i) #5
  %3 = call ptr @memset(ptr %rx.i, i32 0, i32 96)
  %4 = getelementptr inbounds i8, ptr %tx.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  %6 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @get_status.cmd, ptr %tx.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 2
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %len.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 1
  %8 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %status, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 2
  %9 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %len1.i, align 4
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_message_add_tail.exit.i_crit_edge

entry.spi_message_add_tail.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %entry.spi_message_add_tail.exit.i_crit_edge
  %transfer_list.i8.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 18
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i10.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i8.i, ptr noundef %21, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i10.i, label %if.end.i.i.i12.i, label %spi_message_add_tail.exit.i.get_status.exit_crit_edge

spi_message_add_tail.exit.i.get_status.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_status.exit

if.end.i.i.i12.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i8.i, ptr %prev.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i8.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i, ptr %transfer_list.i8.i, align 4
  %prev3.i.i.i11.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i11.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i8.i, ptr %21, align 4
  br label %get_status.exit

get_status.exit:                                  ; preds = %if.end.i.i.i12.i, %spi_message_add_tail.exit.i.get_status.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rx.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  %26 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %status, align 4
  %28 = and i32 %27, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not = icmp eq i32 %28, 0
  br i1 %tobool.not, label %land.lhs.true, label %get_status.exit.if.end_crit_edge

get_status.exit.if.end_crit_edge:                 ; preds = %get_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %get_status.exit
  %29 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %status, align 4
  %31 = and i32 %30, 58720512
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %31)
  %32 = icmp eq i32 %31, 256
  br i1 %32, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %get_status.exit.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 12, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @machxo2_write_init(ptr noundef %mgr, ptr nocapture noundef readonly %info, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  %msg.i87 = alloca %struct.spi_message, align 4
  %rx.i88 = alloca %struct.spi_transfer, align 4
  %tx.i89 = alloca %struct.spi_transfer, align 4
  %msg.i58 = alloca %struct.spi_message, align 4
  %rx.i59 = alloca %struct.spi_transfer, align 4
  %tx.i60 = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %rx.i = alloca %struct.spi_transfer, align 4
  %tx.i = alloca %struct.spi_transfer, align 4
  %msg = alloca %struct.spi_message, align 4
  %tx = alloca [3 x %struct.spi_transfer], align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #5
  %2 = call ptr @memset(ptr %msg, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %tx) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %status, align 4, !annotation !85
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %rx.i) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx.i) #5
  %6 = call ptr @memset(ptr %rx.i, i32 0, i32 96)
  %7 = getelementptr inbounds i8, ptr %tx.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @get_status.cmd, ptr %tx.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 2
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %len.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 1
  %11 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %status, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %len1.i, align 4
  %13 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.spi_message_add_tail.exit.i_crit_edge

if.end.spi_message_add_tail.exit.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end.spi_message_add_tail.exit.i_crit_edge
  %transfer_list.i8.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 18
  %23 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i10.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i8.i, ptr noundef %24, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i10.i, label %if.end.i.i.i12.i, label %spi_message_add_tail.exit.i.get_status.exit_crit_edge

spi_message_add_tail.exit.i.get_status.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_status.exit

if.end.i.i.i12.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i8.i, ptr %prev.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i8.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i, ptr %transfer_list.i8.i, align 4
  %prev3.i.i.i11.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i11.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i8.i, ptr %24, align 4
  br label %get_status.exit

get_status.exit:                                  ; preds = %if.end.i.i.i12.i, %spi_message_add_tail.exit.i.get_status.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rx.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  %29 = getelementptr inbounds i8, ptr %tx, i32 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 284)
  %31 = getelementptr inbounds i8, ptr %msg, i32 8
  %32 = call ptr @memset(ptr %31, i32 0, i32 40)
  %33 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %35 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %36 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %37 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @machxo2_write_init.enable, ptr %tx, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 2
  %38 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %len, align 4
  %delay = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 9
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 5, ptr %delay, align 2
  %unit = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 9, i32 1
  %40 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %unit, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %get_status.exit.spi_message_add_tail.exit_crit_edge

get_status.exit.spi_message_add_tail.exit_crit_edge: ; preds = %get_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %get_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %42 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 18, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %44 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %get_status.exit.spi_message_add_tail.exit_crit_edge
  %arrayidx6 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %tx, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @machxo2_write_init.erase, ptr %arrayidx6, align 4
  %len9 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %len9, align 4
  %transfer_list.i52 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 18
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i54 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i52, ptr noundef %48, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i54, label %if.end.i.i.i56, label %spi_message_add_tail.exit.spi_message_add_tail.exit57_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit57_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit57

if.end.i.i.i56:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %transfer_list.i52, ptr %prev.i.i.i, align 4
  %50 = ptrtoint ptr %transfer_list.i52 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg, ptr %transfer_list.i52, align 4
  %prev3.i.i.i55 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 18, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i.i55, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %transfer_list.i52, ptr %48, align 4
  br label %spi_message_add_tail.exit57

spi_message_add_tail.exit57:                      ; preds = %if.end.i.i.i56, %spi_message_add_tail.exit.spi_message_add_tail.exit57_crit_edge
  %call11 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %spi_message_add_tail.exit57.do.end36_crit_edge

spi_message_add_tail.exit57.do.end36_crit_edge:   ; preds = %spi_message_add_tail.exit57
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

if.end14:                                         ; preds = %spi_message_add_tail.exit57
  %call15 = call fastcc i32 @wait_until_not_busy(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.do.end36_crit_edge

if.end14.do.end36_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

if.end18:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i58) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %rx.i59) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx.i60) #5
  %53 = call ptr @memset(ptr %rx.i59, i32 0, i32 96)
  %54 = getelementptr inbounds i8, ptr %tx.i60, i32 4
  %55 = call ptr @memset(ptr %54, i32 0, i32 92)
  %56 = ptrtoint ptr %tx.i60 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @get_status.cmd, ptr %tx.i60, align 4
  %len.i61 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i60, i32 0, i32 2
  %57 = ptrtoint ptr %len.i61 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 4, ptr %len.i61, align 4
  %rx_buf.i62 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i59, i32 0, i32 1
  %58 = ptrtoint ptr %rx_buf.i62 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %status, ptr %rx_buf.i62, align 4
  %len1.i63 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i59, i32 0, i32 2
  %59 = ptrtoint ptr %len1.i63 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4, ptr %len1.i63, align 4
  %60 = getelementptr inbounds i8, ptr %msg.i58, i32 8
  %61 = call ptr @memset(ptr %60, i32 0, i32 40)
  %62 = ptrtoint ptr %msg.i58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %msg.i58, ptr %msg.i58, align 4
  %prev.i.i.i.i64 = getelementptr inbounds %struct.list_head, ptr %msg.i58, i32 0, i32 1
  %63 = ptrtoint ptr %prev.i.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %msg.i58, ptr %prev.i.i.i.i64, align 4
  %resources.i.i.i65 = getelementptr inbounds %struct.spi_message, ptr %msg.i58, i32 0, i32 10
  %64 = ptrtoint ptr %resources.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %resources.i.i.i65, ptr %resources.i.i.i65, align 4
  %prev.i2.i.i.i66 = getelementptr inbounds %struct.spi_message, ptr %msg.i58, i32 0, i32 10, i32 1
  %65 = ptrtoint ptr %prev.i2.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %resources.i.i.i65, ptr %prev.i2.i.i.i66, align 4
  %transfer_list.i.i67 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i60, i32 0, i32 18
  %call.i.i.i.i68 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i67, ptr noundef nonnull %msg.i58, ptr noundef nonnull %msg.i58) #5
  br i1 %call.i.i.i.i68, label %if.end.i.i.i.i70, label %if.end18.spi_message_add_tail.exit.i73_crit_edge

if.end18.spi_message_add_tail.exit.i73_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i73

if.end.i.i.i.i70:                                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %prev.i.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %transfer_list.i.i67, ptr %prev.i.i.i.i64, align 4
  %67 = ptrtoint ptr %transfer_list.i.i67 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %msg.i58, ptr %transfer_list.i.i67, align 4
  %prev3.i.i.i.i69 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i60, i32 0, i32 18, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i58, ptr %prev3.i.i.i.i69, align 4
  %69 = ptrtoint ptr %msg.i58 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %transfer_list.i.i67, ptr %msg.i58, align 4
  br label %spi_message_add_tail.exit.i73

spi_message_add_tail.exit.i73:                    ; preds = %if.end.i.i.i.i70, %if.end18.spi_message_add_tail.exit.i73_crit_edge
  %transfer_list.i8.i71 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i59, i32 0, i32 18
  %70 = ptrtoint ptr %prev.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i.i.i64, align 4
  %call.i.i.i10.i72 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i8.i71, ptr noundef %71, ptr noundef nonnull %msg.i58) #5
  br i1 %call.i.i.i10.i72, label %if.end.i.i.i12.i75, label %spi_message_add_tail.exit.i73.get_status.exit77_crit_edge

spi_message_add_tail.exit.i73.get_status.exit77_crit_edge: ; preds = %spi_message_add_tail.exit.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_status.exit77

if.end.i.i.i12.i75:                               ; preds = %spi_message_add_tail.exit.i73
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %prev.i.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %transfer_list.i8.i71, ptr %prev.i.i.i.i64, align 4
  %73 = ptrtoint ptr %transfer_list.i8.i71 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %msg.i58, ptr %transfer_list.i8.i71, align 4
  %prev3.i.i.i11.i74 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i59, i32 0, i32 18, i32 1
  %74 = ptrtoint ptr %prev3.i.i.i11.i74 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev3.i.i.i11.i74, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %transfer_list.i8.i71, ptr %71, align 4
  br label %get_status.exit77

get_status.exit77:                                ; preds = %if.end.i.i.i12.i75, %spi_message_add_tail.exit.i73.get_status.exit77_crit_edge
  %call.i76 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i58) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i60) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rx.i59) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i58) #5
  %76 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %status, align 4
  %78 = and i32 %77, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool21.not = icmp eq i32 %78, 0
  br i1 %tobool21.not, label %if.end23, label %get_status.exit77.do.end36_crit_edge

get_status.exit77.do.end36_crit_edge:             ; preds = %get_status.exit77
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

if.end23:                                         ; preds = %get_status.exit77
  %79 = call ptr @memset(ptr %31, i32 0, i32 40)
  %80 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %msg, ptr %msg, align 4
  %81 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %82 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %83 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %arrayidx24 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %tx, i32 0, i32 2
  %84 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @machxo2_write_init.initaddr, ptr %arrayidx24, align 4
  %len27 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %tx, i32 0, i32 2, i32 2
  %85 = ptrtoint ptr %len27 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 4, ptr %len27, align 4
  %transfer_list.i81 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %tx, i32 0, i32 2, i32 18
  %call.i.i.i83 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i81, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i83, label %if.end.i.i.i85, label %if.end23.spi_message_add_tail.exit86_crit_edge

if.end23.spi_message_add_tail.exit86_crit_edge:   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit86

if.end.i.i.i85:                                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %86 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %transfer_list.i81, ptr %prev.i.i.i, align 4
  %87 = ptrtoint ptr %transfer_list.i81 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %msg, ptr %transfer_list.i81, align 4
  %prev3.i.i.i84 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %tx, i32 0, i32 2, i32 18, i32 1
  %88 = ptrtoint ptr %prev3.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %msg, ptr %prev3.i.i.i84, align 4
  %89 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %transfer_list.i81, ptr %msg, align 4
  br label %spi_message_add_tail.exit86

spi_message_add_tail.exit86:                      ; preds = %if.end.i.i.i85, %if.end23.spi_message_add_tail.exit86_crit_edge
  %call29 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %spi_message_add_tail.exit86.do.end36_crit_edge

spi_message_add_tail.exit86.do.end36_crit_edge:   ; preds = %spi_message_add_tail.exit86
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end36

if.end32:                                         ; preds = %spi_message_add_tail.exit86
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i87) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %rx.i88) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx.i89) #5
  %90 = call ptr @memset(ptr %rx.i88, i32 0, i32 96)
  %91 = getelementptr inbounds i8, ptr %tx.i89, i32 4
  %92 = call ptr @memset(ptr %91, i32 0, i32 92)
  %93 = ptrtoint ptr %tx.i89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @get_status.cmd, ptr %tx.i89, align 4
  %len.i90 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i89, i32 0, i32 2
  %94 = ptrtoint ptr %len.i90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 4, ptr %len.i90, align 4
  %rx_buf.i91 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i88, i32 0, i32 1
  %95 = ptrtoint ptr %rx_buf.i91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %status, ptr %rx_buf.i91, align 4
  %len1.i92 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i88, i32 0, i32 2
  %96 = ptrtoint ptr %len1.i92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 4, ptr %len1.i92, align 4
  %97 = getelementptr inbounds i8, ptr %msg.i87, i32 8
  %98 = call ptr @memset(ptr %97, i32 0, i32 40)
  %99 = ptrtoint ptr %msg.i87 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %msg.i87, ptr %msg.i87, align 4
  %prev.i.i.i.i93 = getelementptr inbounds %struct.list_head, ptr %msg.i87, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %msg.i87, ptr %prev.i.i.i.i93, align 4
  %resources.i.i.i94 = getelementptr inbounds %struct.spi_message, ptr %msg.i87, i32 0, i32 10
  %101 = ptrtoint ptr %resources.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %resources.i.i.i94, ptr %resources.i.i.i94, align 4
  %prev.i2.i.i.i95 = getelementptr inbounds %struct.spi_message, ptr %msg.i87, i32 0, i32 10, i32 1
  %102 = ptrtoint ptr %prev.i2.i.i.i95 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %resources.i.i.i94, ptr %prev.i2.i.i.i95, align 4
  %transfer_list.i.i96 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i89, i32 0, i32 18
  %call.i.i.i.i97 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i96, ptr noundef nonnull %msg.i87, ptr noundef nonnull %msg.i87) #5
  br i1 %call.i.i.i.i97, label %if.end.i.i.i.i99, label %if.end32.spi_message_add_tail.exit.i102_crit_edge

if.end32.spi_message_add_tail.exit.i102_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i102

if.end.i.i.i.i99:                                 ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %103 = ptrtoint ptr %prev.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %transfer_list.i.i96, ptr %prev.i.i.i.i93, align 4
  %104 = ptrtoint ptr %transfer_list.i.i96 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %msg.i87, ptr %transfer_list.i.i96, align 4
  %prev3.i.i.i.i98 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i89, i32 0, i32 18, i32 1
  %105 = ptrtoint ptr %prev3.i.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %msg.i87, ptr %prev3.i.i.i.i98, align 4
  %106 = ptrtoint ptr %msg.i87 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %transfer_list.i.i96, ptr %msg.i87, align 4
  br label %spi_message_add_tail.exit.i102

spi_message_add_tail.exit.i102:                   ; preds = %if.end.i.i.i.i99, %if.end32.spi_message_add_tail.exit.i102_crit_edge
  %transfer_list.i8.i100 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i88, i32 0, i32 18
  %107 = ptrtoint ptr %prev.i.i.i.i93 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i.i.i.i93, align 4
  %call.i.i.i10.i101 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i8.i100, ptr noundef %108, ptr noundef nonnull %msg.i87) #5
  br i1 %call.i.i.i10.i101, label %if.end.i.i.i12.i104, label %spi_message_add_tail.exit.i102.get_status.exit106_crit_edge

spi_message_add_tail.exit.i102.get_status.exit106_crit_edge: ; preds = %spi_message_add_tail.exit.i102
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_status.exit106

if.end.i.i.i12.i104:                              ; preds = %spi_message_add_tail.exit.i102
  call void @__sanitizer_cov_trace_pc() #7
  %109 = ptrtoint ptr %prev.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %transfer_list.i8.i100, ptr %prev.i.i.i.i93, align 4
  %110 = ptrtoint ptr %transfer_list.i8.i100 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %msg.i87, ptr %transfer_list.i8.i100, align 4
  %prev3.i.i.i11.i103 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i88, i32 0, i32 18, i32 1
  %111 = ptrtoint ptr %prev3.i.i.i11.i103 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev3.i.i.i11.i103, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %transfer_list.i8.i100, ptr %108, align 4
  br label %get_status.exit106

get_status.exit106:                               ; preds = %if.end.i.i.i12.i104, %spi_message_add_tail.exit.i102.get_status.exit106_crit_edge
  %call.i105 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i87) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i89) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rx.i88) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i87) #5
  br label %cleanup

do.end36:                                         ; preds = %spi_message_add_tail.exit86.do.end36_crit_edge, %get_status.exit77.do.end36_crit_edge, %if.end14.do.end36_crit_edge, %spi_message_add_tail.exit57.do.end36_crit_edge
  %ret.0 = phi i32 [ %call11, %spi_message_add_tail.exit57.do.end36_crit_edge ], [ %call15, %if.end14.do.end36_crit_edge ], [ %call29, %spi_message_add_tail.exit86.do.end36_crit_edge ], [ -22, %get_status.exit77.do.end36_crit_edge ]
  %dev37 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.10) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %get_status.exit106, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ %ret.0, %do.end36 ], [ 0, %get_status.exit106 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %tx) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @machxo2_write(ptr noundef %mgr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %msg.i27 = alloca %struct.spi_message, align 4
  %rx.i28 = alloca %struct.spi_transfer, align 4
  %tx.i29 = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %rx.i = alloca %struct.spi_transfer, align 4
  %tx.i = alloca %struct.spi_transfer, align 4
  %msg = alloca %struct.spi_message, align 4
  %tx = alloca %struct.spi_transfer, align 4
  %payload = alloca [20 x i8], align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #5
  %2 = call ptr @memset(ptr %msg, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx) #5
  %3 = call ptr @memset(ptr %tx, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %payload) #5
  %4 = getelementptr inbounds [20 x i8], ptr %payload, i32 0, i32 4
  %5 = call ptr @memset(ptr %payload, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %status, align 4, !annotation !85
  %rem = and i32 %count, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %rx.i) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx.i) #5
  %7 = call ptr @memset(ptr %rx.i, i32 0, i32 96)
  %8 = getelementptr inbounds i8, ptr %tx.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 92)
  %10 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @get_status.cmd, ptr %tx.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 2
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %len.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 1
  %12 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %status, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 2
  %13 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %len1.i, align 4
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.spi_message_add_tail.exit.i_crit_edge

if.end.spi_message_add_tail.exit.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end.spi_message_add_tail.exit.i_crit_edge
  %transfer_list.i8.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 18
  %24 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i10.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i8.i, ptr noundef %25, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i10.i, label %if.end.i.i.i12.i, label %spi_message_add_tail.exit.i.get_status.exit_crit_edge

spi_message_add_tail.exit.i.get_status.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_status.exit

if.end.i.i.i12.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i8.i, ptr %prev.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i8.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i, ptr %transfer_list.i8.i, align 4
  %prev3.i.i.i11.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i11.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i8.i, ptr %25, align 4
  br label %get_status.exit

get_status.exit:                                  ; preds = %if.end.i.i.i12.i, %spi_message_add_tail.exit.i.get_status.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rx.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  %30 = ptrtoint ptr %payload to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1879048193, ptr %payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp147.not = icmp eq i32 %count, 0
  br i1 %cmp147.not, label %get_status.exit.for.end_crit_edge, label %for.body.lr.ph

get_status.exit.for.end_crit_edge:                ; preds = %get_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %get_status.exit
  %31 = getelementptr inbounds i8, ptr %msg, i32 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %len = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 2
  %delay = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 9
  %unit = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 9, i32 1
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 18
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 18, i32 1
  %32 = getelementptr inbounds i8, ptr %tx, i32 4
  br label %for.body

for.cond:                                         ; preds = %spi_message_add_tail.exit
  %add = add i32 %i.048, 16
  %cmp1 = icmp ult i32 %add, %count
  br i1 %cmp1, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.cond.for.body_crit_edge ]
  %arrayidx2 = getelementptr i8, ptr %buf, i32 %i.048
  %33 = call ptr @memcpy(ptr %4, ptr %arrayidx2, i32 16)
  %34 = call ptr @memset(ptr %32, i32 0, i32 92)
  %35 = call ptr @memset(ptr %31, i32 0, i32 40)
  %36 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %msg, ptr %msg, align 4
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %38 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %39 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %40 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %payload, ptr %tx, align 4
  %41 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 20, ptr %len, align 4
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 200, ptr %delay, align 2
  %43 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %unit, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.spi_message_add_tail.exit_crit_edge

for.body.spi_message_add_tail.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg, ptr %transfer_list.i, align 4
  %46 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %47 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %for.body.spi_message_add_tail.exit_crit_edge
  %call5 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %for.cond, label %do.end9

do.end9:                                          ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev10 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.15) #8
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %get_status.exit.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i27) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %rx.i28) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx.i29) #5
  %48 = call ptr @memset(ptr %rx.i28, i32 0, i32 96)
  %49 = getelementptr inbounds i8, ptr %tx.i29, i32 4
  %50 = call ptr @memset(ptr %49, i32 0, i32 92)
  %51 = ptrtoint ptr %tx.i29 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @get_status.cmd, ptr %tx.i29, align 4
  %len.i30 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i29, i32 0, i32 2
  %52 = ptrtoint ptr %len.i30 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 4, ptr %len.i30, align 4
  %rx_buf.i31 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i28, i32 0, i32 1
  %53 = ptrtoint ptr %rx_buf.i31 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %status, ptr %rx_buf.i31, align 4
  %len1.i32 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i28, i32 0, i32 2
  %54 = ptrtoint ptr %len1.i32 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4, ptr %len1.i32, align 4
  %55 = getelementptr inbounds i8, ptr %msg.i27, i32 8
  %56 = call ptr @memset(ptr %55, i32 0, i32 40)
  %57 = ptrtoint ptr %msg.i27 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %msg.i27, ptr %msg.i27, align 4
  %prev.i.i.i.i33 = getelementptr inbounds %struct.list_head, ptr %msg.i27, i32 0, i32 1
  %58 = ptrtoint ptr %prev.i.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %msg.i27, ptr %prev.i.i.i.i33, align 4
  %resources.i.i.i34 = getelementptr inbounds %struct.spi_message, ptr %msg.i27, i32 0, i32 10
  %59 = ptrtoint ptr %resources.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %resources.i.i.i34, ptr %resources.i.i.i34, align 4
  %prev.i2.i.i.i35 = getelementptr inbounds %struct.spi_message, ptr %msg.i27, i32 0, i32 10, i32 1
  %60 = ptrtoint ptr %prev.i2.i.i.i35 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %resources.i.i.i34, ptr %prev.i2.i.i.i35, align 4
  %transfer_list.i.i36 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i29, i32 0, i32 18
  %call.i.i.i.i37 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i36, ptr noundef nonnull %msg.i27, ptr noundef nonnull %msg.i27) #5
  br i1 %call.i.i.i.i37, label %if.end.i.i.i.i39, label %for.end.spi_message_add_tail.exit.i42_crit_edge

for.end.spi_message_add_tail.exit.i42_crit_edge:  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i42

if.end.i.i.i.i39:                                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %prev.i.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %transfer_list.i.i36, ptr %prev.i.i.i.i33, align 4
  %62 = ptrtoint ptr %transfer_list.i.i36 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg.i27, ptr %transfer_list.i.i36, align 4
  %prev3.i.i.i.i38 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i29, i32 0, i32 18, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %msg.i27, ptr %prev3.i.i.i.i38, align 4
  %64 = ptrtoint ptr %msg.i27 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %transfer_list.i.i36, ptr %msg.i27, align 4
  br label %spi_message_add_tail.exit.i42

spi_message_add_tail.exit.i42:                    ; preds = %if.end.i.i.i.i39, %for.end.spi_message_add_tail.exit.i42_crit_edge
  %transfer_list.i8.i40 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i28, i32 0, i32 18
  %65 = ptrtoint ptr %prev.i.i.i.i33 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i.i.i33, align 4
  %call.i.i.i10.i41 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i8.i40, ptr noundef %66, ptr noundef nonnull %msg.i27) #5
  br i1 %call.i.i.i10.i41, label %if.end.i.i.i12.i44, label %spi_message_add_tail.exit.i42.get_status.exit46_crit_edge

spi_message_add_tail.exit.i42.get_status.exit46_crit_edge: ; preds = %spi_message_add_tail.exit.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_status.exit46

if.end.i.i.i12.i44:                               ; preds = %spi_message_add_tail.exit.i42
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %prev.i.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %transfer_list.i8.i40, ptr %prev.i.i.i.i33, align 4
  %68 = ptrtoint ptr %transfer_list.i8.i40 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i27, ptr %transfer_list.i8.i40, align 4
  %prev3.i.i.i11.i43 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i28, i32 0, i32 18, i32 1
  %69 = ptrtoint ptr %prev3.i.i.i11.i43 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i.i11.i43, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %transfer_list.i8.i40, ptr %66, align 4
  br label %get_status.exit46

get_status.exit46:                                ; preds = %if.end.i.i.i12.i44, %spi_message_add_tail.exit.i42.get_status.exit46_crit_edge
  %call.i45 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i27) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i29) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rx.i28) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i27) #5
  br label %cleanup

cleanup:                                          ; preds = %get_status.exit46, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call5, %do.end9 ], [ 0, %get_status.exit46 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %payload) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @machxo2_write_complete(ptr noundef %mgr, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  %msg.i94 = alloca %struct.spi_message, align 4
  %rx.i95 = alloca %struct.spi_transfer, align 4
  %tx.i96 = alloca %struct.spi_transfer, align 4
  %msg.i73 = alloca %struct.spi_message, align 4
  %rx.i74 = alloca %struct.spi_transfer, align 4
  %tx.i75 = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %rx.i = alloca %struct.spi_transfer, align 4
  %tx.i = alloca %struct.spi_transfer, align 4
  %msg = alloca %struct.spi_message, align 4
  %tx = alloca [2 x %struct.spi_transfer], align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %tx) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %status, align 4, !annotation !85
  %3 = getelementptr inbounds i8, ptr %tx, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 188)
  %5 = getelementptr inbounds i8, ptr %msg, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 40)
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %9 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %11 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @machxo2_write_complete.progdone, ptr %tx, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %len, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %call = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %spi_message_add_tail.exit.do.end43_crit_edge

spi_message_add_tail.exit.do.end43_crit_edge:     ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43

if.end:                                           ; preds = %spi_message_add_tail.exit
  %call3 = call fastcc i32 @wait_until_not_busy(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.do.end43_crit_edge

if.end.do.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %rx.i) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx.i) #5
  %17 = call ptr @memset(ptr %rx.i, i32 0, i32 96)
  %18 = getelementptr inbounds i8, ptr %tx.i, i32 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 92)
  %20 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @get_status.cmd, ptr %tx.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 2
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %len.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 1
  %22 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %status, ptr %rx_buf.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 2
  %23 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %len1.i, align 4
  %24 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %25 = call ptr @memset(ptr %24, i32 0, i32 40)
  %26 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %28 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %29 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end6.spi_message_add_tail.exit.i_crit_edge

if.end6.spi_message_add_tail.exit.i_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %31 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 18, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %33 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end6.spi_message_add_tail.exit.i_crit_edge
  %transfer_list.i8.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 18
  %34 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i10.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i8.i, ptr noundef %35, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i10.i, label %if.end.i.i.i12.i, label %spi_message_add_tail.exit.i.get_status.exit_crit_edge

spi_message_add_tail.exit.i.get_status.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_status.exit

if.end.i.i.i12.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %transfer_list.i8.i, ptr %prev.i.i.i.i, align 4
  %37 = ptrtoint ptr %transfer_list.i8.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i, ptr %transfer_list.i8.i, align 4
  %prev3.i.i.i11.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 18, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i11.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %transfer_list.i8.i, ptr %35, align 4
  br label %get_status.exit

get_status.exit:                                  ; preds = %if.end.i.i.i12.i, %spi_message_add_tail.exit.i.get_status.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rx.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  %40 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %status, align 4
  %42 = and i32 %41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool9.not = icmp eq i32 %42, 0
  br i1 %tobool9.not, label %get_status.exit.do.end43.sink.split_crit_edge, label %do.body.preheader

get_status.exit.do.end43.sink.split_crit_edge:    ; preds = %get_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43.sink.split

do.body.preheader:                                ; preds = %get_status.exit
  %arrayidx13 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tx, i32 0, i32 1
  %len16 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 2
  %delay = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 9
  %unit = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 9, i32 1
  %transfer_list.i67 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 18
  %prev3.i.i.i70 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 18, i32 1
  %43 = getelementptr inbounds i8, ptr %tx.i75, i32 4
  %len.i76 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i75, i32 0, i32 2
  %rx_buf.i77 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i74, i32 0, i32 1
  %len1.i78 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i74, i32 0, i32 2
  %44 = getelementptr inbounds i8, ptr %msg.i73, i32 8
  %prev.i.i.i.i79 = getelementptr inbounds %struct.list_head, ptr %msg.i73, i32 0, i32 1
  %resources.i.i.i80 = getelementptr inbounds %struct.spi_message, ptr %msg.i73, i32 0, i32 10
  %prev.i2.i.i.i81 = getelementptr inbounds %struct.spi_message, ptr %msg.i73, i32 0, i32 10, i32 1
  %transfer_list.i.i82 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i75, i32 0, i32 18
  %prev3.i.i.i.i84 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i75, i32 0, i32 18, i32 1
  %transfer_list.i8.i86 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i74, i32 0, i32 18
  %prev3.i.i.i11.i89 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i74, i32 0, i32 18, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end34.do.body_crit_edge, %do.body.preheader
  %refreshloop.0 = phi i32 [ %inc, %if.end34.do.body_crit_edge ], [ 0, %do.body.preheader ]
  %45 = call ptr @memset(ptr %5, i32 0, i32 40)
  %46 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %msg, ptr %msg, align 4
  %47 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %48 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %49 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %50 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @machxo2_write_complete.refresh, ptr %arrayidx13, align 4
  %51 = ptrtoint ptr %len16 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %len16, align 4
  %52 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 4800, ptr %delay, align 2
  %53 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %unit, align 4
  %call.i.i.i69 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i67, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i69, label %if.end.i.i.i71, label %do.body.spi_message_add_tail.exit72_crit_edge

do.body.spi_message_add_tail.exit72_crit_edge:    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit72

if.end.i.i.i71:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %transfer_list.i67, ptr %prev.i.i.i, align 4
  %55 = ptrtoint ptr %transfer_list.i67 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg, ptr %transfer_list.i67, align 4
  %56 = ptrtoint ptr %prev3.i.i.i70 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %msg, ptr %prev3.i.i.i70, align 4
  %57 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %transfer_list.i67, ptr %msg, align 4
  br label %spi_message_add_tail.exit72

spi_message_add_tail.exit72:                      ; preds = %if.end.i.i.i71, %do.body.spi_message_add_tail.exit72_crit_edge
  %call21 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %spi_message_add_tail.exit72.do.end43_crit_edge

spi_message_add_tail.exit72.do.end43_crit_edge:   ; preds = %spi_message_add_tail.exit72
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43

if.end24:                                         ; preds = %spi_message_add_tail.exit72
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i73) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %rx.i74) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx.i75) #5
  %58 = call ptr @memset(ptr %rx.i74, i32 0, i32 96)
  %59 = call ptr @memset(ptr %43, i32 0, i32 92)
  %60 = ptrtoint ptr %tx.i75 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @get_status.cmd, ptr %tx.i75, align 4
  %61 = ptrtoint ptr %len.i76 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %len.i76, align 4
  %62 = ptrtoint ptr %rx_buf.i77 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %status, ptr %rx_buf.i77, align 4
  %63 = ptrtoint ptr %len1.i78 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4, ptr %len1.i78, align 4
  %64 = call ptr @memset(ptr %44, i32 0, i32 40)
  %65 = ptrtoint ptr %msg.i73 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %msg.i73, ptr %msg.i73, align 4
  %66 = ptrtoint ptr %prev.i.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %msg.i73, ptr %prev.i.i.i.i79, align 4
  %67 = ptrtoint ptr %resources.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %resources.i.i.i80, ptr %resources.i.i.i80, align 4
  %68 = ptrtoint ptr %prev.i2.i.i.i81 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %resources.i.i.i80, ptr %prev.i2.i.i.i81, align 4
  %call.i.i.i.i83 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i82, ptr noundef nonnull %msg.i73, ptr noundef nonnull %msg.i73) #5
  br i1 %call.i.i.i.i83, label %if.end.i.i.i.i85, label %if.end24.spi_message_add_tail.exit.i88_crit_edge

if.end24.spi_message_add_tail.exit.i88_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i88

if.end.i.i.i.i85:                                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %prev.i.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %transfer_list.i.i82, ptr %prev.i.i.i.i79, align 4
  %70 = ptrtoint ptr %transfer_list.i.i82 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %msg.i73, ptr %transfer_list.i.i82, align 4
  %71 = ptrtoint ptr %prev3.i.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %msg.i73, ptr %prev3.i.i.i.i84, align 4
  %72 = ptrtoint ptr %msg.i73 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %transfer_list.i.i82, ptr %msg.i73, align 4
  br label %spi_message_add_tail.exit.i88

spi_message_add_tail.exit.i88:                    ; preds = %if.end.i.i.i.i85, %if.end24.spi_message_add_tail.exit.i88_crit_edge
  %73 = ptrtoint ptr %prev.i.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i.i.i79, align 4
  %call.i.i.i10.i87 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i8.i86, ptr noundef %74, ptr noundef nonnull %msg.i73) #5
  br i1 %call.i.i.i10.i87, label %if.end.i.i.i12.i90, label %spi_message_add_tail.exit.i88.get_status.exit92_crit_edge

spi_message_add_tail.exit.i88.get_status.exit92_crit_edge: ; preds = %spi_message_add_tail.exit.i88
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_status.exit92

if.end.i.i.i12.i90:                               ; preds = %spi_message_add_tail.exit.i88
  call void @__sanitizer_cov_trace_pc() #7
  %75 = ptrtoint ptr %prev.i.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %transfer_list.i8.i86, ptr %prev.i.i.i.i79, align 4
  %76 = ptrtoint ptr %transfer_list.i8.i86 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %msg.i73, ptr %transfer_list.i8.i86, align 4
  %77 = ptrtoint ptr %prev3.i.i.i11.i89 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev3.i.i.i11.i89, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %transfer_list.i8.i86, ptr %74, align 4
  br label %get_status.exit92

get_status.exit92:                                ; preds = %if.end.i.i.i12.i90, %spi_message_add_tail.exit.i88.get_status.exit92_crit_edge
  %call.i91 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i73) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i75) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rx.i74) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i73) #5
  %79 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %status, align 4
  %81 = and i32 %80, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool27.not = icmp eq i32 %81, 0
  br i1 %tobool27.not, label %land.lhs.true, label %get_status.exit92.if.end34_crit_edge

get_status.exit92.if.end34_crit_edge:             ; preds = %get_status.exit92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

land.lhs.true:                                    ; preds = %get_status.exit92
  %82 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %status, align 4
  %84 = and i32 %83, 58720512
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %84)
  %85 = icmp eq i32 %84, 256
  br i1 %85, label %do.end, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %get_status.exit92.if.end34_crit_edge
  %inc = add nuw nsw i32 %refreshloop.0, 1
  %cmp35 = icmp eq i32 %inc, 16
  br i1 %cmp35, label %if.end34.do.end43.sink.split_crit_edge, label %if.end34.do.body_crit_edge

if.end34.do.body_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end34.do.end43.sink.split_crit_edge:           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43.sink.split

do.end:                                           ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i94) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %rx.i95) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx.i96) #5
  %86 = call ptr @memset(ptr %rx.i95, i32 0, i32 96)
  %87 = getelementptr inbounds i8, ptr %tx.i96, i32 4
  %88 = call ptr @memset(ptr %87, i32 0, i32 92)
  %89 = ptrtoint ptr %tx.i96 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @get_status.cmd, ptr %tx.i96, align 4
  %len.i97 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i96, i32 0, i32 2
  %90 = ptrtoint ptr %len.i97 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 4, ptr %len.i97, align 4
  %rx_buf.i98 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i95, i32 0, i32 1
  %91 = ptrtoint ptr %rx_buf.i98 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %status, ptr %rx_buf.i98, align 4
  %len1.i99 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i95, i32 0, i32 2
  %92 = ptrtoint ptr %len1.i99 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 4, ptr %len1.i99, align 4
  %93 = getelementptr inbounds i8, ptr %msg.i94, i32 8
  %94 = call ptr @memset(ptr %93, i32 0, i32 40)
  %95 = ptrtoint ptr %msg.i94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %msg.i94, ptr %msg.i94, align 4
  %prev.i.i.i.i100 = getelementptr inbounds %struct.list_head, ptr %msg.i94, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %msg.i94, ptr %prev.i.i.i.i100, align 4
  %resources.i.i.i101 = getelementptr inbounds %struct.spi_message, ptr %msg.i94, i32 0, i32 10
  %97 = ptrtoint ptr %resources.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %resources.i.i.i101, ptr %resources.i.i.i101, align 4
  %prev.i2.i.i.i102 = getelementptr inbounds %struct.spi_message, ptr %msg.i94, i32 0, i32 10, i32 1
  %98 = ptrtoint ptr %prev.i2.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %resources.i.i.i101, ptr %prev.i2.i.i.i102, align 4
  %transfer_list.i.i103 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i96, i32 0, i32 18
  %call.i.i.i.i104 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i103, ptr noundef nonnull %msg.i94, ptr noundef nonnull %msg.i94) #5
  br i1 %call.i.i.i.i104, label %if.end.i.i.i.i106, label %do.end.spi_message_add_tail.exit.i109_crit_edge

do.end.spi_message_add_tail.exit.i109_crit_edge:  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i109

if.end.i.i.i.i106:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %prev.i.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %transfer_list.i.i103, ptr %prev.i.i.i.i100, align 4
  %100 = ptrtoint ptr %transfer_list.i.i103 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %msg.i94, ptr %transfer_list.i.i103, align 4
  %prev3.i.i.i.i105 = getelementptr inbounds %struct.spi_transfer, ptr %tx.i96, i32 0, i32 18, i32 1
  %101 = ptrtoint ptr %prev3.i.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %msg.i94, ptr %prev3.i.i.i.i105, align 4
  %102 = ptrtoint ptr %msg.i94 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %transfer_list.i.i103, ptr %msg.i94, align 4
  br label %spi_message_add_tail.exit.i109

spi_message_add_tail.exit.i109:                   ; preds = %if.end.i.i.i.i106, %do.end.spi_message_add_tail.exit.i109_crit_edge
  %transfer_list.i8.i107 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i95, i32 0, i32 18
  %103 = ptrtoint ptr %prev.i.i.i.i100 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev.i.i.i.i100, align 4
  %call.i.i.i10.i108 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i8.i107, ptr noundef %104, ptr noundef nonnull %msg.i94) #5
  br i1 %call.i.i.i10.i108, label %if.end.i.i.i12.i111, label %spi_message_add_tail.exit.i109.get_status.exit113_crit_edge

spi_message_add_tail.exit.i109.get_status.exit113_crit_edge: ; preds = %spi_message_add_tail.exit.i109
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_status.exit113

if.end.i.i.i12.i111:                              ; preds = %spi_message_add_tail.exit.i109
  call void @__sanitizer_cov_trace_pc() #7
  %105 = ptrtoint ptr %prev.i.i.i.i100 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %transfer_list.i8.i107, ptr %prev.i.i.i.i100, align 4
  %106 = ptrtoint ptr %transfer_list.i8.i107 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %msg.i94, ptr %transfer_list.i8.i107, align 4
  %prev3.i.i.i11.i110 = getelementptr inbounds %struct.spi_transfer, ptr %rx.i95, i32 0, i32 18, i32 1
  %107 = ptrtoint ptr %prev3.i.i.i11.i110 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %104, ptr %prev3.i.i.i11.i110, align 4
  %108 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %transfer_list.i8.i107, ptr %104, align 4
  br label %get_status.exit113

get_status.exit113:                               ; preds = %if.end.i.i.i12.i111, %spi_message_add_tail.exit.i109.get_status.exit113_crit_edge
  %call.i112 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg.i94) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i96) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rx.i95) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i94) #5
  br label %cleanup

do.end43.sink.split:                              ; preds = %if.end34.do.end43.sink.split_crit_edge, %get_status.exit.do.end43.sink.split_crit_edge
  call fastcc void @machxo2_cleanup(ptr noundef %mgr)
  br label %do.end43

do.end43:                                         ; preds = %do.end43.sink.split, %spi_message_add_tail.exit72.do.end43_crit_edge, %if.end.do.end43_crit_edge, %spi_message_add_tail.exit.do.end43_crit_edge
  %ret.0 = phi i32 [ %call, %spi_message_add_tail.exit.do.end43_crit_edge ], [ %call3, %if.end.do.end43_crit_edge ], [ -22, %do.end43.sink.split ], [ %call21, %spi_message_add_tail.exit72.do.end43_crit_edge ]
  %dev = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end43, %get_status.exit113
  %retval.0 = phi i32 [ %ret.0, %do.end43 ], [ 0, %get_status.exit113 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %tx) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_until_not_busy(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %rx.i = alloca %struct.spi_transfer, align 4
  %tx.i = alloca %struct.spi_transfer, align 4
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #5
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !85
  %1 = getelementptr inbounds i8, ptr %tx.i, i32 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 2
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 1
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 18
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx.i, i32 0, i32 18, i32 1
  %transfer_list.i8.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 18
  %prev3.i.i.i11.i = getelementptr inbounds %struct.spi_transfer, ptr %rx.i, i32 0, i32 18, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %loop.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %rx.i) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %tx.i) #5
  %3 = call ptr @memset(ptr %rx.i, i32 0, i32 96)
  %4 = call ptr @memset(ptr %1, i32 0, i32 92)
  %5 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @get_status.cmd, ptr %tx.i, align 4
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %len.i, align 4
  %7 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %status, ptr %rx_buf.i, align 4
  %8 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %len1.i, align 4
  %9 = call ptr @memset(ptr %2, i32 0, i32 40)
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %11 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %12 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %13 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.body.spi_message_add_tail.exit.i_crit_edge

do.body.spi_message_add_tail.exit.i_crit_edge:    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %16 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %do.body.spi_message_add_tail.exit.i_crit_edge
  %18 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i10.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i8.i, ptr noundef %19, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i10.i, label %if.end.i.i.i12.i, label %spi_message_add_tail.exit.i.get_status.exit_crit_edge

spi_message_add_tail.exit.i.get_status.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_status.exit

if.end.i.i.i12.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i8.i, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %transfer_list.i8.i, align 4
  %22 = ptrtoint ptr %prev3.i.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i11.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i8.i, ptr %19, align 4
  br label %get_status.exit

get_status.exit:                                  ; preds = %if.end.i.i.i12.i, %spi_message_add_tail.exit.i.get_status.exit_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %tx.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %rx.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %get_status.exit.cleanup_crit_edge

get_status.exit.cleanup_crit_edge:                ; preds = %get_status.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %get_status.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %loop.0)
  %exitcond = icmp eq i32 %loop.0, 127
  br i1 %exitcond, label %if.end.cleanup_crit_edge, label %do.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.cond:                                          ; preds = %if.end
  %inc = add nuw nsw i32 %loop.0, 1
  %24 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %status, align 4
  %26 = and i32 %25, 4096
  %tobool4.not = icmp eq i32 %26, 0
  br i1 %tobool4.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %do.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %get_status.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %get_status.exit.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %do.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @machxo2_cleanup(ptr noundef %mgr) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %tx = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %tx) #5
  %2 = getelementptr inbounds i8, ptr %tx, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %4 = getelementptr inbounds i8, ptr %msg, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %10 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @machxo2_cleanup.erase, ptr %tx, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 2
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %len, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %tx, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %call = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %spi_message_add_tail.exit.do.end_crit_edge

spi_message_add_tail.exit.do.end_crit_edge:       ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %spi_message_add_tail.exit
  %call3 = call fastcc i32 @wait_until_not_busy(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end6:                                          ; preds = %if.end
  %16 = call ptr @memset(ptr %4, i32 0, i32 40)
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %msg, ptr %msg, align 4
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %20 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %arrayidx7 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tx, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @machxo2_cleanup.refresh, ptr %arrayidx7, align 4
  %len10 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %len10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %len10, align 4
  %delay = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 9
  %23 = ptrtoint ptr %delay to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 4800, ptr %delay, align 2
  %unit = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 9, i32 1
  %24 = ptrtoint ptr %unit to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %unit, align 4
  %transfer_list.i4 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 18
  %call.i.i.i6 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i4, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #5
  br i1 %call.i.i.i6, label %if.end.i.i.i8, label %if.end6.spi_message_add_tail.exit9_crit_edge

if.end6.spi_message_add_tail.exit9_crit_edge:     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit9

if.end.i.i.i8:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i4, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg, ptr %transfer_list.i4, align 4
  %prev3.i.i.i7 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %tx, i32 0, i32 1, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg, ptr %prev3.i.i.i7, align 4
  %28 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i4, ptr %msg, align 4
  br label %spi_message_add_tail.exit9

spi_message_add_tail.exit9:                       ; preds = %if.end.i.i.i8, %if.end6.spi_message_add_tail.exit9_crit_edge
  %call15 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %msg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %spi_message_add_tail.exit9.cleanup_crit_edge, label %spi_message_add_tail.exit9.do.end_crit_edge

spi_message_add_tail.exit9.do.end_crit_edge:      ; preds = %spi_message_add_tail.exit9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

spi_message_add_tail.exit9.cleanup_crit_edge:     ; preds = %spi_message_add_tail.exit9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %spi_message_add_tail.exit9.do.end_crit_edge, %if.end.do.end_crit_edge, %spi_message_add_tail.exit.do.end_crit_edge
  %dev = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %spi_message_add_tail.exit9.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %tx) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !69, !71, !72, !73, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_machxo2_spi__230_401_machxo2_spi_driver_init6, !1, !"__initcall__kmod_machxo2_spi__230_401_machxo2_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/fpga/machxo2-spi.c", i32 401, i32 1}
!2 = !{ptr @__exitcall_machxo2_spi_driver_exit, !1, !"__exitcall_machxo2_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/fpga/machxo2-spi.c", i32 403, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/fpga/machxo2-spi.c", i32 404, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/fpga/machxo2-spi.c", i32 405, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/fpga/machxo2-spi.c", i32 394, i32 11}
!12 = !{ptr @machxo2_spi_driver, !13, !"machxo2_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/fpga/machxo2-spi.c", i32 392, i32 26}
!14 = !{ptr @lattice_ids, !15, !"lattice_ids", i1 false, i1 false}
!15 = !{!"../drivers/fpga/machxo2-spi.c", i32 386, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/fpga/machxo2-spi.c", i32 369, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @machxo2_spi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @machxo2_spi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/fpga/machxo2-spi.c", i32 373, i32 36}
!26 = !{ptr @machxo2_ops, !27, !"machxo2_ops", i1 false, i1 false}
!27 = !{!"../drivers/fpga/machxo2-spi.c", i32 356, i32 38}
!28 = !{ptr @get_status.cmd, !29, !"cmd", i1 false, i1 false}
!29 = !{!"../drivers/fpga/machxo2-spi.c", i32 70, i32 18}
!30 = !{ptr @machxo2_write_init.enable, !31, !"enable", i1 false, i1 false}
!31 = !{!"../drivers/fpga/machxo2-spi.c", i32 194, i32 18}
!32 = !{ptr @machxo2_write_init.erase, !33, !"erase", i1 false, i1 false}
!33 = !{!"../drivers/fpga/machxo2-spi.c", i32 195, i32 18}
!34 = !{ptr @machxo2_write_init.initaddr, !35, !"initaddr", i1 false, i1 false}
!35 = !{!"../drivers/fpga/machxo2-spi.c", i32 196, i32 18}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/fpga/machxo2-spi.c", i32 201, i32 3}
!38 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @machxo2_write_init._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @machxo2_write_init._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/fpga/machxo2-spi.c", i32 247, i32 2}
!43 = !{ptr @machxo2_write_init._entry.9, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @machxo2_write_init._entry_ptr.11, !42, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"progincr", i1 false, i1 false}
!46 = !{!"../drivers/fpga/machxo2-spi.c", i32 258, i32 18}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/fpga/machxo2-spi.c", i32 264, i32 3}
!49 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @machxo2_write._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @machxo2_write._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/fpga/machxo2-spi.c", i32 281, i32 4}
!54 = !{ptr @machxo2_write._entry.14, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @machxo2_write._entry_ptr.16, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @machxo2_write_complete.progdone, !57, !"progdone", i1 false, i1 false}
!57 = !{!"../drivers/fpga/machxo2-spi.c", i32 297, i32 18}
!58 = !{ptr @machxo2_write_complete.refresh, !59, !"refresh", i1 false, i1 false}
!59 = !{!"../drivers/fpga/machxo2-spi.c", i32 298, i32 18}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/fpga/machxo2-spi.c", i32 351, i32 2}
!62 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @machxo2_write_complete._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @machxo2_write_complete._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @machxo2_cleanup.erase, !66, !"erase", i1 false, i1 false}
!66 = !{!"../drivers/fpga/machxo2-spi.c", i32 140, i32 18}
!67 = !{ptr @machxo2_cleanup.refresh, !68, !"refresh", i1 false, i1 false}
!68 = !{!"../drivers/fpga/machxo2-spi.c", i32 141, i32 18}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/fpga/machxo2-spi.c", i32 169, i32 2}
!71 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @machxo2_cleanup._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @machxo2_cleanup._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @of_match, !75, !"of_match", i1 false, i1 false}
!75 = !{!"../drivers/fpga/machxo2-spi.c", i32 379, i32 34}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"auto-init"}
