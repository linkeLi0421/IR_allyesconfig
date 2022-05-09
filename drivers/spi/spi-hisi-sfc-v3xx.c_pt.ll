; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-hisi-sfc-v3xx.c_pt.bc'
source_filename = "../drivers/spi/spi-hisi-sfc-v3xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
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
%struct.hisi_sfc_v3xx_host = type { ptr, ptr, i32, ptr, i8, i32 }
%struct.spi_mem_op = type { %struct.anon.71, %struct.anon.72, %struct.anon.73, %struct.anon.74 }
%struct.anon.71 = type { i8, i8, i8, i16 }
%struct.anon.72 = type { i8, i8, i8, i64 }
%struct.anon.73 = type { i8, i8, i8 }
%struct.anon.74 = type { i8, i8, i32, i32, %union.anon.75 }
%union.anon.75 = type { ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }

@hisi_sfc_v3xx_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hisi_sfc_v3xx_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @hisi_sfc_v3xx_acpi_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_spi_hisi_sfc_v3xx__234_537_hisi_sfc_v3xx_spi_init6 = internal global ptr @hisi_sfc_v3xx_spi_init, section ".initcall6.init", align 4
@__exitcall_hisi_sfc_v3xx_spi_exit = internal global ptr @hisi_sfc_v3xx_spi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file235 = internal constant [53 x i8] c"spi_hisi_sfc_v3xx.file=drivers/spi/spi-hisi-sfc-v3xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [30 x i8] c"spi_hisi_sfc_v3xx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author237 = internal constant [60 x i8] c"spi_hisi_sfc_v3xx.author=John Garry <john.garry@huawei.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [97 x i8] c"spi_hisi_sfc_v3xx.description=HiSilicon SPI NOR V3XX Flash Controller Driver for hi16xx chipsets\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hisi-sfc-v3xx\00", [18 x i8] zeroinitializer }, align 32
@hisi_sfc_v3xx_acpi_ids = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"HISI0341\00", i32 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@hisi_sfc_v3xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 467, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to request irq%d, ret = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hisi_sfc_v3xx_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/spi/spi-hisi-sfc-v3xx.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hisi_sfc_v3xx_probe._entry_ptr = internal global ptr @hisi_sfc_v3xx_probe._entry, section ".printk_index", align 4
@hisi_sfc_v3xx_mem_ops = internal constant { %struct.spi_controller_mem_ops, [60 x i8] } { %struct.spi_controller_mem_ops { ptr @hisi_sfc_v3xx_adjust_op_size, ptr @hisi_sfc_v3xx_supports_op, ptr @hisi_sfc_v3xx_exec_op, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@hisi_sfc_v3xx_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 502, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hw version 0x%x, %s mode.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hisi_sfc_v3xx_probe._entry_ptr.9 = internal global ptr @hisi_sfc_v3xx_probe._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"irq\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"polling\00", [24 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@hisi_sfc_v3xx_io_modes = internal constant { [2 x [3 x [3 x i32]]], [56 x i8] } { [2 x [3 x [3 x i32]]] [[3 x [3 x i32]] [[3 x i32] [i32 131072, i32 131072, i32 131072], [3 x i32] [i32 262144, i32 393216, i32 -5], [3 x i32] [i32 -5, i32 -5, i32 -5]], [3 x [3 x i32]] [[3 x i32] [i32 655360, i32 655360, i32 655360], [3 x i32] [i32 -5, i32 -5, i32 -5], [3 x i32] [i32 786432, i32 -5, i32 917504]]], [56 x i8] zeroinitializer }, align 32
@hisi_sfc_v3xx_handle_completion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 112, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fail to access protected address\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"hisi_sfc_v3xx_handle_completion\00", [32 x i8] zeroinitializer }, align 32
@hisi_sfc_v3xx_handle_completion._entry_ptr = internal global ptr @hisi_sfc_v3xx_handle_completion._entry, section ".printk_index", align 4
@hisi_sfc_v3xx_handle_completion._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 117, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"page program operation failed\0A\00", [33 x i8] zeroinitializer }, align 32
@hisi_sfc_v3xx_handle_completion._entry_ptr.17 = internal global ptr @hisi_sfc_v3xx_handle_completion._entry.15, section ".printk_index", align 4
@hisi_sfc_v3xx_handle_completion._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.3, i32 127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unsupported error occurred, status=0x%x\0A\00", [55 x i8] zeroinitializer }, align 32
@hisi_sfc_v3xx_handle_completion._entry_ptr.20 = internal global ptr @hisi_sfc_v3xx_handle_completion._entry.18, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [25 x i8] c"hisi_sfc_v3xx_spi_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 517, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 519, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [23 x i8] c"hisi_sfc_v3xx_acpi_ids\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 511, i32 36 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 467, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"hisi_sfc_v3xx_mem_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 371, i32 44 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 501, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 87, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [23 x i8] c"hisi_sfc_v3xx_io_modes\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 62, i32 18 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 112, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 117, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [35 x i8] c"../drivers/spi/spi-hisi-sfc-v3xx.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 127, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_hisi_sfc_v3xx_spi_exit, ptr @__initcall__kmod_spi_hisi_sfc_v3xx__234_537_hisi_sfc_v3xx_spi_init6, ptr @hisi_sfc_v3xx_handle_completion._entry, ptr @hisi_sfc_v3xx_handle_completion._entry.15, ptr @hisi_sfc_v3xx_handle_completion._entry.18, ptr @hisi_sfc_v3xx_handle_completion._entry_ptr, ptr @hisi_sfc_v3xx_handle_completion._entry_ptr.17, ptr @hisi_sfc_v3xx_handle_completion._entry_ptr.20, ptr @hisi_sfc_v3xx_probe._entry, ptr @hisi_sfc_v3xx_probe._entry.6, ptr @hisi_sfc_v3xx_probe._entry_ptr, ptr @hisi_sfc_v3xx_probe._entry_ptr.9, ptr @hisi_sfc_v3xx_spi_exit, ptr @hisi_sfc_v3xx_spi_driver, ptr @.str, ptr @hisi_sfc_v3xx_acpi_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @hisi_sfc_v3xx_mem_ops, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @init_completion.__key, ptr @.str.12, ptr @hisi_sfc_v3xx_io_modes, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_sfc_v3xx_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_sfc_v3xx_acpi_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_sfc_v3xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_sfc_v3xx_mem_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_sfc_v3xx_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_sfc_v3xx_io_modes to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_sfc_v3xx_handle_completion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_sfc_v3xx_handle_completion._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_sfc_v3xx_handle_completion._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hisi_sfc_v3xx_spi_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @hisi_sfc_v3xx_spi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_sfc_v3xx_spi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @hisi_sfc_v3xx_spi_driver, ptr noundef null) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_sfc_v3xx_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__spi_alloc_controller(ptr noundef %dev1, i32 noundef 24, i1 noundef zeroext false) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3840, ptr %mode_bits, align 8
  %buswidth_override_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %buswidth_override_bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %buswidth_override_bits, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %3, align 4
  %driver_data.i.i103 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i103 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %driver_data.i.i103, align 4
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %regbase = getelementptr inbounds %struct.hisi_sfc_v3xx_host, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regbase to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %regbase, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call5 to i32
  br label %spi_controller_put.exit

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.hisi_sfc_v3xx_host, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call12, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call12)
  %cmp = icmp eq i32 %call12, -517
  br i1 %cmp, label %if.end11.spi_controller_put.exit_crit_edge, label %if.end15

if.end11.spi_controller_put.exit_crit_edge:       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

if.end15:                                         ; preds = %if.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regbase, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !66
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp17 = icmp sgt i32 %12, 0
  br i1 %cmp17, label %if.then18, label %if.end15.if.end27.sink.split_crit_edge

if.end15.if.end27.sink.split_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.sink.split

if.then18:                                        ; preds = %if.end15
  %call.i104 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %12, ptr noundef nonnull @hisi_sfc_v3xx_isr, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool21.not = icmp eq i32 %call.i104, 0
  br i1 %tobool21.not, label %if.then18.if.end27_crit_edge, label %do.end

if.then18.if.end27_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %14, i32 noundef %call.i104) #10
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %do.end, %if.end15.if.end27.sink.split_crit_edge
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %irq, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.then18.if.end27_crit_edge
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %bus_num, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %num_chipselect, align 2
  %mem_ops = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 53
  %18 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @hisi_sfc_v3xx_mem_ops, ptr %mem_ops, align 4
  %19 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regbase, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 256
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !68
  %22 = and i32 %21, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool31.not = icmp eq i32 %22, 0
  %.sink = select i1 %tobool31.not, i8 3, i8 4
  %23 = getelementptr inbounds %struct.hisi_sfc_v3xx_host, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink, ptr %23, align 4
  %25 = ptrtoint ptr %regbase to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regbase, align 4
  %add.ptr39 = getelementptr i8, ptr %26, i32 504
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #7, !srcloc !67
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  call void @__sanitizer_cov_trace_const_cmp4(i32 848, i32 %28)
  %cmp43 = icmp ugt i32 %28, 848
  %.sink105 = select i1 %cmp43, i32 64, i32 16
  %29 = getelementptr inbounds %struct.hisi_sfc_v3xx_host, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink105, ptr %29, align 4
  %call48 = tail call i32 @devm_spi_register_controller(ptr noundef %dev1, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.end54, label %if.end27.spi_controller_put.exit_crit_edge

if.end27.spi_controller_put.exit_crit_edge:       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

do.end54:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool57.not = icmp eq i32 %32, 0
  %cond = select i1 %tobool57.not, ptr @.str.11, ptr @.str.10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %28, ptr noundef nonnull %cond) #10
  br label %cleanup

spi_controller_put.exit:                          ; preds = %if.end27.spi_controller_put.exit_crit_edge, %if.end11.spi_controller_put.exit_crit_edge, %if.then8
  %ret.0 = phi i32 [ %7, %if.then8 ], [ %call48, %if.end27.spi_controller_put.exit_crit_edge ], [ -517, %if.end11.spi_controller_put.exit_crit_edge ]
  tail call void @put_device(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %do.end54, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %spi_controller_put.exit ], [ 0, %do.end54 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_sfc_v3xx_isr(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @arm_heavy_mb() #7
  %regbase.i = getelementptr inbounds %struct.hisi_sfc_v3xx_host, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %regbase.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !66
  %completion = getelementptr inbounds %struct.hisi_sfc_v3xx_host, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %completion to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %completion, align 4
  tail call void @complete(ptr noundef %3) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hisi_sfc_v3xx_adjust_op_size(ptr nocapture noundef readonly %mem, ptr nocapture noundef %op) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %buf = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = ptrtoint ptr %3 to i32
  %master = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %max_cmd_dword = getelementptr inbounds %struct.hisi_sfc_v3xx_host, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %max_cmd_dword to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_cmd_dword, align 4
  %mul = shl i32 %10, 2
  %and = and i32 %4, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %nbytes = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %cmp3 = icmp ugt i32 %12, 3
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub nuw nsw i32 4, %and
  %13 = ptrtoint ptr %nbytes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub, ptr %nbytes, align 4
  br label %if.end12

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %nbytes7 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbytes7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %mul)
  %cmp8 = icmp ugt i32 %15, %mul
  br i1 %cmp8, label %if.then9, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %mul, ptr %nbytes7, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.else.if.end12_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hisi_sfc_v3xx_supports_op(ptr noundef %mem, ptr noundef %op) #2 align 64 {
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
  %data = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp = icmp ugt i8 %7, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %buswidth3 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %buswidth3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buswidth3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %9)
  %cmp5 = icmp ugt i8 %9, 4
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %addr = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %buswidth8 = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %buswidth8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buswidth8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp10 = icmp ugt i8 %11, 4
  br i1 %cmp10, label %lor.lhs.false7.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false7
  %buswidth13 = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %12 = ptrtoint ptr %buswidth13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %buswidth13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %13)
  %cmp15 = icmp ugt i8 %13, 4
  br i1 %cmp15, label %lor.lhs.false12.cleanup_crit_edge, label %if.end

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false12
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %addr, align 8
  %address_mode = getelementptr inbounds %struct.hisi_sfc_v3xx_host, ptr %5, i32 0, i32 4
  %16 = ptrtoint ptr %address_mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %address_mode, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp20.not = icmp eq i8 %15, %17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  %or.cond = or i1 %tobool.not, %cmp20.not
  br i1 %or.cond, label %if.end26, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call zeroext i1 @spi_mem_default_supports_op(ptr noundef %mem, ptr noundef %op) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call27, %if.end26 ], [ false, %lor.lhs.false12.cleanup_crit_edge ], [ false, %lor.lhs.false7.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hisi_sfc_v3xx_exec_op(ptr nocapture noundef readonly %mem, ptr nocapture noundef readonly %op) #2 align 64 {
entry:
  %done.i = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem, align 4
  %chip_select2 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %chip_select2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chip_select2, align 4
  %master = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done.i) #7
  %8 = getelementptr inbounds i8, ptr %done.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 52)
  %10 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %done.i, align 4
  call void @__init_swait_queue_head(ptr noundef %8, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #7
  %irq.i = getelementptr inbounds %struct.hisi_sfc_v3xx_host, ptr %7, i32 0, i32 5
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %completion.i = getelementptr inbounds %struct.hisi_sfc_v3xx_host, ptr %7, i32 0, i32 3
  %13 = ptrtoint ptr %completion.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %done.i, ptr %completion.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !70
  call void @arm_heavy_mb() #7
  %regbase.i.i = getelementptr inbounds %struct.hisi_sfc_v3xx_host, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %regbase.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regbase.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -16711680) #7, !srcloc !66
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %dir.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i = icmp eq i32 %17, 2
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then1.i:                                       ; preds = %if.end.i
  %buf.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %buf.i, align 4
  %nbytes.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nbytes.i, align 4
  %regbase.i58.i = getelementptr inbounds %struct.hisi_sfc_v3xx_host, ptr %7, i32 0, i32 1
  %22 = ptrtoint ptr %regbase.i58.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regbase.i58.i, align 4
  %add.ptr.i59.i = getelementptr i8, ptr %23, i32 1024
  %24 = ptrtoint ptr %19 to i32
  %and.i.i = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i60.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i60.i, label %if.then.i.i, label %for.cond8.preheader.i.i

for.cond8.preheader.i.i:                          ; preds = %if.then1.i
  %sub9.i.i = add i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub9.i.i)
  %cmp1173.not.i.i = icmp ult i32 %sub9.i.i, 4
  br i1 %cmp1173.not.i.i, label %for.cond8.preheader.i.i.if.end4.i_crit_edge, label %for.cond15.preheader.preheader.i.i

for.cond8.preheader.i.i.if.end4.i_crit_edge:      ; preds = %for.cond8.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.cond15.preheader.preheader.i.i:               ; preds = %for.cond8.preheader.i.i
  %div1064.i.i = lshr i32 %sub9.i.i, 2
  br label %for.cond15.preheader.i.i

if.then.i.i:                                      ; preds = %if.then1.i
  %div65.i.i = lshr i32 %21, 2
  call void @__iowrite32_copy(ptr noundef %add.ptr.i59.i, ptr noundef %19, i32 noundef %div65.i.i) #7
  %sub.i.i = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %tobool.not.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end4.i_crit_edge, label %for.body.preheader.i.i

if.then.i.i.if.end4.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

for.body.preheader.i.i:                           ; preds = %if.then.i.i
  %mul.i.i = and i32 %21, -4
  %add.ptr5.i.i = getelementptr i8, ptr %19, i32 %mul.i.i
  %25 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr5.i.i, align 1
  %conv.i.i = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %exitcond82.not.i.i = icmp eq i32 %sub.i.i, 1
  br i1 %exitcond82.not.i.i, label %for.body.preheader.i.i.for.end.i.i_crit_edge, label %for.body.i.i.1

for.body.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.1:                                   ; preds = %for.body.preheader.i.i
  %incdec.ptr.i.i = getelementptr i8, ptr %add.ptr5.i.i, i32 1
  %27 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %incdec.ptr.i.i, align 1
  %conv.i.i.1 = zext i8 %28 to i32
  %shl.i.i.1 = shl nuw nsw i32 %conv.i.i.1, 8
  %or.i.i.1 = or i32 %shl.i.i.1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i)
  %exitcond82.not.i.i.1 = icmp eq i32 %sub.i.i, 2
  br i1 %exitcond82.not.i.i.1, label %for.body.i.i.1.for.end.i.i_crit_edge, label %for.body.i.i.2

for.body.i.i.1.for.end.i.i_crit_edge:             ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.2:                                   ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i.i.1 = getelementptr i8, ptr %incdec.ptr.i.i, i32 1
  %29 = ptrtoint ptr %incdec.ptr.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %incdec.ptr.i.i.1, align 1
  %conv.i.i.2 = zext i8 %30 to i32
  %shl.i.i.2 = shl nuw nsw i32 %conv.i.i.2, 16
  %or.i.i.2 = or i32 %shl.i.i.2, %or.i.i.1
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.2, %for.body.i.i.1.for.end.i.i_crit_edge, %for.body.preheader.i.i.for.end.i.i_crit_edge
  %or.i.i.lcssa = phi i32 [ %conv.i.i, %for.body.preheader.i.i.for.end.i.i_crit_edge ], [ %or.i.i.1, %for.body.i.i.1.for.end.i.i_crit_edge ], [ %or.i.i.2, %for.body.i.i.2 ]
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i59.i, i32 %mul.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %or.i.i.lcssa) #7, !srcloc !66
  br label %if.end4.i

for.cond15.preheader.i.i:                         ; preds = %for.end30.i.i.for.cond15.preheader.i.i_crit_edge, %for.cond15.preheader.preheader.i.i
  %i.176.i.i = phi i32 [ %inc32.i.i, %for.end30.i.i.for.cond15.preheader.i.i_crit_edge ], [ 0, %for.cond15.preheader.preheader.i.i ]
  %to.075.i.i = phi ptr [ %add.ptr33.i.i, %for.end30.i.i.for.cond15.preheader.i.i_crit_edge ], [ %add.ptr.i59.i, %for.cond15.preheader.preheader.i.i ]
  %from.addr.174.i.i = phi ptr [ %from.addr.2.lcssa.i.i, %for.end30.i.i.for.cond15.preheader.i.i_crit_edge ], [ %19, %for.cond15.preheader.preheader.i.i ]
  %mul18.i.i = shl i32 %i.176.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul18.i.i, i32 %21)
  %cmp2067.i.i = icmp ult i32 %mul18.i.i, %21
  br i1 %cmp2067.i.i, label %for.body22.i.i, label %for.cond15.preheader.i.i.for.end30.i.i_crit_edge

for.cond15.preheader.i.i.for.end30.i.i_crit_edge: ; preds = %for.cond15.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30.i.i

for.body22.i.i:                                   ; preds = %for.cond15.preheader.i.i
  %31 = ptrtoint ptr %from.addr.174.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %from.addr.174.i.i, align 1
  %conv23.i.i = zext i8 %32 to i32
  %incdec.ptr28.i.i = getelementptr i8, ptr %from.addr.174.i.i, i32 1
  %add19.i.i = or i32 %mul18.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i.i, i32 %21)
  %cmp20.i.i = icmp ult i32 %add19.i.i, %21
  br i1 %cmp20.i.i, label %for.body22.i.i.1, label %for.body22.i.i.for.end30.i.i_crit_edge

for.body22.i.i.for.end30.i.i_crit_edge:           ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30.i.i

for.body22.i.i.1:                                 ; preds = %for.body22.i.i
  %33 = ptrtoint ptr %incdec.ptr28.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr28.i.i, align 1
  %conv23.i.i.1 = zext i8 %34 to i32
  %shl25.i.i.1 = shl nuw nsw i32 %conv23.i.i.1, 8
  %or26.i.i.1 = or i32 %shl25.i.i.1, %conv23.i.i
  %incdec.ptr28.i.i.1 = getelementptr i8, ptr %from.addr.174.i.i, i32 2
  %add19.i.i.1 = or i32 %mul18.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i.i.1, i32 %21)
  %cmp20.i.i.1 = icmp ult i32 %add19.i.i.1, %21
  br i1 %cmp20.i.i.1, label %for.body22.i.i.2, label %for.body22.i.i.1.for.end30.i.i_crit_edge

for.body22.i.i.1.for.end30.i.i_crit_edge:         ; preds = %for.body22.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30.i.i

for.body22.i.i.2:                                 ; preds = %for.body22.i.i.1
  %35 = ptrtoint ptr %incdec.ptr28.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %incdec.ptr28.i.i.1, align 1
  %conv23.i.i.2 = zext i8 %36 to i32
  %shl25.i.i.2 = shl nuw nsw i32 %conv23.i.i.2, 16
  %or26.i.i.2 = or i32 %shl25.i.i.2, %or26.i.i.1
  %incdec.ptr28.i.i.2 = getelementptr i8, ptr %from.addr.174.i.i, i32 3
  %add19.i.i.2 = or i32 %mul18.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i.i.2, i32 %21)
  %cmp20.i.i.2 = icmp ult i32 %add19.i.i.2, %21
  br i1 %cmp20.i.i.2, label %for.body22.i.i.3, label %for.body22.i.i.2.for.end30.i.i_crit_edge

for.body22.i.i.2.for.end30.i.i_crit_edge:         ; preds = %for.body22.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end30.i.i

for.body22.i.i.3:                                 ; preds = %for.body22.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %incdec.ptr28.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr28.i.i.2, align 1
  %conv23.i.i.3 = zext i8 %38 to i32
  %shl25.i.i.3 = shl nuw i32 %conv23.i.i.3, 24
  %or26.i.i.3 = or i32 %shl25.i.i.3, %or26.i.i.2
  %incdec.ptr28.i.i.3 = getelementptr i8, ptr %from.addr.174.i.i, i32 4
  br label %for.end30.i.i

for.end30.i.i:                                    ; preds = %for.body22.i.i.3, %for.body22.i.i.2.for.end30.i.i_crit_edge, %for.body22.i.i.1.for.end30.i.i_crit_edge, %for.body22.i.i.for.end30.i.i_crit_edge, %for.cond15.preheader.i.i.for.end30.i.i_crit_edge
  %from.addr.2.lcssa.i.i = phi ptr [ %from.addr.174.i.i, %for.cond15.preheader.i.i.for.end30.i.i_crit_edge ], [ %incdec.ptr28.i.i, %for.body22.i.i.for.end30.i.i_crit_edge ], [ %incdec.ptr28.i.i.1, %for.body22.i.i.1.for.end30.i.i_crit_edge ], [ %incdec.ptr28.i.i.2, %for.body22.i.i.2.for.end30.i.i_crit_edge ], [ %incdec.ptr28.i.i.3, %for.body22.i.i.3 ]
  %val14.0.lcssa.i.i = phi i32 [ 0, %for.cond15.preheader.i.i.for.end30.i.i_crit_edge ], [ %conv23.i.i, %for.body22.i.i.for.end30.i.i_crit_edge ], [ %or26.i.i.1, %for.body22.i.i.1.for.end30.i.i_crit_edge ], [ %or26.i.i.2, %for.body22.i.i.2.for.end30.i.i_crit_edge ], [ %or26.i.i.3, %for.body22.i.i.3 ]
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %to.075.i.i, i32 %val14.0.lcssa.i.i) #7, !srcloc !66
  %inc32.i.i = add nuw nsw i32 %i.176.i.i, 1
  %add.ptr33.i.i = getelementptr i8, ptr %to.075.i.i, i32 4
  %exitcond.not.i.i = icmp eq i32 %inc32.i.i, %div1064.i.i
  br i1 %exitcond.not.i.i, label %for.end30.i.i.if.end4.i_crit_edge, label %for.end30.i.i.for.cond15.preheader.i.i_crit_edge

for.end30.i.i.for.cond15.preheader.i.i_crit_edge: ; preds = %for.end30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond15.preheader.i.i

for.end30.i.i.if.end4.i_crit_edge:                ; preds = %for.end30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %for.end30.i.i.if.end4.i_crit_edge, %for.end.i.i, %if.then.i.i.if.end4.i_crit_edge, %for.cond8.preheader.i.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3
  %nbytes.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 3
  %39 = ptrtoint ptr %nbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nbytes.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1
  %41 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %addr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i61.i = icmp eq i8 %42, 0
  %spec.select.i62.i = select i1 %tobool.not.i61.i, i32 0, i32 8
  %43 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %44)
  %switch.i.i = icmp ult i8 %44, 2
  br i1 %switch.i.i, label %if.end4.i.if.end7.i_crit_edge, label %if.end22.i.i

if.end4.i.if.end7.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.end22.i.i:                                     ; preds = %if.end4.i
  %sub.i63.i = add i8 %44, -1
  %div91929394.i.i = lshr i8 %sub.i63.i, 1
  %45 = zext i8 %div91929394.i.i to i32
  %buswidth14.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %buswidth14.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %buswidth14.i.i, align 1
  %48 = lshr i8 %47, 1
  %div16.i.i = zext i8 %48 to i32
  %buswidth17.i.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 1
  %49 = ptrtoint ptr %buswidth17.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %buswidth17.i.i, align 1
  %51 = lshr i8 %50, 1
  %div19.i.i = zext i8 %51 to i32
  %arrayidx21.i.i = getelementptr [2 x [3 x [3 x i32]]], ptr @hisi_sfc_v3xx_io_modes, i32 0, i32 %45, i32 %div16.i.i, i32 %div19.i.i
  %52 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx21.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp23.i.i = icmp slt i32 %53, 0
  br i1 %cmp23.i.i, label %if.end22.i.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge, label %if.end22.i.i.if.end7.i_crit_edge

if.end22.i.i.if.end7.i_crit_edge:                 ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.end22.i.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge: ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_sfc_v3xx_generic_exec_op.exit

if.end7.i:                                        ; preds = %if.end22.i.i.if.end7.i_crit_edge, %if.end4.i.if.end7.i_crit_edge
  %buswidth_mode.090.i.i = phi i32 [ %53, %if.end22.i.i.if.end7.i_crit_edge ], [ 0, %if.end4.i.if.end7.i_crit_edge ]
  %or27.i.i = or i32 %buswidth_mode.090.i.i, %spec.select.i62.i
  %54 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp29.not.i.i = icmp eq i32 %55, 0
  %sub32.i.i = shl i32 %40, 9
  %shl.i64.i = add i32 %sub32.i.i, -512
  %or33.i.i = or i32 %shl.i64.i, %or27.i.i
  %or34.i.i = or i32 %or33.i.i, 128
  %config.1.i.i = select i1 %cmp29.not.i.i, i32 %or27.i.i, i32 %or34.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp38.i.i = icmp eq i32 %55, 1
  %or41.i.i = or i32 %config.1.i.i, 256
  %config.2.i.i = select i1 %cmp38.i.i, i32 %or41.i.i, i32 %config.1.i.i
  %dummy.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 2
  %56 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %dummy.i.i, align 8
  %conv44.i.i = zext i8 %57 to i32
  %shl45.i.i = shl nuw nsw i32 %conv44.i.i, 4
  %conv46.i.i = zext i8 %3 to i32
  %shl47.i.i = shl nuw nsw i32 %conv46.i.i, 1
  %or48.i.i = or i32 %shl47.i.i, %shl45.i.i
  %or49.i.i = or i32 %or48.i.i, %config.2.i.i
  %or50.i.i = or i32 %or49.i.i, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !71
  call void @arm_heavy_mb() #7
  %val.i.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %val.i.i, align 8
  %conv52.i.i = trunc i64 %59 to i32
  %60 = call i32 @llvm.bswap.i32(i32 %conv52.i.i) #7
  %regbase.i65.i = getelementptr inbounds %struct.hisi_sfc_v3xx_host, ptr %7, i32 0, i32 1
  %61 = ptrtoint ptr %regbase.i65.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regbase.i65.i, align 4
  %add.ptr.i66.i = getelementptr i8, ptr %62, i32 780
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i66.i, i32 %60) #7, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !72
  call void @arm_heavy_mb() #7
  %opcode.i.i = getelementptr inbounds %struct.anon.71, ptr %op, i32 0, i32 3
  %63 = ptrtoint ptr %opcode.i.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %opcode.i.i, align 4
  %conv57.i.i = zext i16 %64 to i32
  %65 = call i32 @llvm.bswap.i32(i32 %conv57.i.i) #7
  %66 = ptrtoint ptr %regbase.i65.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regbase.i65.i, align 4
  %add.ptr59.i.i = getelementptr i8, ptr %67, i32 776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i.i, i32 %65) #7, !srcloc !66
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !73
  call void @arm_heavy_mb() #7
  %68 = call i32 @llvm.bswap.i32(i32 %or50.i.i) #7
  %69 = ptrtoint ptr %regbase.i65.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regbase.i65.i, align 4
  %add.ptr64.i.i = getelementptr i8, ptr %70, i32 768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64.i.i, i32 %68) #7, !srcloc !66
  %71 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool9.not.i = icmp eq i32 %72, 0
  br i1 %tobool9.not.i, label %if.else19.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %completion11.i = getelementptr inbounds %struct.hisi_sfc_v3xx_host, ptr %7, i32 0, i32 3
  %73 = ptrtoint ptr %completion11.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %completion11.i, align 4
  %call.i.i = call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 1000000
  %spec.select.i.i = select i1 %cmp.i.i, i32 1073741822, i32 100
  %call13.i = call i32 @wait_for_completion_timeout(ptr noundef %74, i32 noundef %spec.select.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  %..i = select i1 %tobool14.not.i, i32 -110, i32 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @arm_heavy_mb() #7
  %75 = ptrtoint ptr %regbase.i65.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regbase.i65.i, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %76, i32 296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68.i, i32 0) #7, !srcloc !66
  %77 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq.i, align 4
  call void @synchronize_irq(i32 noundef %78) #7
  %79 = ptrtoint ptr %completion11.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %completion11.i, align 4
  br label %if.end21.i

if.else19.i:                                      ; preds = %if.end7.i
  %call.i69.i = call i64 @ktime_get() #7
  %add.i.i.i = add i64 %call.i69.i, 1000000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 144) #7
  %80 = ptrtoint ptr %regbase.i65.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regbase.i65.i, align 4
  %add.ptr39.i.i = getelementptr i8, ptr %81, i32 768
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i.i) #7, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %83 = and i32 %82, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not41.i.i = icmp eq i32 %83, 0
  br i1 %tobool.not41.i.i, label %if.else19.i.for.end.thread.i.i_crit_edge, label %if.else19.i.land.lhs.true.i.i_crit_edge

if.else19.i.land.lhs.true.i.i_crit_edge:          ; preds = %if.else19.i
  br label %land.lhs.true.i.i

if.else19.i.for.end.thread.i.i_crit_edge:         ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread.i.i

land.lhs.true.i.i:                                ; preds = %if.then26.i.i.land.lhs.true.i.i_crit_edge, %if.else19.i.land.lhs.true.i.i_crit_edge
  %call13.i.i = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call13.i.i, i64 %add.i.i.i)
  %cmp3.i.i.i = icmp sgt i64 %call13.i.i, %add.i.i.i
  br i1 %cmp3.i.i.i, label %for.end.i73.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %84 = ptrtoint ptr %regbase.i65.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regbase.i65.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %85, i32 768
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i) #7, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !74
  %87 = and i32 %86, 16777216
  %tobool.not.i72.i = icmp eq i32 %87, 0
  br i1 %tobool.not.i72.i, label %if.then26.i.i.for.end.thread.i.i_crit_edge, label %if.then26.i.i.land.lhs.true.i.i_crit_edge

if.then26.i.i.land.lhs.true.i.i_crit_edge:        ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i.i

if.then26.i.i.for.end.thread.i.i_crit_edge:       ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread.i.i

for.end.i73.i:                                    ; preds = %land.lhs.true.i.i
  %88 = ptrtoint ptr %regbase.i65.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regbase.i65.i, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %89, i32 768
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #7, !srcloc !67
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !75
  %91 = and i32 %90, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool30.not.i.i = icmp eq i32 %91, 0
  br i1 %tobool30.not.i.i, label %for.end.i73.i.for.end.thread.i.i_crit_edge, label %for.end.i73.i.if.end21.i_crit_edge

for.end.i73.i.if.end21.i_crit_edge:               ; preds = %for.end.i73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

for.end.i73.i.for.end.thread.i.i_crit_edge:       ; preds = %for.end.i73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread.i.i

for.end.thread.i.i:                               ; preds = %for.end.i73.i.for.end.thread.i.i_crit_edge, %if.then26.i.i.for.end.thread.i.i_crit_edge, %if.else19.i.for.end.thread.i.i_crit_edge
  br label %if.end21.i

if.end21.i:                                       ; preds = %for.end.thread.i.i, %for.end.i73.i.if.end21.i_crit_edge, %if.then10.i
  %ret.1.i = phi i32 [ %..i, %if.then10.i ], [ 0, %for.end.thread.i.i ], [ -110, %for.end.i73.i.if.end21.i_crit_edge ]
  %92 = ptrtoint ptr %regbase.i65.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regbase.i65.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %93, i32 288
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75.i) #7, !srcloc !67
  %95 = call i32 @llvm.bswap.i32(i32 %94) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !77
  call void @arm_heavy_mb() #7
  %96 = ptrtoint ptr %regbase.i65.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regbase.i65.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %97, i32 300
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -16711680) #7, !srcloc !66
  %and.i76.i = and i32 %95, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76.i)
  %tobool.not.i77.i = icmp eq i32 %and.i76.i, 0
  br i1 %tobool.not.i77.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.13) #10
  br label %hisi_sfc_v3xx_generic_exec_op.exit

if.end.i.i:                                       ; preds = %if.end21.i
  %and2.i.i = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end9.i.i, label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %100 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.16) #10
  br label %hisi_sfc_v3xx_generic_exec_op.exit

if.end9.i.i:                                      ; preds = %if.end.i.i
  %and10.i.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %do.end15.i.i, label %hisi_sfc_v3xx_handle_completion.exit.i

do.end15.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.19, i32 noundef %95) #10
  br label %hisi_sfc_v3xx_generic_exec_op.exit

hisi_sfc_v3xx_handle_completion.exit.i:           ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool24.not.i = icmp eq i32 %ret.1.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %hisi_sfc_v3xx_handle_completion.exit.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge

hisi_sfc_v3xx_handle_completion.exit.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge: ; preds = %hisi_sfc_v3xx_handle_completion.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_sfc_v3xx_generic_exec_op.exit

if.end26.i:                                       ; preds = %hisi_sfc_v3xx_handle_completion.exit.i
  %104 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %105)
  %cmp29.i = icmp eq i32 %105, 1
  br i1 %cmp29.i, label %if.then30.i, label %if.end26.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge

if.end26.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_sfc_v3xx_generic_exec_op.exit

if.then30.i:                                      ; preds = %if.end26.i
  %buf32.i = getelementptr inbounds %struct.spi_mem_op, ptr %op, i32 0, i32 3, i32 4
  %106 = ptrtoint ptr %buf32.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %buf32.i, align 4
  %108 = ptrtoint ptr %nbytes.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %nbytes.i.i, align 4
  %110 = ptrtoint ptr %regbase.i65.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regbase.i65.i, align 4
  %add.ptr.i80.i = getelementptr i8, ptr %111, i32 1024
  %112 = ptrtoint ptr %107 to i32
  %and.i81.i = and i32 %112, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i81.i)
  %cmp.i82.i = icmp eq i32 %and.i81.i, 0
  br i1 %cmp.i82.i, label %if.then.i85.i, label %for.cond7.preheader.i.i

for.cond7.preheader.i.i:                          ; preds = %if.then30.i
  %sub8.i.i = add i32 %109, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub8.i.i)
  %cmp1069.not.i.i = icmp ult i32 %sub8.i.i, 4
  br i1 %cmp1069.not.i.i, label %for.cond7.preheader.i.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge, label %for.body12.preheader.i.i

for.cond7.preheader.i.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge: ; preds = %for.cond7.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_sfc_v3xx_generic_exec_op.exit

for.body12.preheader.i.i:                         ; preds = %for.cond7.preheader.i.i
  %div960.i.i = lshr i32 %sub8.i.i, 2
  br label %for.body12.i.i

if.then.i85.i:                                    ; preds = %if.then30.i
  %div61.i.i = lshr i32 %109, 2
  call void @__ioread32_copy(ptr noundef %107, ptr noundef %add.ptr.i80.i, i32 noundef %div61.i.i) #7
  %sub.i83.i = and i32 %109, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i83.i)
  %tobool.not.i84.i = icmp eq i32 %sub.i83.i, 0
  br i1 %tobool.not.i84.i, label %if.then.i85.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge, label %for.body.preheader.i89.i

if.then.i85.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge: ; preds = %if.then.i85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_sfc_v3xx_generic_exec_op.exit

for.body.preheader.i89.i:                         ; preds = %if.then.i85.i
  %mul.i86.i = and i32 %109, -4
  %add.ptr5.i87.i = getelementptr i8, ptr %add.ptr.i80.i, i32 %mul.i86.i
  %113 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i87.i) #7, !srcloc !67
  %add.ptr3.i88.i = getelementptr i8, ptr %107, i32 %mul.i86.i
  %conv.i90.i = trunc i32 %113 to i8
  %114 = ptrtoint ptr %add.ptr3.i88.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv.i90.i, ptr %add.ptr3.i88.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i83.i)
  %exitcond78.not.i.i = icmp eq i32 %sub.i83.i, 1
  br i1 %exitcond78.not.i.i, label %for.body.preheader.i89.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge, label %for.body.i93.i.1

for.body.preheader.i89.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge: ; preds = %for.body.preheader.i89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_sfc_v3xx_generic_exec_op.exit

for.body.i93.i.1:                                 ; preds = %for.body.preheader.i89.i
  %incdec.ptr.i92.i = getelementptr i8, ptr %add.ptr3.i88.i, i32 1
  %shr.i.i = lshr i32 %113, 8
  %conv.i90.i.1 = trunc i32 %shr.i.i to i8
  %115 = ptrtoint ptr %incdec.ptr.i92.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv.i90.i.1, ptr %incdec.ptr.i92.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i83.i)
  %exitcond78.not.i.i.1 = icmp eq i32 %sub.i83.i, 2
  br i1 %exitcond78.not.i.i.1, label %for.body.i93.i.1.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge, label %for.body.i93.i.2

for.body.i93.i.1.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge: ; preds = %for.body.i93.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_sfc_v3xx_generic_exec_op.exit

for.body.i93.i.2:                                 ; preds = %for.body.i93.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i92.i.1 = getelementptr i8, ptr %incdec.ptr.i92.i, i32 1
  %shr.i.i.1 = lshr i32 %113, 16
  %conv.i90.i.2 = trunc i32 %shr.i.i.1 to i8
  %116 = ptrtoint ptr %incdec.ptr.i92.i.1 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv.i90.i.2, ptr %incdec.ptr.i92.i.1, align 1
  br label %hisi_sfc_v3xx_generic_exec_op.exit

for.body12.i.i:                                   ; preds = %for.end28.i.i.for.body12.i.i_crit_edge, %for.body12.preheader.i.i
  %i.172.i.i = phi i32 [ %inc30.i.i, %for.end28.i.i.for.body12.i.i_crit_edge ], [ 0, %for.body12.preheader.i.i ]
  %from.071.i.i = phi ptr [ %add.ptr31.i.i, %for.end28.i.i.for.body12.i.i_crit_edge ], [ %add.ptr.i80.i, %for.body12.preheader.i.i ]
  %to.addr.170.i.i = phi ptr [ %to.addr.2.lcssa.i.i, %for.end28.i.i.for.body12.i.i_crit_edge ], [ %107, %for.body12.preheader.i.i ]
  %117 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %from.071.i.i) #7, !srcloc !67
  %mul18.i94.i = shl i32 %i.172.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul18.i94.i, i32 %109)
  %cmp2064.i.i = icmp ult i32 %mul18.i94.i, %109
  br i1 %cmp2064.i.i, label %for.body22.i100.i, label %for.body12.i.i.for.end28.i.i_crit_edge

for.body12.i.i.for.end28.i.i_crit_edge:           ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28.i.i

for.body22.i100.i:                                ; preds = %for.body12.i.i
  %conv23.i95.i = trunc i32 %117 to i8
  %118 = ptrtoint ptr %to.addr.170.i.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv23.i95.i, ptr %to.addr.170.i.i, align 1
  %incdec.ptr25.i.i = getelementptr i8, ptr %to.addr.170.i.i, i32 1
  %add19.i97.i = or i32 %mul18.i94.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i97.i, i32 %109)
  %cmp20.i98.i = icmp ult i32 %add19.i97.i, %109
  br i1 %cmp20.i98.i, label %for.body22.i100.i.1, label %for.body22.i100.i.for.end28.i.i_crit_edge

for.body22.i100.i.for.end28.i.i_crit_edge:        ; preds = %for.body22.i100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28.i.i

for.body22.i100.i.1:                              ; preds = %for.body22.i100.i
  %shr26.i.i = lshr i32 %117, 8
  %conv23.i95.i.1 = trunc i32 %shr26.i.i to i8
  %119 = ptrtoint ptr %incdec.ptr25.i.i to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv23.i95.i.1, ptr %incdec.ptr25.i.i, align 1
  %incdec.ptr25.i.i.1 = getelementptr i8, ptr %to.addr.170.i.i, i32 2
  %add19.i97.i.1 = or i32 %mul18.i94.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i97.i.1, i32 %109)
  %cmp20.i98.i.1 = icmp ult i32 %add19.i97.i.1, %109
  br i1 %cmp20.i98.i.1, label %for.body22.i100.i.2, label %for.body22.i100.i.1.for.end28.i.i_crit_edge

for.body22.i100.i.1.for.end28.i.i_crit_edge:      ; preds = %for.body22.i100.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28.i.i

for.body22.i100.i.2:                              ; preds = %for.body22.i100.i.1
  %shr26.i.i.1 = lshr i32 %117, 16
  %conv23.i95.i.2 = trunc i32 %shr26.i.i.1 to i8
  %120 = ptrtoint ptr %incdec.ptr25.i.i.1 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv23.i95.i.2, ptr %incdec.ptr25.i.i.1, align 1
  %incdec.ptr25.i.i.2 = getelementptr i8, ptr %to.addr.170.i.i, i32 3
  %add19.i97.i.2 = or i32 %mul18.i94.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i97.i.2, i32 %109)
  %cmp20.i98.i.2 = icmp ult i32 %add19.i97.i.2, %109
  br i1 %cmp20.i98.i.2, label %for.body22.i100.i.3, label %for.body22.i100.i.2.for.end28.i.i_crit_edge

for.body22.i100.i.2.for.end28.i.i_crit_edge:      ; preds = %for.body22.i100.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end28.i.i

for.body22.i100.i.3:                              ; preds = %for.body22.i100.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %shr26.i.i.2 = lshr i32 %117, 24
  %conv23.i95.i.3 = trunc i32 %shr26.i.i.2 to i8
  %121 = ptrtoint ptr %incdec.ptr25.i.i.2 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv23.i95.i.3, ptr %incdec.ptr25.i.i.2, align 1
  %incdec.ptr25.i.i.3 = getelementptr i8, ptr %to.addr.170.i.i, i32 4
  br label %for.end28.i.i

for.end28.i.i:                                    ; preds = %for.body22.i100.i.3, %for.body22.i100.i.2.for.end28.i.i_crit_edge, %for.body22.i100.i.1.for.end28.i.i_crit_edge, %for.body22.i100.i.for.end28.i.i_crit_edge, %for.body12.i.i.for.end28.i.i_crit_edge
  %to.addr.2.lcssa.i.i = phi ptr [ %to.addr.170.i.i, %for.body12.i.i.for.end28.i.i_crit_edge ], [ %incdec.ptr25.i.i, %for.body22.i100.i.for.end28.i.i_crit_edge ], [ %incdec.ptr25.i.i.1, %for.body22.i100.i.1.for.end28.i.i_crit_edge ], [ %incdec.ptr25.i.i.2, %for.body22.i100.i.2.for.end28.i.i_crit_edge ], [ %incdec.ptr25.i.i.3, %for.body22.i100.i.3 ]
  %inc30.i.i = add nuw nsw i32 %i.172.i.i, 1
  %add.ptr31.i.i = getelementptr i8, ptr %from.071.i.i, i32 4
  %exitcond.not.i101.i = icmp eq i32 %inc30.i.i, %div960.i.i
  br i1 %exitcond.not.i101.i, label %for.end28.i.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge, label %for.end28.i.i.for.body12.i.i_crit_edge

for.end28.i.i.for.body12.i.i_crit_edge:           ; preds = %for.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.i.i

for.end28.i.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge: ; preds = %for.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %hisi_sfc_v3xx_generic_exec_op.exit

hisi_sfc_v3xx_generic_exec_op.exit:               ; preds = %for.end28.i.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge, %for.body.i93.i.2, %for.body.i93.i.1.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge, %for.body.preheader.i89.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge, %if.then.i85.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge, %for.cond7.preheader.i.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge, %if.end26.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge, %hisi_sfc_v3xx_handle_completion.exit.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge, %do.end15.i.i, %do.end7.i.i, %do.end.i.i, %if.end22.i.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %hisi_sfc_v3xx_handle_completion.exit.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge ], [ 0, %if.end26.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge ], [ %53, %if.end22.i.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge ], [ 0, %for.cond7.preheader.i.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge ], [ 0, %if.then.i85.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge ], [ -5, %do.end.i.i ], [ -5, %do.end7.i.i ], [ -5, %do.end15.i.i ], [ 0, %for.body.i93.i.2 ], [ 0, %for.body.i93.i.1.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge ], [ 0, %for.body.preheader.i89.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge ], [ 0, %for.end28.i.i.hisi_sfc_v3xx_generic_exec_op.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @spi_mem_default_supports_op(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iowrite32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ioread32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !28, !29, !30, !32, !34, !36, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_spi_hisi_sfc_v3xx__234_537_hisi_sfc_v3xx_spi_init6, !1, !"__initcall__kmod_spi_hisi_sfc_v3xx__234_537_hisi_sfc_v3xx_spi_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 537, i32 1}
!2 = !{ptr @__exitcall_hisi_sfc_v3xx_spi_exit, !3, !"__exitcall_hisi_sfc_v3xx_spi_exit", i1 false, i1 false}
!3 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 538, i32 1}
!4 = !{ptr @__UNIQUE_ID_file235, !5, !"__UNIQUE_ID_file235", i1 false, i1 false}
!5 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 540, i32 1}
!6 = !{ptr @__UNIQUE_ID_license236, !5, !"__UNIQUE_ID_license236", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author237, !8, !"__UNIQUE_ID_author237", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 541, i32 1}
!9 = !{ptr @__UNIQUE_ID_description238, !10, !"__UNIQUE_ID_description238", i1 false, i1 false}
!10 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 542, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 519, i32 11}
!13 = !{ptr @hisi_sfc_v3xx_spi_driver, !14, !"hisi_sfc_v3xx_spi_driver", i1 false, i1 false}
!14 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 517, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 467, i32 4}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @hisi_sfc_v3xx_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @hisi_sfc_v3xx_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 501, i32 2}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @hisi_sfc_v3xx_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @hisi_sfc_v3xx_probe._entry_ptr.9, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"hisi_sfc_v3xx_buswidth_override_bits", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 388, i32 12}
!32 = !{ptr @hisi_sfc_v3xx_mem_ops, !33, !"hisi_sfc_v3xx_mem_ops", i1 false, i1 false}
!33 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 371, i32 44}
!34 = !{ptr @init_completion.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../include/linux/completion.h", i32 87, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @hisi_sfc_v3xx_io_modes, !38, !"hisi_sfc_v3xx_io_modes", i1 false, i1 false}
!38 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 62, i32 18}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 112, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @hisi_sfc_v3xx_handle_completion._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @hisi_sfc_v3xx_handle_completion._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 117, i32 3}
!46 = !{ptr @hisi_sfc_v3xx_handle_completion._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @hisi_sfc_v3xx_handle_completion._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 127, i32 3}
!50 = !{ptr @hisi_sfc_v3xx_handle_completion._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @hisi_sfc_v3xx_handle_completion._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @hisi_sfc_v3xx_acpi_ids, !53, !"hisi_sfc_v3xx_acpi_ids", i1 false, i1 false}
!53 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 511, i32 36}
!54 = distinct !{null, !55, !"hisi_sfc_v3xx_dmi_quirk_table", i1 false, i1 false}
!55 = !{!"../drivers/spi/spi-hisi-sfc-v3xx.c", i32 401, i32 35}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2154239051}
!66 = !{i64 4504162}
!67 = !{i64 4504580}
!68 = !{i64 2154253690}
!69 = !{i64 2154254290}
!70 = !{i64 2154239466}
!71 = !{i64 2154249239}
!72 = !{i64 2154249686}
!73 = !{i64 2154250131}
!74 = !{i64 2154247786}
!75 = !{i64 2154248296}
!76 = !{i64 2154240610}
!77 = !{i64 2154239899}
