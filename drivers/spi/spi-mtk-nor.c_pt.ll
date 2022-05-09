; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-mtk-nor.c_pt.bc'
source_filename = "../drivers/spi/spi-mtk-nor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spi_controller_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.mtk_nor = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i8, i8, i8, %struct.completion }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_mem_op = type { %struct.anon.71, %struct.anon.72, %struct.anon.73, %struct.anon.74 }
%struct.anon.71 = type { i8, i8, i8, i16 }
%struct.anon.72 = type { i8, i8, i8, i64 }
%struct.anon.73 = type { i8, i8, i8 }
%struct.anon.74 = type { i8, i8, i32, i32, %union.anon.75 }
%union.anon.75 = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }

@__initcall__kmod_spi_mtk_nor__237_931_mtk_nor_driver_init6 = internal global ptr @mtk_nor_driver_init, section ".initcall6.init", align 4
@mtk_nor_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_nor_probe, ptr @mtk_nor_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_nor_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_nor_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_nor_driver_exit = internal global ptr @mtk_nor_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description238 = internal constant [59 x i8] c"spi_mtk_nor.description=Mediatek SPI NOR controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [55 x i8] c"spi_mtk_nor.author=Chuanhong Guo <gch981213@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [41 x i8] c"spi_mtk_nor.file=drivers/spi/spi-mtk-nor\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [27 x i8] c"spi_mtk_nor.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias242 = internal constant [39 x i8] c"spi_mtk_nor.alias=platform:mtk-spi-nor\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtk-spi-nor\00", [20 x i8] zeroinitializer }, align 32
@mtk_nor_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-nor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 36 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-nor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 32 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mtk_nor_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mtk_nor_suspend, ptr @mtk_nor_resume, ptr @mtk_nor_suspend, ptr @mtk_nor_resume, ptr @mtk_nor_suspend, ptr @mtk_nor_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_nor_runtime_suspend, ptr @mtk_nor_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sf\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@mtk_nor_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 780, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to set dma mask(%lu)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_nor_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/spi/spi-mtk-nor.c\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_nor_probe._entry_ptr = internal global ptr @mtk_nor_probe._entry, section ".printk_index", align 4
@mtk_nor_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 786, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to allocate spi controller\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_nor_probe._entry_ptr.11 = internal global ptr @mtk_nor_probe._entry.9, section ".printk_index", align 4
@mtk_nor_mem_ops = internal constant { %struct.spi_controller_mem_ops, [60 x i8] } { %struct.spi_controller_mem_ops { ptr @mtk_nor_adjust_op_size, ptr @mtk_nor_supports_op, ptr @mtk_nor_exec_op, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mtk_nor_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 819, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"misaligned allocation of internal buffer.\0A\00", [53 x i8] zeroinitializer }, align 32
@mtk_nor_probe._entry_ptr.14 = internal global ptr @mtk_nor_probe._entry.12, section ".printk_index", align 4
@mtk_nor_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 834, ptr @.str.17, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IRQ not available.\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk_nor_probe._entry_ptr.18 = internal global ptr @mtk_nor_probe._entry.15, section ".printk_index", align 4
@mtk_nor_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.5, ptr @.str.6, i32 839, ptr @.str.17, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ.\00", [41 x i8] zeroinitializer }, align 32
@mtk_nor_probe._entry_ptr.21 = internal global ptr @mtk_nor_probe._entry.19, section ".printk_index", align 4
@mtk_nor_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 859, ptr @.str.24, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spi frequency: %d Hz\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtk_nor_probe._entry_ptr.25 = internal global ptr @mtk_nor_probe._entry.22, section ".printk_index", align 4
@mtk_nor_cmd_exec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 133, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"command %u timeout.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_nor_cmd_exec\00", [47 x i8] zeroinitializer }, align 32
@mtk_nor_cmd_exec._entry_ptr = internal global ptr @mtk_nor_cmd_exec._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@mtk_nor_dma_exec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.6, i32 378, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma read timeout.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mtk_nor_dma_exec\00", [47 x i8] zeroinitializer }, align 32
@mtk_nor_dma_exec._entry_ptr = internal global ptr @mtk_nor_dma_exec._entry, section ".printk_index", align 4
@mtk_nor_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 614, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"spi clock should be %u Hz.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_nor_setup\00", [18 x i8] zeroinitializer }, align 32
@mtk_nor_setup._entry_ptr = internal global ptr @mtk_nor_setup._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 11]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 11]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 11]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"mtk_nor_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 921, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 923, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"mtk_nor_match\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 746, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"mtk_nor_pm_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 915, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 766, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 770, i32 38 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 774, i32 46 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 780, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 786, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [16 x i8] c"mtk_nor_mem_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 740, i32 44 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 819, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 834, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 839, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 859, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 133, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 326, i32 6 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 378, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.159 = private constant [29 x i8] c"../drivers/spi/spi-mtk-nor.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 613, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 87, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_mtk_nor_driver_exit, ptr @__initcall__kmod_spi_mtk_nor__237_931_mtk_nor_driver_init6, ptr @mtk_nor_cmd_exec._entry, ptr @mtk_nor_cmd_exec._entry_ptr, ptr @mtk_nor_dma_exec._entry, ptr @mtk_nor_dma_exec._entry_ptr, ptr @mtk_nor_driver_exit, ptr @mtk_nor_probe._entry, ptr @mtk_nor_probe._entry.12, ptr @mtk_nor_probe._entry.15, ptr @mtk_nor_probe._entry.19, ptr @mtk_nor_probe._entry.22, ptr @mtk_nor_probe._entry.9, ptr @mtk_nor_probe._entry_ptr, ptr @mtk_nor_probe._entry_ptr.11, ptr @mtk_nor_probe._entry_ptr.14, ptr @mtk_nor_probe._entry_ptr.18, ptr @mtk_nor_probe._entry_ptr.21, ptr @mtk_nor_probe._entry_ptr.25, ptr @mtk_nor_setup._entry, ptr @mtk_nor_setup._entry_ptr, ptr @mtk_nor_driver, ptr @.str, ptr @mtk_nor_match, ptr @mtk_nor_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @mtk_nor_mem_ops, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @init_completion.__key, ptr @.str.34], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nor_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nor_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nor_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nor_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nor_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nor_mem_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nor_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nor_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nor_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nor_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nor_cmd_exec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nor_dma_exec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_nor_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nor_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_nor_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_nor_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_nor_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nor_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %cmp.i199 = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i199, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %cmp.i200 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i200, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %call15 = tail call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  %cmp.i201 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %call21 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %4 = ptrtoint ptr %call21 to i32
  %cmp = icmp eq ptr %call21, inttoptr (i32 64 to ptr)
  br i1 %cmp, label %if.end19.cond.end_crit_edge, label %cond.false

if.end19.cond.end_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %sh_prom = zext i32 %4 to i64
  %notmask = shl nsw i64 -1, %sh_prom
  %sub = xor i64 %notmask, -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end19.cond.end_crit_edge
  %cond = phi i64 [ %sub, %cond.false ], [ -1, %if.end19.cond.end_crit_edge ]
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef %cond) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i202 = icmp eq i32 %call.i, 0
  br i1 %cmp.i202, label %if.end26, label %do.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %4) #12
  br label %cleanup

if.end26:                                         ; preds = %cond.end
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef %cond) #9
  %call.i203 = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev, i32 noundef 96, i1 noundef zeroext false) #9
  %tobool29.not = icmp eq ptr %call.i203, null
  br i1 %tobool29.not, label %do.end33, label %if.end35

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i203, i32 0, i32 7
  %5 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 128, ptr %bits_per_word_mask, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %of_node38 = getelementptr inbounds %struct.device, ptr %call.i203, i32 0, i32 27
  %8 = ptrtoint ptr %of_node38 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %of_node38, align 8
  %max_message_size = getelementptr inbounds %struct.spi_controller, ptr %call.i203, i32 0, i32 14
  %9 = ptrtoint ptr %max_message_size to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mtk_max_msg_size, ptr %max_message_size, align 4
  %mem_ops = getelementptr inbounds %struct.spi_controller, ptr %call.i203, i32 0, i32 53
  %10 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mtk_nor_mem_ops, ptr %mem_ops, align 4
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i203, i32 0, i32 5
  %11 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3840, ptr %mode_bits, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i203, i32 0, i32 3
  %12 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %num_chipselect, align 2
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i203, i32 0, i32 20
  %13 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mtk_nor_setup, ptr %setup, align 4
  %transfer_one_message = getelementptr inbounds %struct.spi_controller, ptr %call.i203, i32 0, i32 45
  %14 = ptrtoint ptr %transfer_one_message to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mtk_nor_transfer_one_message, ptr %transfer_one_message, align 4
  %auto_runtime_pm = getelementptr inbounds %struct.spi_controller, ptr %call.i203, i32 0, i32 36
  %15 = ptrtoint ptr %auto_runtime_pm to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %auto_runtime_pm, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i203, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i203, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i, align 4
  %base41 = getelementptr inbounds %struct.mtk_nor, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %base41 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call, ptr %base41, align 4
  %has_irq = getelementptr inbounds %struct.mtk_nor, ptr %18, i32 0, i32 10
  %20 = ptrtoint ptr %has_irq to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %has_irq, align 1
  %wbuf_en = getelementptr inbounds %struct.mtk_nor, ptr %18, i32 0, i32 9
  %21 = ptrtoint ptr %wbuf_en to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %wbuf_en, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i203, ptr %18, align 4
  %dev44 = getelementptr inbounds %struct.mtk_nor, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %dev44 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %dev, ptr %dev44, align 4
  %spi_clk45 = getelementptr inbounds %struct.mtk_nor, ptr %18, i32 0, i32 5
  %24 = ptrtoint ptr %spi_clk45 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call3, ptr %spi_clk45, align 4
  %ctlr_clk46 = getelementptr inbounds %struct.mtk_nor, ptr %18, i32 0, i32 6
  %25 = ptrtoint ptr %ctlr_clk46 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9, ptr %ctlr_clk46, align 4
  %axi_clk47 = getelementptr inbounds %struct.mtk_nor, ptr %18, i32 0, i32 7
  %26 = ptrtoint ptr %axi_clk47 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call15, ptr %axi_clk47, align 4
  %cmp48 = icmp ugt ptr %call21, inttoptr (i32 32 to ptr)
  %high_dma = getelementptr inbounds %struct.mtk_nor, ptr %18, i32 0, i32 11
  %frombool = zext i1 %cmp48 to i8
  %27 = ptrtoint ptr %high_dma to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool, ptr %high_dma, align 2
  %buffer_dma = getelementptr inbounds %struct.mtk_nor, ptr %18, i32 0, i32 4
  %call.i204 = tail call ptr @dmam_alloc_attrs(ptr noundef %dev, i32 noundef 4112, ptr noundef %buffer_dma, i32 noundef 3264, i32 noundef 0) #9
  %buffer = getelementptr inbounds %struct.mtk_nor, ptr %18, i32 0, i32 3
  %28 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i204, ptr %buffer, align 4
  %tobool52.not = icmp eq ptr %call.i204, null
  br i1 %tobool52.not, label %if.end35.cleanup_crit_edge, label %if.end54

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end54:                                         ; preds = %if.end35
  %29 = ptrtoint ptr %call.i204 to i32
  %and = and i32 %29, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool56.not = icmp eq i32 %and, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.13) #12
  br label %cleanup

if.end62:                                         ; preds = %if.end54
  %call63 = tail call fastcc i32 @mtk_nor_enable_clk(ptr noundef %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end62.cleanup_crit_edge, label %if.end66

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end66:                                         ; preds = %if.end62
  %32 = ptrtoint ptr %spi_clk45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spi_clk45, align 4
  %call68 = tail call i32 @clk_get_rate(ptr noundef %33) #9
  %spi_freq = getelementptr inbounds %struct.mtk_nor, ptr %18, i32 0, i32 8
  %34 = ptrtoint ptr %spi_freq to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call68, ptr %spi_freq, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @arm_heavy_mb() #9
  %35 = ptrtoint ptr %base41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base41, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  tail call void @arm_heavy_mb() #9
  %37 = ptrtoint ptr %base41 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base41, align 4
  %add.ptr4.i = getelementptr i8, ptr %38, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 -16777216) #9, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  tail call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %base41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base41, align 4
  %add.ptr8.i = getelementptr i8, ptr %40, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 805306368) #9, !srcloc !90
  %41 = ptrtoint ptr %base41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base41, align 4
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 100
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  %44 = or i32 %43, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %45 = ptrtoint ptr %base41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base41, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %46, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %44) #9, !srcloc !90
  %47 = ptrtoint ptr %base41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base41, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %48, i32 180
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  %50 = or i32 %49, -1610612736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %51 = ptrtoint ptr %base41 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base41, align 4
  %add.ptr3.i16.i = getelementptr i8, ptr %52, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i16.i, i32 %50) #9, !srcloc !90
  %call69 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  %53 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev44, align 4
  br i1 %cmp70, label %do.end74, label %if.else

do.end74:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.16) #12
  br label %if.end87

if.else:                                          ; preds = %if.end66
  %55 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev, align 8
  %call.i205 = tail call i32 @devm_request_threaded_irq(ptr noundef %54, i32 noundef %call69, ptr noundef nonnull @mtk_nor_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %56, ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %cmp78 = icmp slt i32 %call.i205, 0
  br i1 %cmp78, label %do.end82, label %if.else84

do.end82:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %58, ptr noundef nonnull @.str.20) #12
  br label %if.end87

if.else84:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %op_done = getelementptr inbounds %struct.mtk_nor, ptr %18, i32 0, i32 12
  %59 = ptrtoint ptr %op_done to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %op_done, align 4
  %wait.i = getelementptr inbounds %struct.mtk_nor, ptr %18, i32 0, i32 12, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @init_completion.__key) #9
  %60 = ptrtoint ptr %has_irq to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %has_irq, align 1
  br label %if.end87

if.end87:                                         ; preds = %if.else84, %do.end82, %do.end74
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef -1) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #9
  %call.i206 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  tail call void @pm_runtime_enable(ptr noundef %dev) #9
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !96
  %call95 = tail call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i203) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %err_probe, label %if.end98

if.end98:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %call.i207 = tail call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %62 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store volatile i64 %call.i207, ptr %last_busy.i, align 8
  %call.i208 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #9
  %63 = ptrtoint ptr %spi_freq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %spi_freq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %64) #12
  br label %cleanup

err_probe:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %call.i209 = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #9
  tail call fastcc void @mtk_nor_disable_clk(ptr noundef %18)
  br label %cleanup

cleanup:                                          ; preds = %err_probe, %if.end98, %if.end62.cleanup_crit_edge, %do.end60, %if.end35.cleanup_crit_edge, %do.end33, %do.end, %if.then17, %if.then11, %if.then5, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %1, %if.then5 ], [ %2, %if.then11 ], [ %3, %if.then17 ], [ -22, %do.end ], [ -12, %do.end60 ], [ %call95, %err_probe ], [ 0, %if.end98 ], [ -12, %do.end33 ], [ -12, %if.end35.cleanup_crit_edge ], [ %call63, %if.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nor_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 2) #9
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #9
  %spi_clk.i = getelementptr inbounds %struct.mtk_nor, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %spi_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi_clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %ctlr_clk.i = getelementptr inbounds %struct.mtk_nor, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ctlr_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctlr_clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %axi_clk.i = getelementptr inbounds %struct.mtk_nor, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %axi_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %axi_clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_max_msg_size(ptr nocapture noundef readnone %spi) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nor_setup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %4 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %spi_freq = getelementptr inbounds %struct.mtk_nor, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %spi_freq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spi_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.32, i32 noundef %7) #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %spi_freq3 = getelementptr inbounds %struct.mtk_nor, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %spi_freq3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %spi_freq3, align 4
  %10 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %max_speed_hz, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nor_transfer_one_message(ptr noundef %master, ptr noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn108 = load ptr, ptr %m, align 4
  %cmp.not109 = icmp eq ptr %.pn108, %m
  br i1 %cmp.not109, label %entry.do.body18_crit_edge, label %for.body.lr.ph

entry.do.body18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body18

for.body.lr.ph:                                   ; preds = %entry
  %base = getelementptr inbounds %struct.mtk_nor, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %.pn112 = phi ptr [ %.pn108, %for.body.lr.ph ], [ %.pn, %for.end.for.body_crit_edge ]
  %trx_len.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %add10, %for.end.for.body_crit_edge ]
  %reg_offset.0110 = phi i32 [ 5, %for.body.lr.ph ], [ %reg_offset.1.lcssa, %for.end.for.body_crit_edge ]
  %t.0 = getelementptr i8, ptr %.pn112, i32 -84
  %3 = ptrtoint ptr %t.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %t.0, align 4
  %len = getelementptr i8, ptr %.pn112, i32 -76
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3103.not = icmp eq i32 %6, 0
  br i1 %cmp3103.not, label %for.body.for.end_crit_edge, label %for.body4.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body4.lr.ph:                                  ; preds = %for.body
  %tobool.not = icmp eq ptr %4, null
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body4.lr.ph
  %reg_offset.1106 = phi i32 [ %reg_offset.0110, %for.body4.lr.ph ], [ %dec, %for.inc.for.body4_crit_edge ]
  %i.0104 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.inc.for.body4_crit_edge ]
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %mul = shl i32 %reg_offset.1106, 2
  %add = add i32 %mul, 32
  %add.ptr5 = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  br i1 %tobool.not, label %do.body6, label %do.body

do.body:                                          ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr i8, ptr %4, i32 %i.0104
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %10) #9, !srcloc !97
  br label %for.inc

do.body6:                                         ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 0) #9, !srcloc !97
  br label %for.inc

for.inc:                                          ; preds = %do.body6, %do.body
  %inc = add nuw i32 %i.0104, 1
  %dec = add i32 %reg_offset.1106, -1
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %cmp3 = icmp ult i32 %inc, %12
  br i1 %cmp3, label %for.inc.for.body4_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %reg_offset.1.lcssa = phi i32 [ %reg_offset.0110, %for.body.for.end_crit_edge ], [ %dec, %for.inc.for.end_crit_edge ]
  %.lcssa = phi i32 [ 0, %for.body.for.end_crit_edge ], [ %12, %for.inc.for.end_crit_edge ]
  %add10 = add i32 %.lcssa, %trx_len.0111
  %13 = ptrtoint ptr %.pn112 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn112, align 4
  %cmp.not = icmp eq ptr %.pn, %m
  br i1 %cmp.not, label %for.end.do.body18_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end.do.body18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body18

do.body18:                                        ; preds = %for.end.do.body18_crit_edge, %entry.do.body18_crit_edge
  %trx_len.0.lcssa = phi i32 [ 0, %entry.do.body18_crit_edge ], [ %add10, %for.end.do.body18_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  tail call void @arm_heavy_mb() #9
  %mul21 = shl i32 %trx_len.0.lcssa, 3
  %14 = tail call i32 @llvm.bswap.i32(i32 %mul21)
  %base22 = getelementptr inbounds %struct.mtk_nor, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %base22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base22, align 4
  %add.ptr23 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %14) #9, !srcloc !90
  %call25 = tail call fastcc i32 @mtk_nor_cmd_exec(ptr noundef %1, i32 noundef 4, i32 noundef %mul21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.body18.msg_done_crit_edge, label %if.end28

do.body18.msg_done_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %msg_done

if.end28:                                         ; preds = %do.body18
  %17 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn102120 = load ptr, ptr %m, align 4
  %cmp37.not121 = icmp eq ptr %.pn102120, %m
  br i1 %cmp37.not121, label %if.end28.for.end65_crit_edge, label %for.body39.preheader

if.end28.for.end65_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end65

for.body39.preheader:                             ; preds = %if.end28
  %sub = add i32 %trx_len.0.lcssa, -1
  br label %for.body39

for.cond34.loopexit:                              ; preds = %for.inc55.for.cond34.loopexit_crit_edge, %for.body39.for.cond34.loopexit_crit_edge
  %reg_offset.3.lcssa = phi i32 [ %reg_offset.2122, %for.body39.for.cond34.loopexit_crit_edge ], [ %dec57, %for.inc55.for.cond34.loopexit_crit_edge ]
  %18 = ptrtoint ptr %.pn102123 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn102 = load ptr, ptr %.pn102123, align 4
  %cmp37.not = icmp eq ptr %.pn102, %m
  br i1 %cmp37.not, label %for.cond34.loopexit.for.end65_crit_edge, label %for.cond34.loopexit.for.body39_crit_edge

for.cond34.loopexit.for.body39_crit_edge:         ; preds = %for.cond34.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body39

for.cond34.loopexit.for.end65_crit_edge:          ; preds = %for.cond34.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end65

for.body39:                                       ; preds = %for.cond34.loopexit.for.body39_crit_edge, %for.body39.preheader
  %.pn102123 = phi ptr [ %.pn102, %for.cond34.loopexit.for.body39_crit_edge ], [ %.pn102120, %for.body39.preheader ]
  %reg_offset.2122 = phi i32 [ %reg_offset.3.lcssa, %for.cond34.loopexit.for.body39_crit_edge ], [ %sub, %for.body39.preheader ]
  %rx_buf = getelementptr i8, ptr %.pn102123, i32 -80
  %19 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_buf, align 4
  %len41 = getelementptr i8, ptr %.pn102123, i32 -76
  %21 = ptrtoint ptr %len41 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp42114.not = icmp eq i32 %22, 0
  br i1 %cmp42114.not, label %for.body39.for.cond34.loopexit_crit_edge, label %for.body43.lr.ph

for.body39.for.cond34.loopexit_crit_edge:         ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond34.loopexit

for.body43.lr.ph:                                 ; preds = %for.body39
  %tobool48.not = icmp eq ptr %20, null
  br label %for.body43

for.body43:                                       ; preds = %for.inc55.for.body43_crit_edge, %for.body43.lr.ph
  %reg_offset.3117 = phi i32 [ %reg_offset.2122, %for.body43.lr.ph ], [ %dec57, %for.inc55.for.body43_crit_edge ]
  %i.1115 = phi i32 [ 0, %for.body43.lr.ph ], [ %inc56, %for.inc55.for.body43_crit_edge ]
  br i1 %tobool48.not, label %for.body43.for.inc55_crit_edge, label %if.then49

for.body43.for.inc55_crit_edge:                   ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc55

if.then49:                                        ; preds = %for.body43
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %base22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base22, align 4
  %mul45 = shl i32 %reg_offset.3117, 2
  %add46 = add i32 %mul45, 56
  %add.ptr47 = getelementptr i8, ptr %24, i32 %add46
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr47) #9, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  %arrayidx53 = getelementptr i8, ptr %20, i32 %i.1115
  %26 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %arrayidx53, align 1
  br label %for.inc55

for.inc55:                                        ; preds = %if.then49, %for.body43.for.inc55_crit_edge
  %inc56 = add nuw i32 %i.1115, 1
  %dec57 = add i32 %reg_offset.3117, -1
  %27 = ptrtoint ptr %len41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len41, align 4
  %cmp42 = icmp ult i32 %inc56, %28
  br i1 %cmp42, label %for.inc55.for.body43_crit_edge, label %for.inc55.for.cond34.loopexit_crit_edge

for.inc55.for.cond34.loopexit_crit_edge:          ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond34.loopexit

for.inc55.for.body43_crit_edge:                   ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body43

for.end65:                                        ; preds = %for.cond34.loopexit.for.end65_crit_edge, %if.end28.for.end65_crit_edge
  %actual_length = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 6
  %29 = ptrtoint ptr %actual_length to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %trx_len.0.lcssa, ptr %actual_length, align 4
  br label %msg_done

msg_done:                                         ; preds = %for.end65, %do.body18.msg_done_crit_edge
  %status = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 7
  %30 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call25, ptr %status, align 4
  tail call void @spi_finalize_current_message(ptr noundef %master) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_nor_enable_clk(ptr nocapture noundef readonly %sp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_clk = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 5
  %0 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %ctlr_clk = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 6
  %2 = ptrtoint ptr %ctlr_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctlr_clk, align 4
  %call.i22 = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %if.end.i26, label %if.end.cleanup.sink.split.sink.split_crit_edge

if.end.cleanup.sink.split.sink.split_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

if.end.i26:                                       ; preds = %if.end
  %call1.i24 = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool2.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool2.not.i25, label %if.end5, label %if.end.i26.cleanup.sink.split.sink.split.sink.split_crit_edge

if.end.i26.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split.sink.split

if.end5:                                          ; preds = %if.end.i26
  %axi_clk = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 7
  %4 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %axi_clk, align 4
  %call.i30 = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool.not.i31 = icmp eq i32 %call.i30, 0
  br i1 %tobool.not.i31, label %if.end.i34, label %if.end5.if.then8_crit_edge

if.end5.if.then8_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.end.i34:                                       ; preds = %if.end5
  %call1.i32 = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %tobool2.not.i33 = icmp eq i32 %call1.i32, 0
  br i1 %tobool2.not.i33, label %if.end.i34.cleanup_crit_edge, label %if.then3.i35

if.end.i34.cleanup_crit_edge:                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3.i35:                                     ; preds = %if.end.i34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %5) #9
  br label %if.then8

if.then8:                                         ; preds = %if.then3.i35, %if.end5.if.then8_crit_edge
  %retval.0.i36.ph = phi i32 [ %call1.i32, %if.then3.i35 ], [ %call.i30, %if.end5.if.then8_crit_edge ]
  %6 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spi_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  br label %cleanup.sink.split.sink.split.sink.split

cleanup.sink.split.sink.split.sink.split:         ; preds = %if.then8, %if.end.i26.cleanup.sink.split.sink.split.sink.split_crit_edge
  %.sink47 = phi ptr [ %7, %if.then8 ], [ %3, %if.end.i26.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %ctlr_clk.sink.ph = phi ptr [ %ctlr_clk, %if.then8 ], [ %spi_clk, %if.end.i26.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph.ph = phi i32 [ %retval.0.i36.ph, %if.then8 ], [ %call1.i24, %if.end.i26.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink47) #9
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %cleanup.sink.split.sink.split.sink.split, %if.end.cleanup.sink.split.sink.split_crit_edge
  %ctlr_clk.sink = phi ptr [ %spi_clk, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %ctlr_clk.sink.ph, %cleanup.sink.split.sink.split.sink.split ]
  %retval.0.ph.ph = phi i32 [ %call.i22, %if.end.cleanup.sink.split.sink.split_crit_edge ], [ %retval.0.ph.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  %8 = ptrtoint ptr %ctlr_clk.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctlr_clk.sink, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %1, %if.end.i.cleanup.sink.split_crit_edge ], [ %9, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @clk_unprepare(ptr noundef %.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i34.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i34.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nor_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mtk_nor, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 168
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 172
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %2) #9, !srcloc !90
  %8 = and i32 %5, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %tobool12.not = icmp sgt i32 %2, -1
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.then13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %op_done = getelementptr inbounds %struct.mtk_nor, ptr %data, i32 0, i32 12
  tail call void @complete(ptr noundef %op_done) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr18 = getelementptr i8, ptr %10, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #9, !srcloc !90
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then13 ], [ 1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_nor_disable_clk(ptr nocapture noundef readonly %sp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %spi_clk = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 5
  %0 = ptrtoint ptr %spi_clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi_clk, align 4
  tail call void @clk_disable(ptr noundef %1) #9
  tail call void @clk_unprepare(ptr noundef %1) #9
  %ctlr_clk = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 6
  %2 = ptrtoint ptr %ctlr_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctlr_clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  tail call void @clk_unprepare(ptr noundef %3) #9
  %axi_clk = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 7
  %4 = ptrtoint ptr %axi_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %axi_clk, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mtk_nor_adjust_op_size(ptr nocapture noundef readonly %mem, ptr nocapture noundef %op) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 8
  %.off = add i8 %3, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then8, label %if.end.if.end68_crit_edge

if.end.if.end68_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then8:                                         ; preds = %if.end
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.then8.if.end68_crit_edge [
    i32 1, label %land.lhs.true
    i32 2, label %if.then54
  ]

if.then8.if.end68_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

land.lhs.true:                                    ; preds = %if.then8
  %dummy1.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %7 = ptrtoint ptr %dummy1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dummy1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %land.lhs.true.if.end.i_crit_edge, label %if.then.i

land.lhs.true.if.end.i_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %8 to i16
  %mul.i = shl nuw nsw i16 %conv.i, 3
  %buswidth.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buswidth.i, align 1
  %div.rhs.trunc.i = zext i8 %10 to i16
  %div88.i = udiv i16 %mul.i, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div88.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true.if.end.i_crit_edge
  %dummy.0.i = phi i32 [ %div.zext.i, %if.then.i ], [ 0, %land.lhs.true.if.end.i_crit_edge ]
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data.i, align 4
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %12, label %if.else42.i [
    i8 2, label %if.end.i.if.then14.i_crit_edge
    i8 4, label %if.end.i.if.then14.i_crit_edge92
  ]

if.end.i.if.then14.i_crit_edge92:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

if.end.i.if.then14.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

if.then14.i:                                      ; preds = %if.end.i.if.then14.i_crit_edge, %if.end.i.if.then14.i_crit_edge92
  %buswidth15.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %buswidth15.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buswidth15.i, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %15, label %if.then14.i.if.end68_crit_edge [
    i8 1, label %if.then19.i
    i8 2, label %if.then27.i
    i8 4, label %if.then36.i
  ]

if.then14.i.if.end68_crit_edge:                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then19.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dummy.0.i)
  %cmp20.i = icmp eq i32 %dummy.0.i, 8
  br i1 %cmp20.i, label %if.then19.i.if.then14_crit_edge, label %if.then19.i.if.end68_crit_edge

if.then19.i.if.end68_crit_edge:                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then19.i.if.then14_crit_edge:                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.then27.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dummy.0.i)
  %cmp28.i = icmp eq i32 %dummy.0.i, 4
  br i1 %cmp28.i, label %if.then27.i.if.then14_crit_edge, label %if.then27.i.if.end68_crit_edge

if.then27.i.if.end68_crit_edge:                   ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then27.i.if.then14_crit_edge:                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.then36.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %dummy.0.i)
  %cmp37.i = icmp eq i32 %dummy.0.i, 6
  br i1 %cmp37.i, label %if.then36.i.if.then14_crit_edge, label %if.then36.i.if.end68_crit_edge

if.then36.i.if.end68_crit_edge:                   ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then36.i.if.then14_crit_edge:                  ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.else42.i:                                      ; preds = %if.end.i
  %buswidth44.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %buswidth44.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buswidth44.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp46.i = icmp eq i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp51.i = icmp eq i8 %12, 1
  %or.cond.i = select i1 %cmp46.i, i1 %cmp51.i, i1 false
  br i1 %or.cond.i, label %if.then53.i, label %if.else42.i.if.end68_crit_edge

if.else42.i.if.end68_crit_edge:                   ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then53.i:                                      ; preds = %if.else42.i
  %opcode.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %19 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %opcode.i, align 4
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.37)
  switch i16 %20, label %if.then53.i.if.end68_crit_edge [
    i16 3, label %if.then57.i
    i16 11, label %mtk_nor_match_read.exit
  ]

if.then53.i.if.end68_crit_edge:                   ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then57.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dummy.0.i)
  %cmp58.i = icmp eq i32 %dummy.0.i, 0
  br i1 %cmp58.i, label %if.then57.i.if.then14_crit_edge, label %if.then57.i.if.end68_crit_edge

if.then57.i.if.end68_crit_edge:                   ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then57.i.if.then14_crit_edge:                  ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

mtk_nor_match_read.exit:                          ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dummy.0.i)
  %cmp67.i = icmp eq i32 %dummy.0.i, 8
  br i1 %cmp67.i, label %mtk_nor_match_read.exit.if.then14_crit_edge, label %mtk_nor_match_read.exit.if.end68_crit_edge

mtk_nor_match_read.exit.if.end68_crit_edge:       ; preds = %mtk_nor_match_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

mtk_nor_match_read.exit.if.then14_crit_edge:      ; preds = %mtk_nor_match_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.then14:                                        ; preds = %mtk_nor_match_read.exit.if.then14_crit_edge, %if.then57.i.if.then14_crit_edge, %if.then36.i.if.then14_crit_edge, %if.then27.i.if.then14_crit_edge, %if.then19.i.if.then14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %1)
  %cmp17 = icmp ugt i32 %1, 4194304
  br i1 %cmp17, label %if.then19, label %if.then14.if.end22_crit_edge

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4194304, ptr %nbytes, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then14.if.end22_crit_edge
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %val, align 8
  %and = and i64 %24, 15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool24.not = icmp eq i64 %and, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %if.end22.cleanup.sink.split_crit_edge

if.end22.cleanup.sink.split_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

lor.lhs.false25:                                  ; preds = %if.end22
  %25 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %26)
  %cmp28 = icmp ult i32 %26, 16
  br i1 %cmp28, label %lor.lhs.false25.cleanup.sink.split_crit_edge, label %if.else

lor.lhs.false25.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.else:                                          ; preds = %lor.lhs.false25
  %buf.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf.i, align 4
  %29 = ptrtoint ptr %28 to i32
  %and.i = and i32 %29, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then34, label %if.else38

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %and37 = and i32 %26, -16
  br label %cleanup.sink.split

if.else38:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %26)
  %cmp41 = icmp ugt i32 %26, 4096
  br i1 %cmp41, label %if.else38.cleanup.sink.split_crit_edge, label %if.else38.cleanup_crit_edge

if.else38.cleanup_crit_edge:                      ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else38.cleanup.sink.split_crit_edge:           ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then54:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %cmp57.inv = icmp ult i32 %1, 128
  %. = select i1 %cmp57.inv, i32 1, i32 128
  br label %cleanup.sink.split

if.end68:                                         ; preds = %mtk_nor_match_read.exit.if.end68_crit_edge, %if.then57.i.if.end68_crit_edge, %if.then53.i.if.end68_crit_edge, %if.else42.i.if.end68_crit_edge, %if.then36.i.if.end68_crit_edge, %if.then27.i.if.end68_crit_edge, %if.then19.i.if.end68_crit_edge, %if.then14.i.if.end68_crit_edge, %if.then8.if.end68_crit_edge, %if.end.if.end68_crit_edge
  %30 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %op, align 8
  %conv.i87 = zext i8 %31 to i32
  %conv2.i = zext i8 %3 to i32
  %add.i = add nuw nsw i32 %conv.i87, %conv2.i
  %dir.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dir.i, align 4
  %34 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %33, label %if.end68.cleanup_crit_edge [
    i32 2, label %if.then.i88
    i32 1, label %if.then18.i
  ]

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i88:                                      ; preds = %if.end68
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %35 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dummy.i, align 8
  %conv5.i = zext i8 %36 to i32
  %37 = add nuw nsw i32 %add.i, %conv5.i
  %sub.i = sub nsw i32 6, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub.i)
  %cmp9.i = icmp ugt i32 %1, %sub.i
  br i1 %cmp9.i, label %if.then.i88.cleanup.sink.split_crit_edge, label %if.then.i88.cleanup_crit_edge

if.then.i88.cleanup_crit_edge:                    ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i88.cleanup.sink.split_crit_edge:         ; preds = %if.then.i88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then18.i:                                      ; preds = %if.end68
  %dummy20.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %38 = ptrtoint ptr %dummy20.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %dummy20.i, align 8
  %conv22.i = zext i8 %39 to i32
  %40 = add nuw nsw i32 %add.i, %conv22.i
  %sub23.i = sub nsw i32 7, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %sub23.i)
  %cmp30.i = icmp ugt i32 %1, %sub23.i
  br i1 %cmp30.i, label %if.then18.i.cleanup.sink.split_crit_edge, label %if.then18.i.cleanup_crit_edge

if.then18.i.cleanup_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18.i.cleanup.sink.split_crit_edge:         ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then18.i.cleanup.sink.split_crit_edge, %if.then.i88.cleanup.sink.split_crit_edge, %if.then54, %if.else38.cleanup.sink.split_crit_edge, %if.then34, %lor.lhs.false25.cleanup.sink.split_crit_edge, %if.end22.cleanup.sink.split_crit_edge
  %sub23.i.sink = phi i32 [ %and37, %if.then34 ], [ %., %if.then54 ], [ 1, %lor.lhs.false25.cleanup.sink.split_crit_edge ], [ 1, %if.end22.cleanup.sink.split_crit_edge ], [ 4096, %if.else38.cleanup.sink.split_crit_edge ], [ %sub.i, %if.then.i88.cleanup.sink.split_crit_edge ], [ %sub23.i, %if.then18.i.cleanup.sink.split_crit_edge ]
  %41 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub23.i.sink, ptr %nbytes, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then18.i.cleanup_crit_edge, %if.then.i88.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.else38.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @mtk_nor_supports_op(ptr noundef %mem, ptr noundef %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @spi_mem_default_supports_op(ptr noundef %mem, ptr noundef %op) #9
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %buswidth = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %0 = ptrtoint ptr %buswidth to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buswidth, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3:                                          ; preds = %if.end
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 8
  %.off = add i8 %3, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.then12, label %if.end3.lor.lhs.false.i_crit_edge

if.end3.lor.lhs.false.i_crit_edge:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

if.then12:                                        ; preds = %if.end3
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %5, label %if.then12.lor.lhs.false.i_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb16
  ]

if.then12.lor.lhs.false.i_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

sw.bb:                                            ; preds = %if.then12
  %dummy1.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %7 = ptrtoint ptr %dummy1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dummy1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %8 to i16
  %mul.i = shl nuw nsw i16 %conv.i, 3
  %buswidth.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buswidth.i, align 1
  %div.rhs.trunc.i = zext i8 %10 to i16
  %div88.i = udiv i16 %mul.i, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div88.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %dummy.0.i = phi i32 [ %div.zext.i, %if.then.i ], [ 0, %sw.bb.if.end.i_crit_edge ]
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 4
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %12, label %if.else42.i [
    i8 2, label %if.end.i.if.then14.i_crit_edge
    i8 4, label %if.end.i.if.then14.i_crit_edge51
  ]

if.end.i.if.then14.i_crit_edge51:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

if.end.i.if.then14.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

if.then14.i:                                      ; preds = %if.end.i.if.then14.i_crit_edge, %if.end.i.if.then14.i_crit_edge51
  %buswidth15.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %buswidth15.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %buswidth15.i, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %15, label %if.then14.i.lor.lhs.false.i_crit_edge [
    i8 1, label %if.then19.i
    i8 2, label %if.then27.i
    i8 4, label %if.then36.i
  ]

if.then14.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

if.then19.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dummy.0.i)
  %cmp20.i = icmp eq i32 %dummy.0.i, 8
  br i1 %cmp20.i, label %if.then19.i.return_crit_edge, label %if.then19.i.lor.lhs.false.i_crit_edge

if.then19.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

if.then19.i.return_crit_edge:                     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then27.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dummy.0.i)
  %cmp28.i = icmp eq i32 %dummy.0.i, 4
  br i1 %cmp28.i, label %if.then27.i.return_crit_edge, label %if.then27.i.lor.lhs.false.i_crit_edge

if.then27.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

if.then27.i.return_crit_edge:                     ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then36.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %dummy.0.i)
  %cmp37.i = icmp eq i32 %dummy.0.i, 6
  br i1 %cmp37.i, label %if.then36.i.return_crit_edge, label %if.then36.i.lor.lhs.false.i_crit_edge

if.then36.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

if.then36.i.return_crit_edge:                     ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.else42.i:                                      ; preds = %if.end.i
  %buswidth44.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %buswidth44.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buswidth44.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %18)
  %cmp46.i = icmp eq i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %12)
  %cmp51.i = icmp eq i8 %12, 1
  %or.cond.i = select i1 %cmp46.i, i1 %cmp51.i, i1 false
  br i1 %or.cond.i, label %if.then53.i, label %if.else42.i.lor.lhs.false.i_crit_edge

if.else42.i.lor.lhs.false.i_crit_edge:            ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

if.then53.i:                                      ; preds = %if.else42.i
  %opcode.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %19 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %opcode.i, align 4
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.42)
  switch i16 %20, label %if.then53.i.lor.lhs.false.i_crit_edge [
    i16 3, label %if.then57.i
    i16 11, label %mtk_nor_match_read.exit
  ]

if.then53.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

if.then57.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dummy.0.i)
  %cmp58.i = icmp eq i32 %dummy.0.i, 0
  br i1 %cmp58.i, label %if.then57.i.return_crit_edge, label %if.then57.i.lor.lhs.false.i_crit_edge

if.then57.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

if.then57.i.return_crit_edge:                     ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

mtk_nor_match_read.exit:                          ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dummy.0.i)
  %cmp67.i = icmp eq i32 %dummy.0.i, 8
  br i1 %cmp67.i, label %mtk_nor_match_read.exit.return_crit_edge, label %mtk_nor_match_read.exit.lor.lhs.false.i_crit_edge

mtk_nor_match_read.exit.lor.lhs.false.i_crit_edge: ; preds = %mtk_nor_match_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

mtk_nor_match_read.exit.return_crit_edge:         ; preds = %mtk_nor_match_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb16:                                          ; preds = %if.then12
  %buswidth18 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %buswidth18 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buswidth18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %23)
  %cmp20 = icmp eq i8 %23, 1
  br i1 %cmp20, label %land.lhs.true, label %sw.bb16.lor.lhs.false.i_crit_edge

sw.bb16.lor.lhs.false.i_crit_edge:                ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

land.lhs.true:                                    ; preds = %sw.bb16
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %24 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dummy, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp24 = icmp eq i8 %25, 0
  br i1 %cmp24, label %land.lhs.true26, label %land.lhs.true.lor.lhs.false.i_crit_edge

land.lhs.true.lor.lhs.false.i_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

land.lhs.true26:                                  ; preds = %land.lhs.true
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp30 = icmp eq i8 %27, 1
  br i1 %cmp30, label %land.lhs.true26.return_crit_edge, label %land.lhs.true26.lor.lhs.false.i_crit_edge

land.lhs.true26.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

land.lhs.true26.return_crit_edge:                 ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false.i:                                  ; preds = %land.lhs.true26.lor.lhs.false.i_crit_edge, %land.lhs.true.lor.lhs.false.i_crit_edge, %sw.bb16.lor.lhs.false.i_crit_edge, %mtk_nor_match_read.exit.lor.lhs.false.i_crit_edge, %if.then57.i.lor.lhs.false.i_crit_edge, %if.then53.i.lor.lhs.false.i_crit_edge, %if.else42.i.lor.lhs.false.i_crit_edge, %if.then36.i.lor.lhs.false.i_crit_edge, %if.then27.i.lor.lhs.false.i_crit_edge, %if.then19.i.lor.lhs.false.i_crit_edge, %if.then14.i.lor.lhs.false.i_crit_edge, %if.then12.lor.lhs.false.i_crit_edge, %if.end3.lor.lhs.false.i_crit_edge
  %buswidth2.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %buswidth2.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buswidth2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp4.i = icmp ugt i8 %29, 1
  br i1 %cmp4.i, label %lor.lhs.false.i.return_crit_edge, label %lor.lhs.false6.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %dummy.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %buswidth7.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %buswidth7.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %buswidth7.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp9.i = icmp ugt i8 %31, 1
  br i1 %cmp9.i, label %lor.lhs.false6.i.return_crit_edge, label %lor.lhs.false11.i

lor.lhs.false6.i.return_crit_edge:                ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false11.i:                                ; preds = %lor.lhs.false6.i
  %data.i46 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %32 = ptrtoint ptr %data.i46 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %data.i46, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp14.i = icmp ugt i8 %33, 1
  br i1 %cmp14.i, label %lor.lhs.false11.i.return_crit_edge, label %if.end.i47

lor.lhs.false11.i.return_crit_edge:               ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i47:                                       ; preds = %lor.lhs.false11.i
  %34 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %op, align 8
  %conv17.i = zext i8 %35 to i32
  %conv20.i = zext i8 %3 to i32
  %add.i = add nuw nsw i32 %conv17.i, %conv20.i
  %dir.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dir.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %37, label %if.else79.i [
    i32 2, label %if.then24.i
    i32 1, label %if.then46.i
  ]

if.then24.i:                                      ; preds = %if.end.i47
  %39 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dummy.i, align 8
  %conv27.i = zext i8 %40 to i32
  %add28.i = add nuw nsw i32 %add.i, %conv27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %add28.i)
  %cmp29.i = icmp ugt i32 %add28.i, 5
  br i1 %cmp29.i, label %if.then24.i.return_crit_edge, label %if.end32.i

if.then24.i.return_crit_edge:                     ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end32.i:                                       ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i48 = icmp eq i8 %3, 0
  br i1 %tobool.not.i48, label %land.lhs.true.i, label %if.end32.i.if.end89.i_crit_edge

if.end32.i.if.end89.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89.i

land.lhs.true.i:                                  ; preds = %if.end32.i
  %nbytes36.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %41 = ptrtoint ptr %nbytes36.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nbytes36.i, align 4
  %add37.i = add i32 %42, %add28.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %add37.i)
  %cmp38.i = icmp ugt i32 %add37.i, 6
  br i1 %cmp38.i, label %land.lhs.true.i.return_crit_edge, label %land.lhs.true.i.if.end89.i_crit_edge

land.lhs.true.i.if.end89.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then46.i:                                      ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %add.i)
  %cmp47.i = icmp ugt i32 %add.i, 6
  br i1 %cmp47.i, label %if.then46.i.return_crit_edge, label %if.end50.i

if.then46.i.return_crit_edge:                     ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end50.i:                                       ; preds = %if.then46.i
  %nbytes52.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %nbytes52.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nbytes52.i, align 4
  %45 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dummy.i, align 8
  %conv55.i = zext i8 %46 to i32
  %47 = add nuw nsw i32 %add.i, %conv55.i
  %sub56.i = sub nsw i32 7, %47
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %sub56.i)
  %cmp61.i = icmp sgt i32 %44, %sub56.i
  br i1 %cmp61.i, label %if.then63.i, label %if.end50.i.if.end69.i_crit_edge

if.end50.i.if.end69.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

if.then63.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool66.not.i = icmp eq i8 %3, 0
  br i1 %tobool66.not.i, label %if.then63.i.return_crit_edge, label %if.then63.i.if.end69.i_crit_edge

if.then63.i.if.end69.i_crit_edge:                 ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69.i

if.then63.i.return_crit_edge:                     ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end69.i:                                       ; preds = %if.then63.i.if.end69.i_crit_edge, %if.end50.i.if.end69.i_crit_edge
  %rx_len.0.i = phi i32 [ %44, %if.end50.i.if.end69.i_crit_edge ], [ %sub56.i, %if.then63.i.if.end69.i_crit_edge ]
  %add74.i = add i32 %rx_len.0.i, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add74.i)
  %cmp75.i = icmp sgt i32 %add74.i, 7
  br i1 %cmp75.i, label %if.end69.i.return_crit_edge, label %if.end69.i.if.end89.i_crit_edge

if.end69.i.if.end89.i_crit_edge:                  ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89.i

if.end69.i.return_crit_edge:                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.else79.i:                                      ; preds = %if.end.i47
  %48 = ptrtoint ptr %dummy.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dummy.i, align 8
  %conv82.i = zext i8 %49 to i32
  %add83.i = add nuw nsw i32 %add.i, %conv82.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add83.i)
  %cmp84.i = icmp ugt i32 %add83.i, 7
  br i1 %cmp84.i, label %if.else79.i.return_crit_edge, label %if.else79.i.if.end89.i_crit_edge

if.else79.i.if.end89.i_crit_edge:                 ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89.i

if.else79.i.return_crit_edge:                     ; preds = %if.else79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end89.i:                                       ; preds = %if.else79.i.if.end89.i_crit_edge, %if.end69.i.if.end89.i_crit_edge, %land.lhs.true.i.if.end89.i_crit_edge, %if.end32.i.if.end89.i_crit_edge
  br label %return

return:                                           ; preds = %if.end89.i, %if.else79.i.return_crit_edge, %if.end69.i.return_crit_edge, %if.then63.i.return_crit_edge, %if.then46.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %if.then24.i.return_crit_edge, %lor.lhs.false11.i.return_crit_edge, %lor.lhs.false6.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %land.lhs.true26.return_crit_edge, %mtk_nor_match_read.exit.return_crit_edge, %if.then57.i.return_crit_edge, %if.then36.i.return_crit_edge, %if.then27.i.return_crit_edge, %if.then19.i.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ false, %if.end.return_crit_edge ], [ true, %mtk_nor_match_read.exit.return_crit_edge ], [ true, %land.lhs.true26.return_crit_edge ], [ true, %if.then19.i.return_crit_edge ], [ true, %if.then27.i.return_crit_edge ], [ true, %if.then36.i.return_crit_edge ], [ true, %if.then57.i.return_crit_edge ], [ true, %if.end89.i ], [ false, %lor.lhs.false11.i.return_crit_edge ], [ false, %lor.lhs.false6.i.return_crit_edge ], [ false, %lor.lhs.false.i.return_crit_edge ], [ false, %if.then24.i.return_crit_edge ], [ false, %land.lhs.true.i.return_crit_edge ], [ false, %if.then46.i.return_crit_edge ], [ false, %if.then63.i.return_crit_edge ], [ false, %if.end69.i.return_crit_edge ], [ false, %if.else79.i.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nor_exec_op(ptr nocapture noundef readonly %mem, ptr noundef readonly %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %8 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr, align 8
  %.off = add i8 %9, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call9 = tail call fastcc i32 @mtk_nor_spi_mem_prg(ptr noundef %5, ptr noundef %op)
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dir, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %11, label %if.end.if.end44_crit_edge [
    i32 2, label %if.then13
    i32 1, label %land.lhs.true28
  ]

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then13:                                        ; preds = %if.end
  tail call fastcc void @mtk_nor_set_addr(ptr noundef %5, ptr noundef %op)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  tail call void @arm_heavy_mb() #9
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %13 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %opcode, align 4
  %conv14 = trunc i16 %14 to i8
  %base = getelementptr inbounds %struct.mtk_nor, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv14) #9, !srcloc !97
  %17 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %18)
  %cmp17 = icmp eq i32 %18, 128
  %buf1.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %19 = ptrtoint ptr %buf1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf1.i, align 4
  br i1 %cmp17, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.then13
  %wbuf_en.i.i = getelementptr inbounds %struct.mtk_nor, ptr %5, i32 0, i32 9
  %21 = ptrtoint ptr %wbuf_en.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %wbuf_en.i.i, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then19.mtk_nor_write_buffer_enable.exit.i_crit_edge

if.then19.mtk_nor_write_buffer_enable.exit.i_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_nor_write_buffer_enable.exit.i

if.end.i.i:                                       ; preds = %if.then19
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 100
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %26 = or i32 %25, 16777216
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %28, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %26) #9, !srcloc !90
  %call4.i.i = tail call i64 @ktime_get() #9
  %add.i.i.i = add i64 %call4.i.i, 10000000
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.lhs.true.i.i.for.cond.i.i_crit_edge, %if.end.i.i
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %30, i32 100
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  %32 = and i32 %31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool24.not.i.i = icmp eq i32 %32, 0
  br i1 %tobool24.not.i.i, label %land.lhs.true.i.i, label %for.cond.i.i.if.then47.i.i_crit_edge

for.cond.i.i.if.then47.i.i_crit_edge:             ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47.i.i

land.lhs.true.i.i:                                ; preds = %for.cond.i.i
  %call28.i.i = tail call i64 @ktime_get() #9
  %cmp3.i.i.i = icmp sgt i64 %call28.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i.i, label %land.lhs.true.i.i.for.cond.i.i_crit_edge

land.lhs.true.i.i.for.cond.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %land.lhs.true.i.i
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr35.i.i = getelementptr i8, ptr %34, i32 100
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i.i) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  %36 = and i32 %35, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %phi.cmp.i.i = icmp eq i32 %36, 0
  br i1 %phi.cmp.i.i, label %for.end.i.i.cleanup_crit_edge, label %for.end.i.i.if.then47.i.i_crit_edge

for.end.i.i.if.then47.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then47.i.i

for.end.i.i.cleanup_crit_edge:                    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47.i.i:                                    ; preds = %for.end.i.i.if.then47.i.i_crit_edge, %for.cond.i.i.if.then47.i.i_crit_edge
  %37 = ptrtoint ptr %wbuf_en.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %wbuf_en.i.i, align 4
  br label %mtk_nor_write_buffer_enable.exit.i

mtk_nor_write_buffer_enable.exit.i:               ; preds = %if.then47.i.i, %if.then19.mtk_nor_write_buffer_enable.exit.i_crit_edge
  %38 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp339.not.i = icmp eq i32 %39, 0
  br i1 %cmp339.not.i, label %mtk_nor_write_buffer_enable.exit.i.for.end.i_crit_edge, label %mtk_nor_write_buffer_enable.exit.i.for.body.i_crit_edge

mtk_nor_write_buffer_enable.exit.i.for.body.i_crit_edge: ; preds = %mtk_nor_write_buffer_enable.exit.i
  br label %for.body.i

mtk_nor_write_buffer_enable.exit.i.for.end.i_crit_edge: ; preds = %mtk_nor_write_buffer_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %mtk_nor_write_buffer_enable.exit.i.for.body.i_crit_edge
  %i.040.i = phi i32 [ %add16.i, %for.body.i.for.body.i_crit_edge ], [ 0, %mtk_nor_write_buffer_enable.exit.i.for.body.i_crit_edge ]
  %add.i = or i32 %i.040.i, 3
  %arrayidx.i = getelementptr i8, ptr %20, i32 %add.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %41 to i32
  %shl.i = shl nuw i32 %conv.i, 24
  %add4.i = or i32 %i.040.i, 2
  %arrayidx5.i = getelementptr i8, ptr %20, i32 %add4.i
  %42 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %43 to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 16
  %or.i = or i32 %shl7.i, %shl.i
  %add8.i = or i32 %i.040.i, 1
  %arrayidx9.i = getelementptr i8, ptr %20, i32 %add8.i
  %44 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %45 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 8
  %or12.i = or i32 %or.i, %shl11.i
  %arrayidx13.i = getelementptr i8, ptr %20, i32 %i.040.i
  %46 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %47 to i32
  %or15.i = or i32 %or12.i, %conv14.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @arm_heavy_mb() #9
  %48 = tail call i32 @llvm.bswap.i32(i32 %or15.i) #9
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %50, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %48) #9, !srcloc !90
  %add16.i = add i32 %i.040.i, 4
  %51 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nbytes, align 4
  %cmp3.i = icmp ult i32 %add16.i, %52
  br i1 %cmp3.i, label %for.body.i.for.body.i_crit_edge, label %for.end.loopexit.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo.i = shl i32 %52, 3
  %phi.bo42.i = add i32 %phi.bo.i, 40
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %mtk_nor_write_buffer_enable.exit.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 40, %mtk_nor_write_buffer_enable.exit.i.for.end.i_crit_edge ], [ %phi.bo42.i, %for.end.loopexit.i ]
  %call20.i = tail call fastcc i32 @mtk_nor_cmd_exec(ptr noundef %5, i32 noundef 16, i32 noundef %.lcssa.i) #9
  br label %cleanup

if.end21:                                         ; preds = %if.then13
  %call.i = tail call fastcc i32 @mtk_nor_write_buffer_disable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end21.cleanup_crit_edge, label %do.body.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %53 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %20, align 1
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %add.ptr.i77 = getelementptr i8, ptr %56, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i77, i8 %54) #9, !srcloc !97
  %call2.i = tail call fastcc i32 @mtk_nor_cmd_exec(ptr noundef %5, i32 noundef 16, i32 noundef 48) #9
  br label %cleanup

land.lhs.true28:                                  ; preds = %if.end
  %dummy1.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %57 = ptrtoint ptr %dummy1.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %dummy1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i, label %land.lhs.true28.if.end.i_crit_edge, label %if.then.i

land.lhs.true28.if.end.i_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i79 = zext i8 %58 to i16
  %mul.i = shl nuw nsw i16 %conv.i79, 3
  %buswidth.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %59 = ptrtoint ptr %buswidth.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %buswidth.i, align 1
  %div.rhs.trunc.i = zext i8 %60 to i16
  %div88.i = udiv i16 %mul.i, %div.rhs.trunc.i
  %div.zext.i = zext i16 %div88.i to i32
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %land.lhs.true28.if.end.i_crit_edge
  %dummy.0.i = phi i32 [ %div.zext.i, %if.then.i ], [ 0, %land.lhs.true28.if.end.i_crit_edge ]
  %data.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %61 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %data.i, align 4
  %63 = zext i8 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %62, label %if.else42.i [
    i8 2, label %if.end.i.if.then14.i_crit_edge
    i8 4, label %if.end.i.if.then14.i_crit_edge90
  ]

if.end.i.if.then14.i_crit_edge90:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

if.end.i.if.then14.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14.i

if.then14.i:                                      ; preds = %if.end.i.if.then14.i_crit_edge, %if.end.i.if.then14.i_crit_edge90
  %buswidth15.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %buswidth15.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %buswidth15.i, align 1
  %66 = zext i8 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %65, label %if.then14.i.if.end44_crit_edge [
    i8 1, label %if.then19.i
    i8 2, label %if.then27.i
    i8 4, label %if.then36.i
  ]

if.then14.i.if.end44_crit_edge:                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then19.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dummy.0.i)
  %cmp20.i = icmp eq i32 %dummy.0.i, 8
  br i1 %cmp20.i, label %if.then19.i.if.then31_crit_edge, label %if.then19.i.if.end44_crit_edge

if.then19.i.if.end44_crit_edge:                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then19.i.if.then31_crit_edge:                  ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.then27.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %dummy.0.i)
  %cmp28.i = icmp eq i32 %dummy.0.i, 4
  br i1 %cmp28.i, label %if.then27.i.if.then31_crit_edge, label %if.then27.i.if.end44_crit_edge

if.then27.i.if.end44_crit_edge:                   ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then27.i.if.then31_crit_edge:                  ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.then36.i:                                      ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %dummy.0.i)
  %cmp37.i = icmp eq i32 %dummy.0.i, 6
  br i1 %cmp37.i, label %if.then36.i.if.then31_crit_edge, label %if.then36.i.if.end44_crit_edge

if.then36.i.if.end44_crit_edge:                   ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then36.i.if.then31_crit_edge:                  ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.else42.i:                                      ; preds = %if.end.i
  %buswidth44.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %buswidth44.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %buswidth44.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp46.i = icmp eq i8 %68, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %62)
  %cmp51.i = icmp eq i8 %62, 1
  %or.cond.i = select i1 %cmp46.i, i1 %cmp51.i, i1 false
  br i1 %or.cond.i, label %if.then53.i, label %if.else42.i.if.end44_crit_edge

if.else42.i.if.end44_crit_edge:                   ; preds = %if.else42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then53.i:                                      ; preds = %if.else42.i
  %opcode.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %69 = ptrtoint ptr %opcode.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %opcode.i, align 4
  %71 = zext i16 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %70, label %if.then53.i.if.end44_crit_edge [
    i16 3, label %if.then57.i
    i16 11, label %mtk_nor_match_read.exit
  ]

if.then53.i.if.end44_crit_edge:                   ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then57.i:                                      ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dummy.0.i)
  %cmp58.i = icmp eq i32 %dummy.0.i, 0
  br i1 %cmp58.i, label %if.then57.i.if.then31_crit_edge, label %if.then57.i.if.end44_crit_edge

if.then57.i.if.end44_crit_edge:                   ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then57.i.if.then31_crit_edge:                  ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

mtk_nor_match_read.exit:                          ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %dummy.0.i)
  %cmp67.i = icmp eq i32 %dummy.0.i, 8
  br i1 %cmp67.i, label %mtk_nor_match_read.exit.if.then31_crit_edge, label %mtk_nor_match_read.exit.if.end44_crit_edge

mtk_nor_match_read.exit.if.end44_crit_edge:       ; preds = %mtk_nor_match_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

mtk_nor_match_read.exit.if.then31_crit_edge:      ; preds = %mtk_nor_match_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then31

if.then31:                                        ; preds = %mtk_nor_match_read.exit.if.then31_crit_edge, %if.then57.i.if.then31_crit_edge, %if.then36.i.if.then31_crit_edge, %if.then27.i.if.then31_crit_edge, %if.then19.i.if.then31_crit_edge
  %call32 = tail call fastcc i32 @mtk_nor_write_buffer_disable(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then31.cleanup_crit_edge, label %if.end36

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.then31
  %72 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %73)
  %cmp.i81 = icmp eq i8 %73, 4
  %spec.select.i = select i1 %cmp.i81, i32 16, i32 0
  %74 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %data.i, align 4
  %76 = zext i8 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %75, label %if.else39.i [
    i8 4, label %if.then5.i
    i8 2, label %if.then21.i
  ]

if.then5.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !113
  tail call void @arm_heavy_mb() #9
  %opcode.i83 = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %77 = ptrtoint ptr %opcode.i83 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %opcode.i83, align 4
  %conv7.i = trunc i16 %78 to i8
  %base.i84 = getelementptr inbounds %struct.mtk_nor, ptr %5, i32 0, i32 2
  %79 = ptrtoint ptr %base.i84 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i84, align 4
  %add.ptr.i85 = getelementptr i8, ptr %80, i32 48
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i85, i8 %conv7.i) #9, !srcloc !97
  %buswidth9.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %81 = ptrtoint ptr %buswidth9.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %buswidth9.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %82)
  %cmp11.i = icmp eq i8 %82, 4
  %spec.select66.v.i = select i1 %cmp11.i, i32 12, i32 4
  %spec.select66.i = or i32 %spec.select66.v.i, %spec.select.i
  br label %mtk_nor_setup_bus.exit

if.then21.i:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  tail call void @arm_heavy_mb() #9
  %opcode27.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %83 = ptrtoint ptr %opcode27.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %opcode27.i, align 4
  %conv28.i = trunc i16 %84 to i8
  %base29.i = getelementptr inbounds %struct.mtk_nor, ptr %5, i32 0, i32 2
  %85 = ptrtoint ptr %base29.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base29.i, align 4
  %add.ptr30.i = getelementptr i8, ptr %86, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr30.i, i8 %conv28.i) #9, !srcloc !97
  %buswidth32.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %buswidth32.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %buswidth32.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %88)
  %cmp34.i = icmp eq i8 %88, 2
  %spec.select67.v.i = select i1 %cmp34.i, i32 3, i32 1
  %spec.select67.i = or i32 %spec.select67.v.i, %spec.select.i
  br label %mtk_nor_setup_bus.exit

if.else39.i:                                      ; preds = %if.end36
  %opcode41.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %89 = ptrtoint ptr %opcode41.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %opcode41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %90)
  %cmp43.i = icmp eq i16 %90, 11
  %base.i.i86 = getelementptr inbounds %struct.mtk_nor, ptr %5, i32 0, i32 2
  %91 = ptrtoint ptr %base.i.i86 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i.i86, align 4
  %add.ptr.i.i87 = getelementptr i8, ptr %92, i32 96
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i87) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %cmp43.i, label %if.then45.i, label %if.else46.i

if.then45.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = or i32 %93, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %95 = ptrtoint ptr %base.i.i86 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base.i.i86, align 4
  %add.ptr3.i.i88 = getelementptr i8, ptr %96, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i88, i32 %94) #9, !srcloc !90
  br label %mtk_nor_setup_bus.exit

if.else46.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #11
  %97 = and i32 %93, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %98 = ptrtoint ptr %base.i.i86 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i.i86, align 4
  %add.ptr3.i70.i = getelementptr i8, ptr %99, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i70.i, i32 %97) #9, !srcloc !90
  br label %mtk_nor_setup_bus.exit

mtk_nor_setup_bus.exit:                           ; preds = %if.else46.i, %if.then45.i, %if.then21.i, %if.then5.i
  %reg.1.i = phi i32 [ %spec.select.i, %if.then45.i ], [ %spec.select.i, %if.else46.i ], [ %spec.select66.i, %if.then5.i ], [ %spec.select67.i, %if.then21.i ]
  %base.i71.i = getelementptr inbounds %struct.mtk_nor, ptr %5, i32 0, i32 2
  %100 = ptrtoint ptr %base.i71.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i71.i, align 4
  %add.ptr.i72.i = getelementptr i8, ptr %101, i32 204
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72.i) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  %103 = and i32 %102, -520093697
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #9
  %or.i74.i = or i32 %104, %reg.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %105 = tail call i32 @llvm.bswap.i32(i32 %or.i74.i) #9
  %106 = ptrtoint ptr %base.i71.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i71.i, align 4
  %add.ptr3.i75.i = getelementptr i8, ptr %107, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i75.i, i32 %105) #9, !srcloc !90
  %108 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %109)
  %cmp39 = icmp eq i32 %109, 1
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %mtk_nor_setup_bus.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mtk_nor_set_addr(ptr noundef %5, ptr noundef %op)
  %call42 = tail call fastcc i32 @mtk_nor_read_pio(ptr noundef %5, ptr noundef %op)
  br label %cleanup

if.else:                                          ; preds = %mtk_nor_setup_bus.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call fastcc i32 @mtk_nor_read_dma(ptr noundef %5, ptr noundef %op)
  br label %cleanup

if.end44:                                         ; preds = %mtk_nor_match_read.exit.if.end44_crit_edge, %if.then57.i.if.end44_crit_edge, %if.then53.i.if.end44_crit_edge, %if.else42.i.if.end44_crit_edge, %if.then36.i.if.end44_crit_edge, %if.then27.i.if.end44_crit_edge, %if.then19.i.if.end44_crit_edge, %if.then14.i.if.end44_crit_edge, %if.end.if.end44_crit_edge
  %call45 = tail call fastcc i32 @mtk_nor_spi_mem_prg(ptr noundef %5, ptr noundef %op)
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.else, %if.then41, %if.then31.cleanup_crit_edge, %do.body.i, %if.end21.cleanup_crit_edge, %for.end.i, %for.end.i.i.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call9, %if.then ], [ %call42, %if.then41 ], [ %call43, %if.else ], [ %call45, %if.end44 ], [ %call32, %if.then31.cleanup_crit_edge ], [ %call20.i, %for.end.i ], [ -110, %for.end.i.i.cleanup_crit_edge ], [ %call2.i, %do.body.i ], [ %call.i, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @spi_mem_default_supports_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_nor_spi_mem_prg(ptr nocapture noundef readonly %sp, ptr nocapture noundef readonly %op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %op, align 8
  %conv = zext i8 %1 to i32
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 8
  %conv2 = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv2, %conv
  %dir = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %5, label %entry.if.end17_crit_edge [
    i32 2, label %if.then
    i32 1, label %if.then14
  ]

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dummy = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %7 = ptrtoint ptr %dummy to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dummy, align 8
  %conv5 = zext i8 %8 to i32
  %nbytes7 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbytes7, align 4
  %add8 = add nuw nsw i32 %add, %conv5
  %add9 = add i32 %add8, %10
  br label %if.end17

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %nbytes16 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %nbytes16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbytes16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %12)
  %phi.cmp = icmp sgt i32 %12, 10
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then, %entry.if.end17_crit_edge
  %tx_len.0 = phi i32 [ %add9, %if.then ], [ %add, %if.then14 ], [ %add, %entry.if.end17_crit_edge ]
  %rx_len.0 = phi i1 [ false, %if.then ], [ %phi.cmp, %if.then14 ], [ false, %entry.if.end17_crit_edge ]
  %dummy25 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %13 = ptrtoint ptr %dummy25 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %dummy25, align 8
  %conv27 = zext i8 %14 to i32
  %add28 = add nuw nsw i32 %add, %conv27
  %nbytes30 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %nbytes30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nbytes30, align 4
  %add31 = add i32 %add28, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %tx_len.0)
  %cmp32 = icmp sgt i32 %tx_len.0, 6
  %or.cond = select i1 %cmp32, i1 true, i1 %rx_len.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add31)
  %cmp37 = icmp sgt i32 %add31, 7
  %or.cond236 = select i1 %or.cond, i1 true, i1 %cmp37
  br i1 %or.cond236, label %if.end17.cleanup_crit_edge, label %for.cond.preheader

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp44237.not = icmp eq i8 %1, 0
  br i1 %cmp44237.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %base = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 2
  %opcode = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %reg_offset.0239 = phi i32 [ 5, %for.body.lr.ph ], [ %dec51, %for.body.for.body_crit_edge ]
  %i.0238 = phi i32 [ %conv, %for.body.lr.ph ], [ %dec, %for.body.for.body_crit_edge ]
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %mul = shl i32 %reg_offset.0239, 2
  %add46 = add nsw i32 %mul, 32
  %add.ptr = getelementptr i8, ptr %18, i32 %add46
  %19 = ptrtoint ptr %opcode to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %opcode, align 4
  %conv48 = zext i16 %20 to i32
  %sub = shl i32 %i.0238, 3
  %mul49 = add nsw i32 %sub, -8
  %shr = lshr i32 %conv48, %mul49
  %conv50 = trunc i32 %shr to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv50) #9, !srcloc !97
  %dec = add nsw i32 %i.0238, -1
  %dec51 = add nsw i32 %reg_offset.0239, -1
  %cmp44 = icmp ugt i32 %i.0238, 1
  br i1 %cmp44, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %reg_offset.0.lcssa = phi i32 [ 5, %for.cond.preheader.for.end_crit_edge ], [ %dec51, %for.body.for.end_crit_edge ]
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %addr, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp56240.not = icmp eq i8 %22, 0
  br i1 %cmp56240.not, label %for.end.for.end75_crit_edge, label %for.body58.lr.ph

for.end.for.end75_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75

for.body58.lr.ph:                                 ; preds = %for.end
  %conv54 = zext i8 %22 to i32
  %base59 = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 2
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  br label %for.body58

for.body58:                                       ; preds = %for.body58.for.body58_crit_edge, %for.body58.lr.ph
  %reg_offset.1242 = phi i32 [ %reg_offset.0.lcssa, %for.body58.lr.ph ], [ %dec74, %for.body58.for.body58_crit_edge ]
  %i.1241 = phi i32 [ %conv54, %for.body58.lr.ph ], [ %dec73, %for.body58.for.body58_crit_edge ]
  %23 = ptrtoint ptr %base59 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base59, align 4
  %mul60 = shl i32 %reg_offset.1242, 2
  %add61 = add nsw i32 %mul60, 32
  %add.ptr62 = getelementptr i8, ptr %24, i32 %add61
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %val, align 8
  %sub64 = shl i32 %i.1241, 3
  %mul65 = add nsw i32 %sub64, -8
  %sh_prom = zext i32 %mul65 to i64
  %shr66 = lshr i64 %26, %sh_prom
  %conv68 = trunc i64 %shr66 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !116
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr62, i8 %conv68) #9, !srcloc !97
  %dec73 = add nsw i32 %i.1241, -1
  %dec74 = add nsw i32 %reg_offset.1242, -1
  %cmp56 = icmp ugt i32 %i.1241, 1
  br i1 %cmp56, label %for.body58.for.body58_crit_edge, label %for.body58.for.end75_crit_edge

for.body58.for.end75_crit_edge:                   ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end75

for.body58.for.body58_crit_edge:                  ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body58

for.end75:                                        ; preds = %for.body58.for.end75_crit_edge, %for.end.for.end75_crit_edge
  %reg_offset.1.lcssa = phi i32 [ %reg_offset.0.lcssa, %for.end.for.end75_crit_edge ], [ %dec74, %for.body58.for.end75_crit_edge ]
  %27 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp78 = icmp eq i32 %28, 2
  br i1 %cmp78, label %for.cond81.preheader, label %for.end75.if.end116_crit_edge

for.end75.if.end116_crit_edge:                    ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

for.cond81.preheader:                             ; preds = %for.end75
  %29 = ptrtoint ptr %dummy25 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %dummy25, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp85245.not = icmp eq i8 %30, 0
  br i1 %cmp85245.not, label %for.cond81.preheader.for.cond98.preheader_crit_edge, label %for.body87.lr.ph

for.cond81.preheader.for.cond98.preheader_crit_edge: ; preds = %for.cond81.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond98.preheader

for.body87.lr.ph:                                 ; preds = %for.cond81.preheader
  %base88 = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 2
  br label %for.body87

for.cond98.preheader:                             ; preds = %for.body87.for.cond98.preheader_crit_edge, %for.cond81.preheader.for.cond98.preheader_crit_edge
  %reg_offset.2.lcssa = phi i32 [ %reg_offset.1.lcssa, %for.cond81.preheader.for.cond98.preheader_crit_edge ], [ %dec96, %for.body87.for.cond98.preheader_crit_edge ]
  %31 = ptrtoint ptr %nbytes30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nbytes30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp101249.not = icmp eq i32 %32, 0
  br i1 %cmp101249.not, label %for.cond98.preheader.if.end116_crit_edge, label %for.body103.lr.ph

for.cond98.preheader.if.end116_crit_edge:         ; preds = %for.cond98.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

for.body103.lr.ph:                                ; preds = %for.cond98.preheader
  %base104 = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 2
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  br label %for.body103

for.body87:                                       ; preds = %for.body87.for.body87_crit_edge, %for.body87.lr.ph
  %reg_offset.2247 = phi i32 [ %reg_offset.1.lcssa, %for.body87.lr.ph ], [ %dec96, %for.body87.for.body87_crit_edge ]
  %i.2246 = phi i32 [ 0, %for.body87.lr.ph ], [ %inc, %for.body87.for.body87_crit_edge ]
  %33 = ptrtoint ptr %base88 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base88, align 4
  %mul89 = shl i32 %reg_offset.2247, 2
  %add90 = add nsw i32 %mul89, 32
  %add.ptr91 = getelementptr i8, ptr %34, i32 %add90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !117
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr91, i8 0) #9, !srcloc !97
  %inc = add nuw nsw i32 %i.2246, 1
  %dec96 = add nsw i32 %reg_offset.2247, -1
  %35 = ptrtoint ptr %dummy25 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dummy25, align 8
  %conv84 = zext i8 %36 to i32
  %cmp85 = icmp ult i32 %inc, %conv84
  br i1 %cmp85, label %for.body87.for.body87_crit_edge, label %for.body87.for.cond98.preheader_crit_edge

for.body87.for.cond98.preheader_crit_edge:        ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond98.preheader

for.body87.for.body87_crit_edge:                  ; preds = %for.body87
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body87

for.body103:                                      ; preds = %for.body103.for.body103_crit_edge, %for.body103.lr.ph
  %reg_offset.3251 = phi i32 [ %reg_offset.2.lcssa, %for.body103.lr.ph ], [ %dec114, %for.body103.for.body103_crit_edge ]
  %i.3250 = phi i32 [ 0, %for.body103.lr.ph ], [ %inc113, %for.body103.for.body103_crit_edge ]
  %37 = ptrtoint ptr %base104 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base104, align 4
  %mul105 = shl i32 %reg_offset.3251, 2
  %add106 = add i32 %mul105, 32
  %add.ptr107 = getelementptr i8, ptr %38, i32 %add106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !118
  tail call void @arm_heavy_mb() #9
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %40, i32 %i.3250
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr107, i8 %42) #9, !srcloc !97
  %inc113 = add nuw i32 %i.3250, 1
  %dec114 = add i32 %reg_offset.3251, -1
  %43 = ptrtoint ptr %nbytes30 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nbytes30, align 4
  %cmp101 = icmp ult i32 %inc113, %44
  br i1 %cmp101, label %for.body103.for.body103_crit_edge, label %for.body103.if.end116_crit_edge

for.body103.if.end116_crit_edge:                  ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end116

for.body103.for.body103_crit_edge:                ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body103

if.end116:                                        ; preds = %for.body103.if.end116_crit_edge, %for.cond98.preheader.if.end116_crit_edge, %for.end75.if.end116_crit_edge
  %reg_offset.4 = phi i32 [ %reg_offset.1.lcssa, %for.end75.if.end116_crit_edge ], [ %reg_offset.2.lcssa, %for.cond98.preheader.if.end116_crit_edge ], [ %dec114, %for.body103.if.end116_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %reg_offset.4)
  %cmp118253 = icmp sgt i32 %reg_offset.4, -1
  br i1 %cmp118253, label %for.body120.lr.ph, label %if.end116.do.body131_crit_edge

if.end116.do.body131_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body131

for.body120.lr.ph:                                ; preds = %if.end116
  %base121 = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 2
  br label %for.body120

for.body120:                                      ; preds = %for.body120.for.body120_crit_edge, %for.body120.lr.ph
  %reg_offset.5254 = phi i32 [ %reg_offset.4, %for.body120.lr.ph ], [ %dec129, %for.body120.for.body120_crit_edge ]
  %45 = ptrtoint ptr %base121 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base121, align 4
  %mul122 = shl i32 %reg_offset.5254, 2
  %add123 = add i32 %mul122, 32
  %add.ptr124 = getelementptr i8, ptr %46, i32 %add123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr124, i8 0) #9, !srcloc !97
  %dec129 = add nsw i32 %reg_offset.5254, -1
  %cmp118.not = icmp eq i32 %reg_offset.5254, 0
  br i1 %cmp118.not, label %for.body120.do.body131_crit_edge, label %for.body120.for.body120_crit_edge

for.body120.for.body120_crit_edge:                ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body120

for.body120.do.body131_crit_edge:                 ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body131

do.body131:                                       ; preds = %for.body120.do.body131_crit_edge, %if.end116.do.body131_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !120
  tail call void @arm_heavy_mb() #9
  %mul134 = shl i32 %add31, 3
  %47 = tail call i32 @llvm.bswap.i32(i32 %mul134)
  %base135 = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 2
  %48 = ptrtoint ptr %base135 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base135, align 4
  %add.ptr136 = getelementptr i8, ptr %49, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 %47) #9, !srcloc !90
  %call = tail call fastcc i32 @mtk_nor_cmd_exec(ptr noundef %sp, i32 noundef 4, i32 noundef %mul134)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end139, label %do.body131.cleanup_crit_edge

do.body131.cleanup_crit_edge:                     ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end139:                                        ; preds = %do.body131
  %50 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp142 = icmp eq i32 %51, 1
  br i1 %cmp142, label %if.then144, label %if.end139.cleanup_crit_edge

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then144:                                       ; preds = %if.end139
  %52 = ptrtoint ptr %nbytes30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nbytes30, align 4
  %i.4255 = add i32 %53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.4255)
  %cmp149256 = icmp sgt i32 %i.4255, -1
  br i1 %cmp149256, label %for.body151.lr.ph, label %if.then144.cleanup_crit_edge

if.then144.cleanup_crit_edge:                     ; preds = %if.then144
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body151.lr.ph:                                ; preds = %if.then144
  %buf159 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  br label %for.body151

for.body151:                                      ; preds = %for.body151.for.body151_crit_edge, %for.body151.lr.ph
  %i.4258 = phi i32 [ %i.4255, %for.body151.lr.ph ], [ %i.4, %for.body151.for.body151_crit_edge ]
  %reg_offset.6257 = phi i32 [ 0, %for.body151.lr.ph ], [ %inc163, %for.body151.for.body151_crit_edge ]
  %54 = ptrtoint ptr %base135 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base135, align 4
  %mul153 = shl i32 %reg_offset.6257, 2
  %add154 = add i32 %mul153, 56
  %add.ptr155 = getelementptr i8, ptr %55, i32 %add154
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr155) #9, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  %57 = ptrtoint ptr %buf159 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf159, align 4
  %arrayidx160 = getelementptr i8, ptr %58, i32 %i.4258
  %59 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %56, ptr %arrayidx160, align 1
  %inc163 = add nuw i32 %reg_offset.6257, 1
  %i.4 = add i32 %i.4258, -1
  %exitcond.not = icmp eq i32 %inc163, %53
  br i1 %exitcond.not, label %for.body151.cleanup_crit_edge, label %for.body151.for.body151_crit_edge

for.body151.for.body151_crit_edge:                ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body151

for.body151.cleanup_crit_edge:                    ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body151.cleanup_crit_edge, %if.then144.cleanup_crit_edge, %if.end139.cleanup_crit_edge, %do.body131.cleanup_crit_edge, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end17.cleanup_crit_edge ], [ %call, %do.body131.cleanup_crit_edge ], [ 0, %if.end139.cleanup_crit_edge ], [ 0, %if.then144.cleanup_crit_edge ], [ 0, %for.body151.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_nor_set_addr(ptr nocapture noundef readonly %sp, ptr nocapture noundef readonly %op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %val, align 8
  %base = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %conv3 = trunc i64 %1 to i8
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv3) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %shr29 = lshr i64 %1, 8
  %conv3.1 = trunc i64 %shr29 to i8
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr.1 = getelementptr i8, ptr %5, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.1, i8 %conv3.1) #9, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @arm_heavy_mb() #9
  %shr.130 = lshr i64 %1, 16
  %conv3.2 = trunc i64 %shr.130 to i8
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr.2 = getelementptr i8, ptr %7, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.2, i8 %conv3.2) #9, !srcloc !97
  %addr1 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %8 = ptrtoint ptr %addr1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %addr1, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cmp6 = icmp eq i8 %9, 4
  br i1 %cmp6, label %do.body8, label %if.else

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  tail call void @arm_heavy_mb() #9
  %shr.228 = lshr i64 %1, 24
  %conv12 = trunc i64 %shr.228 to i8
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %11, i32 200
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 %conv12) #9, !srcloc !97
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 204
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  %15 = or i32 %14, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr3.i = getelementptr i8, ptr %17, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %15) #9, !srcloc !90
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr.i24 = getelementptr i8, ptr %19, i32 204
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  %21 = and i32 %20, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr3.i25 = getelementptr i8, ptr %23, i32 204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i25, i32 %21) #9, !srcloc !90
  br label %if.end

if.end:                                           ; preds = %if.else, %do.body8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_nor_write_buffer_disable(ptr nocapture noundef %sp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %wbuf_en = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 9
  %0 = ptrtoint ptr %wbuf_en to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %wbuf_en, align 4, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 100
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  tail call void @arm_heavy_mb() #9
  %5 = and i32 %4, -16777217
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #9, !srcloc !90
  %call4 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call4, 10000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.end
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %9, i32 100
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #9, !srcloc !93
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  %and24 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %for.cond.for.end_crit_edge, label %land.lhs.true

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call29 = tail call i64 @ktime_get() #9
  %cmp3.i = icmp sgt i64 %call29, %add.i
  br i1 %cmp3.i, label %if.then32, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr36 = getelementptr i8, ptr %13, i32 100
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #9, !srcloc !93
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  br label %for.end

for.end:                                          ; preds = %if.then32, %for.cond.for.end_crit_edge
  %val.0 = phi i32 [ %15, %if.then32 ], [ %11, %for.cond.for.end_crit_edge ]
  %and45 = and i32 %val.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then48, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then48:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %wbuf_en to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %wbuf_en, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then48 ], [ -110, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_nor_read_pio(ptr nocapture noundef readonly %sp, ptr nocapture noundef readonly %op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buf1 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %buf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf1, align 4
  %call = tail call fastcc i32 @mtk_nor_cmd_exec(ptr noundef %sp, i32 noundef 1, i32 noundef 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #9, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %1, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_nor_read_dma(ptr noundef %sp, ptr nocapture noundef readonly %op) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %buf.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf.i, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %nbytes.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %3 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nbytes.i, align 4
  %.biased.i = add i32 %4, 15
  %rdlen.0.i = and i32 %.biased.i, -16
  %val.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %val.i, align 8
  %conv.i = trunc i64 %6 to i32
  %buffer_dma.i = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 4
  %7 = ptrtoint ptr %buffer_dma.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buffer_dma.i, align 4
  %call.i = tail call fastcc i32 @mtk_nor_dma_exec(ptr noundef %sp, i32 noundef %conv.i, i32 noundef %rdlen.0.i, i32 noundef %8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %buf.i, align 4
  %buffer.i = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 3
  %11 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer.i, align 4
  %13 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nbytes.i, align 4
  %15 = call ptr @memcpy(ptr %10, ptr %12, i32 %14)
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %18 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbytes, align 4
  %call.i29 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %1) #9
  br i1 %call.i29, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !129

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %17) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %23, %if.end.i.i ], [ %21, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.29, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %25, i32 noundef -1) #9
  br label %cleanup

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %17, ptr noundef %1, i32 noundef %19) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %26 = load ptr, ptr @mem_map, align 4
  %sub.i = add i32 %2, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %26, i32 %shr.i
  %and.i30 = and i32 %2, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %17, ptr noundef %add.ptr.i, i32 noundef %and.i30, i32 noundef %19, i32 noundef 2, i32 noundef 0) #9
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %28, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup_crit_edge, label %if.end7

dma_map_single_attrs.exit.cleanup_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %val = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %val, align 8
  %conv = trunc i64 %30 to i32
  %31 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nbytes, align 4
  %call10 = tail call fastcc i32 @mtk_nor_dma_exec(ptr noundef %sp, i32 noundef %conv, i32 noundef %32, i32 noundef %call41.i)
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %35 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nbytes, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %34, i32 noundef %call41.i, i32 noundef %36, i32 noundef 2, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %dma_map_single_attrs.exit.cleanup_crit_edge, %dma_map_single_attrs.exit.thread, %if.then7.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %if.then7.i ], [ -22, %dma_map_single_attrs.exit.cleanup_crit_edge ], [ -22, %dma_map_single_attrs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_nor_cmd_exec(ptr nocapture noundef readonly %sp, i32 noundef %cmd, i32 noundef %clk) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %spi_freq = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 8
  %0 = ptrtoint ptr %spi_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %spi_freq, align 4
  %div = udiv i32 %1, 1000000
  %add = add i32 %clk, -1
  %sub = add i32 %add, %div
  %div3 = udiv i32 %sub, %div
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !130
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %cmd)
  %base = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #9, !srcloc !90
  %5 = mul i32 %div3, 200
  %mul = add i32 %5, 200
  %conv = zext i32 %mul to i64
  %div5 = udiv i32 %div3, 3
  %call = tail call i64 @ktime_get() #9
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %call, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div3)
  %6 = icmp ult i32 %div3, 3
  br i1 %6, label %entry.do.end16_crit_edge, label %do.body9

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 131) #9
  br label %do.end16

do.end16:                                         ; preds = %do.body9, %entry.do.end16_crit_edge
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !93
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  %and67 = and i32 %10, %cmd
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool.not68 = icmp eq i32 %and67, 0
  br i1 %tobool.not68, label %do.end16.if.end50_crit_edge, label %if.end22.lr.ph

do.end16.if.end50_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end22.lr.ph:                                   ; preds = %do.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool23.not = icmp eq i32 %mul, 0
  %shr = lshr i32 %div5, 2
  %add39 = add nuw nsw i32 %shr, 1
  br label %if.end22

if.end22:                                         ; preds = %if.end40.if.end22_crit_edge, %if.end22.lr.ph
  br i1 %tobool23.not, label %if.end22.if.end36_crit_edge, label %land.lhs.true

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true:                                    ; preds = %if.end22
  %call24 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call24, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call24, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.end36_crit_edge

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true.if.end36_crit_edge, %if.end22.if.end36_crit_edge
  br i1 %6, label %if.end36.if.end40_crit_edge, label %if.then38

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef %add39, i32 noundef %div5, i32 noundef 2) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36.if.end40_crit_edge
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !93
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !131
  %and = and i32 %14, %cmd
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end40.if.end50_crit_edge, label %if.end40.if.end22_crit_edge

if.end40.if.end22_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end40.if.end50_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

for.end:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #9, !srcloc !93
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !132
  %.pre = and i32 %18, %cmd
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool43.not = icmp eq i32 %.pre, 0
  br i1 %tobool43.not, label %for.end.if.end50_crit_edge, label %do.end49

for.end.if.end50_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

do.end49:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.26, i32 noundef %cmd) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end49, %for.end.if.end50_crit_edge, %if.end40.if.end50_crit_edge, %do.end16.if.end50_crit_edge
  %cond = phi i32 [ -110, %do.end49 ], [ 0, %for.end.if.end50_crit_edge ], [ 0, %do.end16.if.end50_crit_edge ], [ 0, %if.end40.if.end50_crit_edge ]
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_nor_dma_exec(ptr noundef %sp, i32 noundef %from, i32 noundef %length, i32 noundef %dma_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  tail call void @arm_heavy_mb() #9
  %0 = tail call i32 @llvm.bswap.i32(i32 %from)
  %base = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 1820
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #9, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !134
  tail call void @arm_heavy_mb() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %dma_addr)
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 1824
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %3) #9, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !135
  tail call void @arm_heavy_mb() #9
  %add = add i32 %dma_addr, %length
  %6 = tail call i32 @llvm.bswap.i32(i32 %add)
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %8, i32 1828
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %6) #9, !srcloc !90
  %high_dma = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 11
  %9 = ptrtoint ptr %high_dma to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %high_dma, align 2, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body11

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !136
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr16 = getelementptr i8, ptr %12, i32 1848
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #9, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !137
  tail call void @arm_heavy_mb() #9
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr24 = getelementptr i8, ptr %14, i32 1852
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 0) #9, !srcloc !90
  br label %if.end

if.end:                                           ; preds = %do.body11, %entry.if.end_crit_edge
  %has_irq = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 10
  %15 = ptrtoint ptr %has_irq to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %has_irq, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool25.not = icmp eq i8 %16, 0
  br i1 %tobool25.not, label %if.end.if.end27_crit_edge, label %if.then26

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %op_done = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 12
  %17 = ptrtoint ptr %op_done to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %op_done, align 4
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 172
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  %21 = or i32 %20, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr3.i = getelementptr i8, ptr %23, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %21) #9, !srcloc !90
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end.if.end27_crit_edge
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr.i126 = getelementptr i8, ptr %25, i32 1816
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  %27 = or i32 %26, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  tail call void @arm_heavy_mb() #9
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr3.i128 = getelementptr i8, ptr %29, i32 1816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i128, i32 %27) #9, !srcloc !90
  %add28 = shl i32 %length, 3
  %spi_freq = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 8
  %30 = ptrtoint ptr %spi_freq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %spi_freq, align 4
  %div = udiv i32 %31, 1000000
  %add29 = add i32 %add28, 39
  %sub = add i32 %add29, %div
  %div32 = udiv i32 %sub, %div
  %32 = ptrtoint ptr %has_irq to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %has_irq, align 1, !range !106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool34.not = icmp eq i8 %33, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %if.end27
  %op_done36 = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 12
  %34 = mul i32 %div32, 100
  %mul38 = add i32 %34, 100
  %call = tail call i32 @wait_for_completion_timeout(ptr noundef %op_done36, i32 noundef %mul38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool39.not = icmp eq i32 %call, 0
  br i1 %tobool39.not, label %if.then35.do.end94_crit_edge, label %if.then35.if.end95_crit_edge

if.then35.if.end95_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.then35.do.end94_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end94

if.else:                                          ; preds = %if.end27
  %35 = mul i32 %div32, 100
  %mul43 = add i32 %35, 100
  %conv = zext i32 %mul43 to i64
  %div44 = udiv i32 %div32, 3
  %call45 = tail call i64 @ktime_get() #9
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %call45, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div32)
  %36 = icmp ult i32 %div32, 3
  br i1 %36, label %if.else.do.end58_crit_edge, label %do.body50

if.else.do.end58_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end58

do.body50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 374) #9
  br label %do.end58

do.end58:                                         ; preds = %do.body50, %if.else.do.end58_crit_edge
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr60135 = getelementptr i8, ptr %38, i32 1816
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60135) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  %40 = and i32 %39, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool63.not137 = icmp eq i32 %40, 0
  br i1 %tobool63.not137, label %do.end58.if.end95_crit_edge, label %if.end65.lr.ph

do.end58.if.end95_crit_edge:                      ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.end65.lr.ph:                                   ; preds = %do.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul43)
  %tobool66.not = icmp eq i32 %mul43, 0
  %shr82 = lshr i32 %div44, 2
  %add83 = add nuw nsw i32 %shr82, 1
  br label %if.end65

if.end65:                                         ; preds = %if.end84.if.end65_crit_edge, %if.end65.lr.ph
  br i1 %tobool66.not, label %if.end65.if.end79_crit_edge, label %land.lhs.true

if.end65.if.end79_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

land.lhs.true:                                    ; preds = %if.end65
  %call67 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call67, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call67, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.end79_crit_edge

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.end79:                                         ; preds = %land.lhs.true.if.end79_crit_edge, %if.end65.if.end79_crit_edge
  br i1 %36, label %if.end79.if.end84_crit_edge, label %if.then81

if.end79.if.end84_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end84

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef %add83, i32 noundef %div44, i32 noundef 2) #9
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end79.if.end84_crit_edge
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %add.ptr60 = getelementptr i8, ptr %42, i32 1816
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !138
  %44 = and i32 %43, 16777216
  %tobool63.not = icmp eq i32 %44, 0
  br i1 %tobool63.not, label %if.end84.if.end95_crit_edge, label %if.end84.if.end65_crit_edge

if.end84.if.end65_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.end84.if.end95_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

for.end:                                          ; preds = %land.lhs.true
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %add.ptr75 = getelementptr i8, ptr %46, i32 1816
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !139
  %48 = and i32 %47, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool87.not = icmp eq i32 %48, 0
  br i1 %tobool87.not, label %for.end.if.end95_crit_edge, label %for.end.do.end94_crit_edge

for.end.do.end94_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end94

for.end.if.end95_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

do.end94:                                         ; preds = %for.end.do.end94_crit_edge, %if.then35.do.end94_crit_edge
  %dev = getelementptr inbounds %struct.mtk_nor, ptr %sp, i32 0, i32 1
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.30) #12
  br label %if.end95

if.end95:                                         ; preds = %do.end94, %for.end.if.end95_crit_edge, %if.end84.if.end95_crit_edge, %do.end58.if.end95_crit_edge, %if.then35.if.end95_crit_edge
  %ret.0132 = phi i32 [ -110, %do.end94 ], [ 0, %if.then35.if.end95_crit_edge ], [ 0, %for.end.if.end95_crit_edge ], [ 0, %do.end58.if.end95_crit_edge ], [ 0, %if.end84.if.end95_crit_edge ]
  ret i32 %ret.0132
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
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nor_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nor_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nor_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %spi_clk.i = getelementptr inbounds %struct.mtk_nor, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %spi_clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi_clk.i, align 4
  tail call void @clk_disable(ptr noundef %5) #9
  tail call void @clk_unprepare(ptr noundef %5) #9
  %ctlr_clk.i = getelementptr inbounds %struct.mtk_nor, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %ctlr_clk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctlr_clk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %axi_clk.i = getelementptr inbounds %struct.mtk_nor, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %axi_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %axi_clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_nor_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call fastcc i32 @mtk_nor_enable_clk(ptr noundef %3)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__initcall__kmod_spi_mtk_nor__237_931_mtk_nor_driver_init6, !1, !"__initcall__kmod_spi_mtk_nor__237_931_mtk_nor_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-mtk-nor.c", i32 931, i32 1}
!2 = !{ptr @__exitcall_mtk_nor_driver_exit, !1, !"__exitcall_mtk_nor_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description238, !4, !"__UNIQUE_ID_description238", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-mtk-nor.c", i32 933, i32 1}
!5 = !{ptr @__UNIQUE_ID_author239, !6, !"__UNIQUE_ID_author239", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-mtk-nor.c", i32 934, i32 1}
!7 = !{ptr @__UNIQUE_ID_file240, !8, !"__UNIQUE_ID_file240", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-mtk-nor.c", i32 935, i32 1}
!9 = !{ptr @__UNIQUE_ID_license241, !8, !"__UNIQUE_ID_license241", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias242, !11, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-mtk-nor.c", i32 936, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-mtk-nor.c", i32 923, i32 11}
!14 = !{ptr @mtk_nor_driver, !15, !"mtk_nor_driver", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-mtk-nor.c", i32 921, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-mtk-nor.c", i32 766, i32 37}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-mtk-nor.c", i32 770, i32 38}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-mtk-nor.c", i32 774, i32 46}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-mtk-nor.c", i32 780, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mtk_nor_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @mtk_nor_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-mtk-nor.c", i32 786, i32 3}
!32 = !{ptr @mtk_nor_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @mtk_nor_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-mtk-nor.c", i32 819, i32 3}
!36 = !{ptr @mtk_nor_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mtk_nor_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-mtk-nor.c", i32 834, i32 3}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mtk_nor_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mtk_nor_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-mtk-nor.c", i32 839, i32 4}
!45 = !{ptr @mtk_nor_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mtk_nor_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/spi/spi-mtk-nor.c", i32 859, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mtk_nor_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mtk_nor_probe._entry_ptr.25, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @mtk_nor_mem_ops, !53, !"mtk_nor_mem_ops", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-mtk-nor.c", i32 740, i32 44}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-mtk-nor.c", i32 133, i32 3}
!56 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @mtk_nor_cmd_exec._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @mtk_nor_cmd_exec._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/spi/spi-mtk-nor.c", i32 378, i32 3}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mtk_nor_dma_exec._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @mtk_nor_dma_exec._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/spi/spi-mtk-nor.c", i32 613, i32 3}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mtk_nor_setup._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mtk_nor_setup._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @init_completion.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../include/linux/completion.h", i32 87, i32 2}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @mtk_nor_match, !77, !"mtk_nor_match", i1 false, i1 false}
!77 = !{!"../drivers/spi/spi-mtk-nor.c", i32 746, i32 34}
!78 = !{ptr @mtk_nor_pm_ops, !79, !"mtk_nor_pm_ops", i1 false, i1 false}
!79 = !{!"../drivers/spi/spi-mtk-nor.c", i32 915, i32 32}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2154491915}
!90 = !{i64 6270335}
!91 = !{i64 2154493254}
!92 = !{i64 2154494493}
!93 = !{i64 6270753}
!94 = !{i64 2154456916}
!95 = !{i64 2154457127}
!96 = !{i64 2148262120, i64 2148262146, i64 2148262175, i64 2148262209, i64 2148262240, i64 2148262263}
!97 = !{i64 6270138}
!98 = !{i64 2154487712}
!99 = !{i64 6270533}
!100 = !{i64 2154491700}
!101 = !{i64 2154495408}
!102 = !{i64 2154495891}
!103 = !{i64 2154496115}
!104 = !{i64 2154496606}
!105 = !{i64 2154481760}
!106 = !{i8 0, i8 2}
!107 = !{i64 2154472338}
!108 = !{i64 2154472667}
!109 = !{i64 2154474640}
!110 = !{i64 2154475118}
!111 = !{i64 2154478630}
!112 = !{i64 2154479107}
!113 = !{i64 2154463170}
!114 = !{i64 2154463689}
!115 = !{i64 2154479512}
!116 = !{i64 2154479810}
!117 = !{i64 2154480100}
!118 = !{i64 2154480418}
!119 = !{i64 2154480736}
!120 = !{i64 2154481000}
!121 = !{i64 2154481532}
!122 = !{i64 2154461934}
!123 = !{i64 2154462233}
!124 = !{i64 2154475605}
!125 = !{i64 2154475936}
!126 = !{i64 2154477931}
!127 = !{i64 2154478409}
!128 = !{i64 2154471855}
!129 = !{!"branch_weights", i32 2000, i32 1}
!130 = !{i64 2154457835}
!131 = !{i64 2154459612}
!132 = !{i64 2154460090}
!133 = !{i64 2154464921}
!134 = !{i64 2154465322}
!135 = !{i64 2154465744}
!136 = !{i64 2154466247}
!137 = !{i64 2154466822}
!138 = !{i64 2154469271}
!139 = !{i64 2154469753}
