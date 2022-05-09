; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-xilinx.c_pt.bc'
source_filename = "../drivers/spi/spi-xilinx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.xspi_platform_data = type { i16, i8, ptr, i8 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.xilinx_spi = type { %struct.spi_bitbang, %struct.completion, ptr, i32, ptr, ptr, i8, i32, i32, ptr, ptr }
%struct.spi_bitbang = type { %struct.mutex, i8, i8, i16, ptr, ptr, ptr, ptr, [4 x ptr], ptr }
%struct.spi_board_info = type { [32 x i8], ptr, ptr, ptr, i32, i32, i16, i16, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__UNIQUE_ID_alias236 = internal constant [37 x i8] c"spi_xilinx.alias=platform:xilinx_spi\00", section ".modinfo", align 1
@__initcall__kmod_spi_xilinx__237_539_xilinx_spi_driver_init6 = internal global ptr @xilinx_spi_driver_init, section ".initcall6.init", align 4
@xilinx_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xilinx_spi_probe, ptr @xilinx_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xilinx_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xilinx_spi_driver_exit = internal global ptr @xilinx_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author238 = internal constant [64 x i8] c"spi_xilinx.author=MontaVista Software, Inc. <source@mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [41 x i8] c"spi_xilinx.description=Xilinx SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [39 x i8] c"spi_xilinx.file=drivers/spi/spi-xilinx\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [23 x i8] c"spi_xilinx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xilinx_spi\00", [21 x i8] zeroinitializer }, align 32
@xilinx_spi_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,axi-quad-spi-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-spi-2.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-spi-2.00.b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlnx,num-ss-bits\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xlnx,num-transfer-bits\00", [41 x i8] zeroinitializer }, align 32
@xilinx_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 415, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Missing slave select configuration data\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xilinx_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/spi/spi-xilinx.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xilinx_spi_probe._entry_ptr = internal global ptr @xilinx_spi_probe._entry, section ".printk_index", align 4
@xilinx_spi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 420, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid number of spi slaves\0A\00", [34 x i8] zeroinitializer }, align 32
@xilinx_spi_probe._entry_ptr.10 = internal global ptr @xilinx_spi_probe._entry.8, section ".printk_index", align 4
@xilinx_spi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 490, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spi_bitbang_start FAILED\0A\00", [38 x i8] zeroinitializer }, align 32
@xilinx_spi_probe._entry_ptr.13 = internal global ptr @xilinx_spi_probe._entry.11, section ".printk_index", align 4
@xilinx_spi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 494, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"at %pR, irq=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xilinx_spi_probe._entry_ptr.17 = internal global ptr @xilinx_spi_probe._entry.14, section ".printk_index", align 4
@xilinx_spi_txrx_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 307, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Detected stall. Check C_SPI_MODE and C_SPI_MEMORY\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xilinx_spi_txrx_bufs\00", [43 x i8] zeroinitializer }, align 32
@xilinx_spi_txrx_bufs._entry_ptr = internal global ptr @xilinx_spi_txrx_bufs._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@___asan_gen_.23 = private unnamed_addr constant [18 x i8] c"xilinx_spi_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 531, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 535, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"xilinx_spi_of_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 381, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 404, i32 43 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 407, i32 9 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 414, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 420, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 490, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 494, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private constant [28 x i8] c"../drivers/spi/spi-xilinx.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 306, i32 5 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 87, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias236, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_xilinx_spi_driver_exit, ptr @__initcall__kmod_spi_xilinx__237_539_xilinx_spi_driver_init6, ptr @xilinx_spi_driver_exit, ptr @xilinx_spi_probe._entry, ptr @xilinx_spi_probe._entry.11, ptr @xilinx_spi_probe._entry.14, ptr @xilinx_spi_probe._entry.8, ptr @xilinx_spi_probe._entry_ptr, ptr @xilinx_spi_probe._entry_ptr.10, ptr @xilinx_spi_probe._entry_ptr.13, ptr @xilinx_spi_probe._entry_ptr.17, ptr @xilinx_spi_txrx_bufs._entry, ptr @xilinx_spi_txrx_bufs._entry_ptr, ptr @xilinx_spi_driver, ptr @.str, ptr @xilinx_spi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @init_completion.__key, ptr @.str.20], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_spi_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_spi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_spi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_spi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xilinx_spi_txrx_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xilinx_spi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @xilinx_spi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %num_cs = alloca i32, align 4
  %bits_per_word = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cs) #7
  %0 = ptrtoint ptr %num_cs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %num_cs, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits_per_word) #7
  %1 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %bits_per_word, align 4, !annotation !60
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %3, align 4
  %conv = zext i16 %5 to i32
  %6 = ptrtoint ptr %num_cs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %num_cs, align 4
  %bits_per_word1 = getelementptr inbounds %struct.xspi_platform_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %bits_per_word1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bits_per_word1, align 2
  %conv2 = zext i8 %8 to i32
  %9 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv2, ptr %bits_per_word, align 4
  br label %if.end10

if.else:                                          ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.1, ptr noundef nonnull %num_cs, i32 noundef 1, i32 noundef 0) #7
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i.i185 = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull %bits_per_word, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i185)
  %tobool8.not = icmp sgt i32 %call.i.i185, -1
  br i1 %tobool8.not, label %if.else.if.end10thread-pre-split_crit_edge, label %if.then9

if.else.if.end10thread-pre-split_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10thread-pre-split

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %bits_per_word, align 4
  br label %if.end10thread-pre-split

if.end10thread-pre-split:                         ; preds = %if.then9, %if.else.if.end10thread-pre-split_crit_edge
  %15 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %num_cs, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10thread-pre-split, %if.then
  %16 = phi i32 [ %.pr, %if.end10thread-pre-split ], [ %conv, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not = icmp eq i32 %16, 0
  br i1 %tobool11.not, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %16)
  %cmp = icmp sgt i32 %16, 32
  br i1 %cmp, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call.i = call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 224, i1 noundef zeroext false) #7
  %tobool24.not = icmp eq ptr %call.i, null
  br i1 %tobool24.not, label %if.end21.cleanup_crit_edge, label %if.end26

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 47, ptr %mode_bits, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  %cs_inactive = getelementptr inbounds %struct.xilinx_spi, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %cs_inactive to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %cs_inactive, align 4
  %master28 = getelementptr inbounds %struct.spi_bitbang, ptr %19, i32 0, i32 4
  %21 = ptrtoint ptr %master28 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %master28, align 4
  %chipselect = getelementptr inbounds %struct.spi_bitbang, ptr %19, i32 0, i32 6
  %22 = ptrtoint ptr %chipselect to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @xilinx_spi_chipselect, ptr %chipselect, align 4
  %setup_transfer = getelementptr inbounds %struct.spi_bitbang, ptr %19, i32 0, i32 5
  %23 = ptrtoint ptr %setup_transfer to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @xilinx_spi_setup_transfer, ptr %setup_transfer, align 4
  %txrx_bufs = getelementptr inbounds %struct.spi_bitbang, ptr %19, i32 0, i32 7
  %24 = ptrtoint ptr %txrx_bufs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @xilinx_spi_txrx_bufs, ptr %txrx_bufs, align 4
  %done = getelementptr inbounds %struct.xilinx_spi, ptr %19, i32 0, i32 1
  %25 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.xilinx_spi, ptr %19, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.20, ptr noundef nonnull @init_completion.__key) #7
  %call32 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call34 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call32) #7
  %regs = getelementptr inbounds %struct.xilinx_spi, ptr %19, i32 0, i32 2
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call34, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %call34 to i32
  br label %spi_controller_put.exit

if.end40:                                         ; preds = %if.end26
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 4
  %conv41 = trunc i32 %29 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv41, ptr %bus_num, align 8
  %31 = ptrtoint ptr %num_cs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_cs, align 4
  %conv42 = trunc i32 %32 to i16
  %num_chipselect43 = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %num_chipselect43 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv42, ptr %num_chipselect43, align 2
  %of_node45 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %34 = ptrtoint ptr %of_node45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node45, align 8
  %of_node47 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %36 = ptrtoint ptr %of_node47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %of_node47, align 8
  %read_fn = getelementptr inbounds %struct.xilinx_spi, ptr %19, i32 0, i32 9
  %37 = ptrtoint ptr %read_fn to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @xspi_read32, ptr %read_fn, align 4
  %write_fn = getelementptr inbounds %struct.xilinx_spi, ptr %19, i32 0, i32 10
  %38 = ptrtoint ptr %write_fn to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @xspi_write32, ptr %write_fn, align 4
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %40, i32 96
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #7, !srcloc !62
  %41 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %read_fn, align 4
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %add.ptr52 = getelementptr i8, ptr %44, i32 96
  %call53 = call i32 %42(ptr noundef %add.ptr52) #7
  %and = and i32 %call53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp54.not.not = icmp eq i32 %and, 0
  br i1 %cmp54.not.not, label %if.then56, label %if.end40.if.end59_crit_edge

if.end40.if.end59_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then56:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %read_fn to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @xspi_read32_be, ptr %read_fn, align 4
  %46 = ptrtoint ptr %write_fn to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @xspi_write32_be, ptr %write_fn, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.end40.if.end59_crit_edge
  %47 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bits_per_word, align 4
  %sub = add i32 %48, -1
  %shl = shl nuw i32 1, %sub
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %49 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shl, ptr %bits_per_word_mask, align 8
  %div = sdiv i32 %48, 8
  %conv60 = trunc i32 %div to i8
  %bytes_per_word = getelementptr inbounds %struct.xilinx_spi, ptr %19, i32 0, i32 6
  %50 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv60, ptr %bytes_per_word, align 4
  %51 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write_fn, align 4
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 64
  call void %52(i32 noundef 10, ptr noundef %add.ptr.i) #7
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end59
  %n_words.0.i = phi i32 [ 0, %if.end59 ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %55 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %write_fn, align 4
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 4
  %add.ptr3.i = getelementptr i8, ptr %58, i32 104
  call void %56(i32 noundef 0, ptr noundef %add.ptr3.i) #7
  %59 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %read_fn, align 4
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs, align 4
  %add.ptr5.i = getelementptr i8, ptr %62, i32 100
  %call.i186 = call i32 %60(ptr noundef %add.ptr5.i) #7
  %inc.i = add i32 %n_words.0.i, 1
  %and.i = and i32 %call.i186, 8
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.body.i_crit_edge, label %xilinx_spi_find_buffer_size.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

xilinx_spi_find_buffer_size.exit:                 ; preds = %do.body.i
  %buffer_size = getelementptr inbounds %struct.xilinx_spi, ptr %19, i32 0, i32 7
  %63 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %inc.i, ptr %buffer_size, align 4
  %call62 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.xilinx_spi, ptr %19, i32 0, i32 3
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call62, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call62)
  %cmp64 = icmp sgt i32 %call62, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call62)
  %cmp67.not = icmp eq i32 %call62, -6
  %or.cond = or i1 %cmp64, %cmp67.not
  br i1 %or.cond, label %if.else71, label %xilinx_spi_find_buffer_size.exit.spi_controller_put.exit_crit_edge

xilinx_spi_find_buffer_size.exit.spi_controller_put.exit_crit_edge: ; preds = %xilinx_spi_find_buffer_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

if.else71:                                        ; preds = %xilinx_spi_find_buffer_size.exit
  br i1 %cmp64, label %if.then75, label %if.else71.if.end85_crit_edge

if.else71.if.end85_crit_edge:                     ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then75:                                        ; preds = %if.else71
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %65 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i187 = icmp eq ptr %66, null
  br i1 %tobool.not.i187, label %if.end.i, label %if.then75.dev_name.exit_crit_edge

if.then75.dev_name.exit_crit_edge:                ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then75.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %68, %if.end.i ], [ %66, %if.then75.dev_name.exit_crit_edge ]
  %call.i188 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call62, ptr noundef nonnull @xilinx_spi_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool81.not = icmp eq i32 %call.i188, 0
  br i1 %tobool81.not, label %dev_name.exit.if.end85_crit_edge, label %dev_name.exit.spi_controller_put.exit_crit_edge

dev_name.exit.spi_controller_put.exit_crit_edge:  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

dev_name.exit.if.end85_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.end85:                                         ; preds = %dev_name.exit.if.end85_crit_edge, %if.else71.if.end85_crit_edge
  call fastcc void @xspi_init_hw(ptr noundef %19)
  %call87 = call i32 @spi_bitbang_start(ptr noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %do.end97, label %do.end92

do.end92:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %spi_controller_put.exit

do.end97:                                         ; preds = %if.end85
  %69 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %call32, i32 noundef %70) #10
  br i1 %tobool.not, label %do.end97.if.end109_crit_edge, label %for.cond.preheader

do.end97.if.end109_crit_edge:                     ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

for.cond.preheader:                               ; preds = %do.end97
  %num_devices = getelementptr inbounds %struct.xspi_platform_data, ptr %3, i32 0, i32 3
  %71 = ptrtoint ptr %num_devices to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %num_devices, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp104192.not = icmp eq i8 %72, 0
  br i1 %cmp104192.not, label %for.cond.preheader.if.end109_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end109_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %devices = getelementptr inbounds %struct.xspi_platform_data, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %indvars.iv = phi i32 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %73 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %devices, align 4
  %add.ptr107 = getelementptr %struct.spi_board_info, ptr %74, i32 %indvars.iv
  %call108 = call ptr @spi_new_device(ptr noundef nonnull %call.i, ptr noundef %add.ptr107) #7
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %75 = ptrtoint ptr %num_devices to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %num_devices, align 4
  %77 = zext i8 %76 to i32
  %cmp104 = icmp ult i32 %indvars.iv.next, %77
  br i1 %cmp104, label %for.body.for.body_crit_edge, label %for.body.if.end109_crit_edge

for.body.if.end109_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end109:                                        ; preds = %for.body.if.end109_crit_edge, %for.cond.preheader.if.end109_crit_edge, %do.end97.if.end109_crit_edge
  %driver_data.i.i189 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %78 = ptrtoint ptr %driver_data.i.i189 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i, ptr %driver_data.i.i189, align 4
  br label %cleanup

spi_controller_put.exit:                          ; preds = %do.end92, %dev_name.exit.spi_controller_put.exit_crit_edge, %xilinx_spi_find_buffer_size.exit.spi_controller_put.exit_crit_edge, %if.then37
  %ret.0 = phi i32 [ %27, %if.then37 ], [ %call.i188, %dev_name.exit.spi_controller_put.exit_crit_edge ], [ %call87, %do.end92 ], [ %call62, %xilinx_spi_find_buffer_size.exit.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end109, %if.end21.cleanup_crit_edge, %do.end19, %do.end
  %retval.0 = phi i32 [ -22, %do.end19 ], [ %ret.0, %spi_controller_put.exit ], [ 0, %if.end109 ], [ -22, %do.end ], [ -19, %if.end21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits_per_word) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cs) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i11 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i11, align 4
  %regs = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void @spi_bitbang_stop(ptr noundef %3) #7
  %write_fn = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_fn, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 40
  tail call void %7(i32 noundef 0, ptr noundef %add.ptr) #7
  %8 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_fn, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 28
  tail call void %9(i32 noundef 0, ptr noundef %add.ptr3) #7
  %master5 = getelementptr inbounds %struct.spi_bitbang, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %master5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master5, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.spi_controller_put.exit_crit_edge, label %if.then.i

entry.spi_controller_put.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @put_device(ptr noundef nonnull %11) #7
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %if.then.i, %entry.spi_controller_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xilinx_spi_chipselect(ptr nocapture noundef readonly %spi, i32 noundef %is_on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %cmp = icmp eq i32 %is_on, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %write_fn = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_fn, align 4
  %cs_inactive = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %cs_inactive to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cs_inactive, align 4
  %regs = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 112
  tail call void %5(i32 noundef %7, ptr noundef %add.ptr) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %read_fn = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read_fn, align 4
  %regs1 = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs1, align 4
  %add.ptr2 = getelementptr i8, ptr %13, i32 96
  %call3 = tail call i32 %11(ptr noundef %add.ptr2) #7
  %conv = and i32 %call3, 64998
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode, align 8
  %16 = shl i32 %15, 4
  %17 = and i32 %16, 16
  %18 = or i32 %17, %conv
  %19 = shl i32 %15, 2
  %20 = and i32 %19, 8
  %21 = or i32 %18, %20
  %22 = shl i32 %15, 6
  %23 = and i32 %22, 512
  %24 = or i32 %21, %23
  %25 = lshr i32 %15, 5
  %26 = and i32 %25, 1
  %27 = or i32 %24, %26
  %write_fn33 = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 10
  %28 = ptrtoint ptr %write_fn33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %write_fn33, align 4
  %30 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs1, align 4
  %add.ptr36 = getelementptr i8, ptr %31, i32 96
  tail call void %29(i32 noundef %27, ptr noundef %add.ptr36) #7
  %cs_inactive37 = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 8
  %32 = ptrtoint ptr %cs_inactive37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cs_inactive37, align 4
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %34 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %chip_select, align 4
  %conv38 = zext i8 %35 to i32
  %shl = shl nuw i32 1, %conv38
  %xor = xor i32 %shl, %33
  %36 = ptrtoint ptr %write_fn33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write_fn33, align 4
  %38 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs1, align 4
  %add.ptr41 = getelementptr i8, ptr %39, i32 112
  tail call void %37(i32 noundef %xor, ptr noundef %add.ptr41) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xilinx_spi_setup_transfer(ptr nocapture noundef readonly %spi, ptr nocapture noundef readnone %t) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 8
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %chip_select2 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %6 = ptrtoint ptr %chip_select2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %chip_select2, align 4
  %conv3 = zext i8 %7 to i32
  %shl4 = shl nuw i32 1, %conv3
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl4, -1
  %cs_inactive = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %cs_inactive to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cs_inactive, align 4
  %and1 = and i32 %9, %neg
  store i32 %and1, ptr %cs_inactive, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cs_inactive5 = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %cs_inactive5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cs_inactive5, align 4
  %or = or i32 %shl4, %11
  store i32 %or, ptr %cs_inactive5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_spi_txrx_bufs(ptr noundef %spi, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %t, align 4
  %tx_ptr = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %tx_ptr, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %7 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_buf, align 4
  %rx_ptr = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %rx_ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %rx_ptr, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  %bytes_per_word = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bytes_per_word, align 4
  %conv = zext i8 %13 to i32
  %div = udiv i32 %11, %conv
  %irq = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp = icmp sgt i32 %15, -1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end20_crit_edge

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true:                                    ; preds = %entry
  %buffer_size = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %17)
  %cmp2 = icmp sgt i32 %div, %17
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then:                                          ; preds = %land.lhs.true
  %read_fn = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %read_fn, align 4
  %regs = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 2
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 96
  %call4 = tail call i32 %19(ptr noundef %add.ptr) #7
  %write_fn = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 10
  %22 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write_fn, align 4
  %conv6 = and i32 %call4, 65279
  %or = or i32 %conv6, 256
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %25, i32 96
  tail call void %23(i32 noundef %or, ptr noundef %add.ptr8) #7
  %26 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_fn, align 4
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %29, i32 32
  %call12 = tail call i32 %27(ptr noundef %add.ptr11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then13

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %write_fn, align 4
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %33, i32 32
  tail call void %31(i32 noundef %call12, ptr noundef %add.ptr16) #7
  br label %if.end

if.end:                                           ; preds = %if.then13, %if.then.if.end_crit_edge
  %34 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_fn, align 4
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 4
  %add.ptr19 = getelementptr i8, ptr %37, i32 28
  tail call void %35(i32 noundef -2147483648, ptr noundef %add.ptr19) #7
  %done = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 1
  %38 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %done, align 4
  %phi.cast = and i32 %call4, 65535
  br label %if.end20

if.end20:                                         ; preds = %if.end, %land.lhs.true.if.end20_crit_edge, %entry.if.end20_crit_edge
  %use_irq.0.off0 = phi i1 [ true, %if.end ], [ false, %land.lhs.true.if.end20_crit_edge ], [ false, %entry.if.end20_crit_edge ]
  %cr.0 = phi i32 [ %phi.cast, %if.end ], [ 0, %land.lhs.true.if.end20_crit_edge ], [ 0, %entry.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %tobool21.not199 = icmp ult i32 %11, %conv
  br i1 %tobool21.not199, label %if.end20.while.end82_crit_edge, label %while.body.lr.ph

if.end20.while.end82_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end82

while.body.lr.ph:                                 ; preds = %if.end20
  %buffer_size22 = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 7
  %write_fn8.i = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 10
  %regs9.i = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 2
  %read_fn40 = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 9
  %done34 = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 1
  %or37 = or i32 %cr.0, 256
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %remaining_words.0200 = phi i32 [ %div, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %39 = ptrtoint ptr %buffer_size22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %buffer_size22, align 4
  %41 = tail call i32 @llvm.smin.i32(i32 %remaining_words.0200, i32 %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool26.not190 = icmp eq i32 %41, 0
  br i1 %tobool26.not190, label %while.body.while.end_crit_edge, label %while.body.while.body27_crit_edge

while.body.while.body27_crit_edge:                ; preds = %while.body
  br label %while.body27

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body27:                                     ; preds = %xilinx_spi_tx.exit.while.body27_crit_edge, %while.body.while.body27_crit_edge
  %tx_words.0191 = phi i32 [ %dec, %xilinx_spi_tx.exit.while.body27_crit_edge ], [ %41, %while.body.while.body27_crit_edge ]
  %dec = add i32 %tx_words.0191, -1
  %42 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_ptr, align 4
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %write_fn8.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %write_fn8.i, align 4
  %46 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs9.i, align 4
  %add.ptr.i = getelementptr i8, ptr %47, i32 104
  tail call void %45(i32 noundef 0, ptr noundef %add.ptr.i) #7
  br label %xilinx_spi_tx.exit

if.end.i:                                         ; preds = %while.body27
  %48 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bytes_per_word, align 4
  %50 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i8 %49, label %if.end.i.sw.epilog.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb3.i
    i8 4, label %sw.bb6.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %43, align 1
  %conv2.i = zext i8 %52 to i32
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %43 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %43, align 2
  %conv5.i = zext i16 %54 to i32
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %43, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb6.i, %sw.bb3.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %data.0.i = phi i32 [ 0, %if.end.i.sw.epilog.i_crit_edge ], [ %56, %sw.bb6.i ], [ %conv5.i, %sw.bb3.i ], [ %conv2.i, %sw.bb.i ]
  %57 = ptrtoint ptr %write_fn8.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write_fn8.i, align 4
  %59 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs9.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %60, i32 104
  tail call void %58(i32 noundef %data.0.i, ptr noundef %add.ptr10.i) #7
  %61 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bytes_per_word, align 4
  %conv12.i = zext i8 %62 to i32
  %63 = ptrtoint ptr %tx_ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_ptr, align 4
  %add.ptr14.i = getelementptr i8, ptr %64, i32 %conv12.i
  store ptr %add.ptr14.i, ptr %tx_ptr, align 4
  br label %xilinx_spi_tx.exit

xilinx_spi_tx.exit:                               ; preds = %sw.epilog.i, %if.then.i
  %tobool26.not = icmp eq i32 %dec, 0
  br i1 %tobool26.not, label %xilinx_spi_tx.exit.while.end_crit_edge, label %xilinx_spi_tx.exit.while.body27_crit_edge

xilinx_spi_tx.exit.while.body27_crit_edge:        ; preds = %xilinx_spi_tx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body27

xilinx_spi_tx.exit.while.end_crit_edge:           ; preds = %xilinx_spi_tx.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %xilinx_spi_tx.exit.while.end_crit_edge, %while.body.while.end_crit_edge
  br i1 %use_irq.0.off0, label %if.then29, label %if.else

if.then29:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %65 = ptrtoint ptr %write_fn8.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write_fn8.i, align 4
  %67 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs9.i, align 4
  %add.ptr33 = getelementptr i8, ptr %68, i32 96
  tail call void %66(i32 noundef %cr.0, ptr noundef %add.ptr33) #7
  tail call void @wait_for_completion(ptr noundef %done34) #7
  %69 = ptrtoint ptr %write_fn8.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write_fn8.i, align 4
  %71 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs9.i, align 4
  %add.ptr39 = getelementptr i8, ptr %72, i32 96
  tail call void %70(i32 noundef %or37, ptr noundef %add.ptr39) #7
  br label %if.end44

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %read_fn40 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read_fn40, align 4
  %75 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs9.i, align 4
  %add.ptr42 = getelementptr i8, ptr %76, i32 100
  %call43 = tail call i32 %74(ptr noundef %add.ptr42) #7
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then29
  %sr.0 = phi i32 [ 4, %if.then29 ], [ %call43, %if.else ]
  br i1 %tobool26.not190, label %if.end44.cleanup_crit_edge, label %if.end44.while.body47.lr.ph_crit_edge

if.end44.while.body47.lr.ph_crit_edge:            ; preds = %if.end44
  br label %while.body47.lr.ph

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body47.lr.ph:                               ; preds = %if.end76.while.body47.lr.ph_crit_edge, %if.end44.while.body47.lr.ph_crit_edge
  %stalled.0.ph198 = phi i32 [ %stalled.1, %if.end76.while.body47.lr.ph_crit_edge ], [ 10, %if.end44.while.body47.lr.ph_crit_edge ]
  %sr.1.ph197 = phi i32 [ %call71, %if.end76.while.body47.lr.ph_crit_edge ], [ %sr.0, %if.end44.while.body47.lr.ph_crit_edge ]
  %rx_words.0.ph196 = phi i32 [ %rx_words.1, %if.end76.while.body47.lr.ph_crit_edge ], [ %41, %if.end44.while.body47.lr.ph_crit_edge ]
  %and = and i32 %sr.1.ph197, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool54.not = icmp ne i32 %and, 0
  %and56 = and i32 %sr.1.ph197, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br label %while.body47

while.body47:                                     ; preds = %xilinx_spi_rx.exit, %while.body47.lr.ph
  %stalled.0194 = phi i32 [ %stalled.0.ph198, %while.body47.lr.ph ], [ %stalled.1, %xilinx_spi_rx.exit ]
  %rx_words.0193 = phi i32 [ %rx_words.0.ph196, %while.body47.lr.ph ], [ %dec66, %xilinx_spi_rx.exit ]
  call void @__sanitizer_cov_trace_cmp4(i32 %rx_words.0193, i32 %41)
  %cmp48 = icmp eq i32 %rx_words.0193, %41
  br i1 %cmp48, label %land.lhs.true50, label %while.body47.if.end59_crit_edge

while.body47.if.end59_crit_edge:                  ; preds = %while.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

land.lhs.true50:                                  ; preds = %while.body47
  %dec51 = add i32 %stalled.0194, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stalled.0194)
  %tobool52.not = icmp ne i32 %stalled.0194, 0
  %or.cond = select i1 %tobool52.not, i1 true, i1 %tobool54.not
  %or.cond156 = select i1 %or.cond, i1 true, i1 %tobool57.not
  br i1 %or.cond156, label %land.lhs.true50.if.end59_crit_edge, label %cleanup.thread

land.lhs.true50.if.end59_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

cleanup.thread:                                   ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.18) #10
  %77 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs9.i, align 4
  %79 = ptrtoint ptr %write_fn8.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %write_fn8.i, align 4
  %add.ptr.i160 = getelementptr i8, ptr %78, i32 64
  tail call void %80(i32 noundef 10, ptr noundef %add.ptr.i160) #7
  %81 = ptrtoint ptr %write_fn8.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write_fn8.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %78, i32 40
  tail call void %82(i32 noundef 4, ptr noundef %add.ptr2.i) #7
  %83 = ptrtoint ptr %write_fn8.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write_fn8.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %78, i32 28
  tail call void %84(i32 noundef 0, ptr noundef %add.ptr4.i) #7
  %85 = ptrtoint ptr %write_fn8.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write_fn8.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %78, i32 112
  tail call void %86(i32 noundef 65535, ptr noundef %add.ptr6.i) #7
  %87 = ptrtoint ptr %write_fn8.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %write_fn8.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %78, i32 96
  tail call void %88(i32 noundef 230, ptr noundef %add.ptr8.i) #7
  br label %cleanup94

if.end59:                                         ; preds = %land.lhs.true50.if.end59_crit_edge, %while.body47.if.end59_crit_edge
  %stalled.1 = phi i32 [ %dec51, %land.lhs.true50.if.end59_crit_edge ], [ %stalled.0194, %while.body47.if.end59_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rx_words.0193)
  %cmp63 = icmp sgt i32 %rx_words.0193, 1
  %or.cond157 = select i1 %tobool54.not, i1 %cmp63, i1 false
  %89 = ptrtoint ptr %read_fn40 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %read_fn40, align 4
  %91 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs9.i, align 4
  br i1 %or.cond157, label %if.then65, label %if.end67

if.then65:                                        ; preds = %if.end59
  %add.ptr.i162 = getelementptr i8, ptr %92, i32 108
  %call.i = tail call i32 %90(ptr noundef %add.ptr.i162) #7
  %93 = ptrtoint ptr %rx_ptr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rx_ptr, align 4
  %tobool.not.i163 = icmp eq ptr %94, null
  br i1 %tobool.not.i163, label %if.then65.xilinx_spi_rx.exit_crit_edge, label %if.end.i165

if.then65.xilinx_spi_rx.exit_crit_edge:           ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %xilinx_spi_rx.exit

if.end.i165:                                      ; preds = %if.then65
  %95 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %bytes_per_word, align 4
  %97 = zext i8 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %96, label %if.end.i165.sw.epilog.i169_crit_edge [
    i8 1, label %sw.bb.i166
    i8 2, label %sw.bb3.i167
    i8 4, label %sw.bb6.i168
  ]

if.end.i165.sw.epilog.i169_crit_edge:             ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i169

sw.bb.i166:                                       ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i = trunc i32 %call.i to i8
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv1.i, ptr %94, align 1
  br label %sw.epilog.i169

sw.bb3.i167:                                      ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i = trunc i32 %call.i to i16
  %99 = ptrtoint ptr %94 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv4.i, ptr %94, align 2
  br label %sw.epilog.i169

sw.bb6.i168:                                      ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %call.i, ptr %94, align 4
  br label %sw.epilog.i169

sw.epilog.i169:                                   ; preds = %sw.bb6.i168, %sw.bb3.i167, %sw.bb.i166, %if.end.i165.sw.epilog.i169_crit_edge
  %101 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %bytes_per_word, align 4
  %conv9.i = zext i8 %102 to i32
  %103 = ptrtoint ptr %rx_ptr to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rx_ptr, align 4
  %add.ptr11.i = getelementptr i8, ptr %104, i32 %conv9.i
  store ptr %add.ptr11.i, ptr %rx_ptr, align 4
  br label %xilinx_spi_rx.exit

xilinx_spi_rx.exit:                               ; preds = %sw.epilog.i169, %if.then65.xilinx_spi_rx.exit_crit_edge
  %dec66 = add nsw i32 %rx_words.0193, -1
  br label %while.body47

if.end67:                                         ; preds = %if.end59
  %add.ptr70 = getelementptr i8, ptr %92, i32 100
  %call71 = tail call i32 %90(ptr noundef %add.ptr70) #7
  %and72 = and i32 %call71, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %if.then74, label %if.end67.if.end76_crit_edge

if.end67.if.end76_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then74:                                        ; preds = %if.end67
  %105 = ptrtoint ptr %read_fn40 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %read_fn40, align 4
  %107 = ptrtoint ptr %regs9.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs9.i, align 4
  %add.ptr.i172 = getelementptr i8, ptr %108, i32 108
  %call.i173 = tail call i32 %106(ptr noundef %add.ptr.i172) #7
  %109 = ptrtoint ptr %rx_ptr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %rx_ptr, align 4
  %tobool.not.i175 = icmp eq ptr %110, null
  br i1 %tobool.not.i175, label %if.then74.xilinx_spi_rx.exit186_crit_edge, label %if.end.i177

if.then74.xilinx_spi_rx.exit186_crit_edge:        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %xilinx_spi_rx.exit186

if.end.i177:                                      ; preds = %if.then74
  %111 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %bytes_per_word, align 4
  %113 = zext i8 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %112, label %if.end.i177.sw.epilog.i185_crit_edge [
    i8 1, label %sw.bb.i179
    i8 2, label %sw.bb3.i181
    i8 4, label %sw.bb6.i182
  ]

if.end.i177.sw.epilog.i185_crit_edge:             ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i185

sw.bb.i179:                                       ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i178 = trunc i32 %call.i173 to i8
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv1.i178, ptr %110, align 1
  br label %sw.epilog.i185

sw.bb3.i181:                                      ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i180 = trunc i32 %call.i173 to i16
  %115 = ptrtoint ptr %110 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv4.i180, ptr %110, align 2
  br label %sw.epilog.i185

sw.bb6.i182:                                      ; preds = %if.end.i177
  call void @__sanitizer_cov_trace_pc() #9
  %116 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %call.i173, ptr %110, align 4
  br label %sw.epilog.i185

sw.epilog.i185:                                   ; preds = %sw.bb6.i182, %sw.bb3.i181, %sw.bb.i179, %if.end.i177.sw.epilog.i185_crit_edge
  %117 = ptrtoint ptr %bytes_per_word to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %bytes_per_word, align 4
  %conv9.i183 = zext i8 %118 to i32
  %119 = ptrtoint ptr %rx_ptr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rx_ptr, align 4
  %add.ptr11.i184 = getelementptr i8, ptr %120, i32 %conv9.i183
  store ptr %add.ptr11.i184, ptr %rx_ptr, align 4
  br label %xilinx_spi_rx.exit186

xilinx_spi_rx.exit186:                            ; preds = %sw.epilog.i185, %if.then74.xilinx_spi_rx.exit186_crit_edge
  %dec75 = add i32 %rx_words.0193, -1
  br label %if.end76

if.end76:                                         ; preds = %xilinx_spi_rx.exit186, %if.end67.if.end76_crit_edge
  %rx_words.1 = phi i32 [ %rx_words.0193, %if.end67.if.end76_crit_edge ], [ %dec75, %xilinx_spi_rx.exit186 ]
  %tobool46.not192 = icmp eq i32 %rx_words.1, 0
  br i1 %tobool46.not192, label %if.end76.cleanup_crit_edge, label %if.end76.while.body47.lr.ph_crit_edge

if.end76.while.body47.lr.ph_crit_edge:            ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body47.lr.ph

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end76.cleanup_crit_edge, %if.end44.cleanup_crit_edge
  %sub = sub i32 %remaining_words.0200, %41
  %tobool21.not = icmp eq i32 %sub, 0
  br i1 %tobool21.not, label %cleanup.while.end82_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.while.end82_crit_edge:                    ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end82

while.end82:                                      ; preds = %cleanup.while.end82_crit_edge, %if.end20.while.end82_crit_edge
  br i1 %use_irq.0.off0, label %if.then84, label %while.end82.if.end92_crit_edge

while.end82.if.end92_crit_edge:                   ; preds = %while.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then84:                                        ; preds = %while.end82
  call void @__sanitizer_cov_trace_pc() #9
  %write_fn85 = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 10
  %121 = ptrtoint ptr %write_fn85 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write_fn85, align 4
  %regs86 = getelementptr inbounds %struct.xilinx_spi, ptr %3, i32 0, i32 2
  %123 = ptrtoint ptr %regs86 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs86, align 4
  %add.ptr87 = getelementptr i8, ptr %124, i32 28
  tail call void %122(i32 noundef 0, ptr noundef %add.ptr87) #7
  %125 = ptrtoint ptr %write_fn85 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %write_fn85, align 4
  %127 = ptrtoint ptr %regs86 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs86, align 4
  %add.ptr91 = getelementptr i8, ptr %128, i32 96
  tail call void %126(i32 noundef %cr.0, ptr noundef %add.ptr91) #7
  br label %if.end92

if.end92:                                         ; preds = %if.then84, %while.end82.if.end92_crit_edge
  %129 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %len, align 4
  br label %cleanup94

cleanup94:                                        ; preds = %if.end92, %cleanup.thread
  %retval.2 = phi i32 [ %130, %if.end92 ], [ -5, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xspi_read32(ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #7, !srcloc !63
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xspi_write32(i32 noundef %val, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #7, !srcloc !62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xspi_read32_be(ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #7, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xspi_write32_be(i32 noundef %val, ptr noundef %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %val) #7, !srcloc !62
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xilinx_spi_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %read_fn = getelementptr inbounds %struct.xilinx_spi, ptr %dev_id, i32 0, i32 9
  %0 = ptrtoint ptr %read_fn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_fn, align 4
  %regs = getelementptr inbounds %struct.xilinx_spi, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 32
  %call = tail call i32 %1(ptr noundef %add.ptr) #7
  %write_fn = getelementptr inbounds %struct.xilinx_spi, ptr %dev_id, i32 0, i32 10
  %4 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_fn, align 4
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %7, i32 32
  tail call void %5(i32 noundef %call, ptr noundef %add.ptr2) #7
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %done = getelementptr inbounds %struct.xilinx_spi, ptr %dev_id, i32 0, i32 1
  tail call void @complete(ptr noundef %done) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xspi_init_hw(ptr nocapture noundef readonly %xspi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.xilinx_spi, ptr %xspi, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %write_fn = getelementptr inbounds %struct.xilinx_spi, ptr %xspi, i32 0, i32 10
  %2 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_fn, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 64
  tail call void %3(i32 noundef 10, ptr noundef %add.ptr) #7
  %4 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write_fn, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 40
  tail call void %5(i32 noundef 4, ptr noundef %add.ptr2) #7
  %6 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_fn, align 4
  %add.ptr4 = getelementptr i8, ptr %1, i32 28
  tail call void %7(i32 noundef 0, ptr noundef %add.ptr4) #7
  %8 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_fn, align 4
  %add.ptr6 = getelementptr i8, ptr %1, i32 112
  tail call void %9(i32 noundef 65535, ptr noundef %add.ptr6) #7
  %10 = ptrtoint ptr %write_fn to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_fn, align 4
  %add.ptr8 = getelementptr i8, ptr %1, i32 96
  tail call void %11(i32 noundef 230, ptr noundef %add.ptr8) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bitbang_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_new_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_bitbang_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__UNIQUE_ID_alias236, !1, !"__UNIQUE_ID_alias236", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-xilinx.c", i32 529, i32 1}
!2 = !{ptr @__initcall__kmod_spi_xilinx__237_539_xilinx_spi_driver_init6, !3, !"__initcall__kmod_spi_xilinx__237_539_xilinx_spi_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/spi/spi-xilinx.c", i32 539, i32 1}
!4 = !{ptr @__exitcall_xilinx_spi_driver_exit, !3, !"__exitcall_xilinx_spi_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author238, !6, !"__UNIQUE_ID_author238", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-xilinx.c", i32 541, i32 1}
!7 = !{ptr @__UNIQUE_ID_description239, !8, !"__UNIQUE_ID_description239", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-xilinx.c", i32 542, i32 1}
!9 = !{ptr @__UNIQUE_ID_file240, !10, !"__UNIQUE_ID_file240", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-xilinx.c", i32 543, i32 1}
!11 = !{ptr @__UNIQUE_ID_license241, !10, !"__UNIQUE_ID_license241", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-xilinx.c", i32 535, i32 11}
!14 = !{ptr @xilinx_spi_driver, !15, !"xilinx_spi_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-xilinx.c", i32 531, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-xilinx.c", i32 404, i32 43}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-xilinx.c", i32 407, i32 9}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-xilinx.c", i32 414, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @xilinx_spi_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @xilinx_spi_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-xilinx.c", i32 420, i32 3}
!30 = !{ptr @xilinx_spi_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @xilinx_spi_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-xilinx.c", i32 490, i32 3}
!34 = !{ptr @xilinx_spi_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @xilinx_spi_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/spi/spi-xilinx.c", i32 494, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @xilinx_spi_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @xilinx_spi_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-xilinx.c", i32 306, i32 5}
!43 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @xilinx_spi_txrx_bufs._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @xilinx_spi_txrx_bufs._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @init_completion.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../include/linux/completion.h", i32 87, i32 2}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @xilinx_spi_of_match, !50, !"xilinx_spi_of_match", i1 false, i1 false}
!50 = !{!"../drivers/spi/spi-xilinx.c", i32 381, i32 34}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
!61 = !{i64 2152170874}
!62 = !{i64 4628752}
!63 = !{i64 4629170}
!64 = !{i64 2152169519}
!65 = !{i64 2154282644}
!66 = !{i64 2154282310}
