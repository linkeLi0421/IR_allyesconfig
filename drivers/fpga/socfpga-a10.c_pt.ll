; ModuleID = '/llk/IR_all_yes/drivers/fpga/socfpga-a10.c_pt.bc'
source_filename = "../drivers/fpga/socfpga-a10.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fpga_manager_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.a10_fpga_priv = type { ptr, ptr, ptr }
%struct.fpga_manager = type { ptr, %struct.device, %struct.mutex, i32, ptr, ptr, ptr }

@__initcall__kmod_socfpga_a10__172_550_socfpga_a10_fpga_driver_init6 = internal global ptr @socfpga_a10_fpga_driver_init, section ".initcall6.init", align 4
@socfpga_a10_fpga_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @socfpga_a10_fpga_probe, ptr @socfpga_a10_fpga_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @socfpga_a10_fpga_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_socfpga_a10_fpga_driver_exit = internal global ptr @socfpga_a10_fpga_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author173 = internal constant [59 x i8] c"socfpga_a10.author=Alan Tull <atull@opensource.altera.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description174 = internal constant [53 x i8] c"socfpga_a10.description=SoCFPGA Arria10 FPGA Manager\00", section ".modinfo", align 1
@__UNIQUE_ID_file175 = internal constant [42 x i8] c"socfpga_a10.file=drivers/fpga/socfpga-a10\00", section ".modinfo", align 1
@__UNIQUE_ID_license176 = internal constant [27 x i8] c"socfpga_a10.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"socfpga_a10_fpga_manager\00", [39 x i8] zeroinitializer }, align 32
@socfpga_a10_fpga_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"altr,socfpga-a10-fpga-mgr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@socfpga_a10_fpga_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@socfpga_a10_fpga_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr @socfpga_a10_fpga_writeable_reg, ptr @socfpga_a10_fpga_readable_reg, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 128, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"socfpga_a10:495:(&socfpga_a10_fpga_regmap_config)->lock\00", [40 x i8] zeroinitializer }, align 32
@socfpga_a10_fpga_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 501, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no clock specified\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"socfpga_a10_fpga_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/fpga/socfpga-a10.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@socfpga_a10_fpga_probe._entry_ptr = internal global ptr @socfpga_a10_fpga_probe._entry, section ".printk_index", align 4
@socfpga_a10_fpga_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 507, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"could not enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@socfpga_a10_fpga_probe._entry_ptr.9 = internal global ptr @socfpga_a10_fpga_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SoCFPGA Arria10 FPGA Manager\00", [35 x i8] zeroinitializer }, align 32
@socfpga_a10_fpga_mgr_ops = internal constant { %struct.fpga_manager_ops, [60 x i8] } { %struct.fpga_manager_ops { i32 920, ptr @socfpga_a10_fpga_state, ptr null, ptr @socfpga_a10_fpga_write_init, ptr @socfpga_a10_fpga_write, ptr null, ptr @socfpga_a10_fpga_write_complete, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@socfpga_a10_fpga_write_init.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 0, i8 72, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"socfpga_a10\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"socfpga_a10_fpga_write_init\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fail: invalid msel=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@socfpga_a10_fpga_write_complete.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.14, ptr @.str.4, ptr @.str.15, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"socfpga_a10_fpga_write_complete\00", [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Timeout in final check. Status=%08xf\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 8, i64 12, i64 112, i64 116, i64 120]
@__sancov_gen_cov_switch_values.16 = internal global [8 x i64] [i64 6, i64 32, i64 8, i64 12, i64 112, i64 116, i64 120, i64 128]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.18 = private unnamed_addr constant [24 x i8] c"socfpga_a10_fpga_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 541, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 545, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [26 x i8] c"socfpga_a10_fpga_of_match\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 534, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [31 x i8] c"socfpga_a10_fpga_regmap_config\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 103, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 494, i32 17 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 501, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 507, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 511, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant [25 x i8] c"socfpga_a10_fpga_mgr_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 460, i32 38 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 291, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [30 x i8] c"../drivers/fpga/socfpga-a10.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 432, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_description174, ptr @__UNIQUE_ID_file175, ptr @__UNIQUE_ID_license176, ptr @__exitcall_socfpga_a10_fpga_driver_exit, ptr @__initcall__kmod_socfpga_a10__172_550_socfpga_a10_fpga_driver_init6, ptr @socfpga_a10_fpga_driver_exit, ptr @socfpga_a10_fpga_probe._entry, ptr @socfpga_a10_fpga_probe._entry.7, ptr @socfpga_a10_fpga_probe._entry_ptr, ptr @socfpga_a10_fpga_probe._entry_ptr.9, ptr @socfpga_a10_fpga_driver, ptr @.str, ptr @socfpga_a10_fpga_of_match, ptr @socfpga_a10_fpga_probe._key, ptr @socfpga_a10_fpga_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @socfpga_a10_fpga_mgr_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_a10_fpga_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_a10_fpga_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_a10_fpga_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_a10_fpga_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_a10_fpga_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_a10_fpga_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_a10_fpga_mgr_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_a10_fpga_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @socfpga_a10_fpga_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @socfpga_a10_fpga_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @socfpga_a10_fpga_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_a10_fpga_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call2) #7
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %call9 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call8) #7
  %fpga_data_addr = getelementptr inbounds %struct.a10_fpga_priv, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %fpga_data_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call9, ptr %fpga_data_addr, align 4
  %cmp.i73 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i73, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  %call16 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call3, ptr noundef nonnull @socfpga_a10_fpga_regmap_config, ptr noundef nonnull @socfpga_a10_fpga_probe._key, ptr noundef nonnull @.str.1) #7
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call16, ptr %call.i, align 4
  %cmp.i74 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.a10_fpga_priv, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call21, ptr %clk, align 4
  %cmp.i75 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %do.end, label %if.end27

do.end:                                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %call.i76 = tail call i32 @clk_prepare(ptr noundef %call21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.not.i = icmp eq i32 %call.i76, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end27.do.end34_crit_edge

if.end27.do.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

if.end.i:                                         ; preds = %if.end27
  %call1.i = tail call i32 @clk_enable(ptr noundef %call21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end35, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call21) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then3.i, %if.end27.do.end34_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end35:                                         ; preds = %if.end.i
  %call36 = tail call ptr @fpga_mgr_register(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull @socfpga_a10_fpga_mgr_ops, ptr noundef nonnull %call.i) #7
  %cmp.i77 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  %10 = ptrtoint ptr %call36 to i32
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call36, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.then38, %do.end34, %do.end, %if.end15.cleanup_crit_edge, %if.then12, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then5 ], [ %2, %if.then12 ], [ %7, %do.end ], [ -16, %do.end34 ], [ %10, %if.then38 ], [ 0, %if.end41 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_a10_fpga_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  tail call void @fpga_mgr_unregister(ptr noundef %1) #7
  %clk = getelementptr inbounds %struct.a10_fpga_priv, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fpga_mgr_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @socfpga_a10_fpga_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.epilog [
    i32 8, label %entry.return_crit_edge
    i32 12, label %entry.return_crit_edge1
    i32 112, label %entry.return_crit_edge2
    i32 116, label %entry.return_crit_edge3
    i32 120, label %entry.return_crit_edge4
  ]

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @socfpga_a10_fpga_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %reg, label %sw.epilog [
    i32 8, label %entry.return_crit_edge
    i32 12, label %entry.return_crit_edge1
    i32 112, label %entry.return_crit_edge2
    i32 116, label %entry.return_crit_edge3
    i32 120, label %entry.return_crit_edge4
    i32 128, label %entry.return_crit_edge5
  ]

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_a10_fpga_state(ptr nocapture noundef readonly %mgr) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !55
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 128, ptr noundef nonnull %val.i) #7
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %and6 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %and10 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %cmp = icmp eq i32 %and10, 0
  %. = select i1 %cmp, i32 3, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 12, %entry.cleanup_crit_edge ], [ 8, %if.end.cleanup_crit_edge ], [ 11, %if.end5.cleanup_crit_edge ], [ %., %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_a10_fpga_write_init(ptr noundef %mgr, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %val.i55 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !55
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 128, ptr noundef nonnull %val.i) #7
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %and2 = lshr i32 %8, 16
  %shr = and i32 %and2, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr)
  %switch = icmp ult i32 %shr, 2
  br i1 %switch, label %if.end11, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @socfpga_a10_fpga_write_init.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@socfpga_a10_fpga_write_init, %if.then9)) #7
          to label %cleanup [label %if.then9], !srcloc !56

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @socfpga_a10_fpga_write_init.__UNIQUE_ID_ddebug170, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %shr) #7
  br label %cleanup

if.end11:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i55) #7
  %9 = ptrtoint ptr %val.i55 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i55, align 4, !annotation !55
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i56 = call i32 @regmap_read(ptr noundef %11, i32 noundef 128, ptr noundef nonnull %val.i55) #7
  %12 = ptrtoint ptr %val.i55 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i55, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i55) #7
  %and13 = and i32 %13, 4112
  call void @__sanitizer_cov_trace_const_cmp4(i32 4112, i32 %and13)
  %cmp14.not = icmp eq i32 %and13, 4112
  br i1 %cmp14.not, label %if.end16, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 120, i32 noundef 16777216, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 920, i32 %count)
  %cmp.i2.i = icmp ult i32 %count, 920
  br i1 %cmp.i2.i, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %16 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv1, align 8
  %arrayidx.i.i = getelementptr i32, ptr %buf, i32 69
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %20 = and i32 %19, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp1.i.i = icmp ne i32 %20, 0
  %arrayidx.i3.i = getelementptr i32, ptr %buf, i32 229
  %21 = ptrtoint ptr %arrayidx.i3.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i3.i, align 4
  %23 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool7.i = icmp eq i32 %23, 0
  %brmerge.i.i = or i1 %cmp1.i.i, %tobool7.i
  %..i.i = select i1 %tobool7.i, i32 131072, i32 65536
  %retval.0.i6.i = select i1 %brmerge.i.i, i32 %..i.i, i32 0
  %24 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %17, align 4
  %call.i.i57 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 120, i32 noundef 196608, i32 noundef %retval.0.i6.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call21 = call i32 @regmap_write(ptr noundef %27, i32 noundef 116, i32 noundef 1) #7
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call.i59 = call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 120, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call25 = call i32 @regmap_write(ptr noundef %31, i32 noundef 112, i32 noundef 263) #7
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call.i60 = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 116, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call fastcc void @socfpga_a10_fpga_generate_dclks(ptr noundef %1, i32 noundef 256)
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call.i61 = call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 116, i32 noundef 65536, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call fastcc void @socfpga_a10_fpga_generate_dclks(ptr noundef %1, i32 noundef 2047)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %36 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %call.i.i62 = call i32 @regmap_read(ptr noundef %38, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %39 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.i = and i32 %40, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %41 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call.i.1.i = call i32 @regmap_read(ptr noundef %43, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %44 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.1.i = and i32 %45, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %for.cond.i.cleanup_crit_edge

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.1.i:                                       ; preds = %for.cond.i
  %and1.1.i = and i32 %45, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.1.i)
  %tobool2.not.1.i = icmp eq i32 %and1.1.i, 0
  br i1 %tobool2.not.1.i, label %for.cond.1.i, label %if.end.1.i.cleanup_crit_edge

if.end.1.i.cleanup_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1.i:                                     ; preds = %if.end.1.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %46 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %call.i.2.i = call i32 @regmap_read(ptr noundef %48, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %49 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.2.i = and i32 %50, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.2.i, label %for.cond.1.i.cleanup_crit_edge

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.2.i:                                       ; preds = %for.cond.1.i
  %and1.2.i = and i32 %50, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.2.i)
  %tobool2.not.2.i = icmp eq i32 %and1.2.i, 0
  br i1 %tobool2.not.2.i, label %for.cond.2.i, label %if.end.2.i.cleanup_crit_edge

if.end.2.i.cleanup_crit_edge:                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2.i:                                     ; preds = %if.end.2.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %51 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %call.i.3.i = call i32 @regmap_read(ptr noundef %53, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %54 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.3.i = and i32 %55, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %if.end.3.i, label %for.cond.2.i.cleanup_crit_edge

for.cond.2.i.cleanup_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.3.i:                                       ; preds = %for.cond.2.i
  %and1.3.i = and i32 %55, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.3.i)
  %tobool2.not.3.i = icmp eq i32 %and1.3.i, 0
  br i1 %tobool2.not.3.i, label %for.cond.3.i, label %if.end.3.i.cleanup_crit_edge

if.end.3.i.cleanup_crit_edge:                     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3.i:                                     ; preds = %if.end.3.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %56 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %call.i.4.i = call i32 @regmap_read(ptr noundef %58, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %59 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.4.i = and i32 %60, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %if.end.4.i, label %for.cond.3.i.cleanup_crit_edge

for.cond.3.i.cleanup_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.4.i:                                       ; preds = %for.cond.3.i
  %and1.4.i = and i32 %60, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.4.i)
  %tobool2.not.4.i = icmp eq i32 %and1.4.i, 0
  br i1 %tobool2.not.4.i, label %for.cond.4.i, label %if.end.4.i.cleanup_crit_edge

if.end.4.i.cleanup_crit_edge:                     ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4.i:                                     ; preds = %if.end.4.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %61 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 4
  %call.i.5.i = call i32 @regmap_read(ptr noundef %63, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %64 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.5.i = and i32 %65, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool.not.5.i, label %if.end.5.i, label %for.cond.4.i.cleanup_crit_edge

for.cond.4.i.cleanup_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.5.i:                                       ; preds = %for.cond.4.i
  %and1.5.i = and i32 %65, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.5.i)
  %tobool2.not.5.i = icmp eq i32 %and1.5.i, 0
  br i1 %tobool2.not.5.i, label %for.cond.5.i, label %if.end.5.i.cleanup_crit_edge

if.end.5.i.cleanup_crit_edge:                     ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.5.i:                                     ; preds = %if.end.5.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %66 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 4
  %call.i.6.i = call i32 @regmap_read(ptr noundef %68, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %69 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.6.i = and i32 %70, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool.not.6.i = icmp eq i32 %and.6.i, 0
  br i1 %tobool.not.6.i, label %if.end.6.i, label %for.cond.5.i.cleanup_crit_edge

for.cond.5.i.cleanup_crit_edge:                   ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.6.i:                                       ; preds = %for.cond.5.i
  %and1.6.i = and i32 %70, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.6.i)
  %tobool2.not.6.i = icmp eq i32 %and1.6.i, 0
  br i1 %tobool2.not.6.i, label %for.cond.6.i, label %if.end.6.i.cleanup_crit_edge

if.end.6.i.cleanup_crit_edge:                     ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.6.i:                                     ; preds = %if.end.6.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %71 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %call.i.7.i = call i32 @regmap_read(ptr noundef %73, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %74 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.7.i = and i32 %75, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %tobool.not.7.i = icmp eq i32 %and.7.i, 0
  br i1 %tobool.not.7.i, label %if.end.7.i, label %for.cond.6.i.cleanup_crit_edge

for.cond.6.i.cleanup_crit_edge:                   ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.7.i:                                       ; preds = %for.cond.6.i
  %and1.7.i = and i32 %75, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.7.i)
  %tobool2.not.7.i = icmp eq i32 %and1.7.i, 0
  br i1 %tobool2.not.7.i, label %for.cond.7.i, label %if.end.7.i.cleanup_crit_edge

if.end.7.i.cleanup_crit_edge:                     ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.7.i:                                     ; preds = %if.end.7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %76 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %call.i.8.i = call i32 @regmap_read(ptr noundef %78, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %79 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.8.i = and i32 %80, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8.i)
  %tobool.not.8.i = icmp eq i32 %and.8.i, 0
  br i1 %tobool.not.8.i, label %if.end.8.i, label %for.cond.7.i.cleanup_crit_edge

for.cond.7.i.cleanup_crit_edge:                   ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.8.i:                                       ; preds = %for.cond.7.i
  %and1.8.i = and i32 %80, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.8.i)
  %tobool2.not.8.i = icmp eq i32 %and1.8.i, 0
  br i1 %tobool2.not.8.i, label %for.cond.8.i, label %if.end.8.i.cleanup_crit_edge

if.end.8.i.cleanup_crit_edge:                     ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.8.i:                                     ; preds = %if.end.8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %81 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  %call.i.9.i = call i32 @regmap_read(ptr noundef %83, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %84 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.9.i = and i32 %85, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9.i)
  %tobool.not.9.i = icmp eq i32 %and.9.i, 0
  br i1 %tobool.not.9.i, label %if.end.9.i, label %for.cond.8.i.cleanup_crit_edge

for.cond.8.i.cleanup_crit_edge:                   ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.9.i:                                       ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #9
  %and1.9.i = and i32 %85, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.9.i)
  %tobool2.not.9.i = icmp eq i32 %and1.9.i, 0
  %spec.select.i = select i1 %tobool2.not.9.i, i32 -110, i32 0
  br label %cleanup

if.end.i:                                         ; preds = %if.end20
  %and1.i = and i32 %40, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %for.cond.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %if.end.9.i, %for.cond.8.i.cleanup_crit_edge, %if.end.8.i.cleanup_crit_edge, %for.cond.7.i.cleanup_crit_edge, %if.end.7.i.cleanup_crit_edge, %for.cond.6.i.cleanup_crit_edge, %if.end.6.i.cleanup_crit_edge, %for.cond.5.i.cleanup_crit_edge, %if.end.5.i.cleanup_crit_edge, %for.cond.4.i.cleanup_crit_edge, %if.end.4.i.cleanup_crit_edge, %for.cond.3.i.cleanup_crit_edge, %if.end.3.i.cleanup_crit_edge, %for.cond.2.i.cleanup_crit_edge, %if.end.2.i.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %if.end.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then9, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then9 ], [ -22, %if.end11.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ], [ 0, %if.end.1.i.cleanup_crit_edge ], [ -22, %for.cond.1.i.cleanup_crit_edge ], [ 0, %if.end.2.i.cleanup_crit_edge ], [ -22, %for.cond.2.i.cleanup_crit_edge ], [ 0, %if.end.3.i.cleanup_crit_edge ], [ -22, %for.cond.3.i.cleanup_crit_edge ], [ 0, %if.end.4.i.cleanup_crit_edge ], [ -22, %for.cond.4.i.cleanup_crit_edge ], [ 0, %if.end.5.i.cleanup_crit_edge ], [ -22, %for.cond.5.i.cleanup_crit_edge ], [ 0, %if.end.6.i.cleanup_crit_edge ], [ -22, %for.cond.6.i.cleanup_crit_edge ], [ 0, %if.end.7.i.cleanup_crit_edge ], [ -22, %for.cond.7.i.cleanup_crit_edge ], [ 0, %if.end.8.i.cleanup_crit_edge ], [ -22, %for.cond.8.i.cleanup_crit_edge ], [ %spec.select.i, %if.end.9.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_a10_fpga_write(ptr nocapture noundef readonly %mgr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp239 = icmp ugt i32 %count, 3
  br i1 %cmp239, label %do.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.body.lr.ph:                                    ; preds = %while.cond.preheader
  %fpga_data_addr = getelementptr inbounds %struct.a10_fpga_priv, ptr %1, i32 0, i32 1
  %2 = add i32 %count, -4
  %3 = lshr i32 %2, 2
  %4 = add nuw nsw i32 %3, 1
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.041 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %count.addr.040 = phi i32 [ %count, %do.body.lr.ph ], [ %sub, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %inc = add nuw nsw i32 %i.041, 1
  %arrayidx = getelementptr i32, ptr %buf, i32 %i.041
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = ptrtoint ptr %fpga_data_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fpga_data_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !58
  %sub = add i32 %count.addr.040, -4
  %exitcond.not = icmp eq i32 %i.041, %3
  br i1 %exitcond.not, label %do.body.while.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %count.addr.0.lcssa = phi i32 [ %count, %while.cond.preheader.while.end_crit_edge ], [ %sub, %do.body.while.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %4, %do.body.while.end_crit_edge ]
  %10 = zext i32 %count.addr.0.lcssa to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %count.addr.0.lcssa, label %while.end.cleanup_crit_edge [
    i32 3, label %do.body3
    i32 2, label %do.body10
    i32 1, label %do.body18
    i32 0, label %while.end.sw.epilog_crit_edge
  ]

while.end.sw.epilog_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body3:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  tail call void @arm_heavy_mb() #7
  %arrayidx7 = getelementptr i32, ptr %buf, i32 %i.0.lcssa
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx7, align 4
  %and = and i32 %12, 16777215
  %13 = tail call i32 @llvm.bswap.i32(i32 %and)
  %fpga_data_addr8 = getelementptr inbounds %struct.a10_fpga_priv, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %fpga_data_addr8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fpga_data_addr8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #7, !srcloc !58
  br label %sw.epilog

do.body10:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  tail call void @arm_heavy_mb() #7
  %arrayidx14 = getelementptr i32, ptr %buf, i32 %i.0.lcssa
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx14, align 4
  %and15 = and i32 %17, 65535
  %18 = tail call i32 @llvm.bswap.i32(i32 %and15)
  %fpga_data_addr16 = getelementptr inbounds %struct.a10_fpga_priv, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %fpga_data_addr16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fpga_data_addr16, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #7, !srcloc !58
  br label %sw.epilog

do.body18:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %arrayidx22 = getelementptr i32, ptr %buf, i32 %i.0.lcssa
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx22, align 4
  %and23 = shl i32 %22, 24
  %fpga_data_addr24 = getelementptr inbounds %struct.a10_fpga_priv, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %fpga_data_addr24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fpga_data_addr24, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %and23) #7, !srcloc !58
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body18, %do.body10, %do.body3, %while.end.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -14, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_a10_fpga_write_complete(ptr noundef %mgr, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 6
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %2 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.i = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

entry.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

for.cond.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i.1.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.1.i = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %for.cond.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

for.cond.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

if.end.1.i:                                       ; preds = %for.cond.i
  %and1.1.i = and i32 %11, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.1.i)
  %tobool2.not.1.i = icmp eq i32 %and1.1.i, 0
  br i1 %tobool2.not.1.i, label %for.cond.1.i, label %if.end.1.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

if.end.1.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

for.cond.1.i:                                     ; preds = %if.end.1.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %12 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call.i.2.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %15 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.2.i = and i32 %16, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.2.i, label %for.cond.1.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

for.cond.1.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

if.end.2.i:                                       ; preds = %for.cond.1.i
  %and1.2.i = and i32 %16, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.2.i)
  %tobool2.not.2.i = icmp eq i32 %and1.2.i, 0
  br i1 %tobool2.not.2.i, label %for.cond.2.i, label %if.end.2.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

if.end.2.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

for.cond.2.i:                                     ; preds = %if.end.2.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %17 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call.i.3.i = call i32 @regmap_read(ptr noundef %19, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %20 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.3.i = and i32 %21, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %if.end.3.i, label %for.cond.2.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

for.cond.2.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

if.end.3.i:                                       ; preds = %for.cond.2.i
  %and1.3.i = and i32 %21, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.3.i)
  %tobool2.not.3.i = icmp eq i32 %and1.3.i, 0
  br i1 %tobool2.not.3.i, label %for.cond.3.i, label %if.end.3.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

if.end.3.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

for.cond.3.i:                                     ; preds = %if.end.3.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %22 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i.4.i = call i32 @regmap_read(ptr noundef %24, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %25 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.4.i = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool.not.4.i, label %if.end.4.i, label %for.cond.3.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

for.cond.3.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

if.end.4.i:                                       ; preds = %for.cond.3.i
  %and1.4.i = and i32 %26, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.4.i)
  %tobool2.not.4.i = icmp eq i32 %and1.4.i, 0
  br i1 %tobool2.not.4.i, label %for.cond.4.i, label %if.end.4.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

if.end.4.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

for.cond.4.i:                                     ; preds = %if.end.4.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %27 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %call.i.5.i = call i32 @regmap_read(ptr noundef %29, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %30 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.5.i = and i32 %31, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool.not.5.i, label %if.end.5.i, label %for.cond.4.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

for.cond.4.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

if.end.5.i:                                       ; preds = %for.cond.4.i
  %and1.5.i = and i32 %31, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.5.i)
  %tobool2.not.5.i = icmp eq i32 %and1.5.i, 0
  br i1 %tobool2.not.5.i, label %for.cond.5.i, label %if.end.5.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

if.end.5.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

for.cond.5.i:                                     ; preds = %if.end.5.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %32 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i.6.i = call i32 @regmap_read(ptr noundef %34, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %35 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.6.i = and i32 %36, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool.not.6.i = icmp eq i32 %and.6.i, 0
  br i1 %tobool.not.6.i, label %if.end.6.i, label %for.cond.5.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

for.cond.5.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

if.end.6.i:                                       ; preds = %for.cond.5.i
  %and1.6.i = and i32 %36, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.6.i)
  %tobool2.not.6.i = icmp eq i32 %and1.6.i, 0
  br i1 %tobool2.not.6.i, label %for.cond.6.i, label %if.end.6.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

if.end.6.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

for.cond.6.i:                                     ; preds = %if.end.6.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %37 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %call.i.7.i = call i32 @regmap_read(ptr noundef %39, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %40 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.7.i = and i32 %41, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %tobool.not.7.i = icmp eq i32 %and.7.i, 0
  br i1 %tobool.not.7.i, label %if.end.7.i, label %for.cond.6.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

for.cond.6.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

if.end.7.i:                                       ; preds = %for.cond.6.i
  %and1.7.i = and i32 %41, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.7.i)
  %tobool2.not.7.i = icmp eq i32 %and1.7.i, 0
  br i1 %tobool2.not.7.i, label %for.cond.7.i, label %if.end.7.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

if.end.7.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

for.cond.7.i:                                     ; preds = %if.end.7.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %42 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %call.i.8.i = call i32 @regmap_read(ptr noundef %44, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %45 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.8.i = and i32 %46, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8.i)
  %tobool.not.8.i = icmp eq i32 %and.8.i, 0
  br i1 %tobool.not.8.i, label %if.end.8.i, label %for.cond.7.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

for.cond.7.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

if.end.8.i:                                       ; preds = %for.cond.7.i
  %and1.8.i = and i32 %46, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.8.i)
  %tobool2.not.8.i = icmp eq i32 %and1.8.i, 0
  br i1 %tobool2.not.8.i, label %for.cond.8.i, label %if.end.8.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

if.end.8.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %if.end.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

for.cond.8.i:                                     ; preds = %if.end.8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %47 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 4
  %call.i.9.i = call i32 @regmap_read(ptr noundef %49, i32 noundef 128, ptr noundef nonnull %val.i.i) #7
  %50 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %and.9.i = and i32 %51, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9.i)
  %tobool.not.9.i = icmp eq i32 %and.9.i, 0
  br i1 %tobool.not.9.i, label %if.end.9.i, label %for.cond.8.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

for.cond.8.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

if.end.9.i:                                       ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #9
  %and1.9.i = and i32 %51, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.9.i)
  %tobool2.not.9.i = icmp eq i32 %and1.9.i, 0
  %spec.select = select i1 %tobool2.not.9.i, i32 -110, i32 0
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

if.end.i:                                         ; preds = %entry
  %and1.i = and i32 %6, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %for.cond.i, label %if.end.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge

if.end.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %socfpga_a10_fpga_wait_for_pr_done.exit

socfpga_a10_fpga_wait_for_pr_done.exit:           ; preds = %if.end.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %if.end.9.i, %for.cond.8.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %if.end.8.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %for.cond.7.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %if.end.7.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %for.cond.6.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %if.end.6.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %for.cond.5.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %if.end.5.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %for.cond.4.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %if.end.4.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %for.cond.3.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %if.end.3.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %for.cond.2.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %if.end.2.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %for.cond.1.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %if.end.1.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %for.cond.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge, %entry.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge
  %retval.0.i37 = phi i32 [ -22, %entry.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ 0, %if.end.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ -22, %for.cond.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ 0, %if.end.1.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ -22, %for.cond.1.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ 0, %if.end.2.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ -22, %for.cond.2.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ 0, %if.end.3.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ -22, %for.cond.3.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ 0, %if.end.4.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ -22, %for.cond.4.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ 0, %if.end.5.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ -22, %for.cond.5.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ 0, %if.end.6.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ -22, %for.cond.6.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ 0, %if.end.7.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ -22, %for.cond.7.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ 0, %if.end.8.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ -22, %for.cond.8.i.socfpga_a10_fpga_wait_for_pr_done.exit_crit_edge ], [ %spec.select, %if.end.9.i ]
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 116, i32 noundef 65536, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call fastcc void @socfpga_a10_fpga_generate_dclks(ptr noundef %1, i32 noundef 256)
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %1, align 4
  %call.i38 = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 120, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 4
  %call.i39 = call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 116, i32 noundef 16777216, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %call.i40 = call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 116, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i37)
  %tobool.not = icmp eq i32 %retval.0.i37, 0
  br i1 %tobool.not, label %if.end, label %socfpga_a10_fpga_wait_for_pr_done.exit.cleanup_crit_edge

socfpga_a10_fpga_wait_for_pr_done.exit.cleanup_crit_edge: ; preds = %socfpga_a10_fpga_wait_for_pr_done.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %socfpga_a10_fpga_wait_for_pr_done.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %60 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %val.i, align 4, !annotation !55
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %call.i41 = call i32 @regmap_read(ptr noundef %62, i32 noundef 128, ptr noundef nonnull %val.i) #7
  %63 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %65 = and i32 %64, 84
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %65)
  %.not = icmp eq i32 %65, 84
  br i1 %.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @socfpga_a10_fpga_write_complete.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@socfpga_a10_fpga_write_complete, %if.then20)) #7
          to label %cleanup [label %if.then20], !srcloc !56

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.fpga_manager, ptr %mgr, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @socfpga_a10_fpga_write_complete.__UNIQUE_ID_ddebug171, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %64) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body, %if.end.cleanup_crit_edge, %socfpga_a10_fpga_wait_for_pr_done.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i37, %socfpga_a10_fpga_wait_for_pr_done.exit.cleanup_crit_edge ], [ -110, %if.then20 ], [ 0, %if.end.cleanup_crit_edge ], [ -110, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @socfpga_a10_fpga_generate_dclks(ptr nocapture noundef readonly %priv, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !55
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv, align 4
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 12, i32 noundef 1) #7
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 8, i32 noundef %count) #7
  %call3 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call3, 100000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 141) #7
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv, align 4
  %call1244 = call i32 @regmap_read(ptr noundef %6, i32 noundef 12, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1244)
  %tobool.not45 = icmp eq i32 %call1244, 0
  br i1 %tobool.not45, label %entry.lor.lhs.false_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then25.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  br i1 %tobool13.not, label %land.lhs.true, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call17 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %if.then20, label %if.then25

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %call22 = call i32 @regmap_read(ptr noundef %10, i32 noundef 12, ptr noundef nonnull %val) #7
  br label %for.end

if.then25:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 1, i32 noundef 1, i32 noundef 2) #7
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %call12 = call i32 @regmap_read(ptr noundef %12, i32 noundef 12, ptr noundef nonnull %val) #7
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then25.lor.lhs.false_crit_edge, label %if.then25.for.end_crit_edge

if.then25.for.end_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then25.lor.lhs.false_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %if.then25.for.end_crit_edge, %if.then20, %lor.lhs.false.for.end_crit_edge, %entry.for.end_crit_edge
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %call33 = call i32 @regmap_write(ptr noundef %14, i32 noundef 12, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fpga_mgr_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !38, !39, !40, !42, !43, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_socfpga_a10__172_550_socfpga_a10_fpga_driver_init6, !1, !"__initcall__kmod_socfpga_a10__172_550_socfpga_a10_fpga_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/fpga/socfpga-a10.c", i32 550, i32 1}
!2 = !{ptr @__exitcall_socfpga_a10_fpga_driver_exit, !1, !"__exitcall_socfpga_a10_fpga_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author173, !4, !"__UNIQUE_ID_author173", i1 false, i1 false}
!4 = !{!"../drivers/fpga/socfpga-a10.c", i32 552, i32 1}
!5 = !{ptr @__UNIQUE_ID_description174, !6, !"__UNIQUE_ID_description174", i1 false, i1 false}
!6 = !{!"../drivers/fpga/socfpga-a10.c", i32 553, i32 1}
!7 = !{ptr @__UNIQUE_ID_file175, !8, !"__UNIQUE_ID_file175", i1 false, i1 false}
!8 = !{!"../drivers/fpga/socfpga-a10.c", i32 554, i32 1}
!9 = !{ptr @__UNIQUE_ID_license176, !8, !"__UNIQUE_ID_license176", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/fpga/socfpga-a10.c", i32 545, i32 11}
!12 = !{ptr @socfpga_a10_fpga_driver, !13, !"socfpga_a10_fpga_driver", i1 false, i1 false}
!13 = !{!"../drivers/fpga/socfpga-a10.c", i32 541, i32 31}
!14 = !{ptr @socfpga_a10_fpga_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/fpga/socfpga-a10.c", i32 494, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/fpga/socfpga-a10.c", i32 501, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @socfpga_a10_fpga_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @socfpga_a10_fpga_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/fpga/socfpga-a10.c", i32 507, i32 3}
!27 = !{ptr @socfpga_a10_fpga_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @socfpga_a10_fpga_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/fpga/socfpga-a10.c", i32 511, i32 31}
!31 = !{ptr @socfpga_a10_fpga_regmap_config, !32, !"socfpga_a10_fpga_regmap_config", i1 false, i1 false}
!32 = !{!"../drivers/fpga/socfpga-a10.c", i32 103, i32 35}
!33 = !{ptr @socfpga_a10_fpga_mgr_ops, !34, !"socfpga_a10_fpga_mgr_ops", i1 false, i1 false}
!34 = !{!"../drivers/fpga/socfpga-a10.c", i32 460, i32 38}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/fpga/socfpga-a10.c", i32 291, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @socfpga_a10_fpga_write_init.__UNIQUE_ID_ddebug170, !36, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/fpga/socfpga-a10.c", i32 432, i32 3}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @socfpga_a10_fpga_write_complete.__UNIQUE_ID_ddebug171, !41, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!44 = !{ptr @socfpga_a10_fpga_of_match, !45, !"socfpga_a10_fpga_of_match", i1 false, i1 false}
!45 = !{!"../drivers/fpga/socfpga-a10.c", i32 534, i32 34}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
!56 = !{i64 2148735466, i64 2148735471, i64 2148735484, i64 2148735528, i64 2148735562, i64 2148735583}
!57 = !{i64 2152595554}
!58 = !{i64 4844772}
!59 = !{i64 2152596006}
!60 = !{i64 2152596497}
!61 = !{i64 2152596988}
