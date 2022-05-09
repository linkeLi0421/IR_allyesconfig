; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-tegra-bpmp.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-tegra-bpmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_bpmp_i2c = type { %struct.i2c_adapter, ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.mrq_i2c_response = type { %struct.cmd_i2c_xfer_response }
%struct.cmd_i2c_xfer_response = type { i32, [116 x i8] }
%struct.mrq_i2c_request = type { i32, %struct.cmd_i2c_xfer_request }
%struct.cmd_i2c_xfer_request = type { i32, i32, [108 x i8] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tegra_bpmp_message = type { i32, %struct.anon.90, %struct.anon.91 }
%struct.anon.90 = type { ptr, i32 }
%struct.anon.91 = type { ptr, i32, i32 }

@__initcall__kmod_i2c_tegra_bpmp__292_342_tegra_bpmp_i2c_driver_init6 = internal global ptr @tegra_bpmp_i2c_driver_init, section ".initcall6.init", align 4
@tegra_bpmp_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_bpmp_i2c_probe, ptr @tegra_bpmp_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_bpmp_i2c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_bpmp_i2c_driver_exit = internal global ptr @tegra_bpmp_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [71 x i8] c"i2c_tegra_bpmp.description=NVIDIA Tegra BPMP I2C bus controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [64 x i8] c"i2c_tegra_bpmp.author=Shardar Shariff Md <smohammed@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [39 x i8] c"i2c_tegra_bpmp.author=Juha-Matti Tilli\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [54 x i8] c"i2c_tegra_bpmp.file=drivers/i2c/busses/i2c-tegra-bpmp\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [30 x i8] c"i2c_tegra_bpmp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tegra-bpmp-i2c\00", [17 x i8] zeroinitializer }, align 32
@tegra_bpmp_i2c_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-bpmp-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nvidia,bpmp-bus-id\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Tegra BPMP I2C adapter\00", [41 x i8] zeroinitializer }, align 32
@tegra_bpmp_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @tegra_bpmp_i2c_xfer, ptr @tegra_bpmp_i2c_xfer_atomic, ptr null, ptr null, ptr @tegra_bpmp_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_bpmp_i2c_xfer_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 236, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unsupported message length\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_bpmp_i2c_xfer_common\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/i2c/busses/i2c-tegra-bpmp.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_bpmp_i2c_xfer_common._entry_ptr = internal global ptr @tegra_bpmp_i2c_xfer_common._entry, section ".printk_index", align 4
@tegra_bpmp_i2c_xfer_common._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 246, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to transfer message: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_bpmp_i2c_xfer_common._entry_ptr.10 = internal global ptr @tegra_bpmp_i2c_xfer_common._entry.8, section ".printk_index", align 4
@tegra_bpmp_i2c_xfer_common._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 252, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to deserialize message: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@tegra_bpmp_i2c_xfer_common._entry_ptr.13 = internal global ptr @tegra_bpmp_i2c_xfer_common._entry.11, section ".printk_index", align 4
@tegra_bpmp_i2c_msg_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.14, ptr @.str.5, i32 198, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_bpmp_i2c_msg_xfer\00", [40 x i8] zeroinitializer }, align 32
@tegra_bpmp_i2c_msg_xfer._entry_ptr = internal global ptr @tegra_bpmp_i2c_msg_xfer._entry, section ".printk_index", align 4
@tegra_bpmp_i2c_msg_xfer.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.14, ptr @.str.5, ptr @.str.16, i8 0, i8 51, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c_tegra_bpmp\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"arbitration lost\0A\00", [46 x i8] zeroinitializer }, align 32
@tegra_bpmp_i2c_msg_xfer.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.14, ptr @.str.5, ptr @.str.17, i8 0, i8 52, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timeout\0A\00", [23 x i8] zeroinitializer }, align 32
@tegra_bpmp_i2c_msg_xfer.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.14, ptr @.str.5, ptr @.str.18, i8 0, i8 53, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NAK\0A\00", [27 x i8] zeroinitializer }, align 32
@tegra_bpmp_i2c_msg_xfer._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.5, i32 218, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"transaction failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@tegra_bpmp_i2c_msg_xfer._entry_ptr.21 = internal global ptr @tegra_bpmp_i2c_msg_xfer._entry.19, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967156, i64 4294967273, i64 4294967285]
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"tegra_bpmp_i2c_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 334, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 336, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [24 x i8] c"tegra_bpmp_i2c_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 328, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 299, i32 48 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 308, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"tegra_bpmp_i2c_algo\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 277, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 236, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 246, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 252, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 198, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 204, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 209, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 214, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [39 x i8] c"../drivers/i2c/busses/i2c-tegra-bpmp.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 218, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_tegra_bpmp_i2c_driver_exit, ptr @__initcall__kmod_i2c_tegra_bpmp__292_342_tegra_bpmp_i2c_driver_init6, ptr @tegra_bpmp_i2c_driver_exit, ptr @tegra_bpmp_i2c_msg_xfer._entry, ptr @tegra_bpmp_i2c_msg_xfer._entry.19, ptr @tegra_bpmp_i2c_msg_xfer._entry_ptr, ptr @tegra_bpmp_i2c_msg_xfer._entry_ptr.21, ptr @tegra_bpmp_i2c_xfer_common._entry, ptr @tegra_bpmp_i2c_xfer_common._entry.11, ptr @tegra_bpmp_i2c_xfer_common._entry.8, ptr @tegra_bpmp_i2c_xfer_common._entry_ptr, ptr @tegra_bpmp_i2c_xfer_common._entry_ptr.10, ptr @tegra_bpmp_i2c_xfer_common._entry_ptr.13, ptr @tegra_bpmp_i2c_driver, ptr @.str, ptr @tegra_bpmp_i2c_of_match, ptr @.str.1, ptr @.str.2, ptr @tegra_bpmp_i2c_algo, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_i2c_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_i2c_xfer_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_i2c_xfer_common._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_i2c_xfer_common._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_i2c_msg_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_bpmp_i2c_msg_xfer._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_bpmp_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_bpmp_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_bpmp_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #8
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !67
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1376, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.tegra_bpmp_i2c, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev2, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %bpmp = getelementptr inbounds %struct.tegra_bpmp_i2c, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %bpmp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %bpmp, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #8
  %9 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 4
  %bus = getelementptr inbounds %struct.tegra_bpmp_i2c, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bus, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %call.i, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %call15 = call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.2, i32 noundef 48) #8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @tegra_bpmp_i2c_algo, ptr %algo, align 8
  %parent20 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %parent20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %parent20, align 8
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %of_node25 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %19 = ptrtoint ptr %of_node25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %of_node25, align 8
  %driver_data.i.i50 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i50 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i50, align 4
  %call27 = call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end12 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %9, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_i2c_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tegra_bpmp_i2c_xfer_common(ptr noundef %adapter, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_bpmp_i2c_xfer_atomic(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tegra_bpmp_i2c_xfer_common(ptr noundef %adapter, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_bpmp_i2c_func(ptr nocapture noundef readnone %adapter) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592735
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_bpmp_i2c_xfer_common(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msgs, i32 noundef %num, i1 noundef zeroext %atomic) unnamed_addr #2 align 64 {
entry:
  %response = alloca %struct.mrq_i2c_response, align 4
  %request = alloca %struct.mrq_i2c_request, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %response) #8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %request) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp45.not.i = icmp eq i32 %num, 0
  br i1 %cmp45.not.i, label %if.end.thread, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = call ptr @memset(ptr %request, i32 0, i32 120)
  %3 = call ptr @memset(ptr %response, i32 0, i32 120)
  br label %tegra_bpmp_serialize_i2c_msg.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.047.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %tx_len.046.i = phi i32 [ %tx_len.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %flags.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.047.i, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i, align 2
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not.i = icmp eq i16 %6, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %len.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.047.i, i32 2
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %len.i, align 4
  %conv2.i = zext i16 %8 to i32
  %add.i = add i32 %tx_len.046.i, 6
  %add3.i = add i32 %add.i, %conv2.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %tx_len.1.i = phi i32 [ %tx_len.046.i, %for.body.i.for.inc.i_crit_edge ], [ %add3.i, %if.then.i ]
  %inc.i = add nuw i32 %i.047.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %tx_len.1.i)
  %cmp4.i = icmp ugt i32 %tx_len.1.i, 108
  br i1 %cmp4.i, label %for.end.i.do.end_crit_edge, label %for.end.i.for.body11.i_crit_edge

for.end.i.for.body11.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body11.i

for.end.i.do.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body11.i:                                     ; preds = %for.inc23.i.for.body11.i_crit_edge, %for.end.i.for.body11.i_crit_edge
  %i.151.i = phi i32 [ %inc24.i, %for.inc23.i.for.body11.i_crit_edge ], [ 0, %for.end.i.for.body11.i_crit_edge ]
  %rx_len.050.i = phi i32 [ %rx_len.1.i, %for.inc23.i.for.body11.i_crit_edge ], [ 0, %for.end.i.for.body11.i_crit_edge ]
  %flags13.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.151.i, i32 1
  %9 = ptrtoint ptr %flags13.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags13.i, align 2
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool16.not.i = icmp eq i16 %11, 0
  br i1 %tobool16.not.i, label %for.body11.i.for.inc23.i_crit_edge, label %if.then17.i

for.body11.i.for.inc23.i_crit_edge:               ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc23.i

if.then17.i:                                      ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  %len19.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.151.i, i32 2
  %12 = ptrtoint ptr %len19.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %len19.i, align 4
  %conv20.i = zext i16 %13 to i32
  %add21.i = add i32 %rx_len.050.i, %conv20.i
  br label %for.inc23.i

for.inc23.i:                                      ; preds = %if.then17.i, %for.body11.i.for.inc23.i_crit_edge
  %rx_len.1.i = phi i32 [ %add21.i, %if.then17.i ], [ %rx_len.050.i, %for.body11.i.for.inc23.i_crit_edge ]
  %inc24.i = add nuw i32 %i.151.i, 1
  %exitcond54.not.i = icmp eq i32 %inc24.i, %num
  br i1 %exitcond54.not.i, label %for.end25.i, label %for.inc23.i.for.body11.i_crit_edge

for.inc23.i.for.body11.i_crit_edge:               ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body11.i

for.end25.i:                                      ; preds = %for.inc23.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 116, i32 %rx_len.1.i)
  %cmp26.i = icmp ugt i32 %rx_len.1.i, 116
  br i1 %cmp26.i, label %for.end25.i.do.end_crit_edge, label %for.body.i42.preheader

for.end25.i.do.end_crit_edge:                     ; preds = %for.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.end25.i.do.end_crit_edge, %for.end.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.tegra_bpmp_i2c, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.3) #11
  br label %cleanup

for.body.i42.preheader:                           ; preds = %for.end25.i
  %16 = call ptr @memset(ptr %request, i32 0, i32 120)
  %17 = call ptr @memset(ptr %response, i32 0, i32 120)
  %data_buf.i = getelementptr inbounds %struct.mrq_i2c_request, ptr %request, i32 0, i32 1, i32 2
  br label %for.body.i42

for.body.i42:                                     ; preds = %if.end.i.for.body.i42_crit_edge, %for.body.i42.preheader
  %pos.018.i = phi i32 [ %pos.2.i, %if.end.i.for.body.i42_crit_edge ], [ 0, %for.body.i42.preheader ]
  %i.015.i = phi i32 [ %inc49.i, %if.end.i.for.body.i42_crit_edge ], [ 0, %for.body.i42.preheader ]
  %arrayidx.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.015.i
  %flags1.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.015.i, i32 1
  %18 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags1.i, align 2
  %20 = and i16 %19, -1007
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx.i, align 4
  %conv2.i38 = trunc i16 %22 to i8
  %inc.i39 = add i32 %pos.018.i, 1
  %arrayidx3.i = getelementptr i8, ptr %data_buf.i, i32 %pos.018.i
  %23 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv2.i38, ptr %arrayidx3.i, align 1
  %24 = lshr i16 %22, 8
  %conv7.i = trunc i16 %24 to i8
  %inc8.i = add i32 %pos.018.i, 2
  %arrayidx9.i = getelementptr i8, ptr %data_buf.i, i32 %inc.i39
  %25 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv7.i, ptr %arrayidx9.i, align 1
  %conv12.i = trunc i16 %20 to i8
  %inc13.i = add i32 %pos.018.i, 3
  %arrayidx14.i = getelementptr i8, ptr %data_buf.i, i32 %inc8.i
  %26 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv12.i, ptr %arrayidx14.i, align 1
  %27 = lshr i16 %20, 8
  %conv18.i = trunc i16 %27 to i8
  %inc19.i = add i32 %pos.018.i, 4
  %arrayidx20.i = getelementptr i8, ptr %data_buf.i, i32 %inc13.i
  %28 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv18.i, ptr %arrayidx20.i, align 1
  %len.i40 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.015.i, i32 2
  %29 = ptrtoint ptr %len.i40 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %len.i40, align 4
  %conv23.i = trunc i16 %30 to i8
  %inc24.i41 = add i32 %pos.018.i, 5
  %arrayidx25.i = getelementptr i8, ptr %data_buf.i, i32 %inc19.i
  %31 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv23.i, ptr %arrayidx25.i, align 1
  %32 = lshr i16 %30, 8
  %conv30.i = trunc i16 %32 to i8
  %inc31.i = add i32 %pos.018.i, 6
  %arrayidx32.i = getelementptr i8, ptr %data_buf.i, i32 %inc24.i41
  %33 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv30.i, ptr %arrayidx32.i, align 1
  %34 = and i16 %19, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %cmp35.i = icmp ne i16 %34, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %cmp4011.not.i = icmp eq i16 %30, 0
  %or.cond = select i1 %cmp35.i, i1 true, i1 %cmp4011.not.i
  br i1 %or.cond, label %for.body.i42.if.end.i_crit_edge, label %for.body42.lr.ph.i

for.body.i42.if.end.i_crit_edge:                  ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.body42.lr.ph.i:                               ; preds = %for.body.i42
  %buf43.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.015.i, i32 3
  %35 = ptrtoint ptr %buf43.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buf43.i, align 4
  %conv39.i = zext i16 %30 to i32
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.body42.i.for.body42.i_crit_edge, %for.body42.lr.ph.i
  %pos.113.i = phi i32 [ %inc31.i, %for.body42.lr.ph.i ], [ %inc45.i, %for.body42.i.for.body42.i_crit_edge ]
  %j.012.i = phi i32 [ 0, %for.body42.lr.ph.i ], [ %inc47.i, %for.body42.i.for.body42.i_crit_edge ]
  %arrayidx44.i = getelementptr i8, ptr %36, i32 %j.012.i
  %37 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx44.i, align 1
  %inc45.i = add i32 %pos.113.i, 1
  %arrayidx46.i = getelementptr i8, ptr %data_buf.i, i32 %pos.113.i
  %39 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx46.i, align 1
  %inc47.i = add nuw nsw i32 %j.012.i, 1
  %exitcond.not = icmp eq i32 %inc47.i, %conv39.i
  br i1 %exitcond.not, label %for.body42.i.if.end.i_crit_edge, label %for.body42.i.for.body42.i_crit_edge

for.body42.i.for.body42.i_crit_edge:              ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body42.i

for.body42.i.if.end.i_crit_edge:                  ; preds = %for.body42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %for.body42.i.if.end.i_crit_edge, %for.body.i42.if.end.i_crit_edge
  %pos.2.i = phi i32 [ %inc31.i, %for.body.i42.if.end.i_crit_edge ], [ %inc45.i, %for.body42.i.if.end.i_crit_edge ]
  %inc49.i = add nuw i32 %i.015.i, 1
  %exitcond.not.i43 = icmp eq i32 %inc49.i, %num
  br i1 %exitcond.not.i43, label %if.end.i.tegra_bpmp_serialize_i2c_msg.exit_crit_edge, label %if.end.i.for.body.i42_crit_edge

if.end.i.for.body.i42_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i42

if.end.i.tegra_bpmp_serialize_i2c_msg.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tegra_bpmp_serialize_i2c_msg.exit

tegra_bpmp_serialize_i2c_msg.exit:                ; preds = %if.end.i.tegra_bpmp_serialize_i2c_msg.exit_crit_edge, %if.end.thread
  %pos.0.lcssa.i = phi i32 [ 0, %if.end.thread ], [ %pos.2.i, %if.end.i.tegra_bpmp_serialize_i2c_msg.exit_crit_edge ]
  %data_size.i = getelementptr inbounds %struct.mrq_i2c_request, ptr %request, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %data_size.i to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %pos.0.lcssa.i, ptr %data_size.i, align 1
  %call2 = call fastcc i32 @tegra_bpmp_i2c_msg_xfer(ptr noundef %1, ptr noundef nonnull %request, ptr noundef nonnull %response, i1 noundef zeroext %atomic)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end9

do.end7:                                          ; preds = %tegra_bpmp_serialize_i2c_msg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.tegra_bpmp_i2c, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev8, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.9, i32 noundef %call2) #11
  br label %cleanup

if.end9:                                          ; preds = %tegra_bpmp_serialize_i2c_msg.exit
  %43 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %response, align 4
  %data_buf.i44 = getelementptr inbounds %struct.cmd_i2c_xfer_response, ptr %response, i32 0, i32 1
  br i1 %cmp45.not.i, label %for.end.thread.i, label %if.end9.for.body.i47_crit_edge

if.end9.for.body.i47_crit_edge:                   ; preds = %if.end9
  br label %for.body.i47

for.body.i47:                                     ; preds = %for.inc.i52.for.body.i47_crit_edge, %if.end9.for.body.i47_crit_edge
  %i.03.i = phi i32 [ %inc.i50, %for.inc.i52.for.body.i47_crit_edge ], [ 0, %if.end9.for.body.i47_crit_edge ]
  %len.02.i = phi i32 [ %len.1.i, %for.inc.i52.for.body.i47_crit_edge ], [ 0, %if.end9.for.body.i47_crit_edge ]
  %flags.i45 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.03.i, i32 1
  %45 = ptrtoint ptr %flags.i45 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %flags.i45, align 2
  %47 = and i16 %46, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool.not.i46 = icmp eq i16 %47, 0
  br i1 %tobool.not.i46, label %for.body.i47.for.inc.i52_crit_edge, label %if.then.i49

for.body.i47.for.inc.i52_crit_edge:               ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i52

if.then.i49:                                      ; preds = %for.body.i47
  call void @__sanitizer_cov_trace_pc() #10
  %len3.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.03.i, i32 2
  %48 = ptrtoint ptr %len3.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %len3.i, align 4
  %conv4.i = zext i16 %49 to i32
  %add.i48 = add i32 %len.02.i, %conv4.i
  br label %for.inc.i52

for.inc.i52:                                      ; preds = %if.then.i49, %for.body.i47.for.inc.i52_crit_edge
  %len.1.i = phi i32 [ %add.i48, %if.then.i49 ], [ %len.02.i, %for.body.i47.for.inc.i52_crit_edge ]
  %inc.i50 = add nuw i32 %i.03.i, 1
  %exitcond.not.i51 = icmp eq i32 %inc.i50, %num
  br i1 %exitcond.not.i51, label %for.end.i55, label %for.inc.i52.for.body.i47_crit_edge

for.inc.i52.for.body.i47_crit_edge:               ; preds = %for.inc.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i47

for.end.i55:                                      ; preds = %for.inc.i52
  call void @__sanitizer_cov_trace_cmp4(i32 %len.1.i, i32 %44)
  %cmp5.not.i.not = icmp eq i32 %len.1.i, %44
  br i1 %cmp5.not.i.not, label %for.end.i55.for.body12.i_crit_edge, label %for.end.i55.do.end15_crit_edge

for.end.i55.do.end15_crit_edge:                   ; preds = %for.end.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

for.end.i55.for.body12.i_crit_edge:               ; preds = %for.end.i55
  br label %for.body12.i

for.end.thread.i:                                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp5.not11.i = icmp eq i32 %44, 0
  br i1 %cmp5.not11.i, label %for.end.thread.i.cleanup_crit_edge, label %for.end.thread.i.do.end15_crit_edge

for.end.thread.i.do.end15_crit_edge:              ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

for.end.thread.i.cleanup_crit_edge:               ; preds = %for.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body12.i:                                     ; preds = %for.inc29.i.for.body12.i_crit_edge, %for.end.i55.for.body12.i_crit_edge
  %i.17.i = phi i32 [ %inc30.i, %for.inc29.i.for.body12.i_crit_edge ], [ 0, %for.end.i55.for.body12.i_crit_edge ]
  %pos.06.i = phi i32 [ %pos.1.i, %for.inc29.i.for.body12.i_crit_edge ], [ 0, %for.end.i55.for.body12.i_crit_edge ]
  %flags14.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.17.i, i32 1
  %50 = ptrtoint ptr %flags14.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %flags14.i, align 2
  %52 = and i16 %51, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool17.not.i = icmp eq i16 %52, 0
  br i1 %tobool17.not.i, label %for.body12.i.for.inc29.i_crit_edge, label %if.then18.i

for.body12.i.for.inc29.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc29.i

if.then18.i:                                      ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #10
  %buf20.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.17.i, i32 3
  %53 = ptrtoint ptr %buf20.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %buf20.i, align 4
  %add.ptr.i = getelementptr i8, ptr %data_buf.i44, i32 %pos.06.i
  %len22.i = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.17.i, i32 2
  %55 = ptrtoint ptr %len22.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %len22.i, align 4
  %conv23.i57 = zext i16 %56 to i32
  %57 = call ptr @memcpy(ptr %54, ptr %add.ptr.i, i32 %conv23.i57)
  %58 = load i16, ptr %len22.i, align 4
  %conv26.i = zext i16 %58 to i32
  %add27.i = add i32 %pos.06.i, %conv26.i
  br label %for.inc29.i

for.inc29.i:                                      ; preds = %if.then18.i, %for.body12.i.for.inc29.i_crit_edge
  %pos.1.i = phi i32 [ %add27.i, %if.then18.i ], [ %pos.06.i, %for.body12.i.for.inc29.i_crit_edge ]
  %inc30.i = add nuw i32 %i.17.i, 1
  %exitcond9.not.i = icmp eq i32 %inc30.i, %num
  br i1 %exitcond9.not.i, label %for.inc29.i.cleanup_crit_edge, label %for.inc29.i.for.body12.i_crit_edge

for.inc29.i.for.body12.i_crit_edge:               ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12.i

for.inc29.i.cleanup_crit_edge:                    ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end15:                                         ; preds = %for.end.thread.i.do.end15_crit_edge, %for.end.i55.do.end15_crit_edge
  %dev16 = getelementptr inbounds %struct.tegra_bpmp_i2c, ptr %1, i32 0, i32 1
  %59 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev16, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.12, i32 noundef -22) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %for.inc29.i.cleanup_crit_edge, %for.end.thread.i.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %do.end7 ], [ -22, %do.end15 ], [ 0, %for.end.thread.i.cleanup_crit_edge ], [ %num, %for.inc29.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %request) #8
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %response) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_bpmp_i2c_msg_xfer(ptr nocapture noundef readonly %i2c, ptr noundef %request, ptr noundef %response, i1 noundef zeroext %atomic) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.tegra_bpmp_message, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #8
  %0 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg, i32 0, i32 1, i32 1
  %2 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg, i32 0, i32 2
  %3 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg, i32 0, i32 2, i32 1
  %4 = getelementptr inbounds %struct.tegra_bpmp_message, ptr %msg, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %request to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 1, ptr %request, align 1
  %bus = getelementptr inbounds %struct.tegra_bpmp_i2c, ptr %i2c, i32 0, i32 3
  %6 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bus, align 8
  %xfer = getelementptr inbounds %struct.mrq_i2c_request, ptr %request, i32 0, i32 1
  %8 = ptrtoint ptr %xfer to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %xfer, align 1
  %9 = getelementptr inbounds i8, ptr %msg, i32 20
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 21, ptr %msg, align 4
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %request, ptr %0, align 4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 120, ptr %1, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %response, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 120, ptr %3, align 4
  %bpmp = getelementptr inbounds %struct.tegra_bpmp_i2c, ptr %i2c, i32 0, i32 2
  %16 = ptrtoint ptr %bpmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bpmp, align 4
  br i1 %atomic, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = call i32 @tegra_bpmp_transfer_atomic(ptr noundef %17, ptr noundef nonnull %msg) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = call i32 @tegra_bpmp_transfer(ptr noundef %17, ptr noundef nonnull %msg) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call, %if.then ], [ %call6, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.tegra_bpmp_i2c, ptr %i2c, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.9, i32 noundef %err.0) #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %4, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.end79 [
    i32 0, label %if.end8.cleanup_crit_edge
    i32 -11, label %do.body16
    i32 -23, label %do.body33
    i32 -140, label %do.body57
  ]

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_bpmp_i2c_msg_xfer.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_bpmp_i2c_msg_xfer, %cleanup)) #8
          to label %if.then23 [label %cleanup], !srcloc !68

if.then23:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %dev24 = getelementptr inbounds %struct.tegra_bpmp_i2c, ptr %i2c, i32 0, i32 1
  %23 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev24, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_bpmp_i2c_msg_xfer.__UNIQUE_ID_ddebug289, ptr noundef %24, ptr noundef nonnull @.str.16) #8
  br label %cleanup

do.body33:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_bpmp_i2c_msg_xfer.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_bpmp_i2c_msg_xfer, %cleanup)) #8
          to label %if.then47 [label %cleanup], !srcloc !68

if.then47:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #10
  %dev48 = getelementptr inbounds %struct.tegra_bpmp_i2c, ptr %i2c, i32 0, i32 1
  %25 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev48, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_bpmp_i2c_msg_xfer.__UNIQUE_ID_ddebug290, ptr noundef %26, ptr noundef nonnull @.str.17) #8
  br label %cleanup

do.body57:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_bpmp_i2c_msg_xfer.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_bpmp_i2c_msg_xfer, %cleanup)) #8
          to label %if.then71 [label %cleanup], !srcloc !68

if.then71:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #10
  %dev72 = getelementptr inbounds %struct.tegra_bpmp_i2c, ptr %i2c, i32 0, i32 1
  %27 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev72, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_bpmp_i2c_msg_xfer.__UNIQUE_ID_ddebug291, ptr noundef %28, ptr noundef nonnull @.str.18) #8
  br label %cleanup

do.end79:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev80 = getelementptr inbounds %struct.tegra_bpmp_i2c, ptr %i2c, i32 0, i32 1
  %29 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev80, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.20, i32 noundef %21) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end79, %if.then71, %do.body57, %if.then47, %do.body33, %if.then23, %do.body16, %if.end8.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.0, %do.end ], [ -5, %do.end79 ], [ -11, %if.then23 ], [ -110, %if.then47 ], [ -6, %if.then71 ], [ %21, %if.end8.cleanup_crit_edge ], [ -11, %do.body16 ], [ -110, %do.body33 ], [ -6, %do.body57 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_bpmp_transfer_atomic(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_bpmp_transfer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !54, !55, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_i2c_tegra_bpmp__292_342_tegra_bpmp_i2c_driver_init6, !1, !"__initcall__kmod_i2c_tegra_bpmp__292_342_tegra_bpmp_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 342, i32 1}
!2 = !{ptr @__exitcall_tegra_bpmp_i2c_driver_exit, !1, !"__exitcall_tegra_bpmp_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description293, !4, !"__UNIQUE_ID_description293", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 344, i32 1}
!5 = !{ptr @__UNIQUE_ID_author294, !6, !"__UNIQUE_ID_author294", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 345, i32 1}
!7 = !{ptr @__UNIQUE_ID_author295, !8, !"__UNIQUE_ID_author295", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 346, i32 1}
!9 = !{ptr @__UNIQUE_ID_file296, !10, !"__UNIQUE_ID_file296", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 347, i32 1}
!11 = !{ptr @__UNIQUE_ID_license297, !10, !"__UNIQUE_ID_license297", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 336, i32 11}
!14 = !{ptr @tegra_bpmp_i2c_driver, !15, !"tegra_bpmp_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 334, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 299, i32 48}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 308, i32 29}
!20 = !{ptr @tegra_bpmp_i2c_algo, !21, !"tegra_bpmp_i2c_algo", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 277, i32 35}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 236, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @tegra_bpmp_i2c_xfer_common._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @tegra_bpmp_i2c_xfer_common._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 246, i32 3}
!32 = !{ptr @tegra_bpmp_i2c_xfer_common._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tegra_bpmp_i2c_xfer_common._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 252, i32 3}
!36 = !{ptr @tegra_bpmp_i2c_xfer_common._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tegra_bpmp_i2c_xfer_common._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 198, i32 3}
!40 = !{ptr @tegra_bpmp_i2c_msg_xfer._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tegra_bpmp_i2c_msg_xfer._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 204, i32 4}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @tegra_bpmp_i2c_msg_xfer.__UNIQUE_ID_ddebug289, !43, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 209, i32 4}
!48 = !{ptr @tegra_bpmp_i2c_msg_xfer.__UNIQUE_ID_ddebug290, !47, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 214, i32 4}
!51 = !{ptr @tegra_bpmp_i2c_msg_xfer.__UNIQUE_ID_ddebug291, !50, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 218, i32 3}
!54 = !{ptr @tegra_bpmp_i2c_msg_xfer._entry.19, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @tegra_bpmp_i2c_msg_xfer._entry_ptr.21, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @tegra_bpmp_i2c_of_match, !57, !"tegra_bpmp_i2c_of_match", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-tegra-bpmp.c", i32 328, i32 34}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{!"auto-init"}
!68 = !{i64 2148993851, i64 2148993856, i64 2148993869, i64 2148993913, i64 2148993947, i64 2148993968}
