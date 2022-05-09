; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-hisi.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-hisi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.hisi_i2c_controller = type { %struct.i2c_adapter, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i16, i32, %struct.i2c_timings, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_hisi__318_500_hisi_i2c_driver_init6 = internal global ptr @hisi_i2c_driver_init, section ".initcall6.init", align 4
@hisi_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hisi_i2c_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @hisi_i2c_acpi_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hisi_i2c_driver_exit = internal global ptr @hisi_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author319 = internal constant [55 x i8] c"i2c_hisi.author=Yicong Yang <yangyicong@hisilicon.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description320 = internal constant [53 x i8] c"i2c_hisi.description=HiSilicon I2C Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file321 = internal constant [42 x i8] c"i2c_hisi.file=drivers/i2c/busses/i2c-hisi\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [21 x i8] c"i2c_hisi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hisi-i2c\00", [23 x i8] zeroinitializer }, align 32
@hisi_i2c_acpi_ids = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"HISI03D1\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hisi_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 454, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to request irq handler, ret = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hisi_i2c_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/i2c/busses/i2c-hisi.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hisi_i2c_probe._entry_ptr = internal global ptr @hisi_i2c_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_rate\00", [23 x i8] zeroinitializer }, align 32
@hisi_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 460, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get clock frequency, ret = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@hisi_i2c_probe._entry_ptr.9 = internal global ptr @hisi_i2c_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HiSilicon I2C Controller %s\00", [36 x i8] zeroinitializer }, align 32
@hisi_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @hisi_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @hisi_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@hisi_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 482, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"speed mode is %s. hw version 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hisi_i2c_probe._entry_ptr.14 = internal global ptr @hisi_i2c_probe._entry.11, section ".printk_index", align 4
@hisi_i2c_master_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 209, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bus transfer timeout\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hisi_i2c_master_xfer\00", [43 x i8] zeroinitializer }, align 32
@hisi_i2c_master_xfer._entry_ptr = internal global ptr @hisi_i2c_master_xfer._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@hisi_i2c_handle_errors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 134, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rx fifo error read\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"hisi_i2c_handle_errors\00", [41 x i8] zeroinitializer }, align 32
@hisi_i2c_handle_errors._entry_ptr = internal global ptr @hisi_i2c_handle_errors._entry, section ".printk_index", align 4
@hisi_i2c_handle_errors._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rx fifo error write\0A\00", [43 x i8] zeroinitializer }, align 32
@hisi_i2c_handle_errors._entry_ptr.22 = internal global ptr @hisi_i2c_handle_errors._entry.20, section ".printk_index", align 4
@hisi_i2c_handle_errors._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.3, i32 140, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tx fifo error read\0A\00", [44 x i8] zeroinitializer }, align 32
@hisi_i2c_handle_errors._entry_ptr.25 = internal global ptr @hisi_i2c_handle_errors._entry.23, section ".printk_index", align 4
@hisi_i2c_handle_errors._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.3, i32 143, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tx fifo error write\0A\00", [43 x i8] zeroinitializer }, align 32
@hisi_i2c_handle_errors._entry_ptr.28 = internal global ptr @hisi_i2c_handle_errors._entry.26, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 400000, i64 3400000]
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"hisi_i2c_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 493, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 496, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"hisi_i2c_acpi_ids\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 487, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 454, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 458, i32 38 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 460, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 470, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"hisi_i2c_algo\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 229, i32 35 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 481, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 209, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 87, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 134, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 137, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 140, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [33 x i8] c"../drivers/i2c/busses/i2c-hisi.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 143, i32 4 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_description320, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_hisi_i2c_driver_exit, ptr @__initcall__kmod_i2c_hisi__318_500_hisi_i2c_driver_init6, ptr @hisi_i2c_driver_exit, ptr @hisi_i2c_handle_errors._entry, ptr @hisi_i2c_handle_errors._entry.20, ptr @hisi_i2c_handle_errors._entry.23, ptr @hisi_i2c_handle_errors._entry.26, ptr @hisi_i2c_handle_errors._entry_ptr, ptr @hisi_i2c_handle_errors._entry_ptr.22, ptr @hisi_i2c_handle_errors._entry_ptr.25, ptr @hisi_i2c_handle_errors._entry_ptr.28, ptr @hisi_i2c_master_xfer._entry, ptr @hisi_i2c_master_xfer._entry_ptr, ptr @hisi_i2c_probe._entry, ptr @hisi_i2c_probe._entry.11, ptr @hisi_i2c_probe._entry.7, ptr @hisi_i2c_probe._entry_ptr, ptr @hisi_i2c_probe._entry_ptr.14, ptr @hisi_i2c_probe._entry_ptr.9, ptr @hisi_i2c_driver, ptr @.str, ptr @hisi_i2c_acpi_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @hisi_i2c_algo, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @init_completion.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_i2c_acpi_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_i2c_master_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_i2c_handle_errors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_i2c_handle_errors._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_i2c_handle_errors._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_i2c_handle_errors._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hisi_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hisi_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @hisi_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %clk_rate_hz = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %clk_rate_hz) #8
  %0 = ptrtoint ptr %clk_rate_hz to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %clk_rate_hz, align 8, !annotation !73
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1448, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %iobase = getelementptr inbounds %struct.hisi_i2c_controller, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %iobase to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %iobase, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.hisi_i2c_controller, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call9, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %dev14 = getelementptr inbounds %struct.hisi_i2c_controller, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev14, align 4
  %5 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iobase, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !74
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 8
  %call.i358 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %8, ptr noundef nonnull @hisi_i2c_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i358)
  %tobool17.not = icmp eq i32 %call.i358, 0
  br i1 %tobool17.not, label %if.end19, label %do.end

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call.i358) #11
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %call.i359 = call i32 @device_property_read_u64_array(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull %clk_rate_hz, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i359)
  %tobool21.not = icmp eq i32 %call.i359, 0
  br i1 %tobool21.not, label %if.end211, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call.i359) #11
  br label %cleanup

if.end211:                                        ; preds = %if.end19
  %9 = ptrtoint ptr %clk_rate_hz to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %clk_rate_hz, align 8
  %sub = add i64 %10, 999
  %11 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub, i32 0) #12, !srcloc !75
  %asmresult.i = extractvalue { i64, i32 } %11, 0
  %asmresult4.i = extractvalue { i64, i32 } %11, 1
  %12 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub, i64 %asmresult.i, i32 %asmresult4.i) #12, !srcloc !76
  %asmresult10.i = extractvalue { i64, i32 } %12, 0
  %extract356 = lshr i64 %asmresult10.i, 9
  %extract.t357 = trunc i64 %extract356 to i32
  %clk_rate_khz = getelementptr inbounds %struct.hisi_i2c_controller, ptr %call.i, i32 0, i32 14
  %13 = ptrtoint ptr %clk_rate_khz to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %extract.t357, ptr %clk_rate_khz, align 8
  %14 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev14, align 4
  %t.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %call.i, i32 0, i32 13
  call void @i2c_parse_fw_timings(ptr noundef %15, ptr noundef %t.i, i1 noundef zeroext true) #8
  %16 = ptrtoint ptr %clk_rate_khz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %clk_rate_khz, align 8
  %digital_filter_width_ns.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %call.i, i32 0, i32 13, i32 6
  %18 = ptrtoint ptr %digital_filter_width_ns.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %digital_filter_width_ns.i, align 8
  %mul.i = mul i32 %19, %17
  %conv.i = zext i32 %mul.i to i64
  %sub.i = add nuw nsw i64 %conv.i, 999999
  %20 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i) #12, !srcloc !77
  %21 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i, i64 %20, i32 0) #12, !srcloc !76
  %asmresult10.i.i = extractvalue { i64, i32 } %21, 0
  %div164711.i = lshr i64 %asmresult10.i.i, 18
  %extract.t712.i = trunc i64 %div164711.i to i32
  %spk_len.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %call.i, i32 0, i32 15
  %22 = ptrtoint ptr %spk_len.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %extract.t712.i, ptr %spk_len.i, align 4
  %23 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %t.i, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %sw.default.i [
    i32 400000, label %sw.bb.i
    i32 3400000, label %sw.bb189.i
  ]

sw.bb.i:                                          ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @hisi_i2c_set_scl(ptr noundef nonnull %call.i, i32 noundef 26, i32 noundef 76, i32 noundef 24, i32 noundef 28) #8
  br label %if.end450.i

sw.bb189.i:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @hisi_i2c_set_scl(ptr noundef nonnull %call.i, i32 noundef 6, i32 noundef 22, i32 noundef 32, i32 noundef 36) #8
  br label %if.end450.i

sw.default.i:                                     ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 100000, ptr %t.i, align 8
  call fastcc void @hisi_i2c_set_scl(ptr noundef nonnull %call.i, i32 noundef 40, i32 noundef 87, i32 noundef 16, i32 noundef 20) #8
  br label %if.end450.i

if.end450.i:                                      ; preds = %sw.default.i, %sw.bb189.i, %sw.bb.i
  %speed_mode.0.i = phi i32 [ 0, %sw.default.i ], [ 2, %sw.bb189.i ], [ 1, %sw.bb.i ]
  %27 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iobase, align 8
  %29 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #8, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  %30 = and i32 %29, -50331649
  %31 = call i32 @llvm.bswap.i32(i32 %30) #8
  %or218.i = or i32 %31, %speed_mode.0.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  call void @arm_heavy_mb() #8
  %32 = call i32 @llvm.bswap.i32(i32 %or218.i) #8
  %33 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iobase, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #8, !srcloc !74
  %35 = ptrtoint ptr %clk_rate_khz to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %clk_rate_khz, align 8
  %sda_hold_ns.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %call.i, i32 0, i32 13, i32 5
  %37 = ptrtoint ptr %sda_hold_ns.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sda_hold_ns.i, align 4
  %mul227.i = mul i32 %38, %36
  %conv228.i = zext i32 %mul227.i to i64
  %sub230.i = add nuw nsw i64 %conv228.i, 999999
  %39 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub230.i) #12, !srcloc !77
  %40 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub230.i, i64 %39, i32 0) #12, !srcloc !76
  %asmresult10.i716.i = extractvalue { i64, i32 } %40, 0
  %div426713.i = lshr i64 %asmresult10.i716.i, 18
  %extract.t715.i = trunc i64 %div426713.i to i32
  %and477.i = and i32 %extract.t715.i, 65535
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  call void @arm_heavy_mb() #8
  %41 = call i32 @llvm.bswap.i32(i32 %and477.i) #8
  %42 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iobase, align 8
  %add.ptr482.i = getelementptr i8, ptr %43, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr482.i, i32 %41) #8, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %spk_len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %spk_len.i, align 4
  %46 = call i32 @llvm.bswap.i32(i32 %45) #8
  %47 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iobase, align 8
  %add.ptr488.i = getelementptr i8, ptr %48, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr488.i, i32 %46) #8, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iobase, align 8
  %add.ptr526.i = getelementptr i8, ptr %50, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr526.i, i32 -268369920) #8, !srcloc !74
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %51 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %52, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end450.i.dev_name.exit_crit_edge

if.end450.i.dev_name.exit_crit_edge:              ; preds = %if.end450.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end450.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end450.i.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %54, %if.end.i ], [ %52, %if.end450.i.dev_name.exit_crit_edge ]
  %call217 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 48, ptr noundef nonnull @.str.10, ptr noundef %retval.0.i)
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %call.i, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %56 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @hisi_i2c_algo, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %57 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev1, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call219 = call i32 @devm_i2c_add_adapter(ptr noundef %dev1, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %tobool220.not = icmp eq i32 %call219, 0
  br i1 %tobool220.not, label %if.end222, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end222:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iobase, align 8
  %add.ptr = getelementptr i8, ptr %60, i32 88
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !78
  %62 = call i32 @llvm.bswap.i32(i32 %61)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  %63 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev14, align 4
  %65 = ptrtoint ptr %t.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %t.i, align 8
  %call231 = call ptr @i2c_freq_mode_string(i32 noundef %66) #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %64, ptr noundef nonnull @.str.12, ptr noundef %call231, i32 noundef %62) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end222, %dev_name.exit.cleanup_crit_edge, %do.end25, %do.end, %if.end8.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %call.i358, %do.end ], [ %call.i359, %do.end25 ], [ 0, %if.end222 ], [ -12, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call219, %dev_name.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %clk_rate_hz) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_i2c_irq(i32 noundef %irq, ptr nocapture noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.hisi_i2c_controller, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iobase, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 68
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !78
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %4 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iobase, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #8, !srcloc !74
  %and = and i32 %3, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  %msg_tx_idx.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %context, i32 0, i32 7
  %msg_num.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %context, i32 0, i32 6
  %msgs.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %context, i32 0, i32 5
  %buf_tx_idx.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %context, i32 0, i32 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end88.i.while.cond.i_crit_edge, %if.then4
  %need_restart.0.off0.i = phi i1 [ false, %if.then4 ], [ %need_restart.2.off0.lcssa.i, %if.end88.i.while.cond.i_crit_edge ]
  %max_write.0.i = phi i32 [ 64, %if.then4 ], [ %max_write.1.lcssa.i, %if.end88.i.while.cond.i_crit_edge ]
  %6 = ptrtoint ptr %msg_tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_tx_idx.i, align 8
  %8 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i = icmp slt i32 %7, %9
  br i1 %cmp.i, label %while.body.i, label %while.cond.i.if.end5_crit_edge

while.cond.i.if.end5_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

while.body.i:                                     ; preds = %while.cond.i
  %10 = ptrtoint ptr %msgs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msgs.i, align 8
  %sub.i = add nsw i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub.i)
  %cmp4.i = icmp eq i32 %7, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %while.body.i.if.end.i_crit_edge, label %land.lhs.true.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %buf_tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_tx_idx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not.i = icmp eq i32 %13, 0
  %spec.select.i = select i1 %tobool6.not.i, i1 true, i1 %need_restart.0.off0.i
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %while.body.i.if.end.i_crit_edge
  %need_restart.1.off0.i = phi i1 [ %need_restart.0.off0.i, %while.body.i.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %14 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iobase, align 8
  %add.ptr7.i = getelementptr i8, ptr %15, i32 44
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  %17 = and i32 %16, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not140.i = icmp eq i32 %17, 0
  br i1 %tobool10.not140.i, label %land.lhs.true11.lr.ph.i, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

land.lhs.true11.lr.ph.i:                          ; preds = %if.end.i
  %len.i = getelementptr %struct.i2c_msg, ptr %11, i32 %7, i32 2
  %flags.i = getelementptr %struct.i2c_msg, ptr %11, i32 %7, i32 1
  %buf.i = getelementptr %struct.i2c_msg, ptr %11, i32 %7, i32 3
  br label %land.lhs.true11.i

land.lhs.true11.i:                                ; preds = %do.body66.i.land.lhs.true11.i_crit_edge, %land.lhs.true11.lr.ph.i
  %max_write.1142.i = phi i32 [ %max_write.0.i, %land.lhs.true11.lr.ph.i ], [ %dec.i, %do.body66.i.land.lhs.true11.i_crit_edge ]
  %need_restart.2.off0141.i = phi i1 [ %need_restart.1.off0.i, %land.lhs.true11.lr.ph.i ], [ false, %do.body66.i.land.lhs.true11.i_crit_edge ]
  %18 = ptrtoint ptr %buf_tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_tx_idx.i, align 4
  %20 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv.i)
  %cmp13.i = icmp sge i32 %19, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_write.1142.i)
  %tobool15.not.i = icmp eq i32 %max_write.1142.i, 0
  %or.cond.i = select i1 %cmp13.i, i1 true, i1 %tobool15.not.i
  br i1 %or.cond.i, label %land.lhs.true11.i.while.end.i.loopexit_crit_edge, label %while.body16.i

land.lhs.true11.i.while.end.i.loopexit_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.loopexit

while.body16.i:                                   ; preds = %land.lhs.true11.i
  %spec.select135.i = select i1 %need_restart.2.off0141.i, i32 1024, i32 0
  %sub23.i = add nsw i32 %conv.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %sub23.i)
  %cmp24.i = icmp eq i32 %19, %sub23.i
  %or30.i = or i32 %spec.select135.i, 512
  %22 = select i1 %cmp24.i, i1 %cmp4.i, i1 false
  %cmd.1.i = select i1 %22, i32 %or30.i, i32 %spec.select135.i
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags.i, align 2
  %25 = and i16 %24, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool34.not.i = icmp eq i16 %25, 0
  br i1 %tobool34.not.i, label %do.body40.i, label %while.body16.i.do.body66.i_crit_edge

while.body16.i.do.body66.i_crit_edge:             ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body66.i

do.body40.i:                                      ; preds = %while.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf.i, align 4
  %arrayidx.i = getelementptr i8, ptr %27, i32 %19
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i, align 1
  %conv62.i = zext i8 %29 to i32
  br label %do.body66.i

do.body66.i:                                      ; preds = %do.body40.i, %while.body16.i.do.body66.i_crit_edge
  %.sink.i = phi i32 [ %conv62.i, %do.body40.i ], [ 256, %while.body16.i.do.body66.i_crit_edge ]
  %or36.i = or i32 %.sink.i, %cmd.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %or36.i) #8
  %31 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iobase, align 8
  %add.ptr70.i = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i, i32 %30) #8, !srcloc !74
  %33 = ptrtoint ptr %buf_tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %buf_tx_idx.i, align 4
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %buf_tx_idx.i, align 4
  %dec.i = add i32 %max_write.1142.i, -1
  %35 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iobase, align 8
  %add.ptr75.i = getelementptr i8, ptr %36, i32 44
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75.i) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !88
  %38 = and i32 %37, 524288
  %tobool10.not.i = icmp eq i32 %38, 0
  br i1 %tobool10.not.i, label %do.body66.i.land.lhs.true11.i_crit_edge, label %do.body66.i.while.end.i.loopexit_crit_edge

do.body66.i.while.end.i.loopexit_crit_edge:       ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.loopexit

do.body66.i.land.lhs.true11.i_crit_edge:          ; preds = %do.body66.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true11.i

while.end.i.loopexit:                             ; preds = %do.body66.i.while.end.i.loopexit_crit_edge, %land.lhs.true11.i.while.end.i.loopexit_crit_edge
  %need_restart.2.off0.lcssa.i.ph = phi i1 [ false, %do.body66.i.while.end.i.loopexit_crit_edge ], [ %need_restart.2.off0141.i, %land.lhs.true11.i.while.end.i.loopexit_crit_edge ]
  %max_write.1.lcssa.i.ph = phi i32 [ %dec.i, %do.body66.i.while.end.i.loopexit_crit_edge ], [ %max_write.1142.i, %land.lhs.true11.i.while.end.i.loopexit_crit_edge ]
  %39 = xor i1 %or.cond.i, true
  br label %while.end.i

while.end.i:                                      ; preds = %while.end.i.loopexit, %if.end.i.while.end.i_crit_edge
  %need_restart.2.off0.lcssa.i = phi i1 [ %need_restart.1.off0.i, %if.end.i.while.end.i_crit_edge ], [ %need_restart.2.off0.lcssa.i.ph, %while.end.i.loopexit ]
  %max_write.1.lcssa.i = phi i32 [ %max_write.0.i, %if.end.i.while.end.i_crit_edge ], [ %max_write.1.lcssa.i.ph, %while.end.i.loopexit ]
  %tobool10.not.lcssa.i = phi i1 [ true, %if.end.i.while.end.i_crit_edge ], [ %39, %while.end.i.loopexit ]
  %40 = ptrtoint ptr %buf_tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %buf_tx_idx.i, align 4
  %len80.i = getelementptr %struct.i2c_msg, ptr %11, i32 %7, i32 2
  %42 = ptrtoint ptr %len80.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %len80.i, align 4
  %conv81.i = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv81.i)
  %cmp82.i = icmp eq i32 %41, %conv81.i
  br i1 %cmp82.i, label %if.then84.i, label %while.end.i.if.end88.i_crit_edge

while.end.i.if.end88.i_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88.i

if.then84.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %buf_tx_idx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %buf_tx_idx.i, align 4
  %45 = ptrtoint ptr %msg_tx_idx.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %msg_tx_idx.i, align 8
  %inc87.i = add i32 %46, 1
  store i32 %inc87.i, ptr %msg_tx_idx.i, align 8
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then84.i, %while.end.i.if.end88.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_write.1.lcssa.i)
  %cmp91.i = icmp eq i32 %max_write.1.lcssa.i, 0
  %or.cond138.i = select i1 %tobool10.not.lcssa.i, i1 true, i1 %cmp91.i
  br i1 %or.cond138.i, label %if.end88.i.if.end5_crit_edge, label %if.end88.i.while.cond.i_crit_edge

if.end88.i.while.cond.i_crit_edge:                ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

if.end88.i.if.end5_crit_edge:                     ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %if.end88.i.if.end5_crit_edge, %while.cond.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %and6 = and i32 %3, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %xfer_err = getelementptr inbounds %struct.hisi_i2c_controller, ptr %context, i32 0, i32 12
  %47 = ptrtoint ptr %xfer_err to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %3, ptr %xfer_err, align 4
  br label %out

if.end9:                                          ; preds = %if.end5
  %and10 = and i32 %3, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.out_crit_edge, label %if.then12

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then12:                                        ; preds = %if.end9
  %msg_rx_idx.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %context, i32 0, i32 9
  %msg_num.i37 = getelementptr inbounds %struct.hisi_i2c_controller, ptr %context, i32 0, i32 6
  %48 = ptrtoint ptr %msg_rx_idx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msg_rx_idx.i, align 8
  %50 = ptrtoint ptr %msg_num.i37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %msg_num.i37, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %51)
  %cmp5.i = icmp slt i32 %49, %51
  br i1 %cmp5.i, label %while.body.lr.ph.i, label %if.then12.out_crit_edge

if.then12.out_crit_edge:                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

while.body.lr.ph.i:                               ; preds = %if.then12
  %msgs.i38 = getelementptr inbounds %struct.hisi_i2c_controller, ptr %context, i32 0, i32 5
  %buf_rx_idx.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %context, i32 0, i32 10
  br label %while.body.i42

while.body.i42:                                   ; preds = %while.cond.backedge.i.while.body.i42_crit_edge, %while.body.lr.ph.i
  %52 = phi i32 [ %49, %while.body.lr.ph.i ], [ %60, %while.cond.backedge.i.while.body.i42_crit_edge ]
  %53 = ptrtoint ptr %msgs.i38 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %msgs.i38, align 8
  %flags.i40 = getelementptr %struct.i2c_msg, ptr %54, i32 %52, i32 1
  %55 = ptrtoint ptr %flags.i40 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %flags.i40, align 2
  %57 = and i16 %56, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool.not.i41 = icmp eq i16 %57, 0
  br i1 %tobool.not.i41, label %if.then.i, label %if.end.i45

if.then.i:                                        ; preds = %while.body.i42
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i43 = add nsw i32 %52, 1
  %58 = ptrtoint ptr %msg_rx_idx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %inc.i43, ptr %msg_rx_idx.i, align 8
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end38.i.while.cond.backedge.i_crit_edge, %if.then.i
  %59 = ptrtoint ptr %msg_rx_idx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %msg_rx_idx.i, align 8
  %61 = ptrtoint ptr %msg_num.i37 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msg_num.i37, align 4
  %cmp.i44 = icmp slt i32 %60, %62
  br i1 %cmp.i44, label %while.cond.backedge.i.while.body.i42_crit_edge, label %while.cond.backedge.i.out_crit_edge

while.cond.backedge.i.out_crit_edge:              ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

while.cond.backedge.i.while.body.i42_crit_edge:   ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i42

if.end.i45:                                       ; preds = %while.body.i42
  %63 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %iobase, align 8
  %add.ptr3.i = getelementptr i8, ptr %64, i32 44
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  %66 = and i32 %65, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool7.not2.i = icmp eq i32 %66, 0
  br i1 %tobool7.not2.i, label %land.rhs.lr.ph.i, label %if.end.i45.while.end.i49_crit_edge

if.end.i45.while.end.i49_crit_edge:               ; preds = %if.end.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i49

land.rhs.lr.ph.i:                                 ; preds = %if.end.i45
  %len.i46 = getelementptr %struct.i2c_msg, ptr %54, i32 %52, i32 2
  %buf.i47 = getelementptr %struct.i2c_msg, ptr %54, i32 %52, i32 3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body11.i.land.rhs.i_crit_edge, %land.rhs.lr.ph.i
  %67 = ptrtoint ptr %buf_rx_idx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %buf_rx_idx.i, align 4
  %69 = ptrtoint ptr %len.i46 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %len.i46, align 4
  %conv8.i = zext i16 %70 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %conv8.i)
  %cmp9.i = icmp slt i32 %68, %conv8.i
  br i1 %cmp9.i, label %while.body11.i, label %land.rhs.i.while.end.loopexit.i_crit_edge

land.rhs.i.while.end.loopexit.i_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.loopexit.i

while.body11.i:                                   ; preds = %land.rhs.i
  %71 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iobase, align 8
  %add.ptr15.i = getelementptr i8, ptr %72, i32 12
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #8, !srcloc !78
  %74 = lshr i32 %73, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !90
  %conv19.i = trunc i32 %74 to i8
  %75 = ptrtoint ptr %buf.i47 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %buf.i47, align 4
  %77 = ptrtoint ptr %buf_rx_idx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %buf_rx_idx.i, align 4
  %inc21.i = add i32 %78, 1
  store i32 %inc21.i, ptr %buf_rx_idx.i, align 4
  %arrayidx.i48 = getelementptr i8, ptr %76, i32 %78
  %79 = ptrtoint ptr %arrayidx.i48 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv19.i, ptr %arrayidx.i48, align 1
  %80 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %iobase, align 8
  %add.ptr25.i = getelementptr i8, ptr %81, i32 44
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #8, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !91
  %83 = and i32 %82, 134217728
  %tobool7.not.i = icmp eq i32 %83, 0
  br i1 %tobool7.not.i, label %while.body11.i.land.rhs.i_crit_edge, label %while.body11.i.while.end.loopexit.i_crit_edge

while.body11.i.while.end.loopexit.i_crit_edge:    ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.loopexit.i

while.body11.i.land.rhs.i_crit_edge:              ; preds = %while.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.end.loopexit.i:                             ; preds = %while.body11.i.while.end.loopexit.i_crit_edge, %land.rhs.i.while.end.loopexit.i_crit_edge
  %84 = xor i1 %cmp9.i, true
  br label %while.end.i49

while.end.i49:                                    ; preds = %while.end.loopexit.i, %if.end.i45.while.end.i49_crit_edge
  %tobool7.not.lcssa.i = phi i1 [ false, %if.end.i45.while.end.i49_crit_edge ], [ %84, %while.end.loopexit.i ]
  %85 = ptrtoint ptr %buf_rx_idx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %buf_rx_idx.i, align 4
  %len30.i = getelementptr %struct.i2c_msg, ptr %54, i32 %52, i32 2
  %87 = ptrtoint ptr %len30.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %len30.i, align 4
  %conv31.i = zext i16 %88 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %conv31.i)
  %cmp32.i = icmp eq i32 %86, %conv31.i
  br i1 %cmp32.i, label %if.then34.i, label %while.end.i49.if.end38.i_crit_edge

while.end.i49.if.end38.i_crit_edge:               ; preds = %while.end.i49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then34.i:                                      ; preds = %while.end.i49
  call void @__sanitizer_cov_trace_pc() #10
  %89 = ptrtoint ptr %buf_rx_idx.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %buf_rx_idx.i, align 4
  %90 = ptrtoint ptr %msg_rx_idx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %msg_rx_idx.i, align 8
  %inc37.i = add i32 %91, 1
  store i32 %inc37.i, ptr %msg_rx_idx.i, align 8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then34.i, %while.end.i49.if.end38.i_crit_edge
  br i1 %tobool7.not.lcssa.i, label %if.end38.i.while.cond.backedge.i_crit_edge, label %if.end38.i.out_crit_edge

if.end38.i.out_crit_edge:                         ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end38.i.while.cond.backedge.i_crit_edge:       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.backedge.i

out:                                              ; preds = %if.end38.i.out_crit_edge, %while.cond.backedge.i.out_crit_edge, %if.then12.out_crit_edge, %if.end9.out_crit_edge, %if.then8
  %and15 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %out.if.then19_crit_edge

out.if.then19_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

lor.lhs.false:                                    ; preds = %out
  %xfer_err17 = getelementptr inbounds %struct.hisi_i2c_controller, ptr %context, i32 0, i32 12
  %92 = ptrtoint ptr %xfer_err17 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %xfer_err17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool18.not = icmp eq i32 %93, 0
  br i1 %tobool18.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %out.if.then19_crit_edge
  %94 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %iobase, align 8
  %add.ptr.i51 = getelementptr i8, ptr %95, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 0) #8, !srcloc !74
  %96 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %iobase, align 8
  %add.ptr.i53 = getelementptr i8, ptr %97, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 520093696) #8, !srcloc !74
  %completion = getelementptr inbounds %struct.hisi_i2c_controller, ptr %context, i32 0, i32 4
  %98 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %completion, align 4
  tail call void @complete(ptr noundef %99) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then19 ], [ 1, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_i2c_add_adapter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_freq_mode_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u64_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hisi_i2c_set_scl(ptr nocapture noundef readonly %ctlr, i32 noundef %divide, i32 noundef %divisor, i32 noundef %reg_hcnt, i32 noundef %reg_lcnt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_rate_khz = getelementptr inbounds %struct.hisi_i2c_controller, ptr %ctlr, i32 0, i32 14
  %0 = ptrtoint ptr %clk_rate_khz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_rate_khz, align 8
  %mul = mul i32 %1, 1000
  %conv = zext i32 %mul to i64
  %t = getelementptr inbounds %struct.hisi_i2c_controller, ptr %ctlr, i32 0, i32 13
  %2 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %t, align 8
  %conv1 = zext i32 %3 to i64
  %add = add nsw i64 %conv1, -1
  %sub = add nsw i64 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp172 = icmp ult i64 %sub, 4294967296
  br i1 %cmp172, label %if.then176, label %if.else182, !prof !92

if.then176:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv177 = trunc i64 %sub to i32
  %div180 = udiv i32 %conv177, %3
  br label %if.end186

if.else182:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %sub) #12, !srcloc !93
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t1310 = trunc i64 %asmresult1.i to i32
  br label %if.end186

if.end186:                                        ; preds = %if.else182, %if.then176
  %_tmp.0.off0 = phi i32 [ %div180, %if.then176 ], [ %extract.t1310, %if.else182 ]
  %mul191 = mul i32 %_tmp.0.off0, %divide
  %conv192 = zext i32 %mul191 to i64
  %conv193 = zext i32 %divisor to i64
  %add194 = add nsw i64 %conv193, -1
  %sub195 = add nsw i64 %add194, %conv192
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub195)
  %cmp397 = icmp ult i64 %sub195, 4294967296
  br i1 %cmp397, label %if.then405, label %if.else411, !prof !92

if.then405:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  %conv406 = trunc i64 %sub195 to i32
  %div409 = udiv i32 %conv406, %divisor
  br label %if.end876

if.else411:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %divisor, i64 %sub195) #12, !srcloc !93
  %asmresult1.i1249 = extractvalue { i64, i64 } %5, 1
  %extract.t1315 = trunc i64 %asmresult1.i1249 to i32
  br label %if.end876

if.end876:                                        ; preds = %if.else411, %if.then405
  %_tmp190.0.off0 = phi i32 [ %div409, %if.then405 ], [ %extract.t1315, %if.else411 ]
  %scl_fall_ns = getelementptr inbounds %struct.hisi_i2c_controller, ptr %ctlr, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %scl_fall_ns to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scl_fall_ns, align 8
  %mul423 = mul i32 %7, %1
  %conv424 = zext i32 %mul423 to i64
  %sub426 = add nuw nsw i64 %conv424, 999999
  %8 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub426) #12, !srcloc !77
  %9 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub426, i64 %8, i32 0) #12, !srcloc !76
  %asmresult10.i1254 = extractvalue { i64, i32 } %9, 0
  %div6221218 = lshr i64 %asmresult10.i1254, 18
  %extract.t1219 = trunc i64 %div6221218 to i32
  %scl_rise_ns = getelementptr inbounds %struct.hisi_i2c_controller, ptr %ctlr, i32 0, i32 13, i32 1
  %10 = ptrtoint ptr %scl_rise_ns to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scl_rise_ns, align 4
  %mul653 = mul i32 %11, %1
  %conv654 = zext i32 %mul653 to i64
  %sub656 = add nuw nsw i64 %conv654, 999999
  %12 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub656) #12, !srcloc !77
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub656, i64 %12, i32 0) #12, !srcloc !76
  %asmresult10.i1261 = extractvalue { i64, i32 } %13, 0
  %div8521220 = lshr i64 %asmresult10.i1261, 18
  %extract.t1222 = trunc i64 %div8521220 to i32
  %spk_len = getelementptr inbounds %struct.hisi_i2c_controller, ptr %ctlr, i32 0, i32 15
  %14 = ptrtoint ptr %spk_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %spk_len, align 4
  %.neg1316 = add i32 %_tmp190.0.off0, -7
  %16 = add i32 %15, %extract.t1219
  %sub882 = sub i32 %.neg1316, %16
  %17 = xor i32 %_tmp190.0.off0, -1
  %sub883 = add i32 %_tmp.0.off0, %17
  %sub884 = sub i32 %sub883, %extract.t1222
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !94
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %sub882)
  %iobase = getelementptr inbounds %struct.hisi_i2c_controller, ptr %ctlr, i32 0, i32 1
  %19 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %iobase, align 8
  %add.ptr = getelementptr i8, ptr %20, i32 %reg_hcnt
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @arm_heavy_mb() #8
  %21 = tail call i32 @llvm.bswap.i32(i32 %sub884)
  %22 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iobase, align 8
  %add.ptr889 = getelementptr i8, ptr %23, i32 %reg_lcnt
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr889, i32 %21) #8, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_i2c_master_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #8
  %2 = getelementptr inbounds i8, ptr %done, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  %4 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #8
  %msg_num.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %1, i32 0, i32 6
  %xfer_err.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %xfer_err.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %xfer_err.i, align 4
  %6 = getelementptr inbounds %struct.hisi_i2c_controller, ptr %1, i32 0, i32 7
  %7 = call ptr @memset(ptr %6, i32 0, i32 16)
  %completion = getelementptr inbounds %struct.hisi_i2c_controller, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %done, ptr %completion, align 4
  %9 = ptrtoint ptr %msg_num.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %num, ptr %msg_num.i, align 4
  %msgs1 = getelementptr inbounds %struct.hisi_i2c_controller, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %msgs1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msgs, ptr %msgs1, align 8
  %iobase.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iobase.i, align 8
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !96
  %14 = and i32 %13, -67108865
  %15 = call i32 @llvm.bswap.i32(i32 %14) #8
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags.i, align 2
  %18 = lshr i16 %17, 2
  %19 = and i16 %18, 4
  %20 = zext i16 %19 to i32
  %21 = or i32 %15, %20
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !97
  call void @arm_heavy_mb() #8
  %22 = call i32 @llvm.bswap.i32(i32 %21) #8
  %23 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iobase.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #8, !srcloc !74
  %25 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iobase.i, align 8
  %add.ptr8.i = getelementptr i8, ptr %26, i32 4
  %27 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #8, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !98
  %28 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %msgs, align 4
  %30 = and i32 %27, 16580607
  %31 = call i32 @llvm.bswap.i32(i32 %30) #8
  %32 = and i16 %29, 1023
  %and37.i = zext i16 %32 to i32
  %or38.i = or i32 %31, %and37.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  call void @arm_heavy_mb() #8
  %33 = call i32 @llvm.bswap.i32(i32 %or38.i) #8
  %34 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %iobase.i, align 8
  %add.ptr43.i = getelementptr i8, ptr %35, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %33) #8, !srcloc !74
  %36 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iobase.i, align 8
  %add.ptr47.i = getelementptr i8, ptr %37, i32 40
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47.i) #8, !srcloc !78
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  %39 = or i32 %38, 50331648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !101
  call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iobase.i, align 8
  %add.ptr56.i = getelementptr i8, ptr %41, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 %39) #8, !srcloc !74
  %42 = and i32 %38, -50331649
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  call void @arm_heavy_mb() #8
  %43 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iobase.i, align 8
  %add.ptr62.i = getelementptr i8, ptr %44, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %42) #8, !srcloc !74
  %45 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 520093696) #8, !srcloc !74
  %47 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %48, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 520093696) #8, !srcloc !74
  %49 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %completion, align 4
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 7
  %51 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %timeout, align 4
  %call4 = call i32 @wait_for_completion_timeout(ptr noundef %50, i32 noundef %52) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i = getelementptr i8, ptr %54, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !74
  %irq = getelementptr inbounds %struct.hisi_i2c_controller, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %irq, align 8
  call void @synchronize_irq(i32 noundef %56) #8
  %call5 = call i32 @i2c_recover_bus(ptr noundef %1) #8
  %dev = getelementptr inbounds %struct.hisi_i2c_controller, ptr %1, i32 0, i32 2
  %57 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.15) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %num, %entry.if.end_crit_edge ], [ -5, %if.then ]
  %59 = ptrtoint ptr %xfer_err.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %xfer_err.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool6.not = icmp eq i32 %60, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then7:                                         ; preds = %if.end
  %and.i = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then7.if.end8_crit_edge, label %if.then.i

if.then7.if.end8_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then.i:                                        ; preds = %if.then7
  %61 = ptrtoint ptr %iobase.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iobase.i, align 8
  %add.ptr.i28 = getelementptr i8, ptr %62, i32 44
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #8, !srcloc !78
  %64 = call i32 @llvm.bswap.i32(i32 %63) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !103
  %and2.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %1, i32 0, i32 2
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.18) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %and5.i = and i32 %64, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end12.i_crit_edge, label %do.end10.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

do.end10.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev11.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %1, i32 0, i32 2
  %67 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev11.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.21) #11
  br label %if.end12.i

if.end12.i:                                       ; preds = %do.end10.i, %if.end.i.if.end12.i_crit_edge
  %and13.i = and i32 %64, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end12.i.if.end20.i_crit_edge, label %do.end18.i

if.end12.i.if.end20.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

do.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev19.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %1, i32 0, i32 2
  %69 = ptrtoint ptr %dev19.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev19.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.24) #11
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end18.i, %if.end12.i.if.end20.i_crit_edge
  %and21.i = and i32 %64, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %if.end20.i.if.end8_crit_edge, label %do.end26.i

if.end20.i.if.end8_crit_edge:                     ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

do.end26.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev27.i = getelementptr inbounds %struct.hisi_i2c_controller, ptr %1, i32 0, i32 2
  %71 = ptrtoint ptr %dev27.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev27.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.27) #11
  br label %if.end8

if.end8:                                          ; preds = %do.end26.i, %if.end20.i.if.end8_crit_edge, %if.then7.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end.if.end8_crit_edge ], [ -5, %if.then7.if.end8_crit_edge ], [ -5, %if.end20.i.if.end8_crit_edge ], [ -5, %do.end26.i ]
  %73 = ptrtoint ptr %xfer_err.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %xfer_err.i, align 4
  %74 = call ptr @memset(ptr %msg_num.i, i32 0, i32 20)
  %75 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %completion, align 4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #8
  ret i32 %ret.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hisi_i2c_functionality(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592715
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_i2c_hisi__318_500_hisi_i2c_driver_init6, !1, !"__initcall__kmod_i2c_hisi__318_500_hisi_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 500, i32 1}
!2 = !{ptr @__exitcall_hisi_i2c_driver_exit, !1, !"__exitcall_hisi_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author319, !4, !"__UNIQUE_ID_author319", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 502, i32 1}
!5 = !{ptr @__UNIQUE_ID_description320, !6, !"__UNIQUE_ID_description320", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 503, i32 1}
!7 = !{ptr @__UNIQUE_ID_file321, !8, !"__UNIQUE_ID_file321", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 504, i32 1}
!9 = !{ptr @__UNIQUE_ID_license322, !8, !"__UNIQUE_ID_license322", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 496, i32 11}
!12 = !{ptr @hisi_i2c_driver, !13, !"hisi_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 493, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 454, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hisi_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @hisi_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 458, i32 38}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 460, i32 3}
!26 = !{ptr @hisi_i2c_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @hisi_i2c_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 470, i32 4}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 481, i32 2}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @hisi_i2c_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @hisi_i2c_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @hisi_i2c_algo, !36, !"hisi_i2c_algo", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 229, i32 35}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 209, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @hisi_i2c_master_xfer._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @hisi_i2c_master_xfer._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @init_completion.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/completion.h", i32 87, i32 2}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 134, i32 4}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @hisi_i2c_handle_errors._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @hisi_i2c_handle_errors._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 137, i32 4}
!52 = !{ptr @hisi_i2c_handle_errors._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @hisi_i2c_handle_errors._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 140, i32 4}
!56 = !{ptr @hisi_i2c_handle_errors._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @hisi_i2c_handle_errors._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 143, i32 4}
!60 = !{ptr @hisi_i2c_handle_errors._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @hisi_i2c_handle_errors._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @hisi_i2c_acpi_ids, !63, !"hisi_i2c_acpi_ids", i1 false, i1 false}
!63 = !{!"../drivers/i2c/busses/i2c-hisi.c", i32 487, i32 36}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"auto-init"}
!74 = !{i64 6862939}
!75 = !{i64 912272, i64 912299, i64 912321, i64 912349}
!76 = !{i64 912680, i64 912707, i64 912740, i64 912761, i64 912788, i64 912814}
!77 = !{i64 911985, i64 912012}
!78 = !{i64 6863357}
!79 = !{i64 2155698132}
!80 = !{i64 2155738686}
!81 = !{i64 2155784539}
!82 = !{i64 2155784953}
!83 = !{i64 2155868853}
!84 = !{i64 2155879192}
!85 = !{i64 2155666982}
!86 = !{i64 2155621181}
!87 = !{i64 2155665701}
!88 = !{i64 2155666389}
!89 = !{i64 2155619487}
!90 = !{i64 2155620078}
!91 = !{i64 2155620587}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 2148397816, i64 2148398096, i64 2148398430, i64 2148398764}
!94 = !{i64 2155691417}
!95 = !{i64 2155691838}
!96 = !{i64 2155571084}
!97 = !{i64 2155571480}
!98 = !{i64 2155572168}
!99 = !{i64 2155612710}
!100 = !{i64 2155613398}
!101 = !{i64 2155613787}
!102 = !{i64 2155614355}
!103 = !{i64 2155563993}
