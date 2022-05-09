; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-nvidia-gpu.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-nvidia-gpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.software_node = type { ptr, ptr, ptr }
%struct.property_entry = type { ptr, i32, i8, i32, %union.anon.85 }
%union.anon.85 = type { %union.anon.86 }
%union.anon.86 = type { [1 x i64] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.gpu_i2c_dev = type { ptr, ptr, %struct.i2c_adapter, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__initcall__kmod_i2c_nvidia_gpu__293_390_gpu_i2c_driver_init6 = internal global ptr @gpu_i2c_driver_init, section ".initcall6.init", align 4
@gpu_i2c_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @gpu_i2c_ids, ptr @gpu_i2c_probe, ptr @gpu_i2c_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpu_i2c_driver_pm, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_gpu_i2c_driver_exit = internal global ptr @gpu_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [52 x i8] c"i2c_nvidia_gpu.author=Ajay Gupta <ajayg@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [60 x i8] c"i2c_nvidia_gpu.description=Nvidia GPU I2C controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [54 x i8] c"i2c_nvidia_gpu.file=drivers/i2c/busses/i2c-nvidia-gpu\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [30 x i8] c"i2c_nvidia_gpu.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c_nvidia_gpu\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvidia-gpu\00", [21 x i8] zeroinitializer }, align 32
@gpu_i2c_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4318, i32 -1, i32 -1, i32 -1, i32 819200, i32 -256, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gpu_i2c_driver_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @gpu_i2c_resume, ptr null, ptr @gpu_i2c_resume, ptr null, ptr @gpu_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpu_i2c_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@gpu_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 300, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pcim_enable_device failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpu_i2c_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/i2c/busses/i2c-nvidia-gpu.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpu_i2c_probe._entry_ptr = internal global ptr @gpu_i2c_probe._entry, section ".printk_index", align 4
@gpu_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 308, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcim_iomap failed\0A\00", [45 x i8] zeroinitializer }, align 32
@gpu_i2c_probe._entry_ptr.9 = internal global ptr @gpu_i2c_probe._entry.7, section ".printk_index", align 4
@gpu_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 314, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pci_alloc_irq_vectors err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@gpu_i2c_probe._entry_ptr.12 = internal global ptr @gpu_i2c_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NVIDIA GPU I2C adapter\00", [41 x i8] zeroinitializer }, align 32
@gpu_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @gpu_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @gpu_i2c_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gpu_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 15, i32 0, i16 0, i16 4, i16 0, i16 4 }, [40 x i8] zeroinitializer }, align 32
@gpu_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 333, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gpu_populate_client failed %d\0A\00", [33 x i8] zeroinitializer }, align 32
@gpu_i2c_probe._entry_ptr.16 = internal global ptr @gpu_i2c_probe._entry.14, section ".printk_index", align 4
@gpu_i2c_master_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"i2c stop failed %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gpu_i2c_master_xfer\00", [44 x i8] zeroinitializer }, align 32
@gpu_i2c_master_xfer._entry_ptr = internal global ptr @gpu_i2c_master_xfer._entry, section ".printk_index", align 4
@gpu_i2c_check_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.4, i32 88, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i2c timeout error %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gpu_i2c_check_status\00", [43 x i8] zeroinitializer }, align 32
@gpu_i2c_check_status._entry_ptr = internal global ptr @gpu_i2c_check_status._entry, section ".printk_index", align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ccgx-ucsi\00", [22 x i8] zeroinitializer }, align 32
@ccgx_node = internal constant { %struct.software_node, [20 x i8] } { %struct.software_node { ptr null, ptr null, ptr @ccgx_props }, [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ccgx,firmware-build\00", [44 x i8] zeroinitializer }, align 32
@ccgx_props = internal constant { <{ { ptr, i32, i8, i32, { { [4 x i16] } } }, %struct.property_entry }>, [48 x i8] } { <{ { ptr, i32, i8, i32, { { [4 x i16] } } }, %struct.property_entry }> <{ { ptr, i32, i8, i32, { { [4 x i16] } } } { ptr @.str.22, i32 2, i8 1, i32 1, { { [4 x i16] } } { { [4 x i16] } { [4 x i16] [i16 28278, i16 0, i16 0, i16 0] } } }, %struct.property_entry zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"gpu_i2c_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 380, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 390, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 381, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [12 x i8] c"gpu_i2c_ids\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 252, i32 35 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"gpu_i2c_driver_pm\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 377, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 300, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 308, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 314, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 322, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"gpu_i2c_algorithm\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 233, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant [15 x i8] c"gpu_i2c_quirks\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 222, i32 40 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 333, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 215, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 88, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 277, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant [10 x i8] c"ccgx_node\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 265, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 261, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [11 x i8] c"ccgx_props\00", align 1
@___asan_gen_.112 = private constant [39 x i8] c"../drivers/i2c/busses/i2c-nvidia-gpu.c\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.112, i32 259, i32 36 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_gpu_i2c_driver_exit, ptr @__initcall__kmod_i2c_nvidia_gpu__293_390_gpu_i2c_driver_init6, ptr @gpu_i2c_check_status._entry, ptr @gpu_i2c_check_status._entry_ptr, ptr @gpu_i2c_driver_exit, ptr @gpu_i2c_master_xfer._entry, ptr @gpu_i2c_master_xfer._entry_ptr, ptr @gpu_i2c_probe._entry, ptr @gpu_i2c_probe._entry.10, ptr @gpu_i2c_probe._entry.14, ptr @gpu_i2c_probe._entry.7, ptr @gpu_i2c_probe._entry_ptr, ptr @gpu_i2c_probe._entry_ptr.12, ptr @gpu_i2c_probe._entry_ptr.16, ptr @gpu_i2c_probe._entry_ptr.9, ptr @gpu_i2c_driver, ptr @.str, ptr @.str.1, ptr @gpu_i2c_ids, ptr @gpu_i2c_driver_pm, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @gpu_i2c_algorithm, ptr @gpu_i2c_quirks, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @ccgx_node, ptr @.str.22, ptr @ccgx_props], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_i2c_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_i2c_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_i2c_driver_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_i2c_master_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_i2c_check_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccgx_node to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccgx_props to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpu_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @gpu_i2c_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpu_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @gpu_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpu_i2c_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1376, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 8
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call4 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call4) #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #8
  %call8 = tail call ptr @pcim_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.gpu_i2c_dev, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call8, ptr %regs, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %call.i94 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 1, i32 noundef 1, i32 noundef 2, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp18 = icmp slt i32 %call.i94, 0
  br i1 %cmp18, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call.i94) #11
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  %6 = or i32 %5, 29360128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr3.i = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %6) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr10.i = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 235011841) #8, !srcloc !75
  %adapter = getelementptr inbounds %struct.gpu_i2c_dev, ptr %call.i, i32 0, i32 2
  %driver_data.i.i = getelementptr inbounds %struct.gpu_i2c_dev, ptr %call.i, i32 0, i32 2, i32 9, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %adapter, align 8
  %name = getelementptr inbounds %struct.gpu_i2c_dev, ptr %call.i, i32 0, i32 2, i32 12
  %call27 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.13, i32 noundef 48) #8
  %algo = getelementptr inbounds %struct.gpu_i2c_dev, ptr %call.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @gpu_i2c_algorithm, ptr %algo, align 8
  %quirks = getelementptr inbounds %struct.gpu_i2c_dev, ptr %call.i, i32 0, i32 2, i32 17
  %14 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @gpu_i2c_quirks, ptr %quirks, align 8
  %parent = getelementptr inbounds %struct.gpu_i2c_dev, ptr %call.i, i32 0, i32 2, i32 9, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %parent, align 8
  %call34 = tail call i32 @i2c_add_adapter(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.end24.free_irq_vectors_crit_edge, label %if.end37

if.end24.free_irq_vectors_crit_edge:              ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_irq_vectors

if.end37:                                         ; preds = %if.end24
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %19, i32 noundef 56, i32 noundef 3520) #8
  %gpu_ccgx_ucsi.i = getelementptr inbounds %struct.gpu_i2c_dev, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %gpu_ccgx_ucsi.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %gpu_ccgx_ucsi.i, align 8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end37.do.end43_crit_edge, label %if.end.i

if.end37.do.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

if.end.i:                                         ; preds = %if.end37
  %call3.i = tail call i32 @strlcpy(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.21, i32 noundef 20) #8
  %21 = ptrtoint ptr %gpu_ccgx_ucsi.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpu_ccgx_ucsi.i, align 8
  %addr.i = getelementptr inbounds %struct.i2c_board_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 8, ptr %addr.i, align 2
  %24 = load ptr, ptr %gpu_ccgx_ucsi.i, align 8
  %irq6.i = getelementptr inbounds %struct.i2c_board_info, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %irq6.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %17, ptr %irq6.i, align 4
  %26 = load ptr, ptr %gpu_ccgx_ucsi.i, align 8
  %swnode.i = getelementptr inbounds %struct.i2c_board_info, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %swnode.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ccgx_node, ptr %swnode.i, align 4
  %28 = load ptr, ptr %gpu_ccgx_ucsi.i, align 8
  %call9.i = tail call ptr @i2c_new_client_device(ptr noundef %adapter, ptr noundef %28) #8
  %ccgx_client.i = getelementptr inbounds %struct.gpu_i2c_dev, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %ccgx_client.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call9.i, ptr %ccgx_client.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  %30 = ptrtoint ptr %call9.i to i32
  %cmp39 = icmp slt ptr %call9.i, null
  %or.cond = and i1 %cmp.i.i.i, %cmp39
  br i1 %or.cond, label %if.end.i.do.end43_crit_edge, label %if.end45

if.end.i.do.end43_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

do.end43:                                         ; preds = %if.end.i.do.end43_crit_edge, %if.end37.do.end43_crit_edge
  %retval.0.i98 = phi i32 [ -12, %if.end37.do.end43_crit_edge ], [ %30, %if.end.i.do.end43_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i98) #11
  tail call void @i2c_del_adapter(ptr noundef %adapter) #8
  br label %free_irq_vectors

if.end45:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef 3000) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext true) #8
  %call.i95 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 13) #8
  tail call void @pm_runtime_allow(ptr noundef %dev) #8
  br label %cleanup

free_irq_vectors:                                 ; preds = %do.end43, %if.end24.free_irq_vectors_crit_edge
  %status.0 = phi i32 [ %call34, %if.end24.free_irq_vectors_crit_edge ], [ %retval.0.i98, %do.end43 ]
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #8
  br label %cleanup

cleanup:                                          ; preds = %free_irq_vectors, %if.end45, %do.end22, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call.i94, %do.end22 ], [ %status.0, %free_irq_vectors ], [ 0, %if.end45 ], [ -12, %do.end14 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpu_i2c_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !77
  %adapter = getelementptr inbounds %struct.gpu_i2c_dev, ptr %1, i32 0, i32 2
  tail call void @i2c_del_adapter(ptr noundef %adapter) #8
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpu_i2c_master_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp149 = icmp sgt i32 %num, 0
  br i1 %cmp149, label %for.body.lr.ph, label %entry.exit.thread_crit_edge

entry.exit.thread_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.thread

for.body.lr.ph:                                   ; preds = %entry
  %regs = getelementptr inbounds %struct.gpu_i2c_dev, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc43.for.body_crit_edge, %for.body.lr.ph
  %i.0150 = phi i32 [ 0, %for.body.lr.ph ], [ %inc44, %for.inc43.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0150
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0150, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 4
  %conv3 = zext i16 %8 to i32
  %9 = tail call i32 @llvm.bswap.i32(i32 %conv3)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #8, !srcloc !75
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0150, i32 3
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buf, align 4
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0150, i32 2
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len, align 4
  %conv.i = zext i16 %15 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 6
  %or2.i = or i32 %shl.i, -1879048187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  %16 = tail call i32 @llvm.bswap.i32(i32 %or2.i) #8
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %16) #8, !srcloc !75
  %call.i116 = tail call fastcc i32 @gpu_i2c_check_status(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %cmp.i = icmp slt i32 %call.i116, 0
  br i1 %cmp.i, label %do.body.if.then52_crit_edge, label %if.end.i

do.body.if.then52_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

if.end.i:                                         ; preds = %do.body
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr5.i = getelementptr i8, ptr %20, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !72
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %23 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i16 %15, label %if.end.i.for.inc43_crit_edge [
    i16 1, label %sw.bb.i
    i16 2, label %sw.bb10.i
    i16 3, label %sw.bb12.i
    i16 4, label %sw.bb13.i
  ]

if.end.i.for.inc43_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i = trunc i32 %22 to i8
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv9.i, ptr %13, align 1
  br label %for.inc43

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv11.i = trunc i32 %22 to i16
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 2)
  store i16 %conv11.i, ptr %13, align 1
  br label %for.inc43

sw.bb12.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i.i.i = lshr i32 %22, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i8
  %incdec.ptr.i.i.i = getelementptr i8, ptr %13, i32 1
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv.i.i.i, ptr %13, align 1
  %shr1.i.i.i = lshr i32 %22, 8
  %conv2.i.i.i = trunc i32 %shr1.i.i.i to i8
  %incdec.ptr3.i.i.i = getelementptr i8, ptr %13, i32 2
  %27 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv2.i.i.i, ptr %incdec.ptr.i.i.i, align 1
  %conv4.i.i.i = trunc i32 %22 to i8
  %28 = ptrtoint ptr %incdec.ptr3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv4.i.i.i, ptr %incdec.ptr3.i.i.i, align 1
  br label %for.inc43

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 4)
  store i32 %22, ptr %13, align 1
  br label %for.inc43

if.else:                                          ; preds = %for.body
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx, align 4
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 16777216) #8, !srcloc !75
  %call.i120 = tail call fastcc i32 @gpu_i2c_check_status(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp14 = icmp slt i32 %call.i120, 0
  br i1 %cmp14, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0150)
  %cmp17.not = icmp eq i32 %i.0150, 0
  br i1 %cmp17.not, label %if.then16.cleanup66_crit_edge, label %if.then16.if.then52_crit_edge

if.then16.if.then52_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

if.then16.cleanup66_crit_edge:                    ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

if.end21:                                         ; preds = %if.else
  %36 = and i16 %33, 1
  %37 = zext i16 %36 to i32
  %conv.i117 = zext i16 %31 to i32
  %shl.i118 = shl nuw nsw i32 %conv.i117, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %shl.i118.masked = and i32 %shl.i118, 254
  %conv.i121 = or i32 %shl.i118.masked, %37
  %38 = shl nuw i32 %conv.i121, 24
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %38) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 1207959552) #8, !srcloc !75
  %call.i123 = tail call fastcc i32 @gpu_i2c_check_status(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %cmp23 = icmp slt i32 %call.i123, 0
  br i1 %cmp23, label %if.end21.if.then52_crit_edge, label %for.cond27.preheader

if.end21.if.then52_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

for.cond27.preheader:                             ; preds = %if.end21
  %len29 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0150, i32 2
  %43 = ptrtoint ptr %len29 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %len29, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp31147.not = icmp eq i16 %44, 0
  br i1 %cmp31147.not, label %for.cond27.preheader.for.inc43_crit_edge, label %for.body33.lr.ph

for.cond27.preheader.for.inc43_crit_edge:         ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43

for.body33.lr.ph:                                 ; preds = %for.cond27.preheader
  %buf35 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0150, i32 3
  br label %for.body33

for.cond27:                                       ; preds = %for.body33
  %inc = add nuw nsw i32 %j.0148, 1
  %45 = ptrtoint ptr %len29 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %len29, align 4
  %conv30 = zext i16 %46 to i32
  %cmp31 = icmp ult i32 %inc, %conv30
  br i1 %cmp31, label %for.cond27.for.body33_crit_edge, label %for.cond27.for.inc43_crit_edge

for.cond27.for.inc43_crit_edge:                   ; preds = %for.cond27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc43

for.cond27.for.body33_crit_edge:                  ; preds = %for.cond27
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body33

for.body33:                                       ; preds = %for.cond27.for.body33_crit_edge, %for.body33.lr.ph
  %j.0148 = phi i32 [ 0, %for.body33.lr.ph ], [ %inc, %for.cond27.for.body33_crit_edge ]
  %47 = ptrtoint ptr %buf35 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buf35, align 4
  %arrayidx36 = getelementptr i8, ptr %48, i32 %j.0148
  %49 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx36, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !82
  tail call void @arm_heavy_mb() #8
  %conv.i124 = zext i8 %50 to i32
  %51 = shl nuw i32 %conv.i124, 24
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 4
  %add.ptr.i126 = getelementptr i8, ptr %53, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %51) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 1207959552) #8, !srcloc !75
  %call.i127 = tail call fastcc i32 @gpu_i2c_check_status(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %cmp38 = icmp slt i32 %call.i127, 0
  br i1 %cmp38, label %for.body33.if.then52_crit_edge, label %for.cond27

for.body33.if.then52_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

for.inc43:                                        ; preds = %for.cond27.for.inc43_crit_edge, %for.cond27.preheader.for.inc43_crit_edge, %sw.bb13.i, %sw.bb12.i, %sw.bb10.i, %sw.bb.i, %if.end.i.for.inc43_crit_edge
  %inc44 = add nuw nsw i32 %i.0150, 1
  %exitcond.not = icmp eq i32 %inc44, %num
  br i1 %exitcond.not, label %for.inc43.exit.thread_crit_edge, label %for.inc43.for.body_crit_edge

for.inc43.for.body_crit_edge:                     ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc43.exit.thread_crit_edge:                  ; preds = %for.inc43
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit.thread

exit.thread:                                      ; preds = %for.inc43.exit.thread_crit_edge, %entry.exit.thread_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.exit.thread_crit_edge ], [ %num, %for.inc43.exit.thread_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  %regs.i128 = getelementptr inbounds %struct.gpu_i2c_dev, ptr %1, i32 0, i32 1
  %56 = ptrtoint ptr %regs.i128 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs.i128, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 33554432) #8, !srcloc !75
  %call.i129 = tail call fastcc i32 @gpu_i2c_check_status(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %cmp47 = icmp slt i32 %call.i129, 0
  %spec.select115 = select i1 %cmp47, i32 %call.i129, i32 %i.0.lcssa
  br label %cleanup66

if.then52:                                        ; preds = %for.body33.if.then52_crit_edge, %if.end21.if.then52_crit_edge, %if.then16.if.then52_crit_edge, %do.body.if.then52_crit_edge
  %status.2140 = phi i32 [ %call.i120, %if.then16.if.then52_crit_edge ], [ %call.i127, %for.body33.if.then52_crit_edge ], [ %call.i116, %do.body.if.then52_crit_edge ], [ %call.i123, %if.end21.if.then52_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !84
  tail call void @arm_heavy_mb() #8
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 33554432) #8, !srcloc !75
  %call.i131 = tail call fastcc i32 @gpu_i2c_check_status(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %cmp54 = icmp slt i32 %call.i131, 0
  br i1 %cmp54, label %do.end59, label %if.then52.cleanup66_crit_edge

if.then52.cleanup66_crit_edge:                    ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

do.end59:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.17, i32 noundef %call.i131) #11
  br label %cleanup66

cleanup66:                                        ; preds = %do.end59, %if.then52.cleanup66_crit_edge, %exit.thread, %if.then16.cleanup66_crit_edge
  %status.2139 = phi i32 [ %spec.select115, %exit.thread ], [ %status.2140, %if.then52.cleanup66_crit_edge ], [ %status.2140, %do.end59 ], [ %call.i120, %if.then16.cleanup66_crit_edge ]
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %call.i132 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %63, i32 0, i32 12, i32 22
  %64 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store volatile i64 %call.i132, ptr %last_busy.i, align 8
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 8
  %call.i133 = tail call i32 @__pm_runtime_suspend(ptr noundef %66, i32 noundef 13) #8
  ret i32 %status.2139
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gpu_i2c_functionality(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpu_i2c_check_status(ptr nocapture noundef readonly %i2cd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 85) #8
  %regs = getelementptr inbounds %struct.gpu_i2c_dev, ptr %i2cd, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !72
  %3 = shl i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870913, i32 %3)
  %4 = icmp ugt i32 %3, -536870913
  br i1 %4, label %entry.land.lhs.true_crit_edge, label %entry.if.end40_crit_edge

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then28.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call15 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then28

if.then28:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 126, i32 noundef 500, i32 noundef 2) #8
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #8, !srcloc !72
  %8 = shl i32 %7, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !85
  %9 = icmp ugt i32 %8, -536870913
  br i1 %9, label %if.then28.land.lhs.true_crit_edge, label %if.then28.if.end40_crit_edge

if.then28.if.end40_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then28.land.lhs.true_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %land.lhs.true
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !72
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870913, i32 %13)
  %.not = icmp ugt i32 %13, -536870913
  br i1 %.not, label %do.end39, label %for.end.if.end40_crit_edge

for.end.if.end40_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.end39:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %i2cd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2cd, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.19, i32 noundef %13) #11
  br label %cleanup

if.end40:                                         ; preds = %for.end.if.end40_crit_edge, %if.then28.if.end40_crit_edge, %entry.if.end40_crit_edge
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !72
  %19 = shl i32 %18, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !87
  %and48 = and i32 %19, 1610612736
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %and48)
  %switch.selectcmp = icmp eq i32 %and48, 536870912
  %switch.select = select i1 %switch.selectcmp, i32 -6, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %and48)
  %switch.selectcmp64 = icmp eq i32 %and48, 1073741824
  %switch.select65 = select i1 %switch.selectcmp64, i32 -110, i32 %switch.select
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end39
  %retval.0 = phi i32 [ -110, %do.end39 ], [ %switch.select65, %if.end40 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpu_i2c_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %regs.i = getelementptr inbounds %struct.gpu_i2c_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  %5 = or i32 %4, 29360128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %5) #8, !srcloc !75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !76
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 235011841) #8, !srcloc !75
  %ccgx_client = getelementptr inbounds %struct.gpu_i2c_dev, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %ccgx_client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ccgx_client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 1) #8
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !46, !48, !49, !50, !51, !53, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_i2c_nvidia_gpu__293_390_gpu_i2c_driver_init6, !1, !"__initcall__kmod_i2c_nvidia_gpu__293_390_gpu_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 390, i32 1}
!2 = !{ptr @__exitcall_gpu_i2c_driver_exit, !1, !"__exitcall_gpu_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author294, !4, !"__UNIQUE_ID_author294", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 392, i32 1}
!5 = !{ptr @__UNIQUE_ID_description295, !6, !"__UNIQUE_ID_description295", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 393, i32 1}
!7 = !{ptr @__UNIQUE_ID_file296, !8, !"__UNIQUE_ID_file296", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 394, i32 1}
!9 = !{ptr @__UNIQUE_ID_license297, !8, !"__UNIQUE_ID_license297", i1 false, i1 false}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 381, i32 11}
!13 = !{ptr @gpu_i2c_driver, !14, !"gpu_i2c_driver", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 380, i32 26}
!15 = !{ptr @gpu_i2c_ids, !16, !"gpu_i2c_ids", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 252, i32 35}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 300, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @gpu_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @gpu_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 308, i32 3}
!27 = !{ptr @gpu_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @gpu_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 314, i32 3}
!31 = !{ptr @gpu_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @gpu_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 322, i32 30}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 333, i32 3}
!37 = !{ptr @gpu_i2c_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @gpu_i2c_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @gpu_i2c_algorithm, !40, !"gpu_i2c_algorithm", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 233, i32 35}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 215, i32 4}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @gpu_i2c_master_xfer._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @gpu_i2c_master_xfer._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 88, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @gpu_i2c_check_status._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @gpu_i2c_check_status._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @gpu_i2c_quirks, !52, !"gpu_i2c_quirks", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 222, i32 40}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 277, i32 37}
!55 = !{ptr @ccgx_node, !56, !"ccgx_node", i1 false, i1 false}
!56 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 265, i32 35}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 261, i32 2}
!59 = !{ptr @ccgx_props, !60, !"ccgx_props", i1 false, i1 false}
!60 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 259, i32 36}
!61 = !{ptr @gpu_i2c_driver_pm, !62, !"gpu_i2c_driver_pm", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-nvidia-gpu.c", i32 377, i32 8}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 6839674}
!73 = !{i64 2155940129}
!74 = !{i64 2155940598}
!75 = !{i64 6839256}
!76 = !{i64 2155941089}
!77 = !{i64 2148197361, i64 2148197387, i64 2148197416, i64 2148197450, i64 2148197481, i64 2148197504}
!78 = !{i64 2155951671}
!79 = !{i64 2155948823}
!80 = !{i64 2155949489}
!81 = !{i64 2155949814}
!82 = !{i64 2155950853}
!83 = !{i64 2155951261}
!84 = !{i64 2155950386}
!85 = !{i64 2155945040}
!86 = !{i64 2155945526}
!87 = !{i64 2155947615}
