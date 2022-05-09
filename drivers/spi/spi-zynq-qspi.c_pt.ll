; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-zynq-qspi.c_pt.bc'
source_filename = "../drivers/spi/spi-zynq-qspi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.zynq_qspi = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, %struct.completion }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_mem_op = type { %struct.anon.71, %struct.anon.72, %struct.anon.73, %struct.anon.74 }
%struct.anon.71 = type { i8, i8, i8, i16 }
%struct.anon.72 = type { i8, i8, i8, i64 }
%struct.anon.73 = type { i8, i8, i8 }
%struct.anon.74 = type { i8, i8, i32, i32, %union.anon.75 }
%union.anon.75 = type { ptr }

@__initcall__kmod_spi_zynq_qspi__235_775_zynq_qspi_driver_init6 = internal global ptr @zynq_qspi_driver_init, section ".initcall6.init", align 4
@zynq_qspi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @zynq_qspi_probe, ptr @zynq_qspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @zynq_qspi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_zynq_qspi_driver_exit = internal global ptr @zynq_qspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author236 = internal constant [34 x i8] c"spi_zynq_qspi.author=Xilinx, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [50 x i8] c"spi_zynq_qspi.description=Xilinx Zynq QSPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [45 x i8] c"spi_zynq_qspi.file=drivers/spi/spi-zynq-qspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [26 x i8] c"spi_zynq_qspi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"zynq-qspi\00", [22 x i8] zeroinitializer }, align 32
@zynq_qspi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynq-qspi-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@zynq_qspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 655, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pclk clock not found.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zynq_qspi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/spi/spi-zynq-qspi.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zynq_qspi_probe._entry_ptr = internal global ptr @zynq_qspi_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_clk\00", [24 x i8] zeroinitializer }, align 32
@zynq_qspi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 664, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ref_clk clock not found.\0A\00", [38 x i8] zeroinitializer }, align 32
@zynq_qspi_probe._entry_ptr.10 = internal global ptr @zynq_qspi_probe._entry.8, section ".printk_index", align 4
@zynq_qspi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 671, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to enable APB clock.\0A\00", [35 x i8] zeroinitializer }, align 32
@zynq_qspi_probe._entry_ptr.13 = internal global ptr @zynq_qspi_probe._entry.11, section ".printk_index", align 4
@zynq_qspi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 677, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to enable device clock.\0A\00", [32 x i8] zeroinitializer }, align 32
@zynq_qspi_probe._entry_ptr.16 = internal global ptr @zynq_qspi_probe._entry.14, section ".printk_index", align 4
@zynq_qspi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 690, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request_irq failed\0A\00", [44 x i8] zeroinitializer }, align 32
@zynq_qspi_probe._entry_ptr.19 = internal global ptr @zynq_qspi_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"num-cs\00", [25 x i8] zeroinitializer }, align 32
@zynq_qspi_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 700, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"only 2 chip selects are available\0A\00", [61 x i8] zeroinitializer }, align 32
@zynq_qspi_probe._entry_ptr.23 = internal global ptr @zynq_qspi_probe._entry.21, section ".printk_index", align 4
@zynq_qspi_mem_ops = internal constant { %struct.spi_controller_mem_ops, [60 x i8] } { %struct.spi_controller_mem_ops { ptr null, ptr @zynq_qspi_supports_op, ptr @zynq_qspi_exec_mem_op, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@zynq_qspi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 718, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"spi_register_master failed\0A\00", [36 x i8] zeroinitializer }, align 32
@zynq_qspi_probe._entry_ptr.26 = internal global ptr @zynq_qspi_probe._entry.24, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@zynq_qspi_txfifo_op.offset = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 128, i32 132, i32 136, i32 28], [16 x i8] zeroinitializer }, align 32
@zynq_qspi_exec_mem_op.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 -123, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spi_zynq_qspi\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zynq_qspi_exec_mem_op\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cmd:%#x mode:%d.%d.%d.%d\0A\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"zynq_qspi_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 766, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 770, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"zynq_qspi_of_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 756, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 653, i32 41 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 655, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 662, i32 43 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 664, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 671, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 677, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 690, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 694, i32 33 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 700, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"zynq_qspi_mem_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 618, i32 44 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 718, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 87, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 268, i32 28 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [31 x i8] c"../drivers/spi/spi-zynq-qspi.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 532, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_zynq_qspi_driver_exit, ptr @__initcall__kmod_spi_zynq_qspi__235_775_zynq_qspi_driver_init6, ptr @zynq_qspi_driver_exit, ptr @zynq_qspi_probe._entry, ptr @zynq_qspi_probe._entry.11, ptr @zynq_qspi_probe._entry.14, ptr @zynq_qspi_probe._entry.17, ptr @zynq_qspi_probe._entry.21, ptr @zynq_qspi_probe._entry.24, ptr @zynq_qspi_probe._entry.8, ptr @zynq_qspi_probe._entry_ptr, ptr @zynq_qspi_probe._entry_ptr.10, ptr @zynq_qspi_probe._entry_ptr.13, ptr @zynq_qspi_probe._entry_ptr.16, ptr @zynq_qspi_probe._entry_ptr.19, ptr @zynq_qspi_probe._entry_ptr.23, ptr @zynq_qspi_probe._entry_ptr.26, ptr @zynq_qspi_driver, ptr @.str, ptr @zynq_qspi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @zynq_qspi_mem_ops, ptr @.str.25, ptr @init_completion.__key, ptr @.str.27, ptr @zynq_qspi_txfifo_op.offset, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_qspi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_qspi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_qspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_qspi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_qspi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_qspi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_qspi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_qspi_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_qspi_mem_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_qspi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_qspi_txfifo_op.offset to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_qspi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @zynq_qspi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zynq_qspi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @zynq_qspi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_qspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_cs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cs) #7
  %2 = ptrtoint ptr %num_cs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %num_cs, align 4, !annotation !75
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev1, i32 noundef 92, i1 noundef zeroext false) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %4, align 4
  %driver_data.i.i157 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i157 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %driver_data.i.i157, align 4
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %regs = getelementptr inbounds %struct.zynq_qspi, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call5 to i32
  br label %spi_controller_put.exit

if.end11:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %pclk = getelementptr inbounds %struct.zynq_qspi, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call13, ptr %pclk, align 4
  %cmp.i158 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  %10 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pclk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %spi_controller_put.exit

if.end20:                                         ; preds = %if.end11
  %data_completion = getelementptr inbounds %struct.zynq_qspi, ptr %4, i32 0, i32 9
  %13 = ptrtoint ptr %data_completion to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %data_completion, align 4
  %wait.i = getelementptr inbounds %struct.zynq_qspi, ptr %4, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #7
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #7
  %refclk = getelementptr inbounds %struct.zynq_qspi, ptr %4, i32 0, i32 2
  %14 = ptrtoint ptr %refclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call22, ptr %refclk, align 4
  %cmp.i159 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i159, label %do.end28, label %if.end32

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  %15 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %refclk, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %spi_controller_put.exit

if.end32:                                         ; preds = %if.end20
  %18 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pclk, align 4
  %call.i160 = tail call i32 @clk_prepare(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool.not.i = icmp eq i32 %call.i160, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.do.end39_crit_edge

if.end32.do.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end39

if.end.i:                                         ; preds = %if.end32
  %call1.i = tail call i32 @clk_enable(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end41, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %19) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then3.i, %if.end32.do.end39_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i160, %if.end32.do.end39_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %spi_controller_put.exit

if.end41:                                         ; preds = %if.end.i
  %20 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %refclk, align 4
  %call.i161 = tail call i32 @clk_prepare(ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool.not.i162 = icmp eq i32 %call.i161, 0
  br i1 %tobool.not.i162, label %if.end.i165, label %if.end41.do.end48_crit_edge

if.end41.do.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end48

if.end.i165:                                      ; preds = %if.end41
  %call1.i163 = tail call i32 @clk_enable(ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i163)
  %tobool2.not.i164 = icmp eq i32 %call1.i163, 0
  br i1 %tobool2.not.i164, label %if.end50, label %if.then3.i166

if.then3.i166:                                    ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %21) #7
  br label %do.end48

do.end48:                                         ; preds = %if.then3.i166, %if.end41.do.end48_crit_edge
  %retval.0.i167.ph = phi i32 [ %call1.i163, %if.then3.i166 ], [ %call.i161, %if.end41.do.end48_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #10
  br label %clk_dis_pclk

if.end50:                                         ; preds = %if.end.i165
  %call51 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.zynq_qspi, ptr %4, i32 0, i32 4
  %22 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call51, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call51)
  %cmp = icmp slt i32 %call51, 1
  br i1 %cmp, label %if.end50.clk_dis_all_crit_edge, label %if.end54

if.end50.clk_dis_all_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_dis_all

if.end54:                                         ; preds = %if.end50
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 8
  %call.i169 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call51, ptr noundef nonnull @zynq_qspi_irq, ptr noundef null, i32 noundef 0, ptr noundef %24, ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %cmp58.not = icmp eq i32 %call.i169, 0
  br i1 %cmp58.not, label %if.end64, label %if.then59

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %clk_dis_all

if.end64:                                         ; preds = %if.end54
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef nonnull %num_cs, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp66 = icmp slt i32 %call.i.i, 0
  br i1 %cmp66, label %if.end64.if.end77_crit_edge, label %if.else

if.end64.if.end77_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.else:                                          ; preds = %if.end64
  %25 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_cs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp68 = icmp ugt i32 %26, 2
  br i1 %cmp68, label %if.then69, label %if.else74

if.then69:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #10
  br label %clk_dis_all

if.else74:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %26 to i16
  br label %if.end77

if.end77:                                         ; preds = %if.else74, %if.end64.if.end77_crit_edge
  %conv.sink = phi i16 [ %conv, %if.else74 ], [ 1, %if.end64.if.end77_crit_edge ]
  %num_chipselect75 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %num_chipselect75 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.sink, ptr %num_chipselect75, align 2
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3840, ptr %mode_bits, align 8
  %mem_ops = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 53
  %29 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @zynq_qspi_mem_ops, ptr %mem_ops, align 4
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %30 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @zynq_qspi_setup_op, ptr %setup, align 4
  %31 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %refclk, align 4
  %call79 = call i32 @clk_get_rate(ptr noundef %32) #7
  %div156 = lshr i32 %call79, 1
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %33 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %div156, ptr %max_speed_hz, align 8
  %of_node81 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %34 = ptrtoint ptr %of_node81 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %1, ptr %of_node81, align 8
  %num_chipselect82 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %35 = ptrtoint ptr %num_chipselect82 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %num_chipselect82, align 2
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !76
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %40, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 2097152000) #7, !srcloc !76
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %36)
  %cmp.i170 = icmp ugt i16 %36, 1
  %spec.select.i = select i1 %cmp.i170, i32 64, i32 0
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %42, i32 160
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %spec.select.i) #7, !srcloc !76
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %add.ptr.i2437.i = getelementptr i8, ptr %44, i32 4
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2437.i) #7, !srcloc !77
  %46 = and i32 %45, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not38.i = icmp eq i32 %46, 0
  br i1 %tobool.not38.i, label %if.end77.zynq_qspi_init_hw.exit_crit_edge, label %if.end77.while.body.i_crit_edge

if.end77.while.body.i_crit_edge:                  ; preds = %if.end77
  br label %while.body.i

if.end77.zynq_qspi_init_hw.exit_crit_edge:        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_qspi_init_hw.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end77.while.body.i_crit_edge
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %48, i32 32
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #7, !srcloc !77
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %51, i32 4
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #7, !srcloc !77
  %53 = and i32 %52, 268435456
  %tobool.not.i171 = icmp eq i32 %53, 0
  br i1 %tobool.not.i171, label %while.body.i.zynq_qspi_init_hw.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.zynq_qspi_init_hw.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_qspi_init_hw.exit

zynq_qspi_init_hw.exit:                           ; preds = %while.body.i.zynq_qspi_init_hw.exit_crit_edge, %if.end77.zynq_qspi_init_hw.exit_crit_edge
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %55, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 2097152000) #7, !srcloc !76
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #7, !srcloc !77
  %59 = and i32 %58, 4193919
  %60 = or i32 %59, -1052770176
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #7, !srcloc !76
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %64, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 536870912) #7, !srcloc !76
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %66, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 16777216) #7, !srcloc !76
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %68, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 16777216) #7, !srcloc !76
  %call85 = call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %zynq_qspi_init_hw.exit.cleanup_crit_edge, label %do.end90

zynq_qspi_init_hw.exit.cleanup_crit_edge:         ; preds = %zynq_qspi_init_hw.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end90:                                         ; preds = %zynq_qspi_init_hw.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #10
  br label %clk_dis_all

clk_dis_all:                                      ; preds = %do.end90, %if.then69, %if.then59, %if.end50.clk_dis_all_crit_edge
  %ret.0 = phi i32 [ -6, %if.then59 ], [ %call85, %do.end90 ], [ -22, %if.then69 ], [ -6, %if.end50.clk_dis_all_crit_edge ]
  %69 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %refclk, align 4
  call void @clk_disable(ptr noundef %70) #7
  call void @clk_unprepare(ptr noundef %70) #7
  br label %clk_dis_pclk

clk_dis_pclk:                                     ; preds = %clk_dis_all, %do.end48
  %ret.1 = phi i32 [ %retval.0.i167.ph, %do.end48 ], [ %ret.0, %clk_dis_all ]
  %71 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pclk, align 4
  call void @clk_disable(ptr noundef %72) #7
  call void @clk_unprepare(ptr noundef %72) #7
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %clk_dis_pclk, %do.end39, %do.end28, %do.end, %if.then8
  %ret.2 = phi i32 [ %8, %if.then8 ], [ %12, %do.end ], [ %17, %do.end28 ], [ %retval.0.i.ph, %do.end39 ], [ %ret.1, %clk_dis_pclk ]
  call void @put_device(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %zynq_qspi_init_hw.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %spi_controller_put.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %zynq_qspi_init_hw.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cs) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_qspi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.zynq_qspi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !76
  %refclk = getelementptr inbounds %struct.zynq_qspi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %refclk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  %pclk = getelementptr inbounds %struct.zynq_qspi, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_qspi_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %data.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.zynq_qspi, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !77
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %2) #7, !srcloc !76
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %6 = and i32 %3, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %rx_bytes.i = getelementptr inbounds %struct.zynq_qspi, ptr %dev_id, i32 0, i32 8
  %7 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_bytes.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.zynq_qspi, ptr %dev_id, i32 0, i32 7
  %9 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_bytes.i, align 4
  %sub.i = sub i32 %8, %10
  %div.i = sdiv i32 %sub.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 131, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 131
  %spec.select.i = select i1 %cmp.i, i32 32, i32 %div.i
  %rxbuf.i = getelementptr inbounds %struct.zynq_qspi, ptr %dev_id, i32 0, i32 6
  %11 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rxbuf.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %if.then1.i

for.cond.preheader.i:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp52.i = icmp sgt i32 %spec.select.i, 0
  br i1 %cmp52.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end8.i_crit_edge

for.cond.preheader.i.if.end8.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then1.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %14, i32 32
  tail call void @__raw_readsl(ptr noundef %add.ptr.i28, ptr noundef nonnull %12, i32 noundef %spec.select.i) #7
  %mul.i = shl nsw i32 %spec.select.i, 2
  %15 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rxbuf.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %16, i32 %mul.i
  store ptr %add.ptr4.i, ptr %rxbuf.i, align 4
  br label %if.end8.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %k.03.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %18, i32 32
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !77
  %inc.i = add nuw nsw i32 %k.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %spec.select.i
  br i1 %exitcond.not.i, label %for.body.i.if.end8.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.end8.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %for.body.i.if.end8.i_crit_edge, %if.then1.i, %for.cond.preheader.i.if.end8.i_crit_edge
  %mul9.i = shl nsw i32 %spec.select.i, 2
  %20 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_bytes.i, align 4
  %sub11.i = sub i32 %21, %mul9.i
  store i32 %sub11.i, ptr %rx_bytes.i, align 4
  %sub13.i = sub i32 %sub.i, %mul9.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %mul9.i)
  %tobool14.not.i = icmp ne i32 %sub.i, %mul9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub13.i)
  %cmp15.i = icmp slt i32 %sub13.i, 4
  %or.cond.i = and i1 %tobool14.not.i, %cmp15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %spec.select.i)
  %cmp17.i = icmp slt i32 %spec.select.i, 32
  %or.cond1.i = select i1 %or.cond.i, i1 %cmp17.i, i1 false
  br i1 %or.cond1.i, label %if.then18.i, label %if.end8.i.zynq_qspi_read_op.exit_crit_edge

if.end8.i.zynq_qspi_read_op.exit_crit_edge:       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_qspi_read_op.exit

if.then18.i:                                      ; preds = %if.end8.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #7
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 32
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !77
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %data.i.i, align 4
  %27 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rxbuf.i, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.then18.i.zynq_qspi_rxfifo_op.exit.i_crit_edge, label %if.then.i.i

if.then18.i.zynq_qspi_rxfifo_op.exit.i_crit_edge: ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_qspi_rxfifo_op.exit.i

if.then.i.i:                                      ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr inbounds i8, ptr %data.i.i, i32 4
  %idx.neg.i.i = sub i32 0, %sub13.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %idx.neg.i.i
  %29 = call ptr @memcpy(ptr %28, ptr %add.ptr2.i.i, i32 %sub13.i)
  %30 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rxbuf.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %31, i32 %sub13.i
  store ptr %add.ptr4.i.i, ptr %rxbuf.i, align 4
  br label %zynq_qspi_rxfifo_op.exit.i

zynq_qspi_rxfifo_op.exit.i:                       ; preds = %if.then.i.i, %if.then18.i.zynq_qspi_rxfifo_op.exit.i_crit_edge
  %32 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_bytes.i, align 4
  %sub.i.i = sub i32 %33, %sub13.i
  %34 = tail call i32 @llvm.smax.i32(i32 %sub.i.i, i32 0) #7
  %35 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %rx_bytes.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #7
  br label %zynq_qspi_read_op.exit

zynq_qspi_read_op.exit:                           ; preds = %zynq_qspi_rxfifo_op.exit.i, %if.end8.i.zynq_qspi_read_op.exit_crit_edge
  %36 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool6.not = icmp eq i32 %37, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %zynq_qspi_read_op.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @zynq_qspi_write_op(ptr noundef %dev_id, i32 noundef 32, i1 noundef zeroext %tobool)
  br label %cleanup

if.else:                                          ; preds = %zynq_qspi_read_op.exit
  %38 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rx_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool9.not = icmp eq i32 %39, 0
  br i1 %tobool9.not, label %if.then10, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 335544320) #7, !srcloc !76
  %data_completion = getelementptr inbounds %struct.zynq_qspi, ptr %dev_id, i32 0, i32 9
  tail call void @complete(ptr noundef %data_completion) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.else.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.else.cleanup_crit_edge ], [ 1, %if.then10 ], [ 1, %if.then7 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_qspi_setup_op(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %busy = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %busy, align 1, !range !78
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %refclk = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %refclk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %7) #7
  %pclk = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %9) #7
  %regs.i = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #7, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynq_qspi_write_op(ptr nocapture noundef %xqspi, i32 noundef %txcount, i1 noundef zeroext %txempty) unnamed_addr #2 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_bytes = getelementptr inbounds %struct.zynq_qspi, ptr %xqspi, i32 0, i32 7
  %0 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp slt i32 %1, 4
  %or.cond = and i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  br i1 %txempty, label %if.then2, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i)
  %txbuf.i = getelementptr inbounds %struct.zynq_qspi, ptr %xqspi, i32 0, i32 5
  %2 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txbuf.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %data.i, align 4
  %5 = call ptr @memcpy(ptr %data.i, ptr %3, i32 %1)
  %add.ptr.i = getelementptr i8, ptr %3, i32 %1
  %6 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr.i, ptr %txbuf.i, align 4
  br label %zynq_qspi_txfifo_op.exit

if.else.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %data.i, align 4
  br label %zynq_qspi_txfifo_op.exit

zynq_qspi_txfifo_op.exit:                         ; preds = %if.else.i, %if.then.i
  %8 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_bytes, align 4
  %sub3.i = add i32 %1, -1
  %arrayidx.i = getelementptr [4 x i32], ptr @zynq_qspi_txfifo_op.offset, i32 0, i32 %sub3.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %data.i.0.data.i.0.data.0.data.0.data.0..i = load i32, ptr %data.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %data.i.0.data.i.0.data.0.data.0.data.0..i) #7
  %regs.i.i = getelementptr inbounds %struct.zynq_qspi, ptr %xqspi, i32 0, i32 1
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %12) #7, !srcloc !76
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i)
  br label %cleanup

if.end3:                                          ; preds = %entry
  %div3738 = lshr i32 %1, 2
  %15 = tail call i32 @llvm.smin.i32(i32 %div3738, i32 %txcount)
  %txbuf = getelementptr inbounds %struct.zynq_qspi, ptr %xqspi, i32 0, i32 5
  %16 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %txbuf, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %for.cond.preheader, label %if.then8

for.cond.preheader:                               ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1239 = icmp sgt i32 %15, 0
  br i1 %cmp1239, label %for.body.lr.ph, label %for.cond.preheader.if.end15_crit_edge

for.cond.preheader.if.end15_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %regs13 = getelementptr inbounds %struct.zynq_qspi, ptr %xqspi, i32 0, i32 1
  br label %for.body

if.then8:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %regs = getelementptr inbounds %struct.zynq_qspi, ptr %xqspi, i32 0, i32 1
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 28
  tail call void @__raw_writesl(ptr noundef %add.ptr, ptr noundef nonnull %17, i32 noundef %15) #7
  %mul = shl i32 %15, 2
  %20 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %txbuf, align 4
  %add.ptr11 = getelementptr i8, ptr %21, i32 %mul
  store ptr %add.ptr11, ptr %txbuf, align 4
  br label %if.end15

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %k.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %22 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs13, align 4
  %add.ptr14 = getelementptr i8, ptr %23, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #7, !srcloc !76
  %inc = add nuw nsw i32 %k.040, 1
  %exitcond.not = icmp eq i32 %inc, %15
  br i1 %exitcond.not, label %for.body.if.end15_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end15:                                         ; preds = %for.body.if.end15_crit_edge, %if.then8, %for.cond.preheader.if.end15_crit_edge
  %mul16.neg = mul i32 %15, -4
  %24 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_bytes, align 4
  %sub = add i32 %25, %mul16.neg
  store i32 %sub, ptr %tx_bytes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %zynq_qspi_txfifo_op.exit, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @zynq_qspi_supports_op(ptr noundef %mem, ptr noundef %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @spi_mem_default_supports_op(ptr noundef %mem, ptr noundef %op) #7
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp ult i8 %1, 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ %cmp, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_qspi_exec_mem_op(ptr nocapture noundef readonly %mem, ptr noundef %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynq_qspi_exec_mem_op.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zynq_qspi_exec_mem_op, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !79

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %8 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %opcode, align 4
  %conv = zext i16 %9 to i32
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %10 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buswidth, align 1
  %conv6 = zext i8 %11 to i32
  %buswidth7 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %buswidth7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buswidth7, align 1
  %conv8 = zext i8 %13 to i32
  %buswidth9 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %buswidth9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buswidth9, align 1
  %conv10 = zext i8 %15 to i32
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %data, align 4
  %conv12 = zext i8 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zynq_qspi_exec_mem_op.__UNIQUE_ID_ddebug234, ptr noundef %7, ptr noundef nonnull @.str.30, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %conv10, i32 noundef %conv12) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %18 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem, align 4
  %master.i = getelementptr inbounds %struct.spi_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_chipselect.i = getelementptr inbounds %struct.spi_controller, ptr %21, i32 0, i32 3
  %24 = ptrtoint ptr %num_chipselect.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %num_chipselect.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %25)
  %cmp.i = icmp ugt i16 %25, 1
  br i1 %cmp.i, label %if.then.i, label %do.end.zynq_qspi_chipselect.exit_crit_edge

do.end.zynq_qspi_chipselect.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_qspi_chipselect.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i.i = getelementptr inbounds %struct.zynq_qspi, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 160
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !77
  %chip_select.i = getelementptr inbounds %struct.spi_device, ptr %19, i32 0, i32 4
  %29 = ptrtoint ptr %chip_select.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %chip_select.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i = icmp eq i8 %30, 0
  %31 = and i32 %28, -17
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  %masksel26.i = select i1 %tobool.not.i, i32 0, i32 268435456
  %config_reg.0.i = or i32 %masksel26.i, %32
  %33 = tail call i32 @llvm.bswap.i32(i32 %config_reg.0.i) #7
  %34 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %35, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %33) #7, !srcloc !76
  br label %zynq_qspi_chipselect.exit

zynq_qspi_chipselect.exit:                        ; preds = %if.then.i, %do.end.zynq_qspi_chipselect.exit_crit_edge
  %regs.i24.i = getelementptr inbounds %struct.zynq_qspi, ptr %23, i32 0, i32 1
  %36 = ptrtoint ptr %regs.i24.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i24.i, align 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #7, !srcloc !77
  %39 = and i32 %38, -262145
  %40 = ptrtoint ptr %regs.i24.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i24.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #7, !srcloc !76
  %42 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mem, align 4
  %refclk.i = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 2
  %max_speed_hz.i = getelementptr inbounds %struct.spi_device, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %refclk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %45) #7
  %div1.i = lshr i32 %call.i, 1
  %46 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_speed_hz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %47)
  %cmp1.i = icmp ugt i32 %div1.i, %47
  br i1 %cmp1.i, label %while.cond.1.i, label %zynq_qspi_chipselect.exit.zynq_qspi_config_op.exit_crit_edge

zynq_qspi_chipselect.exit.zynq_qspi_config_op.exit_crit_edge: ; preds = %zynq_qspi_chipselect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_qspi_config_op.exit

while.cond.1.i:                                   ; preds = %zynq_qspi_chipselect.exit
  %48 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %refclk.i, align 4
  %call.1.i = tail call i32 @clk_get_rate(ptr noundef %49) #7
  %div1.1.i = lshr i32 %call.1.i, 2
  %50 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_speed_hz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.1.i, i32 %51)
  %cmp1.1.i = icmp ugt i32 %div1.1.i, %51
  br i1 %cmp1.1.i, label %while.cond.2.i, label %while.cond.1.i.zynq_qspi_config_op.exit_crit_edge

while.cond.1.i.zynq_qspi_config_op.exit_crit_edge: ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_qspi_config_op.exit

while.cond.2.i:                                   ; preds = %while.cond.1.i
  %52 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %refclk.i, align 4
  %call.2.i = tail call i32 @clk_get_rate(ptr noundef %53) #7
  %div1.2.i = lshr i32 %call.2.i, 3
  %54 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %max_speed_hz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.2.i, i32 %55)
  %cmp1.2.i = icmp ugt i32 %div1.2.i, %55
  br i1 %cmp1.2.i, label %while.cond.3.i, label %while.cond.2.i.zynq_qspi_config_op.exit_crit_edge

while.cond.2.i.zynq_qspi_config_op.exit_crit_edge: ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_qspi_config_op.exit

while.cond.3.i:                                   ; preds = %while.cond.2.i
  %56 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %refclk.i, align 4
  %call.3.i = tail call i32 @clk_get_rate(ptr noundef %57) #7
  %div1.3.i = lshr i32 %call.3.i, 4
  %58 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_speed_hz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.3.i, i32 %59)
  %cmp1.3.i = icmp ugt i32 %div1.3.i, %59
  br i1 %cmp1.3.i, label %while.cond.4.i, label %while.cond.3.i.zynq_qspi_config_op.exit_crit_edge

while.cond.3.i.zynq_qspi_config_op.exit_crit_edge: ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_qspi_config_op.exit

while.cond.4.i:                                   ; preds = %while.cond.3.i
  %60 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %refclk.i, align 4
  %call.4.i = tail call i32 @clk_get_rate(ptr noundef %61) #7
  %div1.4.i = lshr i32 %call.4.i, 5
  %62 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %max_speed_hz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.4.i, i32 %63)
  %cmp1.4.i = icmp ugt i32 %div1.4.i, %63
  br i1 %cmp1.4.i, label %while.cond.5.i, label %while.cond.4.i.zynq_qspi_config_op.exit_crit_edge

while.cond.4.i.zynq_qspi_config_op.exit_crit_edge: ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_qspi_config_op.exit

while.cond.5.i:                                   ; preds = %while.cond.4.i
  %64 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %refclk.i, align 4
  %call.5.i = tail call i32 @clk_get_rate(ptr noundef %65) #7
  %div1.5.i = lshr i32 %call.5.i, 6
  %66 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_speed_hz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.5.i, i32 %67)
  %cmp1.5.i = icmp ugt i32 %div1.5.i, %67
  br i1 %cmp1.5.i, label %while.cond.6.i, label %while.cond.5.i.zynq_qspi_config_op.exit_crit_edge

while.cond.5.i.zynq_qspi_config_op.exit_crit_edge: ; preds = %while.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_qspi_config_op.exit

while.cond.6.i:                                   ; preds = %while.cond.5.i
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %refclk.i, align 4
  %call.6.i = tail call i32 @clk_get_rate(ptr noundef %69) #7
  %div1.6.i = lshr i32 %call.6.i, 7
  %70 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_speed_hz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.6.i, i32 %71)
  %cmp1.6.i = icmp ugt i32 %div1.6.i, %71
  %spec.select.i = select i1 %cmp1.6.i, i32 56, i32 48
  br label %zynq_qspi_config_op.exit

zynq_qspi_config_op.exit:                         ; preds = %while.cond.6.i, %while.cond.5.i.zynq_qspi_config_op.exit_crit_edge, %while.cond.4.i.zynq_qspi_config_op.exit_crit_edge, %while.cond.3.i.zynq_qspi_config_op.exit_crit_edge, %while.cond.2.i.zynq_qspi_config_op.exit_crit_edge, %while.cond.1.i.zynq_qspi_config_op.exit_crit_edge, %zynq_qspi_chipselect.exit.zynq_qspi_config_op.exit_crit_edge
  %baud_rate_val.0.lcssa.i = phi i32 [ 0, %zynq_qspi_chipselect.exit.zynq_qspi_config_op.exit_crit_edge ], [ 8, %while.cond.1.i.zynq_qspi_config_op.exit_crit_edge ], [ 16, %while.cond.2.i.zynq_qspi_config_op.exit_crit_edge ], [ 24, %while.cond.3.i.zynq_qspi_config_op.exit_crit_edge ], [ 32, %while.cond.4.i.zynq_qspi_config_op.exit_crit_edge ], [ 40, %while.cond.5.i.zynq_qspi_config_op.exit_crit_edge ], [ %spec.select.i, %while.cond.6.i ]
  %regs.i.i214 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 1
  %72 = ptrtoint ptr %regs.i.i214 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs.i.i214, align 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #7, !srcloc !77
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %43, i32 0, i32 7
  %75 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mode.i, align 8
  %and3.i = shl i32 %76, 2
  %77 = and i32 %and3.i, 4
  %and5.i = and i32 %76, 2
  %78 = and i32 %74, -1040187393
  %79 = tail call i32 @llvm.bswap.i32(i32 %78) #7
  %.masked.i = or i32 %79, %baud_rate_val.0.lcssa.i
  %and10.i = or i32 %.masked.i, %and5.i
  %or12.i = or i32 %and10.i, %77
  %80 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #7
  %81 = ptrtoint ptr %regs.i.i214 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i.i214, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #7, !srcloc !76
  %opcode17 = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %83 = ptrtoint ptr %opcode17 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %opcode17, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %tobool18.not = icmp eq i16 %84, 0
  br i1 %tobool18.not, label %zynq_qspi_config_op.exit.if.end33_crit_edge, label %if.then19

zynq_qspi_config_op.exit.if.end33_crit_edge:      ; preds = %zynq_qspi_config_op.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then19:                                        ; preds = %zynq_qspi_config_op.exit
  call void @__sanitizer_cov_trace_pc() #9
  %data_completion = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 9
  %85 = ptrtoint ptr %data_completion to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %data_completion, align 4
  %txbuf = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 5
  %86 = ptrtoint ptr %txbuf to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %opcode17, ptr %txbuf, align 4
  %rxbuf = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 6
  %87 = ptrtoint ptr %rxbuf to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %rxbuf, align 4
  %88 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %op, align 8
  %conv23 = zext i8 %89 to i32
  %tx_bytes = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 7
  %90 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %conv23, ptr %tx_bytes, align 4
  %91 = load i8, ptr %op, align 8
  %conv26 = zext i8 %91 to i32
  %rx_bytes = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 8
  %92 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %conv26, ptr %rx_bytes, align 4
  tail call fastcc void @zynq_qspi_write_op(ptr noundef %5, i32 noundef 63, i1 noundef zeroext true)
  %93 = ptrtoint ptr %regs.i.i214 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i.i214, align 4
  %add.ptr.i = getelementptr i8, ptr %94, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 335544320) #7, !srcloc !76
  %call29 = tail call i32 @wait_for_completion_timeout(ptr noundef %data_completion, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  %spec.select = select i1 %tobool30.not, i32 -110, i32 0
  br label %if.end33

if.end33:                                         ; preds = %if.then19, %zynq_qspi_config_op.exit.if.end33_crit_edge
  %err.0 = phi i32 [ 0, %zynq_qspi_config_op.exit.if.end33_crit_edge ], [ %spec.select, %if.then19 ]
  %addr34 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %95 = ptrtoint ptr %addr34 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %addr34, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool36.not = icmp eq i8 %96, 0
  br i1 %tobool36.not, label %if.end33.if.end65_crit_edge, label %for.cond.preheader

if.end33.if.end65_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

for.cond.preheader:                               ; preds = %if.end33
  %97 = ptrtoint ptr %addr34 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %addr34, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %cmp237.not = icmp eq i8 %98, 0
  br i1 %cmp237.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv40236 = zext i8 %98 to i32
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %txbuf48 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %conv40239 = phi i32 [ %conv40236, %for.body.lr.ph ], [ %conv40, %for.body.for.body_crit_edge ]
  %i.0238 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %99 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %val, align 8
  %101 = xor i32 %i.0238, -1
  %sub46 = add nsw i32 %conv40239, %101
  %mul = shl i32 %sub46, 3
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %100, %sh_prom
  %conv47 = trunc i64 %shr to i8
  %102 = ptrtoint ptr %txbuf48 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %txbuf48, align 4
  %arrayidx = getelementptr i8, ptr %103, i32 %i.0238
  %104 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv47, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.0238, 1
  %105 = ptrtoint ptr %addr34 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %addr34, align 8
  %conv40 = zext i8 %106 to i32
  %cmp = icmp ult i32 %inc, %conv40
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %data_completion49 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 9
  %107 = ptrtoint ptr %data_completion49 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %data_completion49, align 4
  %rxbuf50 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 6
  %108 = ptrtoint ptr %rxbuf50 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %rxbuf50, align 4
  %109 = ptrtoint ptr %addr34 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %addr34, align 8
  %conv53 = zext i8 %110 to i32
  %tx_bytes54 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 7
  %111 = ptrtoint ptr %tx_bytes54 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %conv53, ptr %tx_bytes54, align 4
  %112 = load i8, ptr %addr34, align 8
  %conv57 = zext i8 %112 to i32
  %rx_bytes58 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 8
  %113 = ptrtoint ptr %rx_bytes58 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %conv57, ptr %rx_bytes58, align 4
  tail call fastcc void @zynq_qspi_write_op(ptr noundef %5, i32 noundef 63, i1 noundef zeroext true)
  %114 = ptrtoint ptr %regs.i.i214 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i.i214, align 4
  %add.ptr.i216 = getelementptr i8, ptr %115, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i216, i32 335544320) #7, !srcloc !76
  %call61 = tail call i32 @wait_for_completion_timeout(ptr noundef %data_completion49, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  %spec.select211 = select i1 %tobool62.not, i32 -110, i32 %err.0
  br label %if.end65

if.end65:                                         ; preds = %for.end, %if.end33.if.end65_crit_edge
  %err.1 = phi i32 [ %err.0, %if.end33.if.end65_crit_edge ], [ %spec.select211, %for.end ]
  %dummy66 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %116 = ptrtoint ptr %dummy66 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %dummy66, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool68.not = icmp eq i8 %117, 0
  br i1 %tobool68.not, label %if.end65.if.end97_crit_edge, label %if.end8.i.i

if.end65.if.end97_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

if.end8.i.i:                                      ; preds = %if.end65
  %conv72 = zext i8 %117 to i32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %conv72, i32 noundef 3520) #11
  %tobool74.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool74.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end76

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end76:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %dummy66 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %dummy66, align 8
  %conv79 = zext i8 %119 to i32
  %120 = call ptr @memset(ptr %call9.i.i, i32 255, i32 %conv79)
  %data_completion80 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 9
  %121 = ptrtoint ptr %data_completion80 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %data_completion80, align 4
  %txbuf81 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 5
  %122 = ptrtoint ptr %txbuf81 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call9.i.i, ptr %txbuf81, align 4
  %rxbuf82 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 6
  %123 = ptrtoint ptr %rxbuf82 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %rxbuf82, align 4
  %124 = load i8, ptr %dummy66, align 8
  %conv85 = zext i8 %124 to i32
  %tx_bytes86 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 7
  %125 = ptrtoint ptr %tx_bytes86 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %conv85, ptr %tx_bytes86, align 4
  %126 = load i8, ptr %dummy66, align 8
  %conv89 = zext i8 %126 to i32
  %rx_bytes90 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 8
  %127 = ptrtoint ptr %rx_bytes90 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %conv89, ptr %rx_bytes90, align 4
  tail call fastcc void @zynq_qspi_write_op(ptr noundef %5, i32 noundef 63, i1 noundef zeroext true)
  %128 = ptrtoint ptr %regs.i.i214 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regs.i.i214, align 4
  %add.ptr.i218 = getelementptr i8, ptr %129, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218, i32 335544320) #7, !srcloc !76
  %call93 = tail call i32 @wait_for_completion_timeout(ptr noundef %data_completion80, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  %spec.select212 = select i1 %tobool94.not, i32 -110, i32 %err.1
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %if.end97

if.end97:                                         ; preds = %if.end76, %if.end65.if.end97_crit_edge
  %err.3 = phi i32 [ %spec.select212, %if.end76 ], [ %err.1, %if.end65.if.end97_crit_edge ]
  %nbytes99 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %130 = ptrtoint ptr %nbytes99 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %nbytes99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool100.not = icmp eq i32 %131, 0
  br i1 %tobool100.not, label %if.end97.if.end133_crit_edge, label %if.then101

if.end97.if.end133_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then101:                                       ; preds = %if.end97
  %data_completion102 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 9
  %132 = ptrtoint ptr %data_completion102 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %data_completion102, align 4
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %133 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %134)
  %cmp104 = icmp eq i32 %134, 2
  br i1 %cmp104, label %if.then106, label %if.else

if.then106:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %135 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %buf, align 4
  %txbuf108 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 5
  %137 = ptrtoint ptr %txbuf108 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %136, ptr %txbuf108, align 4
  %138 = ptrtoint ptr %nbytes99 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %nbytes99, align 4
  %tx_bytes111 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 7
  %140 = ptrtoint ptr %tx_bytes111 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %tx_bytes111, align 4
  %rxbuf112 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 6
  %141 = ptrtoint ptr %rxbuf112 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %rxbuf112, align 4
  %142 = load i32, ptr %nbytes99, align 4
  %rx_bytes115 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 8
  %143 = ptrtoint ptr %rx_bytes115 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %rx_bytes115, align 4
  br label %if.end126

if.else:                                          ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  %txbuf116 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 5
  %144 = ptrtoint ptr %txbuf116 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %txbuf116, align 4
  %buf118 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %145 = ptrtoint ptr %buf118 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %buf118, align 4
  %rxbuf119 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 6
  %147 = ptrtoint ptr %rxbuf119 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %146, ptr %rxbuf119, align 4
  %148 = ptrtoint ptr %nbytes99 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %nbytes99, align 4
  %rx_bytes122 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 8
  %150 = ptrtoint ptr %rx_bytes122 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %rx_bytes122, align 4
  %151 = load i32, ptr %nbytes99, align 4
  %tx_bytes125 = getelementptr inbounds %struct.zynq_qspi, ptr %5, i32 0, i32 7
  %152 = ptrtoint ptr %tx_bytes125 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %tx_bytes125, align 4
  br label %if.end126

if.end126:                                        ; preds = %if.else, %if.then106
  tail call fastcc void @zynq_qspi_write_op(ptr noundef %5, i32 noundef 63, i1 noundef zeroext true)
  %153 = ptrtoint ptr %regs.i.i214 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regs.i.i214, align 4
  %add.ptr.i220 = getelementptr i8, ptr %154, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i220, i32 335544320) #7, !srcloc !76
  %call129 = tail call i32 @wait_for_completion_timeout(ptr noundef %data_completion102, i32 noundef 100) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  %spec.select213 = select i1 %tobool130.not, i32 -110, i32 %err.3
  br label %if.end133

if.end133:                                        ; preds = %if.end126, %if.end97.if.end133_crit_edge
  %err.4 = phi i32 [ %err.3, %if.end97.if.end133_crit_edge ], [ %spec.select213, %if.end126 ]
  %155 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %mem, align 4
  %master.i221 = getelementptr inbounds %struct.spi_device, ptr %156, i32 0, i32 2
  %157 = ptrtoint ptr %master.i221 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %master.i221, align 4
  %driver_data.i.i.i222 = getelementptr inbounds %struct.device, ptr %158, i32 0, i32 8
  %159 = ptrtoint ptr %driver_data.i.i.i222 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %driver_data.i.i.i222, align 4
  %num_chipselect.i223 = getelementptr inbounds %struct.spi_controller, ptr %158, i32 0, i32 3
  %161 = ptrtoint ptr %num_chipselect.i223 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %num_chipselect.i223, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %162)
  %cmp.i224 = icmp ugt i16 %162, 1
  br i1 %cmp.i224, label %if.then.i232, label %if.end133.zynq_qspi_chipselect.exit234_crit_edge

if.end133.zynq_qspi_chipselect.exit234_crit_edge: ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %zynq_qspi_chipselect.exit234

if.then.i232:                                     ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  %regs.i.i225 = getelementptr inbounds %struct.zynq_qspi, ptr %160, i32 0, i32 1
  %163 = ptrtoint ptr %regs.i.i225 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regs.i.i225, align 4
  %add.ptr.i.i226 = getelementptr i8, ptr %164, i32 160
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i226) #7, !srcloc !77
  %chip_select.i227 = getelementptr inbounds %struct.spi_device, ptr %156, i32 0, i32 4
  %166 = ptrtoint ptr %chip_select.i227 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %chip_select.i227, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool.not.i228 = icmp eq i8 %167, 0
  %168 = and i32 %165, -17
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #7
  %masksel26.i229 = select i1 %tobool.not.i228, i32 0, i32 268435456
  %config_reg.0.i230 = or i32 %masksel26.i229, %169
  %170 = tail call i32 @llvm.bswap.i32(i32 %config_reg.0.i230) #7
  %171 = ptrtoint ptr %regs.i.i225 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regs.i.i225, align 4
  %add.ptr.i23.i231 = getelementptr i8, ptr %172, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i231, i32 %170) #7, !srcloc !76
  br label %zynq_qspi_chipselect.exit234

zynq_qspi_chipselect.exit234:                     ; preds = %if.then.i232, %if.end133.zynq_qspi_chipselect.exit234_crit_edge
  %regs.i24.i233 = getelementptr inbounds %struct.zynq_qspi, ptr %160, i32 0, i32 1
  %173 = ptrtoint ptr %regs.i24.i233 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %regs.i24.i233, align 4
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %174) #7, !srcloc !77
  %176 = or i32 %175, 262144
  %177 = ptrtoint ptr %regs.i24.i233 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %regs.i24.i233, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %176) #7, !srcloc !76
  br label %cleanup

cleanup:                                          ; preds = %zynq_qspi_chipselect.exit234, %if.end8.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.4, %zynq_qspi_chipselect.exit234 ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @spi_mem_default_supports_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !59, !61, !62, !63, !64}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_spi_zynq_qspi__235_775_zynq_qspi_driver_init6, !1, !"__initcall__kmod_spi_zynq_qspi__235_775_zynq_qspi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 775, i32 1}
!2 = !{ptr @__exitcall_zynq_qspi_driver_exit, !1, !"__exitcall_zynq_qspi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author236, !4, !"__UNIQUE_ID_author236", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 777, i32 1}
!5 = !{ptr @__UNIQUE_ID_description237, !6, !"__UNIQUE_ID_description237", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 778, i32 1}
!7 = !{ptr @__UNIQUE_ID_file238, !8, !"__UNIQUE_ID_file238", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 779, i32 1}
!9 = !{ptr @__UNIQUE_ID_license239, !8, !"__UNIQUE_ID_license239", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 770, i32 11}
!12 = !{ptr @zynq_qspi_driver, !13, !"zynq_qspi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 766, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 653, i32 41}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 655, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @zynq_qspi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @zynq_qspi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 662, i32 43}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 664, i32 3}
!28 = !{ptr @zynq_qspi_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @zynq_qspi_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 671, i32 3}
!32 = !{ptr @zynq_qspi_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @zynq_qspi_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 677, i32 3}
!36 = !{ptr @zynq_qspi_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @zynq_qspi_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 690, i32 3}
!40 = !{ptr @zynq_qspi_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @zynq_qspi_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 694, i32 33}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 700, i32 3}
!46 = !{ptr @zynq_qspi_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @zynq_qspi_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 718, i32 3}
!50 = !{ptr @zynq_qspi_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @zynq_qspi_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @init_completion.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../include/linux/completion.h", i32 87, i32 2}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @zynq_qspi_txfifo_op.offset, !56, !"offset", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 268, i32 28}
!57 = !{ptr @zynq_qspi_mem_ops, !58, !"zynq_qspi_mem_ops", i1 false, i1 false}
!58 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 618, i32 44}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 532, i32 2}
!61 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @zynq_qspi_exec_mem_op.__UNIQUE_ID_ddebug234, !60, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!64 = !{ptr @zynq_qspi_of_match, !65, !"zynq_qspi_of_match", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-zynq-qspi.c", i32 756, i32 34}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"auto-init"}
!76 = !{i64 4258738}
!77 = !{i64 4259156}
!78 = !{i8 0, i8 2}
!79 = !{i64 2148743277, i64 2148743282, i64 2148743295, i64 2148743339, i64 2148743373, i64 2148743394}
