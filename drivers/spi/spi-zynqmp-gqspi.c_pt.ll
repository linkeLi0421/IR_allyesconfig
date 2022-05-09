; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-zynqmp-gqspi.c_pt.bc'
source_filename = "../drivers/spi/spi-zynqmp-gqspi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.zynqmp_qspi = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.completion, %struct.mutex }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.anon.74 = type { i8, i8, i8, i16 }
%struct.spi_mem_op = type { %struct.anon.74, %struct.anon.75, %struct.anon.76, %struct.anon.77 }
%struct.anon.75 = type { i8, i8, i8, i64 }
%struct.anon.76 = type { i8, i8, i8 }
%struct.anon.77 = type { i8, i8, i32, i32, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }

@__initcall__kmod_spi_zynqmp_gqspi__240_1251_zynqmp_qspi_driver_init6 = internal global ptr @zynqmp_qspi_driver_init, section ".initcall6.init", align 4
@zynqmp_qspi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @zynqmp_qspi_probe, ptr @zynqmp_qspi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @zynqmp_qspi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zynqmp_qspi_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_zynqmp_qspi_driver_exit = internal global ptr @zynqmp_qspi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [37 x i8] c"spi_zynqmp_gqspi.author=Xilinx, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [55 x i8] c"spi_zynqmp_gqspi.description=Xilinx Zynqmp QSPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [51 x i8] c"spi_zynqmp_gqspi.file=drivers/spi/spi-zynqmp-gqspi\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [29 x i8] c"spi_zynqmp_gqspi.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"zynqmp-qspi\00", [20 x i8] zeroinitializer }, align 32
@zynqmp_qspi_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynqmp-qspi-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@zynqmp_qspi_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @zynqmp_qspi_suspend, ptr @zynqmp_qspi_resume, ptr @zynqmp_qspi_suspend, ptr @zynqmp_qspi_resume, ptr @zynqmp_qspi_suspend, ptr @zynqmp_qspi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zynqmp_runtime_suspend, ptr @zynqmp_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@zynqmp_qspi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1120, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pclk clock not found.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zynqmp_qspi_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/spi/spi-zynqmp-gqspi.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zynqmp_qspi_probe._entry_ptr = internal global ptr @zynqmp_qspi_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_clk\00", [24 x i8] zeroinitializer }, align 32
@zynqmp_qspi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1127, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ref_clk clock not found.\0A\00", [38 x i8] zeroinitializer }, align 32
@zynqmp_qspi_probe._entry_ptr.10 = internal global ptr @zynqmp_qspi_probe._entry.8, section ".printk_index", align 4
@zynqmp_qspi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1134, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unable to enable APB clock.\0A\00", [35 x i8] zeroinitializer }, align 32
@zynqmp_qspi_probe._entry_ptr.13 = internal global ptr @zynqmp_qspi_probe._entry.11, section ".printk_index", align 4
@zynqmp_qspi_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1140, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to enable device clock.\0A\00", [32 x i8] zeroinitializer }, align 32
@zynqmp_qspi_probe._entry_ptr.16 = internal global ptr @zynqmp_qspi_probe._entry.14, section ".printk_index", align 4
@zynqmp_qspi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&xqspi->op_lock\00", [16 x i8] zeroinitializer }, align 32
@zynqmp_qspi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1155, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to pm_runtime_get_sync: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@zynqmp_qspi_probe._entry_ptr.20 = internal global ptr @zynqmp_qspi_probe._entry.18, section ".printk_index", align 4
@zynqmp_qspi_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 1171, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request_irq failed\0A\00", [44 x i8] zeroinitializer }, align 32
@zynqmp_qspi_probe._entry_ptr.23 = internal global ptr @zynqmp_qspi_probe._entry.21, section ".printk_index", align 4
@zynqmp_qspi_mem_ops = internal constant { %struct.spi_controller_mem_ops, [60 x i8] } { %struct.spi_controller_mem_ops { ptr null, ptr null, ptr @zynqmp_qspi_exec_op, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@zynqmp_qspi_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 1189, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"spi_register_controller failed\0A\00", [32 x i8] zeroinitializer }, align 32
@zynqmp_qspi_probe._entry_ptr.26 = internal global ptr @zynqmp_qspi_probe._entry.24, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@zynqmp_gqspi_selectslave._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 230, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid slave select\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"zynqmp_gqspi_selectslave\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@zynqmp_gqspi_selectslave._entry_ptr = internal global ptr @zynqmp_gqspi_selectslave._entry, section ".printk_index", align 4
@zynqmp_gqspi_selectslave._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.29, ptr @.str.4, i32 246, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid slave bus\0A\00", [45 x i8] zeroinitializer }, align 32
@zynqmp_gqspi_selectslave._entry_ptr.33 = internal global ptr @zynqmp_gqspi_selectslave._entry.31, section ".printk_index", align 4
@zynqmp_qspi_exec_op.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 0, i8 -20, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spi_zynqmp_gqspi\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zynqmp_qspi_exec_op\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cmd:%#x mode:%d.%d.%d.%d\0A\00", [38 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@zynqmp_qspi_chipselect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 395, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Chip select timed out\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zynqmp_qspi_chipselect\00", [41 x i8] zeroinitializer }, align 32
@zynqmp_qspi_chipselect._entry_ptr = internal global ptr @zynqmp_qspi_chipselect._entry, section ".printk_index", align 4
@zynqmp_qspi_selectspimode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 420, ptr @.str.30, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid SPI mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"zynqmp_qspi_selectspimode\00", [38 x i8] zeroinitializer }, align 32
@zynqmp_qspi_selectspimode._entry_ptr = internal global ptr @zynqmp_qspi_selectspimode._entry, section ".printk_index", align 4
@zynqmp_qspi_setuprxdma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 759, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ERR:rxdma:memory not mapped\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zynqmp_qspi_setuprxdma\00", [41 x i8] zeroinitializer }, align 32
@zynqmp_qspi_setuprxdma._entry_ptr = internal global ptr @zynqmp_qspi_setuprxdma._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@zynqmp_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.4, i32 910, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot enable APB clock.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zynqmp_runtime_resume\00", [42 x i8] zeroinitializer }, align 32
@zynqmp_runtime_resume._entry_ptr = internal global ptr @zynqmp_runtime_resume._entry, section ".printk_index", align 4
@zynqmp_runtime_resume._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.4, i32 916, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot enable device clock.\0A\00", [35 x i8] zeroinitializer }, align 32
@zynqmp_runtime_resume._entry_ptr.49 = internal global ptr @zynqmp_runtime_resume._entry.47, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@___asan_gen_.50 = private unnamed_addr constant [19 x i8] c"zynqmp_qspi_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1241, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1245, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"zynqmp_qspi_of_match\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1234, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"zynqmp_qspi_dev_pm_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1077, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1118, i32 41 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1120, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1125, i32 43 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1127, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1134, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1140, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1146, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1155, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1171, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [20 x i8] c"zynqmp_qspi_mem_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1083, i32 44 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 1189, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.135, i32 87, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 230, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 246, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 945, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 395, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 420, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 759, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 326, i32 6 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 910, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private constant [34 x i8] c"../drivers/spi/spi-zynqmp-gqspi.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 916, i32 3 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_zynqmp_qspi_driver_exit, ptr @__initcall__kmod_spi_zynqmp_gqspi__240_1251_zynqmp_qspi_driver_init6, ptr @zynqmp_gqspi_selectslave._entry, ptr @zynqmp_gqspi_selectslave._entry.31, ptr @zynqmp_gqspi_selectslave._entry_ptr, ptr @zynqmp_gqspi_selectslave._entry_ptr.33, ptr @zynqmp_qspi_chipselect._entry, ptr @zynqmp_qspi_chipselect._entry_ptr, ptr @zynqmp_qspi_driver_exit, ptr @zynqmp_qspi_probe._entry, ptr @zynqmp_qspi_probe._entry.11, ptr @zynqmp_qspi_probe._entry.14, ptr @zynqmp_qspi_probe._entry.18, ptr @zynqmp_qspi_probe._entry.21, ptr @zynqmp_qspi_probe._entry.24, ptr @zynqmp_qspi_probe._entry.8, ptr @zynqmp_qspi_probe._entry_ptr, ptr @zynqmp_qspi_probe._entry_ptr.10, ptr @zynqmp_qspi_probe._entry_ptr.13, ptr @zynqmp_qspi_probe._entry_ptr.16, ptr @zynqmp_qspi_probe._entry_ptr.20, ptr @zynqmp_qspi_probe._entry_ptr.23, ptr @zynqmp_qspi_probe._entry_ptr.26, ptr @zynqmp_qspi_selectspimode._entry, ptr @zynqmp_qspi_selectspimode._entry_ptr, ptr @zynqmp_qspi_setuprxdma._entry, ptr @zynqmp_qspi_setuprxdma._entry_ptr, ptr @zynqmp_runtime_resume._entry, ptr @zynqmp_runtime_resume._entry.47, ptr @zynqmp_runtime_resume._entry_ptr, ptr @zynqmp_runtime_resume._entry_ptr.49, ptr @zynqmp_qspi_driver, ptr @.str, ptr @zynqmp_qspi_of_match, ptr @zynqmp_qspi_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @zynqmp_qspi_probe.__key, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @zynqmp_qspi_mem_ops, ptr @.str.25, ptr @init_completion.__key, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_qspi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_qspi_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_qspi_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_qspi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_qspi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_qspi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_qspi_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_qspi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_qspi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_qspi_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_qspi_mem_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_qspi_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_gqspi_selectslave._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_gqspi_selectslave._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_qspi_chipselect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_qspi_selectspimode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_qspi_setuprxdma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_runtime_resume._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_qspi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @zynqmp_qspi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zynqmp_qspi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @zynqmp_qspi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_qspi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev1, i32 noundef 212, i1 noundef zeroext false) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %dev4 = getelementptr inbounds %struct.zynqmp_qspi, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev4, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %3, align 4
  %driver_data.i.i179 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i179 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %driver_data.i.i179, align 4
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.zynqmp_qspi, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call6 to i32
  br label %spi_controller_put.exit

if.end12:                                         ; preds = %if.end
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %pclk = getelementptr inbounds %struct.zynqmp_qspi, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call14, ptr %pclk, align 4
  %cmp.i180 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %10 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pclk, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %spi_controller_put.exit

if.end20:                                         ; preds = %if.end12
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #6
  %refclk = getelementptr inbounds %struct.zynqmp_qspi, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %refclk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call22, ptr %refclk, align 4
  %cmp.i181 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %do.end28, label %if.end31

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  %14 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %refclk, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %spi_controller_put.exit

if.end31:                                         ; preds = %if.end20
  %17 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pclk, align 4
  %call.i182 = tail call i32 @clk_prepare(ptr noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %tobool.not.i = icmp eq i32 %call.i182, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end31.do.end38_crit_edge

if.end31.do.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38

if.end.i:                                         ; preds = %if.end31
  %call1.i = tail call i32 @clk_enable(ptr noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end39, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %18) #6
  br label %do.end38

do.end38:                                         ; preds = %if.then3.i, %if.end31.do.end38_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i182, %if.end31.do.end38_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #9
  br label %spi_controller_put.exit

if.end39:                                         ; preds = %if.end.i
  %19 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %refclk, align 4
  %call.i183 = tail call i32 @clk_prepare(ptr noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool.not.i184 = icmp eq i32 %call.i183, 0
  br i1 %tobool.not.i184, label %if.end.i187, label %if.end39.do.end46_crit_edge

if.end39.do.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46

if.end.i187:                                      ; preds = %if.end39
  %call1.i185 = tail call i32 @clk_enable(ptr noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i185)
  %tobool2.not.i186 = icmp eq i32 %call1.i185, 0
  br i1 %tobool2.not.i186, label %if.end47, label %if.then3.i188

if.then3.i188:                                    ; preds = %if.end.i187
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %20) #6
  br label %do.end46

do.end46:                                         ; preds = %if.then3.i188, %if.end39.do.end46_crit_edge
  %retval.0.i189.ph = phi i32 [ %call1.i185, %if.then3.i188 ], [ %call.i183, %if.end39.do.end46_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  br label %clk_dis_pclk

if.end47:                                         ; preds = %if.end.i187
  %data_completion = getelementptr inbounds %struct.zynqmp_qspi, ptr %3, i32 0, i32 16
  %21 = ptrtoint ptr %data_completion to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %data_completion, align 4
  %wait.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %3, i32 0, i32 16, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @init_completion.__key) #6
  %op_lock = getelementptr inbounds %struct.zynqmp_qspi, ptr %3, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %op_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @zynqmp_qspi_probe.__key) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #6
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 3000) #6
  %call.i191 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #6
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call.i192 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %cmp = icmp slt i32 %call.i192, 0
  br i1 %cmp, label %do.end61, label %if.end63

do.end61:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call.i192) #9
  br label %clk_dis_all

if.end63:                                         ; preds = %if.end47
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #6, !srcloc !114
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr.i43.i = getelementptr i8, ptr %25, i32 260
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43.i) #6, !srcloc !115
  %27 = or i32 %26, 33554432
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr.i45.i = getelementptr i8, ptr %29, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %27) #6, !srcloc !114
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr.i47.i = getelementptr i8, ptr %31, i32 2068
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47.i) #6, !srcloc !115
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %34, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 %32) #6, !srcloc !114
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %add.ptr.i51.i = getelementptr i8, ptr %36, i32 2056
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51.i) #6, !srcloc !115
  %38 = or i32 %37, 14680064
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %add.ptr.i53.i = getelementptr i8, ptr %40, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %38) #6, !srcloc !114
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %42, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55.i, i32 -1106313216) #6, !srcloc !114
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %add.ptr.i57.i = getelementptr i8, ptr %44, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i, i32 -33554432) #6, !srcloc !114
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %46, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 0) #6, !srcloc !114
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %48, i32 256
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61.i) #6, !srcloc !115
  %50 = and i32 %49, -1040193765
  %51 = or i32 %50, 2080
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %53, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 %51) #6, !srcloc !114
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %55, i32 332
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 117440512) #6, !srcloc !114
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %57, i32 312
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #6, !srcloc !115
  %59 = or i32 %58, 536870912
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %61, i32 312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 %59) #6, !srcloc !114
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %63, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 536870912) #6, !srcloc !114
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %65, i32 300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i, i32 536870912) #6, !srcloc !114
  %66 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %67, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 268435456) #6, !srcloc !114
  %genfifocs4.i.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %3, i32 0, i32 10
  %68 = ptrtoint ptr %genfifocs4.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4096, ptr %genfifocs4.i.i, align 4
  %genfifobus10.i.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %3, i32 0, i32 11
  %69 = ptrtoint ptr %genfifobus10.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 16384, ptr %genfifobus10.i.i, align 4
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %71, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 16400256) #6, !srcloc !114
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regs, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %73, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 16777216) #6, !srcloc !114
  %call64 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.zynqmp_qspi, ptr %3, i32 0, i32 4
  %74 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call64, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call64)
  %cmp66 = icmp slt i32 %call64, 1
  br i1 %cmp66, label %if.end63.clk_dis_all_crit_edge, label %if.end68

if.end63.clk_dis_all_crit_edge:                   ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_dis_all

if.end68:                                         ; preds = %if.end63
  %75 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pdev, align 8
  %call.i193 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call64, ptr noundef nonnull @zynqmp_qspi_irq, ptr noundef null, i32 noundef 0, ptr noundef %76, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i193)
  %cmp72.not = icmp eq i32 %call.i193, 0
  br i1 %cmp72.not, label %if.end77, label %if.then73

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #9
  br label %clk_dis_all

if.end77:                                         ; preds = %if.end68
  %call79 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 17592186044415) #6
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %77 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 128, ptr %bits_per_word_mask, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %78 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 1, ptr %num_chipselect, align 2
  %mem_ops = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 53
  %79 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @zynqmp_qspi_mem_ops, ptr %mem_ops, align 4
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %80 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @zynqmp_qspi_setup_op, ptr %setup, align 4
  %81 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %refclk, align 4
  %call81 = tail call i32 @clk_get_rate(ptr noundef %82) #6
  %div178 = lshr i32 %call81, 1
  %max_speed_hz = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 9
  %83 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %div178, ptr %max_speed_hz, align 8
  %84 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 128, ptr %bits_per_word_mask, align 8
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %85 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 3843, ptr %mode_bits, align 8
  %of_node84 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %86 = ptrtoint ptr %of_node84 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %1, ptr %of_node84, align 8
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 36
  %87 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %auto_runtime_pm, align 4
  %call86 = tail call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end93, label %do.end91

do.end91:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #9
  br label %clk_dis_all

if.end93:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %call.i194 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %88 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store volatile i64 %call.i194, ptr %last_busy.i, align 8
  %call.i195 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #6
  br label %cleanup

clk_dis_all:                                      ; preds = %do.end91, %if.then73, %if.end63.clk_dis_all_crit_edge, %do.end61
  %ret.0 = phi i32 [ %call.i192, %do.end61 ], [ -6, %if.then73 ], [ %call86, %do.end91 ], [ -6, %if.end63.clk_dis_all_crit_edge ]
  %call.i196 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #6
  %call.i197 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 2) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  %89 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %refclk, align 4
  tail call void @clk_disable(ptr noundef %90) #6
  tail call void @clk_unprepare(ptr noundef %90) #6
  br label %clk_dis_pclk

clk_dis_pclk:                                     ; preds = %clk_dis_all, %do.end46
  %ret.1 = phi i32 [ %retval.0.i189.ph, %do.end46 ], [ %ret.0, %clk_dis_all ]
  %91 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %92) #6
  tail call void @clk_unprepare(ptr noundef %92) #6
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %clk_dis_pclk, %do.end38, %do.end28, %do.end, %if.then9
  %ret.2 = phi i32 [ %8, %if.then9 ], [ %12, %do.end ], [ %16, %do.end28 ], [ %retval.0.i.ph, %do.end38 ], [ %ret.1, %clk_dis_pclk ]
  tail call void @put_device(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.end93, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %spi_controller_put.exit ], [ 0, %if.end93 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_qspi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !114
  %refclk = getelementptr inbounds %struct.zynqmp_qspi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %refclk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  %pclk = getelementptr inbounds %struct.zynqmp_qspi, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
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
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_qspi_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %data.addr.i.i = alloca i32, align 4
  %intermediate.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 260
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !115
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %4, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %2) #6, !srcloc !114
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %6, i32 272
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #6, !srcloc !115
  %8 = xor i32 %7, -1
  %9 = and i32 %2, %8
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %mode = getelementptr inbounds %struct.zynqmp_qspi, ptr %dev_id, i32 0, i32 15
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %14, i32 2068
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #6, !srcloc !115
  %16 = lshr i32 %15, 24
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %18, i32 2068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %15) #6, !srcloc !114
  %phi.bo = and i32 %16, 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dma_status.0 = phi i32 [ %phi.bo, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and3 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intermediate.i)
  %19 = ptrtoint ptr %intermediate.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %intermediate.i, align 4
  %txbuf.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %dev_id, i32 0, i32 6
  %bytes_to_transfer.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %dev_id, i32 0, i32 8
  %20 = ptrtoint ptr %bytes_to_transfer.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytes_to_transfer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp31.i = icmp sgt i32 %21, 0
  br i1 %cmp31.i, label %if.then4.land.rhs.i_crit_edge, label %if.then4.zynqmp_qspi_filltxfifo.exit_crit_edge

if.then4.zynqmp_qspi_filltxfifo.exit_crit_edge:   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_filltxfifo.exit

if.then4.land.rhs.i_crit_edge:                    ; preds = %if.then4
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %if.end.i.land.rhs.i_crit_edge, %if.then4.land.rhs.i_crit_edge
  %22 = phi i32 [ %37, %if.end.i.land.rhs.i_crit_edge ], [ %21, %if.then4.land.rhs.i_crit_edge ]
  %count.034.i = phi i32 [ %count.1.i, %if.end.i.land.rhs.i_crit_edge ], [ 0, %if.then4.land.rhs.i_crit_edge ]
  %23 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %txbuf.i, align 4
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %land.rhs.i.zynqmp_qspi_filltxfifo.exit_crit_edge, label %while.body.i

land.rhs.i.zynqmp_qspi_filltxfifo.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_filltxfifo.exit

while.body.i:                                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp3.i = icmp ugt i32 %22, 3
  br i1 %cmp3.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 4)
  %intermediate.0.copyload.i = load i32, ptr %24, align 1
  %26 = ptrtoint ptr %intermediate.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %intermediate.0.copyload.i, ptr %intermediate.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %24, i32 4
  %27 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i50, ptr %txbuf.i, align 4
  %sub.i = add nsw i32 %22, -4
  %28 = ptrtoint ptr %bytes_to_transfer.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub.i, ptr %bytes_to_transfer.i, align 4
  %add.i = add nuw nsw i32 %count.034.i, 4
  br label %if.end.i

if.else.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = call ptr @memcpy(ptr %intermediate.i, ptr %24, i32 %22)
  %add.ptr11.i = getelementptr i8, ptr %24, i32 %22
  %30 = ptrtoint ptr %txbuf.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr11.i, ptr %txbuf.i, align 4
  %31 = ptrtoint ptr %bytes_to_transfer.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %bytes_to_transfer.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %count.1.i = phi i32 [ %add.i, %if.then.i ], [ %count.034.i, %if.else.i ]
  %32 = ptrtoint ptr %intermediate.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %intermediate.i.0.intermediate.i.0.intermediate.0.intermediate.0.intermediate.0..i = load i32, ptr %intermediate.i, align 4
  %33 = tail call i32 @llvm.bswap.i32(i32 %intermediate.i.0.intermediate.i.0.intermediate.0.intermediate.0.intermediate.0..i) #6
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %33) #6, !srcloc !114
  %36 = ptrtoint ptr %bytes_to_transfer.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bytes_to_transfer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i = icmp sgt i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %count.1.i)
  %cmp1.i = icmp ult i32 %count.1.i, 32
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %if.end.i.land.rhs.i_crit_edge, label %if.end.i.zynqmp_qspi_filltxfifo.exit_crit_edge

if.end.i.zynqmp_qspi_filltxfifo.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_filltxfifo.exit

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

zynqmp_qspi_filltxfifo.exit:                      ; preds = %if.end.i.zynqmp_qspi_filltxfifo.exit_crit_edge, %land.rhs.i.zynqmp_qspi_filltxfifo.exit_crit_edge, %if.then4.zynqmp_qspi_filltxfifo.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intermediate.i)
  br label %if.end5

if.end5:                                          ; preds = %zynqmp_qspi_filltxfifo.exit, %if.end.if.end5_crit_edge
  %ret.0 = phi i32 [ 1, %zynqmp_qspi_filltxfifo.exit ], [ 0, %if.end.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dma_status.0)
  %tobool7.not = icmp eq i32 %dma_status.0, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end5
  %dev.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %dev_id, i32 0, i32 5
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %dma_addr.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %dev_id, i32 0, i32 13
  %40 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dma_addr.i, align 4
  %dma_rx_bytes.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %dev_id, i32 0, i32 12
  %42 = ptrtoint ptr %dma_rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_rx_bytes.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef 2, i32 noundef 0) #6
  %44 = ptrtoint ptr %dma_rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_rx_bytes.i, align 4
  %rxbuf.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %dev_id, i32 0, i32 7
  %46 = ptrtoint ptr %rxbuf.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rxbuf.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %47, i32 %45
  store ptr %add.ptr.i51, ptr %rxbuf.i, align 4
  %bytes_to_receive.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %dev_id, i32 0, i32 9
  %48 = ptrtoint ptr %bytes_to_receive.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bytes_to_receive.i, align 4
  %sub.i52 = sub i32 %49, %45
  store i32 %sub.i52, ptr %bytes_to_receive.i, align 4
  store i32 0, ptr %dma_rx_bytes.i, align 4
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %51, i32 2076
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54, i32 33554432) #6, !srcloc !114
  %52 = ptrtoint ptr %bytes_to_receive.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bytes_to_receive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i55 = icmp sgt i32 %53, 0
  br i1 %cmp.i55, label %if.then.i56, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then.i56:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %55, i32 256
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #6, !srcloc !115
  %57 = and i32 %56, -193
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %59, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %57) #6, !srcloc !114
  %genfifoentry5.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %dev_id, i32 0, i32 14
  %60 = ptrtoint ptr %genfifoentry5.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %genfifoentry5.i, align 4
  %62 = ptrtoint ptr %bytes_to_receive.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bytes_to_receive.i, align 4
  %or.i = or i32 %63, %61
  %64 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %66, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %64) #6, !srcloc !114
  %67 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %68, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 0) #6, !srcloc !114
  %69 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %70, i32 256
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38.i) #6, !srcloc !115
  %72 = or i32 %71, 16
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %74, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %72) #6, !srcloc !114
  %75 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i, align 4
  %add.ptr.i42.i = getelementptr i8, ptr %76, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42.i, i32 -1878523904) #6, !srcloc !114
  br label %if.end15

if.else:                                          ; preds = %if.end5
  %77 = and i32 %10, 2176
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %77)
  %.not = icmp eq i32 %77, 128
  br i1 %.not, label %if.then13, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13:                                        ; preds = %if.else
  %bytes_to_receive.i58 = getelementptr inbounds %struct.zynqmp_qspi, ptr %dev_id, i32 0, i32 9
  %rxbuf.i.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %dev_id, i32 0, i32 7
  br label %land.rhs.i60

land.rhs.i60:                                     ; preds = %if.end.i71.land.rhs.i60_crit_edge, %if.then13
  %count.04.i = phi i32 [ 0, %if.then13 ], [ %count.1.i69, %if.end.i71.land.rhs.i60_crit_edge ]
  %78 = ptrtoint ptr %bytes_to_receive.i58 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bytes_to_receive.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp1.i59 = icmp sgt i32 %79, 0
  br i1 %cmp1.i59, label %while.body.i63, label %land.rhs.i60.if.end15_crit_edge

land.rhs.i60.if.end15_crit_edge:                  ; preds = %land.rhs.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

while.body.i63:                                   ; preds = %land.rhs.i60
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %79)
  %cmp3.i61 = icmp ugt i32 %79, 3
  %80 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i62 = getelementptr i8, ptr %81, i32 288
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i62) #6
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #6
  br i1 %cmp3.i61, label %if.then.i67, label %if.else.i68

if.then.i67:                                      ; preds = %while.body.i63
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rxbuf.i.i, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %83, ptr %85, align 4
  %87 = load ptr, ptr %rxbuf.i.i, align 4
  %add.ptr.i64 = getelementptr i8, ptr %87, i32 4
  store ptr %add.ptr.i64, ptr %rxbuf.i.i, align 4
  %88 = ptrtoint ptr %bytes_to_receive.i58 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bytes_to_receive.i58, align 4
  %sub.i65 = add i32 %89, -4
  store i32 %sub.i65, ptr %bytes_to_receive.i58, align 4
  %add.i66 = add nuw nsw i32 %count.04.i, 4
  br label %if.end.i71

if.else.i68:                                      ; preds = %while.body.i63
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %bytes_to_receive.i58 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bytes_to_receive.i58, align 4
  %add8.i = add i32 %91, %count.04.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.addr.i.i)
  %92 = ptrtoint ptr %data.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %83, ptr %data.addr.i.i, align 4
  %93 = ptrtoint ptr %rxbuf.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rxbuf.i.i, align 4
  %conv.i.i = and i32 %91, 255
  %95 = call ptr @memcpy(ptr %94, ptr %data.addr.i.i, i32 %conv.i.i)
  %96 = load ptr, ptr %rxbuf.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %96, i32 %conv.i.i
  store ptr %add.ptr.i3.i, ptr %rxbuf.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.addr.i.i)
  %97 = ptrtoint ptr %bytes_to_receive.i58 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %bytes_to_receive.i58, align 4
  br label %if.end.i71

if.end.i71:                                       ; preds = %if.else.i68, %if.then.i67
  %count.1.i69 = phi i32 [ %add.i66, %if.then.i67 ], [ %add8.i, %if.else.i68 ]
  %cmp.i70 = icmp ult i32 %count.1.i69, 128
  br i1 %cmp.i70, label %if.end.i71.land.rhs.i60_crit_edge, label %if.end.i71.if.end15_crit_edge

if.end.i71.if.end15_crit_edge:                    ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.end.i71.land.rhs.i60_crit_edge:                ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i60

if.end15:                                         ; preds = %if.end.i71.if.end15_crit_edge, %land.rhs.i60.if.end15_crit_edge, %if.else.if.end15_crit_edge, %if.then.i56, %if.then8.if.end15_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.else.if.end15_crit_edge ], [ 1, %if.then8.if.end15_crit_edge ], [ 1, %if.then.i56 ], [ 1, %land.rhs.i60.if.end15_crit_edge ], [ 1, %if.end.i71.if.end15_crit_edge ]
  %bytes_to_receive = getelementptr inbounds %struct.zynqmp_qspi, ptr %dev_id, i32 0, i32 9
  %98 = ptrtoint ptr %bytes_to_receive to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %bytes_to_receive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp16 = icmp eq i32 %99, 0
  br i1 %cmp16, label %land.lhs.true17, label %if.end15.if.end23_crit_edge

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

land.lhs.true17:                                  ; preds = %if.end15
  %bytes_to_transfer = getelementptr inbounds %struct.zynqmp_qspi, ptr %dev_id, i32 0, i32 8
  %100 = ptrtoint ptr %bytes_to_transfer to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %bytes_to_transfer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp18 = icmp eq i32 %101, 0
  %102 = and i32 %2, -2146893824
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2146893824, i32 %102)
  %cmp21 = icmp eq i32 %102, -2146893824
  %or.cond41 = and i1 %cmp21, %cmp18
  br i1 %or.cond41, label %if.then22, label %land.lhs.true17.if.end23_crit_edge

land.lhs.true17.if.end23_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then22:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %104, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73, i32 -1811349504) #6, !srcloc !114
  %data_completion = getelementptr inbounds %struct.zynqmp_qspi, ptr %dev_id, i32 0, i32 16
  tail call void @complete(ptr noundef %data_completion) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %land.lhs.true17.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %ret.2 = phi i32 [ 1, %if.then22 ], [ %ret.1, %land.lhs.true17.if.end23_crit_edge ], [ %ret.1, %if.end15.if.end23_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_qspi_setup_op(ptr nocapture noundef readonly %qspi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %qspi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %busy = getelementptr inbounds %struct.spi_controller, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %busy, align 1, !range !116
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !114
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
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_qspi_exec_op(ptr nocapture noundef readonly %mem, ptr nocapture noundef readonly %op) #2 align 64 {
entry:
  %intermediate.i.i320 = alloca i32, align 4
  %intermediate.i.i283 = alloca i32, align 4
  %intermediate.i.i244 = alloca i32, align 4
  %intermediate.i.i = alloca i32, align 4
  %opcode = alloca i16, align 2
  %opaddr = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %opcode) #6
  %opcode1 = getelementptr inbounds %struct.anon.74, ptr %op, i32 0, i32 3
  %6 = ptrtoint ptr %opcode1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %opcode1, align 4
  %8 = ptrtoint ptr %opcode to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %opcode, align 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %opaddr) #6
  %9 = ptrtoint ptr %opaddr to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 -1, ptr %opaddr, align 8, !annotation !117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zynqmp_qspi_exec_op.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@zynqmp_qspi_exec_op, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !118

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %12 = ptrtoint ptr %opcode1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %opcode1, align 4
  %conv = zext i16 %13 to i32
  %buswidth = getelementptr inbounds %struct.anon.74, ptr %op, i32 0, i32 1
  %14 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buswidth, align 1
  %conv9 = zext i8 %15 to i32
  %buswidth10 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %buswidth10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %buswidth10, align 1
  %conv11 = zext i8 %17 to i32
  %buswidth12 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %buswidth12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buswidth12, align 1
  %conv13 = zext i8 %19 to i32
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 4
  %conv15 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zynqmp_qspi_exec_op.__UNIQUE_ID_ddebug239, ptr noundef %11, ptr noundef nonnull @.str.36, i32 noundef %conv, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %conv13, i32 noundef %conv15) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %op_lock = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %op_lock, i32 noundef 0) #6
  %22 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mem, align 4
  %refclk.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 2
  %24 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %refclk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %25) #6
  %max_speed_hz.i = getelementptr inbounds %struct.spi_device, ptr %23, i32 0, i32 3
  %div1.i = lshr i32 %call.i, 1
  %26 = ptrtoint ptr %max_speed_hz.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_speed_hz.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %27)
  %cmp1.i = icmp ugt i32 %div1.i, %27
  br i1 %cmp1.i, label %while.cond.1.i, label %do.end.zynqmp_qspi_config_op.exit_crit_edge

do.end.zynqmp_qspi_config_op.exit_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_config_op.exit

while.cond.1.i:                                   ; preds = %do.end
  %div1.1.i = lshr i32 %call.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.1.i, i32 %27)
  %cmp1.1.i = icmp ugt i32 %div1.1.i, %27
  br i1 %cmp1.1.i, label %while.cond.2.i, label %while.cond.1.i.zynqmp_qspi_config_op.exit_crit_edge

while.cond.1.i.zynqmp_qspi_config_op.exit_crit_edge: ; preds = %while.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_config_op.exit

while.cond.2.i:                                   ; preds = %while.cond.1.i
  %div1.2.i = lshr i32 %call.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.2.i, i32 %27)
  %cmp1.2.i = icmp ugt i32 %div1.2.i, %27
  br i1 %cmp1.2.i, label %while.cond.3.i, label %while.cond.2.i.zynqmp_qspi_config_op.exit_crit_edge

while.cond.2.i.zynqmp_qspi_config_op.exit_crit_edge: ; preds = %while.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_config_op.exit

while.cond.3.i:                                   ; preds = %while.cond.2.i
  %div1.3.i = lshr i32 %call.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.3.i, i32 %27)
  %cmp1.3.i = icmp ugt i32 %div1.3.i, %27
  br i1 %cmp1.3.i, label %while.cond.4.i, label %while.cond.3.i.zynqmp_qspi_config_op.exit_crit_edge

while.cond.3.i.zynqmp_qspi_config_op.exit_crit_edge: ; preds = %while.cond.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_config_op.exit

while.cond.4.i:                                   ; preds = %while.cond.3.i
  %div1.4.i = lshr i32 %call.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.4.i, i32 %27)
  %cmp1.4.i = icmp ugt i32 %div1.4.i, %27
  br i1 %cmp1.4.i, label %while.cond.5.i, label %while.cond.4.i.zynqmp_qspi_config_op.exit_crit_edge

while.cond.4.i.zynqmp_qspi_config_op.exit_crit_edge: ; preds = %while.cond.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_config_op.exit

while.cond.5.i:                                   ; preds = %while.cond.4.i
  %div1.5.i = lshr i32 %call.i, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.5.i, i32 %27)
  %cmp1.5.i = icmp ugt i32 %div1.5.i, %27
  br i1 %cmp1.5.i, label %while.cond.6.i, label %while.cond.5.i.zynqmp_qspi_config_op.exit_crit_edge

while.cond.5.i.zynqmp_qspi_config_op.exit_crit_edge: ; preds = %while.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_config_op.exit

while.cond.6.i:                                   ; preds = %while.cond.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %div1.6.i = lshr i32 %call.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.6.i, i32 %27)
  %cmp1.6.i = icmp ugt i32 %div1.6.i, %27
  %spec.select.i = select i1 %cmp1.6.i, i32 56, i32 48
  br label %zynqmp_qspi_config_op.exit

zynqmp_qspi_config_op.exit:                       ; preds = %while.cond.6.i, %while.cond.5.i.zynqmp_qspi_config_op.exit_crit_edge, %while.cond.4.i.zynqmp_qspi_config_op.exit_crit_edge, %while.cond.3.i.zynqmp_qspi_config_op.exit_crit_edge, %while.cond.2.i.zynqmp_qspi_config_op.exit_crit_edge, %while.cond.1.i.zynqmp_qspi_config_op.exit_crit_edge, %do.end.zynqmp_qspi_config_op.exit_crit_edge
  %baud_rate_val.0.lcssa.i = phi i32 [ 0, %do.end.zynqmp_qspi_config_op.exit_crit_edge ], [ 8, %while.cond.1.i.zynqmp_qspi_config_op.exit_crit_edge ], [ 16, %while.cond.2.i.zynqmp_qspi_config_op.exit_crit_edge ], [ 24, %while.cond.3.i.zynqmp_qspi_config_op.exit_crit_edge ], [ 32, %while.cond.4.i.zynqmp_qspi_config_op.exit_crit_edge ], [ 40, %while.cond.5.i.zynqmp_qspi_config_op.exit_crit_edge ], [ %spec.select.i, %while.cond.6.i ]
  %regs.i.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 1
  %28 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 256
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !115
  %mode.i = getelementptr inbounds %struct.spi_device, ptr %23, i32 0, i32 7
  %31 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mode.i, align 8
  %and3.i = shl i32 %32, 2
  %33 = and i32 %and3.i, 4
  %and5.i = and i32 %32, 2
  %34 = and i32 %30, -1040187393
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  %.masked.i = or i32 %35, %baud_rate_val.0.lcssa.i
  %and10.i = or i32 %.masked.i, %and5.i
  %or12.i = or i32 %and10.i, %33
  %36 = tail call i32 @llvm.bswap.i32(i32 %or12.i) #6
  %37 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %38, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %36) #6, !srcloc !114
  %39 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mem, align 4
  %master.i = getelementptr inbounds %struct.spi_device, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %master.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 8
  %43 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver_data.i.i.i, align 4
  %genfifobus.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %44, i32 0, i32 11
  %45 = ptrtoint ptr %genfifobus.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 16384, ptr %genfifobus.i, align 4
  %genfifocs.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %44, i32 0, i32 10
  %46 = ptrtoint ptr %genfifocs.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4096, ptr %genfifocs.i, align 4
  %regs.i.i234 = getelementptr inbounds %struct.zynqmp_qspi, ptr %44, i32 0, i32 1
  %47 = ptrtoint ptr %regs.i.i234 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i.i234, align 4
  %add.ptr.i.i235 = getelementptr i8, ptr %48, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i235, i32 72613888) #6, !srcloc !114
  %49 = ptrtoint ptr %regs.i.i234 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i.i234, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %50, i32 256
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.i) #6, !srcloc !115
  %52 = or i32 %51, 16
  %53 = ptrtoint ptr %regs.i.i234 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i234, align 4
  %add.ptr.i50.i = getelementptr i8, ptr %54, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i, i32 %52) #6, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %55, 100
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i.do.body.i_crit_edge, %zynqmp_qspi_config_op.exit
  %56 = ptrtoint ptr %regs.i.i234 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i.i234, align 4
  %add.ptr.i52.i = getelementptr i8, ptr %57, i32 260
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52.i) #6, !srcloc !115
  %59 = and i32 %58, -2147418112
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147418112, i32 %59)
  %.not.i = icmp eq i32 %59, -2147418112
  br i1 %.not.i, label %do.body.i.do.end24.i_crit_edge, label %do.end.i

do.body.i.do.end24.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24.i

do.end.i:                                         ; preds = %do.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !119
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %60, %add.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %do.end.i.do.body.i_crit_edge, label %do.end.i.do.end24.i_crit_edge

do.end.i.do.end24.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24.i

do.end.i.do.body.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.end24.i:                                       ; preds = %do.end.i.do.end24.i_crit_edge, %do.body.i.do.end24.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %sub25.i = sub i32 %61, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub25.i)
  %cmp26.i = icmp sgt i32 %sub25.i, -1
  br i1 %cmp26.i, label %do.end30.i, label %do.end24.i.zynqmp_qspi_chipselect.exit_crit_edge

do.end24.i.zynqmp_qspi_chipselect.exit_crit_edge: ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_chipselect.exit

do.end30.i:                                       ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %44, i32 0, i32 5
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.37) #9
  br label %zynqmp_qspi_chipselect.exit

zynqmp_qspi_chipselect.exit:                      ; preds = %do.end30.i, %do.end24.i.zynqmp_qspi_chipselect.exit_crit_edge
  %genfifocs = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 10
  %64 = ptrtoint ptr %genfifocs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %genfifocs, align 4
  %genfifobus = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 11
  %66 = ptrtoint ptr %genfifobus to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %genfifobus, align 4
  %or19 = or i32 %67, %65
  %68 = ptrtoint ptr %opcode1 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %opcode1, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool22.not = icmp eq i16 %69, 0
  br i1 %tobool22.not, label %zynqmp_qspi_chipselect.exit.if.end36_crit_edge, label %if.then23

zynqmp_qspi_chipselect.exit.if.end36_crit_edge:   ; preds = %zynqmp_qspi_chipselect.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then23:                                        ; preds = %zynqmp_qspi_chipselect.exit
  %data_completion = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 16
  %70 = ptrtoint ptr %data_completion to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %data_completion, align 4
  %txbuf = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 6
  %71 = ptrtoint ptr %txbuf to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %opcode, ptr %txbuf, align 4
  %rxbuf = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 7
  %72 = ptrtoint ptr %rxbuf to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %rxbuf, align 4
  %73 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %op, align 8
  %conv25 = zext i8 %74 to i32
  %bytes_to_transfer = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 8
  %75 = ptrtoint ptr %bytes_to_transfer to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv25, ptr %bytes_to_transfer, align 4
  %bytes_to_receive = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 9
  %76 = ptrtoint ptr %bytes_to_receive to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %bytes_to_receive, align 4
  %buswidth27 = getelementptr inbounds %struct.anon.74, ptr %op, i32 0, i32 1
  %77 = ptrtoint ptr %buswidth27 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %buswidth27, align 1
  call fastcc void @zynqmp_qspi_fillgenfifo(ptr noundef %5, i8 noundef zeroext %78, i32 noundef %or19) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intermediate.i.i)
  %79 = ptrtoint ptr %intermediate.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %intermediate.i.i, align 4
  %80 = ptrtoint ptr %bytes_to_transfer to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bytes_to_transfer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp31.i.i = icmp sgt i32 %81, 0
  br i1 %cmp31.i.i, label %if.then23.land.rhs.i.i_crit_edge, label %if.then23.zynqmp_qspi_filltxfifo.exit.i_crit_edge

if.then23.zynqmp_qspi_filltxfifo.exit.i_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_filltxfifo.exit.i

if.then23.land.rhs.i.i_crit_edge:                 ; preds = %if.then23
  br label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end.i.i.land.rhs.i.i_crit_edge, %if.then23.land.rhs.i.i_crit_edge
  %82 = phi i32 [ %97, %if.end.i.i.land.rhs.i.i_crit_edge ], [ %81, %if.then23.land.rhs.i.i_crit_edge ]
  %count.034.i.i = phi i32 [ %count.1.i.i, %if.end.i.i.land.rhs.i.i_crit_edge ], [ 0, %if.then23.land.rhs.i.i_crit_edge ]
  %83 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %txbuf, align 4
  %tobool.not.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i, label %land.rhs.i.i.zynqmp_qspi_filltxfifo.exit.i_crit_edge, label %while.body.i.i

land.rhs.i.i.zynqmp_qspi_filltxfifo.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_filltxfifo.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %82)
  %cmp3.i.i = icmp ugt i32 %82, 3
  br i1 %cmp3.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %intermediate.0.copyload.i.i = load i32, ptr %84, align 1
  %86 = ptrtoint ptr %intermediate.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %intermediate.0.copyload.i.i, ptr %intermediate.i.i, align 4
  %add.ptr.i.i236 = getelementptr i8, ptr %84, i32 4
  %87 = ptrtoint ptr %txbuf to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %add.ptr.i.i236, ptr %txbuf, align 4
  %sub.i.i = add nsw i32 %82, -4
  %88 = ptrtoint ptr %bytes_to_transfer to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub.i.i, ptr %bytes_to_transfer, align 4
  %add.i.i = add nuw nsw i32 %count.034.i.i, 4
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %89 = call ptr @memcpy(ptr %intermediate.i.i, ptr %84, i32 %82)
  %add.ptr11.i.i = getelementptr i8, ptr %84, i32 %82
  %90 = ptrtoint ptr %txbuf to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %add.ptr11.i.i, ptr %txbuf, align 4
  %91 = ptrtoint ptr %bytes_to_transfer to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %bytes_to_transfer, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %count.1.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %count.034.i.i, %if.else.i.i ]
  %92 = ptrtoint ptr %intermediate.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %intermediate.i.i.0.intermediate.i.i.0.intermediate.i.0.intermediate.i.0.intermediate.0.intermediate.0.intermediate.0..i.i = load i32, ptr %intermediate.i.i, align 4
  %93 = call i32 @llvm.bswap.i32(i32 %intermediate.i.i.0.intermediate.i.i.0.intermediate.i.0.intermediate.i.0.intermediate.0.intermediate.0.intermediate.0..i.i) #6
  %94 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %95, i32 284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %93) #6, !srcloc !114
  %96 = ptrtoint ptr %bytes_to_transfer to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bytes_to_transfer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp.i.i = icmp sgt i32 %97, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count.1.i.i)
  %cmp1.i.i = icmp ult i32 %count.1.i.i, 64
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp1.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.land.rhs.i.i_crit_edge, label %if.end.i.i.zynqmp_qspi_filltxfifo.exit.i_crit_edge

if.end.i.i.zynqmp_qspi_filltxfifo.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_filltxfifo.exit.i

if.end.i.i.land.rhs.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i

zynqmp_qspi_filltxfifo.exit.i:                    ; preds = %if.end.i.i.zynqmp_qspi_filltxfifo.exit.i_crit_edge, %land.rhs.i.i.zynqmp_qspi_filltxfifo.exit.i_crit_edge, %if.then23.zynqmp_qspi_filltxfifo.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intermediate.i.i)
  %mode.i237 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 15
  %98 = ptrtoint ptr %mode.i237 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mode.i237, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp.i238 = icmp eq i32 %99, 1
  br i1 %cmp.i238, label %if.then.i, label %zynqmp_qspi_filltxfifo.exit.i.zynqmp_qspi_write_op.exit_crit_edge

zynqmp_qspi_filltxfifo.exit.i.zynqmp_qspi_write_op.exit_crit_edge: ; preds = %zynqmp_qspi_filltxfifo.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_write_op.exit

if.then.i:                                        ; preds = %zynqmp_qspi_filltxfifo.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %100 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %101, i32 256
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #6, !srcloc !115
  %103 = and i32 %102, -193
  %104 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %105, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %103) #6, !srcloc !114
  %106 = ptrtoint ptr %mode.i237 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %mode.i237, align 4
  br label %zynqmp_qspi_write_op.exit

zynqmp_qspi_write_op.exit:                        ; preds = %if.then.i, %zynqmp_qspi_filltxfifo.exit.i.zynqmp_qspi_write_op.exit_crit_edge
  %107 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %108, i32 256
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !115
  %110 = or i32 %109, 16
  %111 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i241 = getelementptr i8, ptr %112, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i241, i32 %110) #6, !srcloc !114
  %113 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i243 = getelementptr i8, ptr %114, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i243, i32 -2080374784) #6, !srcloc !114
  %call32 = call i32 @wait_for_completion_timeout(ptr noundef %data_completion, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %zynqmp_qspi_write_op.exit.return_err_crit_edge, label %zynqmp_qspi_write_op.exit.if.end36_crit_edge

zynqmp_qspi_write_op.exit.if.end36_crit_edge:     ; preds = %zynqmp_qspi_write_op.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

zynqmp_qspi_write_op.exit.return_err_crit_edge:   ; preds = %zynqmp_qspi_write_op.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %return_err

if.end36:                                         ; preds = %zynqmp_qspi_write_op.exit.if.end36_crit_edge, %zynqmp_qspi_chipselect.exit.if.end36_crit_edge
  %addr37 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %115 = ptrtoint ptr %addr37 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %addr37, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool39.not = icmp eq i8 %116, 0
  br i1 %tobool39.not, label %if.end36.if.end70_crit_edge, label %if.then40

if.end36.if.end70_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then40:                                        ; preds = %if.end36
  %txbuf41 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 6
  %117 = ptrtoint ptr %txbuf41 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %opaddr, ptr %txbuf41, align 4
  %118 = ptrtoint ptr %addr37 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %addr37, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %cmp400.not = icmp eq i8 %119, 0
  br i1 %cmp400.not, label %if.then40.for.end_crit_edge, label %for.body.lr.ph

if.then40.for.end_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then40
  %conv44399 = zext i8 %119 to i32
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %conv44402 = phi i32 [ %conv44399, %for.body.lr.ph ], [ %conv44, %for.body.for.body_crit_edge ]
  %i.0401 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %120 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %val, align 8
  %122 = xor i32 %i.0401, -1
  %sub50 = add nsw i32 %conv44402, %122
  %mul = shl i32 %sub50, 3
  %sh_prom = zext i32 %mul to i64
  %shr = lshr i64 %121, %sh_prom
  %conv51 = trunc i64 %shr to i8
  %123 = ptrtoint ptr %txbuf41 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %txbuf41, align 4
  %add.ptr = getelementptr i8, ptr %124, i32 %i.0401
  %125 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 %conv51, ptr %add.ptr, align 1
  %inc = add nuw nsw i32 %i.0401, 1
  %126 = ptrtoint ptr %addr37 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %addr37, align 8
  %conv44 = zext i8 %127 to i32
  %cmp = icmp ult i32 %inc, %conv44
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then40.for.end_crit_edge
  %data_completion53 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 16
  %128 = ptrtoint ptr %data_completion53 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %data_completion53, align 4
  %rxbuf54 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 7
  %129 = ptrtoint ptr %rxbuf54 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %rxbuf54, align 4
  %130 = ptrtoint ptr %addr37 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %addr37, align 8
  %conv57 = zext i8 %131 to i32
  %bytes_to_transfer58 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 8
  %132 = ptrtoint ptr %bytes_to_transfer58 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %conv57, ptr %bytes_to_transfer58, align 4
  %bytes_to_receive59 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 9
  %133 = ptrtoint ptr %bytes_to_receive59 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %bytes_to_receive59, align 4
  %buswidth61 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %134 = ptrtoint ptr %buswidth61 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %buswidth61, align 1
  call fastcc void @zynqmp_qspi_fillgenfifo(ptr noundef %5, i8 noundef zeroext %135, i32 noundef %or19) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intermediate.i.i244)
  %136 = ptrtoint ptr %intermediate.i.i244 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 -1, ptr %intermediate.i.i244, align 4
  %137 = ptrtoint ptr %bytes_to_transfer58 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %bytes_to_transfer58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp31.i.i247 = icmp sgt i32 %138, 0
  br i1 %cmp31.i.i247, label %for.end.land.rhs.i.i252_crit_edge, label %for.end.zynqmp_qspi_filltxfifo.exit.i271_crit_edge

for.end.zynqmp_qspi_filltxfifo.exit.i271_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_filltxfifo.exit.i271

for.end.land.rhs.i.i252_crit_edge:                ; preds = %for.end
  br label %land.rhs.i.i252

land.rhs.i.i252:                                  ; preds = %if.end.i.i268.land.rhs.i.i252_crit_edge, %for.end.land.rhs.i.i252_crit_edge
  %139 = phi i32 [ %154, %if.end.i.i268.land.rhs.i.i252_crit_edge ], [ %138, %for.end.land.rhs.i.i252_crit_edge ]
  %count.034.i.i250 = phi i32 [ %count.1.i.i262, %if.end.i.i268.land.rhs.i.i252_crit_edge ], [ 0, %for.end.land.rhs.i.i252_crit_edge ]
  %140 = ptrtoint ptr %txbuf41 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %txbuf41, align 4
  %tobool.not.i.i251 = icmp eq ptr %141, null
  br i1 %tobool.not.i.i251, label %land.rhs.i.i252.zynqmp_qspi_filltxfifo.exit.i271_crit_edge, label %while.body.i.i254

land.rhs.i.i252.zynqmp_qspi_filltxfifo.exit.i271_crit_edge: ; preds = %land.rhs.i.i252
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_filltxfifo.exit.i271

while.body.i.i254:                                ; preds = %land.rhs.i.i252
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %139)
  %cmp3.i.i253 = icmp ugt i32 %139, 3
  br i1 %cmp3.i.i253, label %if.then.i.i259, label %if.else.i.i261

if.then.i.i259:                                   ; preds = %while.body.i.i254
  call void @__sanitizer_cov_trace_pc() #8
  %142 = ptrtoint ptr %141 to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %intermediate.0.copyload.i.i255 = load i32, ptr %141, align 1
  %143 = ptrtoint ptr %intermediate.i.i244 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %intermediate.0.copyload.i.i255, ptr %intermediate.i.i244, align 4
  %add.ptr.i.i256 = getelementptr i8, ptr %141, i32 4
  %144 = ptrtoint ptr %txbuf41 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %add.ptr.i.i256, ptr %txbuf41, align 4
  %sub.i.i257 = add nsw i32 %139, -4
  %145 = ptrtoint ptr %bytes_to_transfer58 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %sub.i.i257, ptr %bytes_to_transfer58, align 4
  %add.i.i258 = add nuw nsw i32 %count.034.i.i250, 4
  br label %if.end.i.i268

if.else.i.i261:                                   ; preds = %while.body.i.i254
  call void @__sanitizer_cov_trace_pc() #8
  %146 = call ptr @memcpy(ptr %intermediate.i.i244, ptr %141, i32 %139)
  %add.ptr11.i.i260 = getelementptr i8, ptr %141, i32 %139
  %147 = ptrtoint ptr %txbuf41 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %add.ptr11.i.i260, ptr %txbuf41, align 4
  %148 = ptrtoint ptr %bytes_to_transfer58 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 0, ptr %bytes_to_transfer58, align 4
  br label %if.end.i.i268

if.end.i.i268:                                    ; preds = %if.else.i.i261, %if.then.i.i259
  %count.1.i.i262 = phi i32 [ %add.i.i258, %if.then.i.i259 ], [ %count.034.i.i250, %if.else.i.i261 ]
  %149 = ptrtoint ptr %intermediate.i.i244 to i32
  call void @__asan_load4_noabort(i32 %149)
  %intermediate.i.i244.0.intermediate.i.i244.0.intermediate.i.0.intermediate.i.0.intermediate.0.intermediate.0.intermediate.0..i.i263 = load i32, ptr %intermediate.i.i244, align 4
  %150 = call i32 @llvm.bswap.i32(i32 %intermediate.i.i244.0.intermediate.i.i244.0.intermediate.i.0.intermediate.i.0.intermediate.0.intermediate.0.intermediate.0..i.i263) #6
  %151 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i264 = getelementptr i8, ptr %152, i32 284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i264, i32 %150) #6, !srcloc !114
  %153 = ptrtoint ptr %bytes_to_transfer58 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %bytes_to_transfer58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp.i.i265 = icmp sgt i32 %154, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count.1.i.i262)
  %cmp1.i.i266 = icmp ult i32 %count.1.i.i262, 64
  %or.cond.i.i267 = select i1 %cmp.i.i265, i1 %cmp1.i.i266, i1 false
  br i1 %or.cond.i.i267, label %if.end.i.i268.land.rhs.i.i252_crit_edge, label %if.end.i.i268.zynqmp_qspi_filltxfifo.exit.i271_crit_edge

if.end.i.i268.zynqmp_qspi_filltxfifo.exit.i271_crit_edge: ; preds = %if.end.i.i268
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_filltxfifo.exit.i271

if.end.i.i268.land.rhs.i.i252_crit_edge:          ; preds = %if.end.i.i268
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i252

zynqmp_qspi_filltxfifo.exit.i271:                 ; preds = %if.end.i.i268.zynqmp_qspi_filltxfifo.exit.i271_crit_edge, %land.rhs.i.i252.zynqmp_qspi_filltxfifo.exit.i271_crit_edge, %for.end.zynqmp_qspi_filltxfifo.exit.i271_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intermediate.i.i244)
  %mode.i269 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 15
  %155 = ptrtoint ptr %mode.i269 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %mode.i269, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %156)
  %cmp.i270 = icmp eq i32 %156, 1
  br i1 %cmp.i270, label %if.then.i275, label %zynqmp_qspi_filltxfifo.exit.i271.zynqmp_qspi_write_op.exit276_crit_edge

zynqmp_qspi_filltxfifo.exit.i271.zynqmp_qspi_write_op.exit276_crit_edge: ; preds = %zynqmp_qspi_filltxfifo.exit.i271
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_write_op.exit276

if.then.i275:                                     ; preds = %zynqmp_qspi_filltxfifo.exit.i271
  call void @__sanitizer_cov_trace_pc() #8
  %157 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i273 = getelementptr i8, ptr %158, i32 256
  %159 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i273) #6, !srcloc !115
  %160 = and i32 %159, -193
  %161 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i10.i274 = getelementptr i8, ptr %162, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i274, i32 %160) #6, !srcloc !114
  %163 = ptrtoint ptr %mode.i269 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %mode.i269, align 4
  br label %zynqmp_qspi_write_op.exit276

zynqmp_qspi_write_op.exit276:                     ; preds = %if.then.i275, %zynqmp_qspi_filltxfifo.exit.i271.zynqmp_qspi_write_op.exit276_crit_edge
  %164 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i278 = getelementptr i8, ptr %165, i32 256
  %166 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i278) #6, !srcloc !115
  %167 = or i32 %166, 16
  %168 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i280 = getelementptr i8, ptr %169, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280, i32 %167) #6, !srcloc !114
  %170 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i282 = getelementptr i8, ptr %171, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282, i32 -2080309248) #6, !srcloc !114
  %call66 = call i32 @wait_for_completion_timeout(ptr noundef %data_completion53, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %zynqmp_qspi_write_op.exit276.return_err_crit_edge, label %zynqmp_qspi_write_op.exit276.if.end70_crit_edge

zynqmp_qspi_write_op.exit276.if.end70_crit_edge:  ; preds = %zynqmp_qspi_write_op.exit276
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

zynqmp_qspi_write_op.exit276.return_err_crit_edge: ; preds = %zynqmp_qspi_write_op.exit276
  call void @__sanitizer_cov_trace_pc() #8
  br label %return_err

if.end70:                                         ; preds = %zynqmp_qspi_write_op.exit276.if.end70_crit_edge, %if.end36.if.end70_crit_edge
  %dummy71 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %172 = ptrtoint ptr %dummy71 to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %dummy71, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool73.not = icmp eq i8 %173, 0
  br i1 %tobool73.not, label %if.end70.if.end90_crit_edge, label %if.then74

if.end70.if.end90_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90

if.then74:                                        ; preds = %if.end70
  %txbuf75 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 6
  %174 = ptrtoint ptr %txbuf75 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %txbuf75, align 4
  %rxbuf76 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 7
  %175 = ptrtoint ptr %rxbuf76 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %rxbuf76, align 4
  %176 = ptrtoint ptr %dummy71 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %dummy71, align 8
  %conv79 = zext i8 %177 to i16
  %mul80 = shl nuw nsw i16 %conv79, 3
  %buswidth82 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %178 = ptrtoint ptr %buswidth82 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %buswidth82, align 1
  %div.rhs.trunc = zext i8 %179 to i16
  %div398 = udiv i16 %mul80, %div.rhs.trunc
  %div.zext = zext i16 %div398 to i32
  %bytes_to_transfer84 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 8
  %180 = ptrtoint ptr %bytes_to_transfer84 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %div.zext, ptr %bytes_to_transfer84, align 4
  %bytes_to_receive85 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 9
  %181 = ptrtoint ptr %bytes_to_receive85 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %bytes_to_receive85, align 4
  %data86 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %182 = ptrtoint ptr %data86 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %data86, align 4
  call fastcc void @zynqmp_qspi_fillgenfifo(ptr noundef %5, i8 noundef zeroext %183, i32 noundef %or19) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intermediate.i.i283)
  %184 = ptrtoint ptr %intermediate.i.i283 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 -1, ptr %intermediate.i.i283, align 4
  %185 = ptrtoint ptr %bytes_to_transfer84 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %bytes_to_transfer84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %cmp31.i.i286 = icmp sgt i32 %186, 0
  br i1 %cmp31.i.i286, label %if.then74.land.rhs.i.i291_crit_edge, label %if.then74.zynqmp_qspi_filltxfifo.exit.i310_crit_edge

if.then74.zynqmp_qspi_filltxfifo.exit.i310_crit_edge: ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_filltxfifo.exit.i310

if.then74.land.rhs.i.i291_crit_edge:              ; preds = %if.then74
  br label %land.rhs.i.i291

land.rhs.i.i291:                                  ; preds = %if.end.i.i307.land.rhs.i.i291_crit_edge, %if.then74.land.rhs.i.i291_crit_edge
  %187 = phi i32 [ %202, %if.end.i.i307.land.rhs.i.i291_crit_edge ], [ %186, %if.then74.land.rhs.i.i291_crit_edge ]
  %count.034.i.i289 = phi i32 [ %count.1.i.i301, %if.end.i.i307.land.rhs.i.i291_crit_edge ], [ 0, %if.then74.land.rhs.i.i291_crit_edge ]
  %188 = ptrtoint ptr %txbuf75 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %txbuf75, align 4
  %tobool.not.i.i290 = icmp eq ptr %189, null
  br i1 %tobool.not.i.i290, label %land.rhs.i.i291.zynqmp_qspi_filltxfifo.exit.i310_crit_edge, label %while.body.i.i293

land.rhs.i.i291.zynqmp_qspi_filltxfifo.exit.i310_crit_edge: ; preds = %land.rhs.i.i291
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_filltxfifo.exit.i310

while.body.i.i293:                                ; preds = %land.rhs.i.i291
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %187)
  %cmp3.i.i292 = icmp ugt i32 %187, 3
  br i1 %cmp3.i.i292, label %if.then.i.i298, label %if.else.i.i300

if.then.i.i298:                                   ; preds = %while.body.i.i293
  call void @__sanitizer_cov_trace_pc() #8
  %190 = ptrtoint ptr %189 to i32
  call void @__asan_loadN_noabort(i32 %190, i32 4)
  %intermediate.0.copyload.i.i294 = load i32, ptr %189, align 1
  %191 = ptrtoint ptr %intermediate.i.i283 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %intermediate.0.copyload.i.i294, ptr %intermediate.i.i283, align 4
  %add.ptr.i.i295 = getelementptr i8, ptr %189, i32 4
  %192 = ptrtoint ptr %txbuf75 to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %add.ptr.i.i295, ptr %txbuf75, align 4
  %sub.i.i296 = add nsw i32 %187, -4
  %193 = ptrtoint ptr %bytes_to_transfer84 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %sub.i.i296, ptr %bytes_to_transfer84, align 4
  %add.i.i297 = add nuw nsw i32 %count.034.i.i289, 4
  br label %if.end.i.i307

if.else.i.i300:                                   ; preds = %while.body.i.i293
  call void @__sanitizer_cov_trace_pc() #8
  %194 = call ptr @memcpy(ptr %intermediate.i.i283, ptr %189, i32 %187)
  %add.ptr11.i.i299 = getelementptr i8, ptr %189, i32 %187
  %195 = ptrtoint ptr %txbuf75 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %add.ptr11.i.i299, ptr %txbuf75, align 4
  %196 = ptrtoint ptr %bytes_to_transfer84 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 0, ptr %bytes_to_transfer84, align 4
  br label %if.end.i.i307

if.end.i.i307:                                    ; preds = %if.else.i.i300, %if.then.i.i298
  %count.1.i.i301 = phi i32 [ %add.i.i297, %if.then.i.i298 ], [ %count.034.i.i289, %if.else.i.i300 ]
  %197 = ptrtoint ptr %intermediate.i.i283 to i32
  call void @__asan_load4_noabort(i32 %197)
  %intermediate.i.i283.0.intermediate.i.i283.0.intermediate.i.0.intermediate.i.0.intermediate.0.intermediate.0.intermediate.0..i.i302 = load i32, ptr %intermediate.i.i283, align 4
  %198 = call i32 @llvm.bswap.i32(i32 %intermediate.i.i283.0.intermediate.i.i283.0.intermediate.i.0.intermediate.i.0.intermediate.0.intermediate.0.intermediate.0..i.i302) #6
  %199 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i303 = getelementptr i8, ptr %200, i32 284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i303, i32 %198) #6, !srcloc !114
  %201 = ptrtoint ptr %bytes_to_transfer84 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %bytes_to_transfer84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp.i.i304 = icmp sgt i32 %202, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count.1.i.i301)
  %cmp1.i.i305 = icmp ult i32 %count.1.i.i301, 64
  %or.cond.i.i306 = select i1 %cmp.i.i304, i1 %cmp1.i.i305, i1 false
  br i1 %or.cond.i.i306, label %if.end.i.i307.land.rhs.i.i291_crit_edge, label %if.end.i.i307.zynqmp_qspi_filltxfifo.exit.i310_crit_edge

if.end.i.i307.zynqmp_qspi_filltxfifo.exit.i310_crit_edge: ; preds = %if.end.i.i307
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_filltxfifo.exit.i310

if.end.i.i307.land.rhs.i.i291_crit_edge:          ; preds = %if.end.i.i307
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i291

zynqmp_qspi_filltxfifo.exit.i310:                 ; preds = %if.end.i.i307.zynqmp_qspi_filltxfifo.exit.i310_crit_edge, %land.rhs.i.i291.zynqmp_qspi_filltxfifo.exit.i310_crit_edge, %if.then74.zynqmp_qspi_filltxfifo.exit.i310_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intermediate.i.i283)
  %mode.i308 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 15
  %203 = ptrtoint ptr %mode.i308 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %mode.i308, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %204)
  %cmp.i309 = icmp eq i32 %204, 1
  br i1 %cmp.i309, label %if.then.i314, label %zynqmp_qspi_filltxfifo.exit.i310.zynqmp_qspi_write_op.exit315_crit_edge

zynqmp_qspi_filltxfifo.exit.i310.zynqmp_qspi_write_op.exit315_crit_edge: ; preds = %zynqmp_qspi_filltxfifo.exit.i310
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_write_op.exit315

if.then.i314:                                     ; preds = %zynqmp_qspi_filltxfifo.exit.i310
  call void @__sanitizer_cov_trace_pc() #8
  %205 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i312 = getelementptr i8, ptr %206, i32 256
  %207 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i312) #6, !srcloc !115
  %208 = and i32 %207, -193
  %209 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i10.i313 = getelementptr i8, ptr %210, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i313, i32 %208) #6, !srcloc !114
  %211 = ptrtoint ptr %mode.i308 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %mode.i308, align 4
  br label %zynqmp_qspi_write_op.exit315

zynqmp_qspi_write_op.exit315:                     ; preds = %if.then.i314, %zynqmp_qspi_filltxfifo.exit.i310.zynqmp_qspi_write_op.exit315_crit_edge
  %212 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i317 = getelementptr i8, ptr %213, i32 256
  %214 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i317) #6, !srcloc !115
  %215 = or i32 %214, 16
  %216 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i319 = getelementptr i8, ptr %217, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i319, i32 %215) #6, !srcloc !114
  br label %if.end90

if.end90:                                         ; preds = %zynqmp_qspi_write_op.exit315, %if.end70.if.end90_crit_edge
  %data91 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %nbytes92 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %218 = ptrtoint ptr %nbytes92 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %nbytes92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool93.not = icmp eq i32 %219, 0
  br i1 %tobool93.not, label %if.end90.return_err_crit_edge, label %if.then94

if.end90.return_err_crit_edge:                    ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %return_err

if.then94:                                        ; preds = %if.end90
  %data_completion95 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 16
  %220 = ptrtoint ptr %data_completion95 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 0, ptr %data_completion95, align 4
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %221 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %222)
  %cmp97 = icmp eq i32 %222, 2
  br i1 %cmp97, label %if.then99, label %if.else

if.then99:                                        ; preds = %if.then94
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %223 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %buf, align 4
  %txbuf101 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 6
  %225 = ptrtoint ptr %txbuf101 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %224, ptr %txbuf101, align 4
  %rxbuf102 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 7
  %226 = ptrtoint ptr %rxbuf102 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr null, ptr %rxbuf102, align 4
  %227 = ptrtoint ptr %nbytes92 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %nbytes92, align 4
  %bytes_to_transfer105 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 8
  %229 = ptrtoint ptr %bytes_to_transfer105 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %bytes_to_transfer105, align 4
  %bytes_to_receive106 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 9
  %230 = ptrtoint ptr %bytes_to_receive106 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 0, ptr %bytes_to_receive106, align 4
  %231 = ptrtoint ptr %data91 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %data91, align 4
  call fastcc void @zynqmp_qspi_fillgenfifo(ptr noundef %5, i8 noundef zeroext %232, i32 noundef %or19) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %intermediate.i.i320)
  %233 = ptrtoint ptr %intermediate.i.i320 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 -1, ptr %intermediate.i.i320, align 4
  %234 = ptrtoint ptr %bytes_to_transfer105 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %bytes_to_transfer105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %cmp31.i.i323 = icmp sgt i32 %235, 0
  br i1 %cmp31.i.i323, label %if.then99.land.rhs.i.i328_crit_edge, label %if.then99.zynqmp_qspi_filltxfifo.exit.i347_crit_edge

if.then99.zynqmp_qspi_filltxfifo.exit.i347_crit_edge: ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_filltxfifo.exit.i347

if.then99.land.rhs.i.i328_crit_edge:              ; preds = %if.then99
  br label %land.rhs.i.i328

land.rhs.i.i328:                                  ; preds = %if.end.i.i344.land.rhs.i.i328_crit_edge, %if.then99.land.rhs.i.i328_crit_edge
  %236 = phi i32 [ %251, %if.end.i.i344.land.rhs.i.i328_crit_edge ], [ %235, %if.then99.land.rhs.i.i328_crit_edge ]
  %count.034.i.i326 = phi i32 [ %count.1.i.i338, %if.end.i.i344.land.rhs.i.i328_crit_edge ], [ 0, %if.then99.land.rhs.i.i328_crit_edge ]
  %237 = ptrtoint ptr %txbuf101 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %txbuf101, align 4
  %tobool.not.i.i327 = icmp eq ptr %238, null
  br i1 %tobool.not.i.i327, label %land.rhs.i.i328.zynqmp_qspi_filltxfifo.exit.i347_crit_edge, label %while.body.i.i330

land.rhs.i.i328.zynqmp_qspi_filltxfifo.exit.i347_crit_edge: ; preds = %land.rhs.i.i328
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_filltxfifo.exit.i347

while.body.i.i330:                                ; preds = %land.rhs.i.i328
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %236)
  %cmp3.i.i329 = icmp ugt i32 %236, 3
  br i1 %cmp3.i.i329, label %if.then.i.i335, label %if.else.i.i337

if.then.i.i335:                                   ; preds = %while.body.i.i330
  call void @__sanitizer_cov_trace_pc() #8
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_loadN_noabort(i32 %239, i32 4)
  %intermediate.0.copyload.i.i331 = load i32, ptr %238, align 1
  %240 = ptrtoint ptr %intermediate.i.i320 to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %intermediate.0.copyload.i.i331, ptr %intermediate.i.i320, align 4
  %add.ptr.i.i332 = getelementptr i8, ptr %238, i32 4
  %241 = ptrtoint ptr %txbuf101 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %add.ptr.i.i332, ptr %txbuf101, align 4
  %sub.i.i333 = add nsw i32 %236, -4
  %242 = ptrtoint ptr %bytes_to_transfer105 to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %sub.i.i333, ptr %bytes_to_transfer105, align 4
  %add.i.i334 = add nuw nsw i32 %count.034.i.i326, 4
  br label %if.end.i.i344

if.else.i.i337:                                   ; preds = %while.body.i.i330
  call void @__sanitizer_cov_trace_pc() #8
  %243 = call ptr @memcpy(ptr %intermediate.i.i320, ptr %238, i32 %236)
  %add.ptr11.i.i336 = getelementptr i8, ptr %238, i32 %236
  %244 = ptrtoint ptr %txbuf101 to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %add.ptr11.i.i336, ptr %txbuf101, align 4
  %245 = ptrtoint ptr %bytes_to_transfer105 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 0, ptr %bytes_to_transfer105, align 4
  br label %if.end.i.i344

if.end.i.i344:                                    ; preds = %if.else.i.i337, %if.then.i.i335
  %count.1.i.i338 = phi i32 [ %add.i.i334, %if.then.i.i335 ], [ %count.034.i.i326, %if.else.i.i337 ]
  %246 = ptrtoint ptr %intermediate.i.i320 to i32
  call void @__asan_load4_noabort(i32 %246)
  %intermediate.i.i320.0.intermediate.i.i320.0.intermediate.i.0.intermediate.i.0.intermediate.0.intermediate.0.intermediate.0..i.i339 = load i32, ptr %intermediate.i.i320, align 4
  %247 = call i32 @llvm.bswap.i32(i32 %intermediate.i.i320.0.intermediate.i.i320.0.intermediate.i.0.intermediate.i.0.intermediate.0.intermediate.0.intermediate.0..i.i339) #6
  %248 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i340 = getelementptr i8, ptr %249, i32 284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i340, i32 %247) #6, !srcloc !114
  %250 = ptrtoint ptr %bytes_to_transfer105 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %bytes_to_transfer105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %cmp.i.i341 = icmp sgt i32 %251, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count.1.i.i338)
  %cmp1.i.i342 = icmp ult i32 %count.1.i.i338, 64
  %or.cond.i.i343 = select i1 %cmp.i.i341, i1 %cmp1.i.i342, i1 false
  br i1 %or.cond.i.i343, label %if.end.i.i344.land.rhs.i.i328_crit_edge, label %if.end.i.i344.zynqmp_qspi_filltxfifo.exit.i347_crit_edge

if.end.i.i344.zynqmp_qspi_filltxfifo.exit.i347_crit_edge: ; preds = %if.end.i.i344
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_filltxfifo.exit.i347

if.end.i.i344.land.rhs.i.i328_crit_edge:          ; preds = %if.end.i.i344
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i.i328

zynqmp_qspi_filltxfifo.exit.i347:                 ; preds = %if.end.i.i344.zynqmp_qspi_filltxfifo.exit.i347_crit_edge, %land.rhs.i.i328.zynqmp_qspi_filltxfifo.exit.i347_crit_edge, %if.then99.zynqmp_qspi_filltxfifo.exit.i347_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %intermediate.i.i320)
  %mode.i345 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 15
  %252 = ptrtoint ptr %mode.i345 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %mode.i345, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %253)
  %cmp.i346 = icmp eq i32 %253, 1
  br i1 %cmp.i346, label %if.then.i351, label %zynqmp_qspi_filltxfifo.exit.i347.zynqmp_qspi_write_op.exit352_crit_edge

zynqmp_qspi_filltxfifo.exit.i347.zynqmp_qspi_write_op.exit352_crit_edge: ; preds = %zynqmp_qspi_filltxfifo.exit.i347
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_write_op.exit352

if.then.i351:                                     ; preds = %zynqmp_qspi_filltxfifo.exit.i347
  call void @__sanitizer_cov_trace_pc() #8
  %254 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i349 = getelementptr i8, ptr %255, i32 256
  %256 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i349) #6, !srcloc !115
  %257 = and i32 %256, -193
  %258 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i10.i350 = getelementptr i8, ptr %259, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i350, i32 %257) #6, !srcloc !114
  %260 = ptrtoint ptr %mode.i345 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 0, ptr %mode.i345, align 4
  br label %zynqmp_qspi_write_op.exit352

zynqmp_qspi_write_op.exit352:                     ; preds = %if.then.i351, %zynqmp_qspi_filltxfifo.exit.i347.zynqmp_qspi_write_op.exit352_crit_edge
  %261 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i354 = getelementptr i8, ptr %262, i32 256
  %263 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i354) #6, !srcloc !115
  %264 = or i32 %263, 16
  %265 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i356 = getelementptr i8, ptr %266, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i356, i32 %264) #6, !srcloc !114
  %267 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i358 = getelementptr i8, ptr %268, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i358, i32 -2080309248) #6, !srcloc !114
  br label %if.end132

if.else:                                          ; preds = %if.then94
  %txbuf111 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 6
  %269 = ptrtoint ptr %txbuf111 to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr null, ptr %txbuf111, align 4
  %buf113 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %270 = ptrtoint ptr %buf113 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %buf113, align 4
  %rxbuf114 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 7
  %272 = ptrtoint ptr %rxbuf114 to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %271, ptr %rxbuf114, align 4
  %273 = ptrtoint ptr %nbytes92 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %nbytes92, align 4
  %bytes_to_receive117 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 9
  %275 = ptrtoint ptr %bytes_to_receive117 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %274, ptr %bytes_to_receive117, align 4
  %bytes_to_transfer118 = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 8
  %276 = ptrtoint ptr %bytes_to_transfer118 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 0, ptr %bytes_to_transfer118, align 4
  %277 = ptrtoint ptr %data91 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %data91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %274)
  %cmp.i.i359 = icmp sgt i32 %274, 7
  %279 = ptrtoint ptr %271 to i32
  %280 = and i32 %279, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %cmp2.not.i.i = icmp eq i32 %280, 0
  %or.cond.i.i360 = select i1 %cmp.i.i359, i1 %cmp2.not.i.i, i1 false
  br i1 %or.cond.i.i360, label %if.end.i.i365, label %if.then.i.i363

if.then.i.i363:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %281 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i.i362 = getelementptr i8, ptr %282, i32 256
  %283 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i362) #6, !srcloc !115
  %284 = and i32 %283, -193
  %285 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i56.i.i = getelementptr i8, ptr %286, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56.i.i, i32 %284) #6, !srcloc !114
  %mode.i.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 15
  %287 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 0, ptr %mode.i.i, align 4
  %dma_rx_bytes.i.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 12
  %288 = ptrtoint ptr %dma_rx_bytes.i.i to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 0, ptr %dma_rx_bytes.i.i, align 4
  br label %if.end124

if.end.i.i365:                                    ; preds = %if.else
  %sub.i.i364 = and i32 %274, -4
  %dev.i.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 5
  %289 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %dev.i.i, align 4
  %call.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %271) #6
  br i1 %call.i.i.i, label %land.rhs.i.i.i, label %dma_map_single_attrs.exit.i.i

land.rhs.i.i.i:                                   ; preds = %if.end.i.i365
  %.b1.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge, label %if.then.i.i.i, !prof !121

land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i = call ptr @dev_driver_string(ptr noundef %290) #6
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %290, i32 0, i32 3
  %291 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %292, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge

if.then.i.i.i.dev_name.exit.i.i.i_crit_edge:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %293 = ptrtoint ptr %290 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %290, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i.i, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %294, %if.end.i.i.i.i ], [ %292, %if.then.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.43, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.44, ptr noundef %call16.i.i.i, ptr noundef %retval.0.i.i.i.i) #6
  br label %dma_map_single_attrs.exit.thread.i.i

dma_map_single_attrs.exit.thread.i.i:             ; preds = %dev_name.exit.i.i.i, %land.rhs.i.i.i.dma_map_single_attrs.exit.thread.i.i_crit_edge
  %295 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %dev.i.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %296, i32 noundef -1) #6
  br label %zynqmp_qspi_read_op.exit

dma_map_single_attrs.exit.i.i:                    ; preds = %if.end.i.i365
  call void @debug_dma_map_single(ptr noundef %290, ptr noundef %271, i32 noundef %sub.i.i364) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %297 = load ptr, ptr @mem_map, align 4
  %sub.i.i.i = add i32 %279, 1073741824
  %shr.i.i.i = lshr i32 %sub.i.i.i, 12
  %add.ptr.i57.i.i = getelementptr %struct.page, ptr %297, i32 %shr.i.i.i
  %and.i.i.i = and i32 %279, 4095
  %call41.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %290, ptr noundef %add.ptr.i57.i.i, i32 noundef %and.i.i.i, i32 noundef %sub.i.i364, i32 noundef 2, i32 noundef 0) #6
  %298 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %dev.i.i, align 4
  call void @debug_dma_mapping_error(ptr noundef %299, i32 noundef %call41.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call41.i.i.i, -1
  br i1 %cmp.i.i.i, label %dma_map_single_attrs.exit.i.i.zynqmp_qspi_read_op.exit_crit_edge, label %if.end13.i.i

dma_map_single_attrs.exit.i.i.zynqmp_qspi_read_op.exit_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_read_op.exit

if.end13.i.i:                                     ; preds = %dma_map_single_attrs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dma_rx_bytes14.i.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 12
  %300 = ptrtoint ptr %dma_rx_bytes14.i.i to i32
  call void @__asan_store4_noabort(i32 %300)
  store i32 %sub.i.i364, ptr %dma_rx_bytes14.i.i, align 4
  %dma_addr.i.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 13
  %301 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %301)
  store i32 %call41.i.i.i, ptr %dma_addr.i.i, align 4
  %302 = call i32 @llvm.bswap.i32(i32 %call41.i.i.i) #6
  %303 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i59.i.i = getelementptr i8, ptr %304, i32 2048
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i.i, i32 %302) #6, !srcloc !114
  %305 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i61.i.i = getelementptr i8, ptr %306, i32 2088
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i.i, i32 0) #6, !srcloc !114
  %307 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i63.i.i = getelementptr i8, ptr %308, i32 256
  %309 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63.i.i) #6, !srcloc !115
  %310 = and i32 %309, -193
  %311 = or i32 %310, 128
  %312 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i65.i.i = getelementptr i8, ptr %313, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i.i, i32 %311) #6, !srcloc !114
  %mode20.i.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 15
  %314 = ptrtoint ptr %mode20.i.i to i32
  call void @__asan_store4_noabort(i32 %314)
  store i32 1, ptr %mode20.i.i, align 4
  %315 = call i32 @llvm.bswap.i32(i32 %sub.i.i364) #6
  %316 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i67.i.i = getelementptr i8, ptr %317, i32 2052
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i.i, i32 %315) #6, !srcloc !114
  br label %if.end124

zynqmp_qspi_read_op.exit:                         ; preds = %dma_map_single_attrs.exit.i.i.zynqmp_qspi_read_op.exit_crit_edge, %dma_map_single_attrs.exit.thread.i.i
  %318 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %319, ptr noundef nonnull @.str.41) #9
  br label %return_err

if.end124:                                        ; preds = %if.end13.i.i, %if.then.i.i363
  call fastcc void @zynqmp_qspi_fillgenfifo(ptr noundef %5, i8 noundef zeroext %278, i32 noundef %or19) #6
  %320 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i368 = getelementptr i8, ptr %321, i32 256
  %322 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i368) #6, !srcloc !115
  %323 = or i32 %322, 16
  %324 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i370 = getelementptr i8, ptr %325, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i370, i32 %323) #6, !srcloc !114
  %mode = getelementptr inbounds %struct.zynqmp_qspi, ptr %5, i32 0, i32 15
  %326 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %327)
  %cmp127 = icmp eq i32 %327, 1
  %328 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %regs.i.i, align 4
  br i1 %cmp127, label %if.then129, label %if.else130

if.then129:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i372 = getelementptr i8, ptr %329, i32 2072
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i372, i32 33554432) #6, !srcloc !114
  br label %if.end132

if.else130:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i374 = getelementptr i8, ptr %329, i32 264
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i374, i32 -1878523904) #6, !srcloc !114
  br label %if.end132

if.end132:                                        ; preds = %if.else130, %if.then129, %zynqmp_qspi_write_op.exit352
  %call135 = call i32 @wait_for_completion_timeout(ptr noundef %data_completion95, i32 noundef 100) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  %spec.select = select i1 %tobool136.not, i32 -110, i32 0
  br label %return_err

return_err:                                       ; preds = %if.end132, %zynqmp_qspi_read_op.exit, %if.end90.return_err_crit_edge, %zynqmp_qspi_write_op.exit276.return_err_crit_edge, %zynqmp_qspi_write_op.exit.return_err_crit_edge
  %err.1 = phi i32 [ -12, %zynqmp_qspi_read_op.exit ], [ 0, %if.end90.return_err_crit_edge ], [ -110, %zynqmp_qspi_write_op.exit.return_err_crit_edge ], [ -110, %zynqmp_qspi_write_op.exit276.return_err_crit_edge ], [ %spec.select, %if.end132 ]
  %330 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %mem, align 4
  %master.i375 = getelementptr inbounds %struct.spi_device, ptr %331, i32 0, i32 2
  %332 = ptrtoint ptr %master.i375 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %master.i375, align 4
  %driver_data.i.i.i376 = getelementptr inbounds %struct.device, ptr %333, i32 0, i32 8
  %334 = ptrtoint ptr %driver_data.i.i.i376 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %driver_data.i.i.i376, align 4
  %regs.i.i377 = getelementptr inbounds %struct.zynqmp_qspi, ptr %335, i32 0, i32 1
  %336 = ptrtoint ptr %regs.i.i377 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %regs.i.i377, align 4
  %add.ptr.i.i378 = getelementptr i8, ptr %337, i32 320
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i378, i32 50593792) #6, !srcloc !114
  %338 = ptrtoint ptr %regs.i.i377 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %regs.i.i377, align 4
  %add.ptr.i48.i379 = getelementptr i8, ptr %339, i32 256
  %340 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.i379) #6, !srcloc !115
  %341 = or i32 %340, 16
  %342 = ptrtoint ptr %regs.i.i377 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %regs.i.i377, align 4
  %add.ptr.i50.i380 = getelementptr i8, ptr %343, i32 256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50.i380, i32 %341) #6, !srcloc !114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %344 = load volatile i32, ptr @jiffies, align 128
  %add.i381 = add i32 %344, 100
  br label %do.body.i385

do.body.i385:                                     ; preds = %do.end.i388.do.body.i385_crit_edge, %return_err
  %345 = ptrtoint ptr %regs.i.i377 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %regs.i.i377, align 4
  %add.ptr.i52.i383 = getelementptr i8, ptr %346, i32 260
  %347 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52.i383) #6, !srcloc !115
  %348 = and i32 %347, -2147418112
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147418112, i32 %348)
  %.not.i384 = icmp eq i32 %348, -2147418112
  br i1 %.not.i384, label %do.body.i385.do.end24.i391_crit_edge, label %do.end.i388

do.body.i385.do.end24.i391_crit_edge:             ; preds = %do.body.i385
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24.i391

do.end.i388:                                      ; preds = %do.body.i385
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !119
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %349 = load volatile i32, ptr @jiffies, align 128
  %sub.i386 = sub i32 %349, %add.i381
  %cmp.i387 = icmp slt i32 %sub.i386, 0
  br i1 %cmp.i387, label %do.end.i388.do.body.i385_crit_edge, label %do.end.i388.do.end24.i391_crit_edge

do.end.i388.do.end24.i391_crit_edge:              ; preds = %do.end.i388
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end24.i391

do.end.i388.do.body.i385_crit_edge:               ; preds = %do.end.i388
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i385

do.end24.i391:                                    ; preds = %do.end.i388.do.end24.i391_crit_edge, %do.body.i385.do.end24.i391_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %350 = load volatile i32, ptr @jiffies, align 128
  %sub25.i389 = sub i32 %350, %add.i381
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub25.i389)
  %cmp26.i390 = icmp sgt i32 %sub25.i389, -1
  br i1 %cmp26.i390, label %do.end30.i393, label %do.end24.i391.zynqmp_qspi_chipselect.exit394_crit_edge

do.end24.i391.zynqmp_qspi_chipselect.exit394_crit_edge: ; preds = %do.end24.i391
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_chipselect.exit394

do.end30.i393:                                    ; preds = %do.end24.i391
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i392 = getelementptr inbounds %struct.zynqmp_qspi, ptr %335, i32 0, i32 5
  %351 = ptrtoint ptr %dev.i392 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %dev.i392, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %352, ptr noundef nonnull @.str.37) #9
  br label %zynqmp_qspi_chipselect.exit394

zynqmp_qspi_chipselect.exit394:                   ; preds = %do.end30.i393, %do.end24.i391.zynqmp_qspi_chipselect.exit394_crit_edge
  call void @mutex_unlock(ptr noundef %op_lock) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %opaddr) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %opcode) #6
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @zynqmp_qspi_fillgenfifo(ptr nocapture noundef %xqspi, i8 noundef zeroext %nbits, i32 noundef %genfifoentry) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %txbuf = getelementptr inbounds %struct.zynqmp_qspi, ptr %xqspi, i32 0, i32 6
  %0 = ptrtoint ptr %txbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %txbuf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %genfifoentry, -196865
  %or1 = or i32 %and, 65792
  %bytes_to_transfer = getelementptr inbounds %struct.zynqmp_qspi, ptr %xqspi, i32 0, i32 8
  br label %if.end14

if.else:                                          ; preds = %entry
  %rxbuf = getelementptr inbounds %struct.zynqmp_qspi, ptr %xqspi, i32 0, i32 7
  %2 = ptrtoint ptr %rxbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxbuf, align 4
  %tobool2.not = icmp eq ptr %3, null
  %and10 = and i32 %genfifoentry, -196865
  br i1 %tobool2.not, label %if.else9, label %if.then3

if.then3:                                         ; preds = %if.else
  %or6 = or i32 %and10, 131328
  %mode = getelementptr inbounds %struct.zynqmp_qspi, ptr %xqspi, i32 0, i32 15
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then7, label %if.else8

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %dma_rx_bytes = getelementptr inbounds %struct.zynqmp_qspi, ptr %xqspi, i32 0, i32 12
  br label %if.end14

if.else8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %bytes_to_receive = getelementptr inbounds %struct.zynqmp_qspi, ptr %xqspi, i32 0, i32 9
  br label %if.end14

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %or11 = or i32 %and10, 256
  %bytes_to_transfer12 = getelementptr inbounds %struct.zynqmp_qspi, ptr %xqspi, i32 0, i32 8
  br label %if.end14

if.end14:                                         ; preds = %if.else9, %if.else8, %if.then7, %if.then
  %genfifoentry.addr.0 = phi i32 [ %or1, %if.then ], [ %or6, %if.then7 ], [ %or6, %if.else8 ], [ %or11, %if.else9 ]
  %transfer_len.0.in = phi ptr [ %bytes_to_transfer, %if.then ], [ %dma_rx_bytes, %if.then7 ], [ %bytes_to_receive, %if.else8 ], [ %bytes_to_transfer12, %if.else9 ]
  %6 = ptrtoint ptr %transfer_len.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %transfer_len.0 = load i32, ptr %transfer_len.0.in, align 4
  %7 = zext i8 %nbits to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %nbits, label %do.end.i [
    i8 2, label %if.end14.zynqmp_qspi_selectspimode.exit_crit_edge
    i8 4, label %sw.bb1.i
    i8 1, label %sw.bb2.i
  ]

if.end14.zynqmp_qspi_selectspimode.exit_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_selectspimode.exit

sw.bb1.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_selectspimode.exit

sw.bb2.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %zynqmp_qspi_selectspimode.exit

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %xqspi, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.39) #9
  br label %zynqmp_qspi_selectspimode.exit

zynqmp_qspi_selectspimode.exit:                   ; preds = %do.end.i, %sw.bb2.i, %sw.bb1.i, %if.end14.zynqmp_qspi_selectspimode.exit_crit_edge
  %mask.0.i = phi i32 [ 0, %do.end.i ], [ 1024, %sw.bb2.i ], [ 3072, %sw.bb1.i ], [ 2048, %if.end14.zynqmp_qspi_selectspimode.exit_crit_edge ]
  %or15 = or i32 %mask.0.i, %genfifoentry.addr.0
  %genfifoentry16 = getelementptr inbounds %struct.zynqmp_qspi, ptr %xqspi, i32 0, i32 14
  %10 = ptrtoint ptr %genfifoentry16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or15, ptr %genfifoentry16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %transfer_len.0)
  %cmp17 = icmp ult i32 %transfer_len.0, 255
  br i1 %cmp17, label %if.then18, label %if.else21

if.then18:                                        ; preds = %zynqmp_qspi_selectspimode.exit
  call void @__sanitizer_cov_trace_pc() #8
  %and19 = and i32 %or15, -256
  %or20 = or i32 %and19, %transfer_len.0
  %11 = tail call i32 @llvm.bswap.i32(i32 %or20) #6
  %regs.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %xqspi, i32 0, i32 1
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #6, !srcloc !114
  br label %if.end50

if.else21:                                        ; preds = %zynqmp_qspi_selectspimode.exit
  %and24 = and i32 %transfer_len.0, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %cmp25.not = icmp eq i32 %and24, 0
  br i1 %cmp25.not, label %if.else21.if.then41_crit_edge, label %if.then27

if.else21.if.then41_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

if.then27:                                        ; preds = %if.else21
  %or28 = or i32 %or15, 512
  %regs.i102 = getelementptr inbounds %struct.zynqmp_qspi, ptr %xqspi, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end36.while.body_crit_edge, %if.then27
  %exponent.0116 = phi i32 [ 8, %if.then27 ], [ %inc, %if.end36.while.body_crit_edge ]
  %tempcount.0115 = phi i32 [ %and24, %if.then27 ], [ %shr, %if.end36.while.body_crit_edge ]
  %genfifoentry.addr.1114 = phi i32 [ %or28, %if.then27 ], [ %genfifoentry.addr.2, %if.end36.while.body_crit_edge ]
  %and31 = and i32 %tempcount.0115, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %while.body.if.end36_crit_edge, label %if.then33

while.body.if.end36_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then33:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %and34 = and i32 %genfifoentry.addr.1114, -256
  %or35 = or i32 %exponent.0116, %and34
  %14 = tail call i32 @llvm.bswap.i32(i32 %or35) #6
  %15 = ptrtoint ptr %regs.i102 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i102, align 4
  %add.ptr.i103 = getelementptr i8, ptr %16, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %14) #6, !srcloc !114
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %while.body.if.end36_crit_edge
  %genfifoentry.addr.2 = phi i32 [ %or35, %if.then33 ], [ %genfifoentry.addr.1114, %while.body.if.end36_crit_edge ]
  %shr = ashr i32 %tempcount.0115, 1
  %inc = add i32 %exponent.0116, 1
  %cmp29.not = icmp ult i32 %tempcount.0115, 2
  br i1 %cmp29.not, label %if.end37, label %if.end36.while.body_crit_edge

if.end36.while.body_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end37:                                         ; preds = %if.end36
  %conv38 = and i32 %transfer_len.0, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv38)
  %cmp39.not = icmp eq i32 %conv38, 0
  br i1 %cmp39.not, label %if.end37.if.end50_crit_edge, label %if.end37.if.then41_crit_edge

if.end37.if.then41_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then41

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

if.then41:                                        ; preds = %if.end37.if.then41_crit_edge, %if.else21.if.then41_crit_edge
  %conv38112 = phi i32 [ %conv38, %if.end37.if.then41_crit_edge ], [ 255, %if.else21.if.then41_crit_edge ]
  %genfifoentry.addr.3111 = phi i32 [ %genfifoentry.addr.2, %if.end37.if.then41_crit_edge ], [ %or15, %if.else21.if.then41_crit_edge ]
  %and43 = and i32 %genfifoentry.addr.3111, -768
  %or48 = or i32 %and43, %conv38112
  %17 = tail call i32 @llvm.bswap.i32(i32 %or48) #6
  %regs.i104 = getelementptr inbounds %struct.zynqmp_qspi, ptr %xqspi, i32 0, i32 1
  %18 = ptrtoint ptr %regs.i104 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i104, align 4
  %add.ptr.i105 = getelementptr i8, ptr %19, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i105, i32 %17) #6, !srcloc !114
  br label %if.end50

if.end50:                                         ; preds = %if.then41, %if.end37.if.end50_crit_edge, %if.then18
  %mode51 = getelementptr inbounds %struct.zynqmp_qspi, ptr %xqspi, i32 0, i32 15
  %20 = ptrtoint ptr %mode51 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp52 = icmp eq i32 %21, 0
  br i1 %cmp52, label %land.lhs.true, label %if.end50.if.end57_crit_edge

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end50
  %rxbuf54 = getelementptr inbounds %struct.zynqmp_qspi, ptr %xqspi, i32 0, i32 7
  %22 = ptrtoint ptr %rxbuf54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rxbuf54, align 4
  %tobool55.not = icmp eq ptr %23, null
  br i1 %tobool55.not, label %land.lhs.true.if.end57_crit_edge, label %if.then56

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i106 = getelementptr inbounds %struct.zynqmp_qspi, ptr %xqspi, i32 0, i32 1
  %24 = ptrtoint ptr %regs.i106 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i106, align 4
  %add.ptr.i107 = getelementptr i8, ptr %25, i32 320
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 0) #6, !srcloc !114
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %land.lhs.true.if.end57_crit_edge, %if.end50.if.end57_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_qspi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @spi_controller_suspend(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_qspi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %regs.i = getelementptr inbounds %struct.zynqmp_qspi, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !114
  %call2 = tail call i32 @spi_controller_resume(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %refclk = getelementptr inbounds %struct.zynqmp_qspi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %refclk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  %pclk = getelementptr inbounds %struct.zynqmp_qspi, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %5) #6
  tail call void @clk_unprepare(ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pclk = getelementptr inbounds %struct.zynqmp_qspi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %refclk = getelementptr inbounds %struct.zynqmp_qspi, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %refclk, align 4
  %call.i18 = tail call i32 @clk_prepare(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18)
  %tobool.not.i19 = icmp eq i32 %call.i18, 0
  br i1 %tobool.not.i19, label %if.end.i22, label %if.end.do.end7_crit_edge

if.end.do.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

if.end.i22:                                       ; preds = %if.end
  %call1.i20 = tail call i32 @clk_enable(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool2.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool2.not.i21, label %if.end.i22.cleanup_crit_edge, label %if.then3.i23

if.end.i22.cleanup_crit_edge:                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i23:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %5) #6
  br label %do.end7

do.end7:                                          ; preds = %if.then3.i23, %if.end.do.end7_crit_edge
  %retval.0.i24.ph = phi i32 [ %call1.i20, %if.then3.i23 ], [ %call.i18, %if.end.do.end7_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #9
  %6 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.i22.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %retval.0.i24.ph, %do.end7 ], [ 0, %if.end.i22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !96, !98, !99, !100, !101, !103, !104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @__initcall__kmod_spi_zynqmp_gqspi__240_1251_zynqmp_qspi_driver_init6, !1, !"__initcall__kmod_spi_zynqmp_gqspi__240_1251_zynqmp_qspi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1251, i32 1}
!2 = !{ptr @__exitcall_zynqmp_qspi_driver_exit, !1, !"__exitcall_zynqmp_qspi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author241, !4, !"__UNIQUE_ID_author241", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1253, i32 1}
!5 = !{ptr @__UNIQUE_ID_description242, !6, !"__UNIQUE_ID_description242", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1254, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1255, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1245, i32 11}
!12 = !{ptr @zynqmp_qspi_driver, !13, !"zynqmp_qspi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1241, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1118, i32 41}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1120, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @zynqmp_qspi_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @zynqmp_qspi_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1125, i32 43}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1127, i32 3}
!28 = !{ptr @zynqmp_qspi_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @zynqmp_qspi_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1134, i32 3}
!32 = !{ptr @zynqmp_qspi_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @zynqmp_qspi_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1140, i32 3}
!36 = !{ptr @zynqmp_qspi_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @zynqmp_qspi_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @zynqmp_qspi_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1146, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1155, i32 3}
!43 = !{ptr @zynqmp_qspi_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @zynqmp_qspi_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1171, i32 3}
!47 = !{ptr @zynqmp_qspi_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @zynqmp_qspi_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1189, i32 3}
!51 = !{ptr @zynqmp_qspi_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @zynqmp_qspi_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @init_completion.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../include/linux/completion.h", i32 87, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 230, i32 3}
!58 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @zynqmp_gqspi_selectslave._entry, !57, !"_entry", i1 false, i1 false}
!61 = !{ptr @zynqmp_gqspi_selectslave._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 246, i32 3}
!64 = !{ptr @zynqmp_gqspi_selectslave._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @zynqmp_gqspi_selectslave._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @zynqmp_qspi_mem_ops, !67, !"zynqmp_qspi_mem_ops", i1 false, i1 false}
!67 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1083, i32 44}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 945, i32 2}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @zynqmp_qspi_exec_op.__UNIQUE_ID_ddebug239, !69, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 395, i32 3}
!75 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @zynqmp_qspi_chipselect._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @zynqmp_qspi_chipselect._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 420, i32 3}
!80 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @zynqmp_qspi_selectspimode._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @zynqmp_qspi_selectspimode._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 759, i32 3}
!85 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @zynqmp_qspi_setuprxdma._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @zynqmp_qspi_setuprxdma._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = distinct !{null, !89, !"__already_done", i1 false, i1 false}
!89 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!90 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @zynqmp_qspi_of_match, !93, !"zynqmp_qspi_of_match", i1 false, i1 false}
!93 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1234, i32 34}
!94 = !{ptr @zynqmp_qspi_dev_pm_ops, !95, !"zynqmp_qspi_dev_pm_ops", i1 false, i1 false}
!95 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 1077, i32 32}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 910, i32 3}
!98 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @zynqmp_runtime_resume._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @zynqmp_runtime_resume._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/spi/spi-zynqmp-gqspi.c", i32 916, i32 3}
!103 = !{ptr @zynqmp_runtime_resume._entry.47, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @zynqmp_runtime_resume._entry_ptr.49, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i64 6291960}
!115 = !{i64 6292378}
!116 = !{i8 0, i8 2}
!117 = !{!"auto-init"}
!118 = !{i64 2148757812, i64 2148757817, i64 2148757830, i64 2148757874, i64 2148757908, i64 2148757929}
!119 = !{i64 2154568433}
!120 = !{i64 2154568275}
!121 = !{!"branch_weights", i32 2000, i32 1}
