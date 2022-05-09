; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c_pt.bc'
source_filename = "../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.amdgpu_rlc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@smu_v11_0_i2c_control_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&adev->pm.smu_i2c_mutex\00", [40 x i8] zeroinitializer }, align 32
@smu_v11_0_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @smu_v11_0_i2c_xfer, ptr null, ptr null, ptr null, ptr @smu_v11_0_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AMDGPU SMU\00", [21 x i8] zeroinitializer }, align 32
@smu_v11_0_i2c_i2c_lock_ops = internal constant { %struct.i2c_lock_operations, [20 x i8] } { %struct.i2c_lock_operations { ptr @lock_bus, ptr @trylock_bus, ptr @unlock_bus }, [20 x i8] zeroinitializer }, align 32
@smu_v11_0_i2c_control_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 96, i32 0, i16 0, i16 0, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to register hw i2c, err: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@smu_v11_0_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\014[drm] I2C busy !\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"smu_v11_0_i2c_init\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c\00", [53 x i8] zeroinitializer }, align 32
@smu_v11_0_i2c_init._entry_ptr = internal global ptr @smu_v11_0_i2c_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"I2C_Abort() Done.\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ReadData() - I2C error occurred :%x\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"TIMEOUT ERROR !!!\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Received I2C_NAK_7B_ADDR_NOACK !!!\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Received I2C_NAK_TXDATA_NOACK !!!\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"I2C_Receive(), address = %x, bytes = %d, data :\00", [48 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"data: \00", [25 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"WriteI2CData() - I2C error occurred :%x\00", [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"I2C_Transmit(), address = %x, bytes = %d , data: \00", [46 x i8] zeroinitializer }, align 32
@smu_v11_0_i2c_poll_tx_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016[drm] TX was terminated, IC_TX_ABRT_SOURCE val is:%x\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"smu_v11_0_i2c_poll_tx_status\00", [35 x i8] zeroinitializer }, align 32
@smu_v11_0_i2c_poll_tx_status._entry_ptr = internal global ptr @smu_v11_0_i2c_poll_tx_status._entry, section ".printk_index", align 4
@.str.18 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Aborting from fini: status:0x%08x enable:0x%08x enable_stat:0x%08x\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to lock the bus from SMU\00", [32 x i8] zeroinitializer }, align 32
@trylock_bus.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"This operation not supposed to run in atomic context!\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to unlock the bus from SMU\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 714, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"smu_v11_0_i2c_algo\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 700, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 719, i32 49 }
@___asan_gen_.34 = private unnamed_addr constant [27 x i8] c"smu_v11_0_i2c_i2c_lock_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 623, i32 41 }
@___asan_gen_.37 = private unnamed_addr constant [29 x i8] c"smu_v11_0_i2c_control_quirks\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 705, i32 40 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 725, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 494, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 445, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 576, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 402, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 405, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 408, i32 5 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 421, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 425, i32 18 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 425, i32 29 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 589, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 271, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 193, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 525, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 601, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 608, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [46 x i8] c"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 617, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @smu_v11_0_i2c_init._entry, ptr @smu_v11_0_i2c_init._entry_ptr, ptr @smu_v11_0_i2c_poll_tx_status._entry, ptr @smu_v11_0_i2c_poll_tx_status._entry_ptr, ptr @smu_v11_0_i2c_control_init.__key, ptr @.str, ptr @smu_v11_0_i2c_algo, ptr @.str.1, ptr @smu_v11_0_i2c_i2c_lock_ops, ptr @smu_v11_0_i2c_control_quirks, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v11_0_i2c_control_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v11_0_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v11_0_i2c_i2c_lock_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v11_0_i2c_control_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v11_0_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smu_v11_0_i2c_poll_tx_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smu_v11_0_i2c_control_init(ptr noundef %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_i2c_mutex = getelementptr i8, ptr %control, i32 1360
  tail call void @__mutex_init(ptr noundef %smu_i2c_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @smu_v11_0_i2c_control_init.__key) #4
  %0 = ptrtoint ptr %control to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %control, align 8
  %class = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 1
  %1 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %class, align 4
  %pdev = getelementptr i8, ptr %control, i32 -31236
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 2
  %5 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @smu_v11_0_i2c_algo, ptr %algo, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 12
  %6 = call ptr @memcpy(ptr %name, ptr @.str.1, i32 11)
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 4
  %7 = ptrtoint ptr %lock_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @smu_v11_0_i2c_i2c_lock_ops, ptr %lock_ops, align 8
  %quirks = getelementptr inbounds %struct.i2c_adapter, ptr %control, i32 0, i32 17
  %8 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @smu_v11_0_i2c_control_quirks, ptr %quirks, align 8
  %call2 = tail call i32 @i2c_add_adapter(ptr noundef %control) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2, i32 noundef %call2) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smu_v11_0_i2c_control_fini(ptr noundef %control) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @i2c_del_adapter(ptr noundef %control) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smu_v11_0_i2c_xfer(ptr noundef %i2c_adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %i2c_adap, i32 -31240
  %virt.i.i = getelementptr i8, ptr %i2c_adap, i32 59040
  %0 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt.i.i, align 8
  %and.i.i = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.cond.false.i.i_crit_edge, label %land.lhs.true.i.i

entry.cond.false.i.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %funcs.i.i = getelementptr i8, ptr %i2c_adap, i32 2236
  %2 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.cond.false.i.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.cond.false.i.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %sriov_rreg.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %sriov_rreg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_rreg.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i.i, label %land.lhs.true2.i.i.cond.false.i.i_crit_edge, label %cond.true.i.i

land.lhs.true2.i.i.cond.false.i.i_crit_edge:      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i

cond.true.i.i:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add.i.i = add i32 %9, 200
  %call.i.i = tail call i32 %5(ptr noundef %add.ptr.i.i, i32 noundef %add.i.i, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %land.lhs.true2.i.i.cond.false.i.i_crit_edge, %land.lhs.true.i.i.cond.false.i.i_crit_edge, %entry.cond.false.i.i_crit_edge
  %arrayidx14.i.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %10 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14.i.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add17.i.i = add i32 %13, 200
  %call18.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add17.i.i, i32 noundef 0) #4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %call.i.i, %cond.true.i.i ], [ %call18.i.i, %cond.false.i.i ]
  %and19.i.i = and i32 %cond.i.i, -2
  %14 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt.i.i, align 8
  %and25.i.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool26.not.i.i = icmp eq i32 %and25.i.i, 0
  br i1 %tobool26.not.i.i, label %cond.end.i.i.cond.false47.i.i_crit_edge, label %land.lhs.true27.i.i

cond.end.i.i.cond.false47.i.i_crit_edge:          ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false47.i.i

land.lhs.true27.i.i:                              ; preds = %cond.end.i.i
  %funcs30.i.i = getelementptr i8, ptr %i2c_adap, i32 2236
  %16 = ptrtoint ptr %funcs30.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs30.i.i, align 4
  %tobool31.not.i.i = icmp eq ptr %17, null
  br i1 %tobool31.not.i.i, label %land.lhs.true27.i.i.cond.false47.i.i_crit_edge, label %land.lhs.true32.i.i

land.lhs.true27.i.i.cond.false47.i.i_crit_edge:   ; preds = %land.lhs.true27.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false47.i.i

land.lhs.true32.i.i:                              ; preds = %land.lhs.true27.i.i
  %sriov_wreg.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg.i.i, align 4
  %tobool36.not.i.i = icmp eq ptr %19, null
  br i1 %tobool36.not.i.i, label %land.lhs.true32.i.i.cond.false47.i.i_crit_edge, label %cond.true37.i.i

land.lhs.true32.i.i.cond.false47.i.i_crit_edge:   ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false47.i.i

cond.true37.i.i:                                  ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx43.i.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %20 = ptrtoint ptr %arrayidx43.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx43.i.i, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add46.i.i = add i32 %23, 200
  tail call void %19(ptr noundef %add.ptr.i.i, i32 noundef %add46.i.i, i32 noundef %and19.i.i, i32 noundef 0, i32 noundef 22) #4
  br label %smu_v11_0_i2c_set_clock_gating.exit.i

cond.false47.i.i:                                 ; preds = %land.lhs.true32.i.i.cond.false47.i.i_crit_edge, %land.lhs.true27.i.i.cond.false47.i.i_crit_edge, %cond.end.i.i.cond.false47.i.i_crit_edge
  %arrayidx49.i.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %24 = ptrtoint ptr %arrayidx49.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx49.i.i, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add52.i.i = add i32 %27, 200
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add52.i.i, i32 noundef %and19.i.i, i32 noundef 0) #4
  br label %smu_v11_0_i2c_set_clock_gating.exit.i

smu_v11_0_i2c_set_clock_gating.exit.i:            ; preds = %cond.false47.i.i, %cond.true37.i.i
  %28 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %virt.i.i, align 8
  %and.i12.i = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i12.i)
  %tobool.not.i13.i = icmp eq i32 %and.i12.i, 0
  br i1 %tobool.not.i13.i, label %smu_v11_0_i2c_set_clock_gating.exit.i.cond.false.i27.i_crit_edge, label %land.lhs.true.i16.i

smu_v11_0_i2c_set_clock_gating.exit.i.cond.false.i27.i_crit_edge: ; preds = %smu_v11_0_i2c_set_clock_gating.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i27.i

land.lhs.true.i16.i:                              ; preds = %smu_v11_0_i2c_set_clock_gating.exit.i
  %funcs.i14.i = getelementptr i8, ptr %i2c_adap, i32 2236
  %30 = ptrtoint ptr %funcs.i14.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %funcs.i14.i, align 4
  %tobool1.not.i15.i = icmp eq ptr %31, null
  br i1 %tobool1.not.i15.i, label %land.lhs.true.i16.i.cond.false.i27.i_crit_edge, label %land.lhs.true2.i19.i

land.lhs.true.i16.i.cond.false.i27.i_crit_edge:   ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i27.i

land.lhs.true2.i19.i:                             ; preds = %land.lhs.true.i16.i
  %sriov_rreg.i17.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %31, i32 0, i32 13
  %32 = ptrtoint ptr %sriov_rreg.i17.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sriov_rreg.i17.i, align 4
  %tobool6.not.i18.i = icmp eq ptr %33, null
  br i1 %tobool6.not.i18.i, label %land.lhs.true2.i19.i.cond.false.i27.i_crit_edge, label %cond.true.i23.i

land.lhs.true2.i19.i.cond.false.i27.i_crit_edge:  ; preds = %land.lhs.true2.i19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i27.i

cond.true.i23.i:                                  ; preds = %land.lhs.true2.i19.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i20.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %34 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i20.i, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %add.i21.i = add i32 %37, 103
  %call.i22.i = tail call i32 %33(ptr noundef %add.ptr.i.i, i32 noundef %add.i21.i, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end.i29.i

cond.false.i27.i:                                 ; preds = %land.lhs.true2.i19.i.cond.false.i27.i_crit_edge, %land.lhs.true.i16.i.cond.false.i27.i_crit_edge, %smu_v11_0_i2c_set_clock_gating.exit.i.cond.false.i27.i_crit_edge
  %arrayidx14.i24.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %38 = ptrtoint ptr %arrayidx14.i24.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx14.i24.i, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %add17.i25.i = add i32 %41, 103
  %call18.i26.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add17.i25.i, i32 noundef 0) #4
  br label %cond.end.i29.i

cond.end.i29.i:                                   ; preds = %cond.false.i27.i, %cond.true.i23.i
  %cond.i28.i = phi i32 [ %call.i22.i, %cond.true.i23.i ], [ %call18.i26.i, %cond.false.i27.i ]
  %42 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %virt.i.i, align 8
  %and21.i.i = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %cond.end.i29.i.cond.false45.i.i_crit_edge, label %land.lhs.true23.i.i

cond.end.i29.i.cond.false45.i.i_crit_edge:        ; preds = %cond.end.i29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false45.i.i

land.lhs.true23.i.i:                              ; preds = %cond.end.i29.i
  %funcs26.i.i = getelementptr i8, ptr %i2c_adap, i32 2236
  %44 = ptrtoint ptr %funcs26.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %funcs26.i.i, align 4
  %tobool27.not.i.i = icmp eq ptr %45, null
  br i1 %tobool27.not.i.i, label %land.lhs.true23.i.i.cond.false45.i.i_crit_edge, label %land.lhs.true28.i.i

land.lhs.true23.i.i.cond.false45.i.i_crit_edge:   ; preds = %land.lhs.true23.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false45.i.i

land.lhs.true28.i.i:                              ; preds = %land.lhs.true23.i.i
  %sriov_rreg32.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %45, i32 0, i32 13
  %46 = ptrtoint ptr %sriov_rreg32.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sriov_rreg32.i.i, align 4
  %tobool33.not.i.i = icmp eq ptr %47, null
  br i1 %tobool33.not.i.i, label %land.lhs.true28.i.i.cond.false45.i.i_crit_edge, label %cond.true34.i.i

land.lhs.true28.i.i.cond.false45.i.i_crit_edge:   ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false45.i.i

cond.true34.i.i:                                  ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx40.i.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %48 = ptrtoint ptr %arrayidx40.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx40.i.i, align 8
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add43.i.i = add i32 %51, 91
  %call44.i.i = tail call i32 %47(ptr noundef %add.ptr.i.i, i32 noundef %add43.i.i, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end52.i.i

cond.false45.i.i:                                 ; preds = %land.lhs.true28.i.i.cond.false45.i.i_crit_edge, %land.lhs.true23.i.i.cond.false45.i.i_crit_edge, %cond.end.i29.i.cond.false45.i.i_crit_edge
  %arrayidx47.i.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %52 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx47.i.i, align 8
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %add50.i.i = add i32 %55, 91
  %call51.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add50.i.i, i32 noundef 0) #4
  br label %cond.end52.i.i

cond.end52.i.i:                                   ; preds = %cond.false45.i.i, %cond.true34.i.i
  %cond53.i.i = phi i32 [ %call44.i.i, %cond.true34.i.i ], [ %call51.i.i, %cond.false45.i.i ]
  %and54.i.i = and i32 %cond53.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i.i)
  %cmp.i.i = icmp eq i32 %and54.i.i, 0
  %cmp.not.i.i = xor i1 %cmp.i.i, true
  %and56.i.i = and i32 %cond.i28.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i.i)
  %cmp58.not.i.i = icmp eq i32 %and56.i.i, 0
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 true, i1 %cmp58.not.i.i
  br i1 %or.cond.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %cond.end52.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @smu_v11_0_i2c_abort(ptr noundef %i2c_adap) #4
  br label %if.end63.i.i

if.else.i.i:                                      ; preds = %cond.end52.i.i
  br i1 %cmp.i.i, label %if.else.i.i.if.end.i_crit_edge, label %if.else.i.i.if.end63.i.i_crit_edge

if.else.i.i.if.end63.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end63.i.i

if.else.i.i.if.end.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end63.i.i:                                     ; preds = %if.else.i.i.if.end63.i.i_crit_edge, %if.then.i.i
  %funcs71.i.i = getelementptr i8, ptr %i2c_adap, i32 2236
  %arrayidx85.i.i = getelementptr i8, ptr %i2c_adap, i32 58576
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end103.i.i.do.body.i.i_crit_edge, %if.end63.i.i
  %timeout_count.0.i.i = phi i32 [ 0, %if.end63.i.i ], [ %inc.i.i, %if.end103.i.i.do.body.i.i_crit_edge ]
  %56 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %virt.i.i, align 8
  %and66.i.i = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i.i)
  %tobool67.not.i.i = icmp eq i32 %and66.i.i, 0
  br i1 %tobool67.not.i.i, label %do.body.i.i.cond.false90.i.i_crit_edge, label %land.lhs.true68.i.i

do.body.i.i.cond.false90.i.i_crit_edge:           ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false90.i.i

land.lhs.true68.i.i:                              ; preds = %do.body.i.i
  %58 = ptrtoint ptr %funcs71.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs71.i.i, align 4
  %tobool72.not.i.i = icmp eq ptr %59, null
  br i1 %tobool72.not.i.i, label %land.lhs.true68.i.i.cond.false90.i.i_crit_edge, label %land.lhs.true73.i.i

land.lhs.true68.i.i.cond.false90.i.i_crit_edge:   ; preds = %land.lhs.true68.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false90.i.i

land.lhs.true73.i.i:                              ; preds = %land.lhs.true68.i.i
  %sriov_rreg77.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %59, i32 0, i32 13
  %60 = ptrtoint ptr %sriov_rreg77.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sriov_rreg77.i.i, align 4
  %tobool78.not.i.i = icmp eq ptr %61, null
  br i1 %tobool78.not.i.i, label %land.lhs.true73.i.i.cond.false90.i.i_crit_edge, label %cond.true79.i.i

land.lhs.true73.i.i.cond.false90.i.i_crit_edge:   ; preds = %land.lhs.true73.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false90.i.i

cond.true79.i.i:                                  ; preds = %land.lhs.true73.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %arrayidx85.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx85.i.i, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  %add88.i.i = add i32 %65, 87
  %call89.i.i = tail call i32 %61(ptr noundef %add.ptr.i.i, i32 noundef %add88.i.i, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end97.i.i

cond.false90.i.i:                                 ; preds = %land.lhs.true73.i.i.cond.false90.i.i_crit_edge, %land.lhs.true68.i.i.cond.false90.i.i_crit_edge, %do.body.i.i.cond.false90.i.i_crit_edge
  %66 = ptrtoint ptr %arrayidx85.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx85.i.i, align 8
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %add95.i.i = add i32 %69, 87
  %call96.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add95.i.i, i32 noundef 0) #4
  br label %cond.end97.i.i

cond.end97.i.i:                                   ; preds = %cond.false90.i.i, %cond.true79.i.i
  %cond98.i.i = phi i32 [ %call89.i.i, %cond.true79.i.i ], [ %call96.i.i, %cond.false90.i.i ]
  %and99.i.i = and i32 %cond98.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i.i)
  %cmp101.i.i = icmp eq i32 %and99.i.i, 0
  br i1 %cmp101.i.i, label %cond.end97.i.i.if.end.i_crit_edge, label %if.end103.i.i

cond.end97.i.i.if.end.i_crit_edge:                ; preds = %cond.end97.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end103.i.i:                                    ; preds = %cond.end97.i.i
  %inc.i.i = add nuw nsw i32 %timeout_count.0.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1024
  br i1 %exitcond.not.i.i, label %do.end.i, label %if.end103.i.i.do.body.i.i_crit_edge

if.end103.i.i.do.body.i.i_crit_edge:              ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i

do.end.i:                                         ; preds = %if.end103.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %cond.end97.i.i.if.end.i_crit_edge, %if.else.i.i.if.end.i_crit_edge
  %call2.i = tail call fastcc i32 @smu_v11_0_i2c_enable(ptr noundef %i2c_adap, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @smu_v11_0_i2c_abort(ptr noundef %i2c_adap) #4
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  %70 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %virt.i.i, align 8
  %and11.i.i = and i32 %71, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool.not.i32.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool.not.i32.i, label %if.end4.i.cond.false.i39.i_crit_edge, label %land.lhs.true.i34.i

if.end4.i.cond.false.i39.i_crit_edge:             ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i39.i

land.lhs.true.i34.i:                              ; preds = %if.end4.i
  %funcs.i33.i = getelementptr i8, ptr %i2c_adap, i32 2236
  %72 = ptrtoint ptr %funcs.i33.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %funcs.i33.i, align 4
  %tobool12.not.i.i = icmp eq ptr %73, null
  br i1 %tobool12.not.i.i, label %land.lhs.true.i34.i.cond.false.i39.i_crit_edge, label %land.lhs.true13.i.i

land.lhs.true.i34.i.cond.false.i39.i_crit_edge:   ; preds = %land.lhs.true.i34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i39.i

land.lhs.true13.i.i:                              ; preds = %land.lhs.true.i34.i
  %sriov_wreg.i35.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %73, i32 0, i32 12
  %74 = ptrtoint ptr %sriov_wreg.i35.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sriov_wreg.i35.i, align 4
  %tobool17.not.i.i = icmp eq ptr %75, null
  br i1 %tobool17.not.i.i, label %land.lhs.true13.i.i.cond.false.i39.i_crit_edge, label %cond.true.i38.i

land.lhs.true13.i.i.cond.false.i39.i_crit_edge:   ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i39.i

cond.true.i38.i:                                  ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i36.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %76 = ptrtoint ptr %arrayidx.i36.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i36.i, align 8
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %add.i37.i = add i32 %79, 64
  tail call void %75(ptr noundef %add.ptr.i.i, i32 noundef %add.i37.i, i32 noundef 101, i32 noundef 0, i32 noundef 22) #4
  br label %smu_v11_0_i2c_configure.exit.i

cond.false.i39.i:                                 ; preds = %land.lhs.true13.i.i.cond.false.i39.i_crit_edge, %land.lhs.true.i34.i.cond.false.i39.i_crit_edge, %if.end4.i.cond.false.i39.i_crit_edge
  %arrayidx25.i.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %80 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx25.i.i, align 8
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %add28.i.i = add i32 %83, 64
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add28.i.i, i32 noundef 101, i32 noundef 0) #4
  br label %smu_v11_0_i2c_configure.exit.i

smu_v11_0_i2c_configure.exit.i:                   ; preds = %cond.false.i39.i, %cond.true.i38.i
  %84 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %virt.i.i, align 8
  %and.i43.i = and i32 %85, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i43.i)
  %tobool.not.i44.i = icmp eq i32 %and.i43.i, 0
  br i1 %tobool.not.i44.i, label %smu_v11_0_i2c_configure.exit.i.cond.false.i56.i_crit_edge, label %land.lhs.true.i47.i

smu_v11_0_i2c_configure.exit.i.cond.false.i56.i_crit_edge: ; preds = %smu_v11_0_i2c_configure.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i56.i

land.lhs.true.i47.i:                              ; preds = %smu_v11_0_i2c_configure.exit.i
  %funcs.i45.i = getelementptr i8, ptr %i2c_adap, i32 2236
  %86 = ptrtoint ptr %funcs.i45.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %funcs.i45.i, align 4
  %tobool1.not.i46.i = icmp eq ptr %87, null
  br i1 %tobool1.not.i46.i, label %land.lhs.true.i47.i.cond.false.i56.i_crit_edge, label %land.lhs.true2.i50.i

land.lhs.true.i47.i.cond.false.i56.i_crit_edge:   ; preds = %land.lhs.true.i47.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i56.i

land.lhs.true2.i50.i:                             ; preds = %land.lhs.true.i47.i
  %sriov_wreg.i48.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %87, i32 0, i32 12
  %88 = ptrtoint ptr %sriov_wreg.i48.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sriov_wreg.i48.i, align 4
  %tobool6.not.i49.i = icmp eq ptr %89, null
  br i1 %tobool6.not.i49.i, label %land.lhs.true2.i50.i.cond.false.i56.i_crit_edge, label %cond.true.i53.i

land.lhs.true2.i50.i.cond.false.i56.i_crit_edge:  ; preds = %land.lhs.true2.i50.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i56.i

cond.true.i53.i:                                  ; preds = %land.lhs.true2.i50.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i51.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %90 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i51.i, align 8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %add.i52.i = add i32 %93, 104
  tail call void %89(ptr noundef %add.ptr.i.i, i32 noundef %add.i52.i, i32 noundef 2, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end.i57.i

cond.false.i56.i:                                 ; preds = %land.lhs.true2.i50.i.cond.false.i56.i_crit_edge, %land.lhs.true.i47.i.cond.false.i56.i_crit_edge, %smu_v11_0_i2c_configure.exit.i.cond.false.i56.i_crit_edge
  %arrayidx14.i54.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %94 = ptrtoint ptr %arrayidx14.i54.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx14.i54.i, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  %add17.i55.i = add i32 %97, 104
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add17.i55.i, i32 noundef 2, i32 noundef 0) #4
  br label %cond.end.i57.i

cond.end.i57.i:                                   ; preds = %cond.false.i56.i, %cond.true.i53.i
  %98 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %virt.i.i, align 8
  %and20.i.i = and i32 %99, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  br i1 %tobool21.not.i.i, label %cond.end.i57.i.cond.false43.i.i_crit_edge, label %land.lhs.true22.i.i

cond.end.i57.i.cond.false43.i.i_crit_edge:        ; preds = %cond.end.i57.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false43.i.i

land.lhs.true22.i.i:                              ; preds = %cond.end.i57.i
  %funcs25.i.i = getelementptr i8, ptr %i2c_adap, i32 2236
  %100 = ptrtoint ptr %funcs25.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %funcs25.i.i, align 4
  %tobool26.not.i58.i = icmp eq ptr %101, null
  br i1 %tobool26.not.i58.i, label %land.lhs.true22.i.i.cond.false43.i.i_crit_edge, label %land.lhs.true27.i59.i

land.lhs.true22.i.i.cond.false43.i.i_crit_edge:   ; preds = %land.lhs.true22.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false43.i.i

land.lhs.true27.i59.i:                            ; preds = %land.lhs.true22.i.i
  %sriov_wreg31.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %101, i32 0, i32 12
  %102 = ptrtoint ptr %sriov_wreg31.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sriov_wreg31.i.i, align 4
  %tobool32.not.i.i = icmp eq ptr %103, null
  br i1 %tobool32.not.i.i, label %land.lhs.true27.i59.i.cond.false43.i.i_crit_edge, label %cond.true33.i.i

land.lhs.true27.i59.i.cond.false43.i.i_crit_edge: ; preds = %land.lhs.true27.i59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false43.i.i

cond.true33.i.i:                                  ; preds = %land.lhs.true27.i59.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx39.i.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %104 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx39.i.i, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  %add42.i.i = add i32 %107, 69
  tail call void %103(ptr noundef %add.ptr.i.i, i32 noundef %add42.i.i, i32 noundef 120, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end49.i.i

cond.false43.i.i:                                 ; preds = %land.lhs.true27.i59.i.cond.false43.i.i_crit_edge, %land.lhs.true22.i.i.cond.false43.i.i_crit_edge, %cond.end.i57.i.cond.false43.i.i_crit_edge
  %arrayidx45.i.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %108 = ptrtoint ptr %arrayidx45.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx45.i.i, align 8
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 4
  %add48.i.i = add i32 %111, 69
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add48.i.i, i32 noundef 120, i32 noundef 0) #4
  br label %cond.end49.i.i

cond.end49.i.i:                                   ; preds = %cond.false43.i.i, %cond.true33.i.i
  %112 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %virt.i.i, align 8
  %and52.i.i = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i.i)
  %tobool53.not.i.i = icmp eq i32 %and52.i.i, 0
  br i1 %tobool53.not.i.i, label %cond.end49.i.i.cond.false75.i.i_crit_edge, label %land.lhs.true54.i.i

cond.end49.i.i.cond.false75.i.i_crit_edge:        ; preds = %cond.end49.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false75.i.i

land.lhs.true54.i.i:                              ; preds = %cond.end49.i.i
  %funcs57.i.i = getelementptr i8, ptr %i2c_adap, i32 2236
  %114 = ptrtoint ptr %funcs57.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %funcs57.i.i, align 4
  %tobool58.not.i.i = icmp eq ptr %115, null
  br i1 %tobool58.not.i.i, label %land.lhs.true54.i.i.cond.false75.i.i_crit_edge, label %land.lhs.true59.i.i

land.lhs.true54.i.i.cond.false75.i.i_crit_edge:   ; preds = %land.lhs.true54.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false75.i.i

land.lhs.true59.i.i:                              ; preds = %land.lhs.true54.i.i
  %sriov_wreg63.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %115, i32 0, i32 12
  %116 = ptrtoint ptr %sriov_wreg63.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %sriov_wreg63.i.i, align 4
  %tobool64.not.i.i = icmp eq ptr %117, null
  br i1 %tobool64.not.i.i, label %land.lhs.true59.i.i.cond.false75.i.i_crit_edge, label %cond.true65.i.i

land.lhs.true59.i.i.cond.false75.i.i_crit_edge:   ; preds = %land.lhs.true59.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false75.i.i

cond.true65.i.i:                                  ; preds = %land.lhs.true59.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx71.i.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %118 = ptrtoint ptr %arrayidx71.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx71.i.i, align 8
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %119, align 4
  %add74.i.i = add i32 %121, 70
  tail call void %117(ptr noundef %add.ptr.i.i, i32 noundef %add74.i.i, i32 noundef 130, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end81.i.i

cond.false75.i.i:                                 ; preds = %land.lhs.true59.i.i.cond.false75.i.i_crit_edge, %land.lhs.true54.i.i.cond.false75.i.i_crit_edge, %cond.end49.i.i.cond.false75.i.i_crit_edge
  %arrayidx77.i.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %122 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx77.i.i, align 8
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %add80.i.i = add i32 %125, 70
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add80.i.i, i32 noundef 130, i32 noundef 0) #4
  br label %cond.end81.i.i

cond.end81.i.i:                                   ; preds = %cond.false75.i.i, %cond.true65.i.i
  %126 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %virt.i.i, align 8
  %and84.i.i = and i32 %127, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i.i)
  %tobool85.not.i.i = icmp eq i32 %and84.i.i, 0
  br i1 %tobool85.not.i.i, label %cond.end81.i.i.cond.false107.i.i_crit_edge, label %land.lhs.true86.i.i

cond.end81.i.i.cond.false107.i.i_crit_edge:       ; preds = %cond.end81.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false107.i.i

land.lhs.true86.i.i:                              ; preds = %cond.end81.i.i
  %funcs89.i.i = getelementptr i8, ptr %i2c_adap, i32 2236
  %128 = ptrtoint ptr %funcs89.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %funcs89.i.i, align 4
  %tobool90.not.i.i = icmp eq ptr %129, null
  br i1 %tobool90.not.i.i, label %land.lhs.true86.i.i.cond.false107.i.i_crit_edge, label %land.lhs.true91.i.i

land.lhs.true86.i.i.cond.false107.i.i_crit_edge:  ; preds = %land.lhs.true86.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false107.i.i

land.lhs.true91.i.i:                              ; preds = %land.lhs.true86.i.i
  %sriov_wreg95.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %129, i32 0, i32 12
  %130 = ptrtoint ptr %sriov_wreg95.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %sriov_wreg95.i.i, align 4
  %tobool96.not.i.i = icmp eq ptr %131, null
  br i1 %tobool96.not.i.i, label %land.lhs.true91.i.i.cond.false107.i.i_crit_edge, label %cond.true97.i.i

land.lhs.true91.i.i.cond.false107.i.i_crit_edge:  ; preds = %land.lhs.true91.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false107.i.i

cond.true97.i.i:                                  ; preds = %land.lhs.true91.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx103.i.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %132 = ptrtoint ptr %arrayidx103.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx103.i.i, align 8
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %133, align 4
  %add106.i.i = add i32 %135, 95
  tail call void %131(ptr noundef %add.ptr.i.i, i32 noundef %add106.i.i, i32 noundef 20, i32 noundef 0, i32 noundef 22) #4
  br label %smu_v11_0_i2c_init.exit

cond.false107.i.i:                                ; preds = %land.lhs.true91.i.i.cond.false107.i.i_crit_edge, %land.lhs.true86.i.i.cond.false107.i.i_crit_edge, %cond.end81.i.i.cond.false107.i.i_crit_edge
  %arrayidx109.i.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %136 = ptrtoint ptr %arrayidx109.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx109.i.i, align 8
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %137, align 4
  %add112.i.i = add i32 %139, 95
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add112.i.i, i32 noundef 20, i32 noundef 0) #4
  br label %smu_v11_0_i2c_init.exit

smu_v11_0_i2c_init.exit:                          ; preds = %cond.false107.i.i, %cond.true97.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp = icmp sgt i32 %num, 0
  br i1 %cmp, label %for.body.lr.ph, label %smu_v11_0_i2c_init.exit.for.end_crit_edge

smu_v11_0_i2c_init.exit.for.end_crit_edge:        ; preds = %smu_v11_0_i2c_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %smu_v11_0_i2c_init.exit
  %140 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %142 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %flags, align 2
  %144 = and i16 %143, 1
  %sub = add nsw i32 %num, -1
  %funcs.i.i.i = getelementptr i8, ptr %i2c_adap, i32 2236
  %arrayidx.i.i.i = getelementptr i8, ptr %i2c_adap, i32 58576
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dir.1197 = phi i16 [ %144, %for.body.lr.ph ], [ %dir.2, %for.inc.for.body_crit_edge ]
  %addr.1196 = phi i16 [ %141, %for.body.lr.ph ], [ %addr.2, %for.inc.for.body_crit_edge ]
  %i.0194 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx6 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0194
  %145 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx6, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %146, i16 %addr.1196)
  %cmp10.not = icmp eq i16 %146, %addr.1196
  br i1 %cmp10.not, label %lor.lhs.false, label %for.body.if.then17_crit_edge

for.body.if.then17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

lor.lhs.false:                                    ; preds = %for.body
  %flags13 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0194, i32 1
  %147 = ptrtoint ptr %flags13 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %flags13, align 2
  %xor74 = xor i16 %148, %dir.1197
  %149 = and i16 %xor74, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool.not = icmp eq i16 %149, 0
  br i1 %tobool.not, label %lor.lhs.false.if.end25_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then17

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %for.body.if.then17_crit_edge
  %flags21 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0194, i32 1
  %150 = ptrtoint ptr %flags21 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %flags21, align 2
  %152 = and i16 %151, 1
  br label %if.end25

if.end25:                                         ; preds = %if.then17, %lor.lhs.false.if.end25_crit_edge
  %addr.2 = phi i16 [ %146, %if.then17 ], [ %addr.1196, %lor.lhs.false.if.end25_crit_edge ]
  %dir.2 = phi i16 [ %152, %if.then17 ], [ %dir.1197, %lor.lhs.false.if.end25_crit_edge ]
  %i2c_flag.0 = phi i32 [ -2147483648, %if.then17 ], [ 0, %lor.lhs.false.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0194, i32 %sub)
  %cmp26 = icmp eq i32 %i.0194, %sub
  %or29 = or i32 %i2c_flag.0, 32768
  %spec.select = select i1 %cmp26, i32 %or29, i32 %i2c_flag.0
  %flags32 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0194, i32 1
  %153 = ptrtoint ptr %flags32 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %flags32, align 2
  %155 = and i16 %154, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %tobool35.not = icmp eq i16 %155, 0
  %buf.i93 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0194, i32 3
  %156 = ptrtoint ptr %buf.i93 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %buf.i93, align 4
  %len.i94 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.0194, i32 2
  %158 = ptrtoint ptr %len.i94 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %len.i94, align 4
  %conv.i95 = zext i16 %159 to i32
  br i1 %tobool35.not, label %if.else, label %if.then36

if.then36:                                        ; preds = %if.end25
  %160 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %virt.i.i, align 8
  %and.i.i.i = and i32 %161, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then36.cond.false.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then36.cond.false.i.i.i_crit_edge:             ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then36
  %162 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool1.not.i.i.i = icmp eq ptr %163, null
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %sriov_wreg.i.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %163, i32 0, i32 12
  %164 = ptrtoint ptr %sriov_wreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %sriov_wreg.i.i.i, align 4
  %tobool6.not.i.i.i = icmp eq ptr %165, null
  br i1 %tobool6.not.i.i.i, label %land.lhs.true2.i.i.i.cond.false.i.i.i_crit_edge, label %cond.true.i.i.i

land.lhs.true2.i.i.i.cond.false.i.i.i_crit_edge:  ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i.i

cond.true.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %166 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %arrayidx.i.i.i, align 8
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %167, align 4
  %add.i.i.i = add i32 %169, 65
  %170 = and i16 %146, 1023
  %and13.i.i.i = zext i16 %170 to i32
  tail call void %165(ptr noundef %add.ptr.i.i, i32 noundef %add.i.i.i, i32 noundef %and13.i.i.i, i32 noundef 0, i32 noundef 22) #4
  br label %smu_v11_0_i2c_set_address.exit.i.i

cond.false.i.i.i:                                 ; preds = %land.lhs.true2.i.i.i.cond.false.i.i.i_crit_edge, %land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge, %if.then36.cond.false.i.i.i_crit_edge
  %171 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %arrayidx.i.i.i, align 8
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %172, align 4
  %add18.i.i.i = add i32 %174, 65
  %175 = and i16 %146, 1023
  %and20.i.i.i = zext i16 %175 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add18.i.i.i, i32 noundef %and20.i.i.i, i32 noundef 0) #4
  br label %smu_v11_0_i2c_set_address.exit.i.i

smu_v11_0_i2c_set_address.exit.i.i:               ; preds = %cond.false.i.i.i, %cond.true.i.i.i
  %176 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %virt.i.i, align 8
  %and.i137.i.i = and i32 %177, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i137.i.i)
  %tobool.not.i138.i.i = icmp eq i32 %and.i137.i.i, 0
  br i1 %tobool.not.i138.i.i, label %smu_v11_0_i2c_set_address.exit.i.i.cond.false.i150.i.i_crit_edge, label %land.lhs.true.i141.i.i

smu_v11_0_i2c_set_address.exit.i.i.cond.false.i150.i.i_crit_edge: ; preds = %smu_v11_0_i2c_set_address.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i150.i.i

land.lhs.true.i141.i.i:                           ; preds = %smu_v11_0_i2c_set_address.exit.i.i
  %178 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool1.not.i140.i.i = icmp eq ptr %179, null
  br i1 %tobool1.not.i140.i.i, label %land.lhs.true.i141.i.i.cond.false.i150.i.i_crit_edge, label %land.lhs.true2.i144.i.i

land.lhs.true.i141.i.i.cond.false.i150.i.i_crit_edge: ; preds = %land.lhs.true.i141.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i150.i.i

land.lhs.true2.i144.i.i:                          ; preds = %land.lhs.true.i141.i.i
  %sriov_wreg.i142.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %179, i32 0, i32 12
  %180 = ptrtoint ptr %sriov_wreg.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %sriov_wreg.i142.i.i, align 4
  %tobool6.not.i143.i.i = icmp eq ptr %181, null
  br i1 %tobool6.not.i143.i.i, label %land.lhs.true2.i144.i.i.cond.false.i150.i.i_crit_edge, label %cond.true.i147.i.i

land.lhs.true2.i144.i.i.cond.false.i150.i.i_crit_edge: ; preds = %land.lhs.true2.i144.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i150.i.i

cond.true.i147.i.i:                               ; preds = %land.lhs.true2.i144.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %182 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx.i.i.i, align 8
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 4
  %add.i146.i.i = add i32 %185, 91
  tail call void %181(ptr noundef %add.ptr.i.i, i32 noundef %add.i146.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 22) #4
  br label %smu_v11_0_i2c_enable.exit.i.i

cond.false.i150.i.i:                              ; preds = %land.lhs.true2.i144.i.i.cond.false.i150.i.i_crit_edge, %land.lhs.true.i141.i.i.cond.false.i150.i.i_crit_edge, %smu_v11_0_i2c_set_address.exit.i.i.cond.false.i150.i.i_crit_edge
  %186 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %arrayidx.i.i.i, align 8
  %188 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %187, align 4
  %add18.i149.i.i = add i32 %189, 91
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add18.i149.i.i, i32 noundef 1, i32 noundef 0) #4
  br label %smu_v11_0_i2c_enable.exit.i.i

smu_v11_0_i2c_enable.exit.i.i:                    ; preds = %cond.false.i150.i.i, %cond.true.i147.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %159)
  %cmp.not203.i.i = icmp eq i16 %159, 0
  br i1 %cmp.not203.i.i, label %smu_v11_0_i2c_enable.exit.i.i.while.end.i.i_crit_edge, label %while.body.lr.ph.i.i

smu_v11_0_i2c_enable.exit.i.i.while.end.i.i_crit_edge: ; preds = %smu_v11_0_i2c_enable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i

while.body.lr.ph.i.i:                             ; preds = %smu_v11_0_i2c_enable.exit.i.i
  %and4.i.i = and i32 %spec.select, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool.not.i.i76 = icmp eq i32 %and4.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select)
  %tobool10.not.i.i = icmp sgt i32 %spec.select, -1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %cleanup.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %bytes_received.0205.i.i = phi i32 [ 0, %while.body.lr.ph.i.i ], [ %inc.i.i89, %cleanup.i.i.while.body.i.i_crit_edge ]
  %numbytes.addr.0204.i.i = phi i32 [ %conv.i95, %while.body.lr.ph.i.i ], [ %dec.i.i, %cleanup.i.i.while.body.i.i_crit_edge ]
  %190 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %virt.i.i, align 8
  %and.i153.i.i = and i32 %191, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i153.i.i)
  %tobool.not.i154.i.i = icmp eq i32 %and.i153.i.i, 0
  br i1 %tobool.not.i154.i.i, label %while.body.i.i.cond.false.i163.i.i_crit_edge, label %land.lhs.true.i157.i.i

while.body.i.i.cond.false.i163.i.i_crit_edge:     ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i163.i.i

land.lhs.true.i157.i.i:                           ; preds = %while.body.i.i
  %192 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool1.not.i156.i.i = icmp eq ptr %193, null
  br i1 %tobool1.not.i156.i.i, label %land.lhs.true.i157.i.i.cond.false.i163.i.i_crit_edge, label %land.lhs.true2.i159.i.i

land.lhs.true.i157.i.i.cond.false.i163.i.i_crit_edge: ; preds = %land.lhs.true.i157.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i163.i.i

land.lhs.true2.i159.i.i:                          ; preds = %land.lhs.true.i157.i.i
  %sriov_rreg.i.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %193, i32 0, i32 13
  %194 = ptrtoint ptr %sriov_rreg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %sriov_rreg.i.i.i, align 4
  %tobool6.not.i158.i.i = icmp eq ptr %195, null
  br i1 %tobool6.not.i158.i.i, label %land.lhs.true2.i159.i.i.cond.false.i163.i.i_crit_edge, label %cond.true.i162.i.i

land.lhs.true2.i159.i.i.cond.false.i163.i.i_crit_edge: ; preds = %land.lhs.true2.i159.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i163.i.i

cond.true.i162.i.i:                               ; preds = %land.lhs.true2.i159.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %196 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx.i.i.i, align 8
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %197, align 4
  %add.i161.i.i = add i32 %199, 80
  %call.i.i.i = tail call i32 %195(ptr noundef %add.ptr.i.i, i32 noundef %add.i161.i.i, i32 noundef 0, i32 noundef 22) #4
  br label %smu_v11_0_i2c_clear_status.exit.i.i

cond.false.i163.i.i:                              ; preds = %land.lhs.true2.i159.i.i.cond.false.i163.i.i_crit_edge, %land.lhs.true.i157.i.i.cond.false.i163.i.i_crit_edge, %while.body.i.i.cond.false.i163.i.i_crit_edge
  %200 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx.i.i.i, align 8
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %201, align 4
  %add17.i.i.i = add i32 %203, 80
  %call18.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add17.i.i.i, i32 noundef 0) #4
  br label %smu_v11_0_i2c_clear_status.exit.i.i

smu_v11_0_i2c_clear_status.exit.i.i:              ; preds = %cond.false.i163.i.i, %cond.true.i162.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %numbytes.addr.0204.i.i)
  %cmp3.i.i = icmp ne i32 %numbytes.addr.0204.i.i, 1
  %or.cond.i.i77 = or i1 %tobool.not.i.i76, %cmp3.i.i
  %reg.0.i.i = select i1 %or.cond.i.i77, i32 256, i32 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_received.0205.i.i)
  %cmp7.i.i = icmp ne i32 %bytes_received.0205.i.i, 0
  %or.cond134.i.i = or i1 %tobool10.not.i.i, %cmp7.i.i
  %or13.i.i = or i32 %reg.0.i.i, 1024
  %reg.1.i.i = select i1 %or.cond134.i.i, i32 %reg.0.i.i, i32 %or13.i.i
  %204 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %virt.i.i, align 8
  %and15.i.i = and i32 %205, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i)
  %tobool16.not.i.i = icmp eq i32 %and15.i.i, 0
  br i1 %tobool16.not.i.i, label %smu_v11_0_i2c_clear_status.exit.i.i.cond.false.i.i81_crit_edge, label %land.lhs.true17.i.i

smu_v11_0_i2c_clear_status.exit.i.i.cond.false.i.i81_crit_edge: ; preds = %smu_v11_0_i2c_clear_status.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i81

land.lhs.true17.i.i:                              ; preds = %smu_v11_0_i2c_clear_status.exit.i.i
  %206 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool18.not.i.i = icmp eq ptr %207, null
  br i1 %tobool18.not.i.i, label %land.lhs.true17.i.i.cond.false.i.i81_crit_edge, label %land.lhs.true19.i.i

land.lhs.true17.i.i.cond.false.i.i81_crit_edge:   ; preds = %land.lhs.true17.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i81

land.lhs.true19.i.i:                              ; preds = %land.lhs.true17.i.i
  %sriov_wreg.i.i78 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %207, i32 0, i32 12
  %208 = ptrtoint ptr %sriov_wreg.i.i78 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %sriov_wreg.i.i78, align 4
  %tobool23.not.i.i = icmp eq ptr %209, null
  br i1 %tobool23.not.i.i, label %land.lhs.true19.i.i.cond.false.i.i81_crit_edge, label %cond.true.i.i80

land.lhs.true19.i.i.cond.false.i.i81_crit_edge:   ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i81

cond.true.i.i80:                                  ; preds = %land.lhs.true19.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %210 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %arrayidx.i.i.i, align 8
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %211, align 4
  %add.i.i79 = add i32 %213, 68
  tail call void %209(ptr noundef %add.ptr.i.i, i32 noundef %add.i.i79, i32 noundef %reg.1.i.i, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end.i.i82

cond.false.i.i81:                                 ; preds = %land.lhs.true19.i.i.cond.false.i.i81_crit_edge, %land.lhs.true17.i.i.cond.false.i.i81_crit_edge, %smu_v11_0_i2c_clear_status.exit.i.i.cond.false.i.i81_crit_edge
  %214 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %arrayidx.i.i.i, align 8
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %215, align 4
  %add34.i.i = add i32 %217, 68
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add34.i.i, i32 noundef %reg.1.i.i, i32 noundef 0) #4
  br label %cond.end.i.i82

cond.end.i.i82:                                   ; preds = %cond.false.i.i81, %cond.true.i.i80
  %218 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %virt.i.i, align 8
  %and.i166.i.i = and i32 %219, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i166.i.i)
  %tobool.not.i167.i.i = icmp eq i32 %and.i166.i.i, 0
  br i1 %tobool.not.i167.i.i, label %cond.end.i.i82.cond.false.i181.i.i_crit_edge, label %land.lhs.true.i170.i.i

cond.end.i.i82.cond.false.i181.i.i_crit_edge:     ; preds = %cond.end.i.i82
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i181.i.i

land.lhs.true.i170.i.i:                           ; preds = %cond.end.i.i82
  %220 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool1.not.i169.i.i = icmp eq ptr %221, null
  br i1 %tobool1.not.i169.i.i, label %land.lhs.true.i170.i.i.cond.false.i181.i.i_crit_edge, label %land.lhs.true2.i173.i.i

land.lhs.true.i170.i.i.cond.false.i181.i.i_crit_edge: ; preds = %land.lhs.true.i170.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i181.i.i

land.lhs.true2.i173.i.i:                          ; preds = %land.lhs.true.i170.i.i
  %sriov_rreg.i171.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %221, i32 0, i32 13
  %222 = ptrtoint ptr %sriov_rreg.i171.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %sriov_rreg.i171.i.i, align 4
  %tobool6.not.i172.i.i = icmp eq ptr %223, null
  br i1 %tobool6.not.i172.i.i, label %land.lhs.true2.i173.i.i.cond.false.i181.i.i_crit_edge, label %cond.true.i177.i.i

land.lhs.true2.i173.i.i.cond.false.i181.i.i_crit_edge: ; preds = %land.lhs.true2.i173.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i181.i.i

cond.true.i177.i.i:                               ; preds = %land.lhs.true2.i173.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %224 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %arrayidx.i.i.i, align 8
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %225, align 4
  %add.i175.i.i = add i32 %227, 96
  %call.i176.i.i = tail call i32 %223(ptr noundef %add.ptr.i.i, i32 noundef %add.i175.i.i, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end.i.i.i

cond.false.i181.i.i:                              ; preds = %land.lhs.true2.i173.i.i.cond.false.i181.i.i_crit_edge, %land.lhs.true.i170.i.i.cond.false.i181.i.i_crit_edge, %cond.end.i.i82.cond.false.i181.i.i_crit_edge
  %228 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx.i.i.i, align 8
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %229, align 4
  %add17.i179.i.i = add i32 %231, 96
  %call18.i180.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add17.i179.i.i, i32 noundef 0) #4
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i181.i.i, %cond.true.i177.i.i
  %cond.i.i.i = phi i32 [ %call.i176.i.i, %cond.true.i177.i.i ], [ %call18.i180.i.i, %cond.false.i181.i.i ]
  %and19.i.i.i = and i32 %cond.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %and19.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %cond.end.i.i.i
  %232 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %virt.i.i, align 8
  %and.i.i.i.i = and i32 %233, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.cond.false.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.i.i.i.cond.false.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then.i.i.i
  %234 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool1.not.i.i.i.i = icmp eq ptr %235, null
  br i1 %tobool1.not.i.i.i.i, label %land.lhs.true.i.i.i.i.cond.false.i.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.cond.false.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %sriov_rreg.i.i.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %235, i32 0, i32 13
  %236 = ptrtoint ptr %sriov_rreg.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %sriov_rreg.i.i.i.i, align 4
  %tobool6.not.i.i.i.i = icmp eq ptr %237, null
  br i1 %tobool6.not.i.i.i.i, label %land.lhs.true2.i.i.i.i.cond.false.i.i.i.i_crit_edge, label %cond.true.i.i.i.i

land.lhs.true2.i.i.i.i.cond.false.i.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i.i.i

cond.true.i.i.i.i:                                ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %238 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %arrayidx.i.i.i, align 8
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %239, align 4
  %add.i.i.i.i = add i32 %241, 80
  %call.i.i.i.i = tail call i32 %237(ptr noundef %add.ptr.i.i, i32 noundef %add.i.i.i.i, i32 noundef 0, i32 noundef 22) #4
  br label %while.end.sink.split.i.i

cond.false.i.i.i.i:                               ; preds = %land.lhs.true2.i.i.i.i.cond.false.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.cond.false.i.i.i.i_crit_edge, %if.then.i.i.i.cond.false.i.i.i.i_crit_edge
  %242 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %arrayidx.i.i.i, align 8
  %244 = ptrtoint ptr %243 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %243, align 4
  %add17.i.i.i.i = add i32 %245, 80
  %call18.i.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add17.i.i.i.i, i32 noundef 0) #4
  br label %while.end.sink.split.i.i

if.else.i.i.i:                                    ; preds = %cond.end.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %246 = load volatile i32, ptr @jiffies, align 128
  %add21.i.i.i = add i32 %246, 2
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %cond.end58.i.i.i.do.body.i.i.i_crit_edge, %if.else.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %247 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i = sub i32 %add21.i.i.i, %247
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp22.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp22.i.i.i, label %do.body.i.i.i.while.end.sink.split.i.i_crit_edge, label %if.end.i.i.i

do.body.i.i.i.while.end.sink.split.i.i_crit_edge: ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.sink.split.i.i

if.end.i.i.i:                                     ; preds = %do.body.i.i.i
  %248 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %virt.i.i, align 8
  %and27.i.i.i = and i32 %249, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %and27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %if.end.i.i.i.cond.false51.i.i.i_crit_edge, label %land.lhs.true29.i.i.i

if.end.i.i.i.cond.false51.i.i.i_crit_edge:        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false51.i.i.i

land.lhs.true29.i.i.i:                            ; preds = %if.end.i.i.i
  %250 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool33.not.i.i.i = icmp eq ptr %251, null
  br i1 %tobool33.not.i.i.i, label %land.lhs.true29.i.i.i.cond.false51.i.i.i_crit_edge, label %land.lhs.true34.i.i.i

land.lhs.true29.i.i.i.cond.false51.i.i.i_crit_edge: ; preds = %land.lhs.true29.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false51.i.i.i

land.lhs.true34.i.i.i:                            ; preds = %land.lhs.true29.i.i.i
  %sriov_rreg38.i.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %251, i32 0, i32 13
  %252 = ptrtoint ptr %sriov_rreg38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %sriov_rreg38.i.i.i, align 4
  %tobool39.not.i.i.i = icmp eq ptr %253, null
  br i1 %tobool39.not.i.i.i, label %land.lhs.true34.i.i.i.cond.false51.i.i.i_crit_edge, label %cond.true40.i.i.i

land.lhs.true34.i.i.i.cond.false51.i.i.i_crit_edge: ; preds = %land.lhs.true34.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false51.i.i.i

cond.true40.i.i.i:                                ; preds = %land.lhs.true34.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %254 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %arrayidx.i.i.i, align 8
  %256 = ptrtoint ptr %255 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %255, align 4
  %add49.i.i.i = add i32 %257, 92
  %call50.i.i.i = tail call i32 %253(ptr noundef %add.ptr.i.i, i32 noundef %add49.i.i.i, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end58.i.i.i

cond.false51.i.i.i:                               ; preds = %land.lhs.true34.i.i.i.cond.false51.i.i.i_crit_edge, %land.lhs.true29.i.i.i.cond.false51.i.i.i_crit_edge, %if.end.i.i.i.cond.false51.i.i.i_crit_edge
  %258 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %arrayidx.i.i.i, align 8
  %260 = ptrtoint ptr %259 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %259, align 4
  %add56.i.i.i = add i32 %261, 92
  %call57.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add56.i.i.i, i32 noundef 0) #4
  br label %cond.end58.i.i.i

cond.end58.i.i.i:                                 ; preds = %cond.false51.i.i.i, %cond.true40.i.i.i
  %cond59.i.i.i = phi i32 [ %call50.i.i.i, %cond.true40.i.i.i ], [ %call57.i.i.i, %cond.false51.i.i.i ]
  %262 = and i32 %cond59.i.i.i, 8
  %cmp62.i.i.i = icmp eq i32 %262, 0
  br i1 %cmp62.i.i.i, label %cond.end58.i.i.i.do.body.i.i.i_crit_edge, label %if.end50.i.i

cond.end58.i.i.i.do.body.i.i.i_crit_edge:         ; preds = %cond.end58.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i

if.end50.i.i:                                     ; preds = %cond.end58.i.i.i
  %263 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %virt.i.i, align 8
  %and53.i.i = and i32 %264, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i.i)
  %tobool54.not.i.i = icmp eq i32 %and53.i.i, 0
  br i1 %tobool54.not.i.i, label %if.end50.i.i.cond.false76.i.i_crit_edge, label %land.lhs.true55.i.i

if.end50.i.i.cond.false76.i.i_crit_edge:          ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false76.i.i

land.lhs.true55.i.i:                              ; preds = %if.end50.i.i
  %265 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool59.not.i.i = icmp eq ptr %266, null
  br i1 %tobool59.not.i.i, label %land.lhs.true55.i.i.cond.false76.i.i_crit_edge, label %land.lhs.true60.i.i

land.lhs.true55.i.i.cond.false76.i.i_crit_edge:   ; preds = %land.lhs.true55.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false76.i.i

land.lhs.true60.i.i:                              ; preds = %land.lhs.true55.i.i
  %sriov_rreg.i.i83 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %266, i32 0, i32 13
  %267 = ptrtoint ptr %sriov_rreg.i.i83 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %sriov_rreg.i.i83, align 4
  %tobool64.not.i.i84 = icmp eq ptr %268, null
  br i1 %tobool64.not.i.i84, label %land.lhs.true60.i.i.cond.false76.i.i_crit_edge, label %cond.true65.i.i86

land.lhs.true60.i.i.cond.false76.i.i_crit_edge:   ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false76.i.i

cond.true65.i.i86:                                ; preds = %land.lhs.true60.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %269 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %arrayidx.i.i.i, align 8
  %271 = ptrtoint ptr %270 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %270, align 4
  %add74.i.i85 = add i32 %272, 68
  %call75.i.i = tail call i32 %268(ptr noundef %add.ptr.i.i, i32 noundef %add74.i.i85, i32 noundef 0, i32 noundef 22) #4
  br label %cleanup.i.i

cond.false76.i.i:                                 ; preds = %land.lhs.true60.i.i.cond.false76.i.i_crit_edge, %land.lhs.true55.i.i.cond.false76.i.i_crit_edge, %if.end50.i.i.cond.false76.i.i_crit_edge
  %273 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %arrayidx.i.i.i, align 8
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %274, align 4
  %add81.i.i = add i32 %276, 68
  %call82.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add81.i.i, i32 noundef 0) #4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cond.false76.i.i, %cond.true65.i.i86
  %cond.i.i87 = phi i32 [ %call75.i.i, %cond.true65.i.i86 ], [ %call82.i.i, %cond.false76.i.i ]
  %conv.i.i = trunc i32 %cond.i.i87 to i8
  %arrayidx85.i.i88 = getelementptr i8, ptr %157, i32 %bytes_received.0205.i.i
  %277 = ptrtoint ptr %arrayidx85.i.i88 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 %conv.i.i, ptr %arrayidx85.i.i88, align 1
  %inc.i.i89 = add nuw nsw i32 %bytes_received.0205.i.i, 1
  %dec.i.i = add nsw i32 %numbytes.addr.0204.i.i, -1
  %cmp.not.i.i90 = icmp eq i32 %dec.i.i, 0
  br i1 %cmp.not.i.i90, label %cleanup.i.i.while.end.i.i_crit_edge, label %cleanup.i.i.while.body.i.i_crit_edge

cleanup.i.i.while.body.i.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i

cleanup.i.i.while.end.i.i_crit_edge:              ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i

while.end.sink.split.i.i:                         ; preds = %do.body.i.i.i.while.end.sink.split.i.i_crit_edge, %cond.false.i.i.i.i, %cond.true.i.i.i.i
  %.str.8.sink.i.i = phi ptr [ @.str.9, %cond.true.i.i.i.i ], [ @.str.9, %cond.false.i.i.i.i ], [ @.str.8, %do.body.i.i.i.while.end.sink.split.i.i_crit_edge ]
  %ret.1.ph.i.i = phi i32 [ 1, %cond.true.i.i.i.i ], [ 1, %cond.false.i.i.i.i ], [ 8, %do.body.i.i.i.while.end.sink.split.i.i_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.8.sink.i.i) #4
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.end.sink.split.i.i, %cleanup.i.i.while.end.i.i_crit_edge, %smu_v11_0_i2c_enable.exit.i.i.while.end.i.i_crit_edge
  %bytes_received.0202.i.i = phi i32 [ 0, %smu_v11_0_i2c_enable.exit.i.i.while.end.i.i_crit_edge ], [ %bytes_received.0205.i.i, %while.end.sink.split.i.i ], [ %conv.i95, %cleanup.i.i.while.end.i.i_crit_edge ]
  %ret.1.i.i = phi i32 [ 0, %smu_v11_0_i2c_enable.exit.i.i.while.end.i.i_crit_edge ], [ %ret.1.ph.i.i, %while.end.sink.split.i.i ], [ 0, %cleanup.i.i.while.end.i.i_crit_edge ]
  %conv86.i.i = zext i16 %146 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef %conv86.i.i, i32 noundef %bytes_received.0202.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %278 = load i32, ptr @__drm_debug, align 4
  %and.i182.i.i = and i32 %278, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i182.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i182.i.i, 0
  br i1 %tobool.i.not.i.i, label %while.end.i.i.smu_v11_0_i2c_receive.exit.i_crit_edge, label %if.then88.i.i

while.end.i.i.smu_v11_0_i2c_receive.exit.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %smu_v11_0_i2c_receive.exit.i

if.then88.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @print_hex_dump(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %157, i32 noundef %bytes_received.0202.i.i, i1 noundef zeroext false) #4
  br label %smu_v11_0_i2c_receive.exit.i

smu_v11_0_i2c_receive.exit.i:                     ; preds = %if.then88.i.i, %while.end.i.i.smu_v11_0_i2c_receive.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %cmp.not.i91 = icmp eq i32 %ret.1.i.i, 0
  br i1 %cmp.not.i91, label %smu_v11_0_i2c_receive.exit.i.for.inc_crit_edge, label %if.then.i

smu_v11_0_i2c_receive.exit.i.for.inc_crit_edge:   ; preds = %smu_v11_0_i2c_receive.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then.i:                                        ; preds = %smu_v11_0_i2c_receive.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %ret.1.i.i) #4
  br label %for.end

if.else:                                          ; preds = %if.end25
  %conv.i.i97 = zext i16 %146 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, i32 noundef %conv.i.i97, i32 noundef %conv.i95) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %279 = load i32, ptr @__drm_debug, align 4
  %and.i.i.i98 = and i32 %279, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i98)
  %tobool.i.not.i.i99 = icmp eq i32 %and.i.i.i98, 0
  br i1 %tobool.i.not.i.i99, label %if.else.if.end.i.i_crit_edge, label %if.then.i.i100

if.else.if.end.i.i_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.i

if.then.i.i100:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @print_hex_dump(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %157, i32 noundef %conv.i95, i1 noundef zeroext false) #4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i100, %if.else.if.end.i.i_crit_edge
  %280 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %virt.i.i, align 8
  %and.i148.i.i = and i32 %281, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i148.i.i)
  %tobool.not.i.i.i102 = icmp eq i32 %and.i148.i.i, 0
  br i1 %tobool.not.i.i.i102, label %if.end.i.i.cond.false.i.i.i116_crit_edge, label %land.lhs.true.i.i.i105

if.end.i.i.cond.false.i.i.i116_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i.i116

land.lhs.true.i.i.i105:                           ; preds = %if.end.i.i
  %282 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool1.not.i.i.i104 = icmp eq ptr %283, null
  br i1 %tobool1.not.i.i.i104, label %land.lhs.true.i.i.i105.cond.false.i.i.i116_crit_edge, label %land.lhs.true2.i.i.i108

land.lhs.true.i.i.i105.cond.false.i.i.i116_crit_edge: ; preds = %land.lhs.true.i.i.i105
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i.i116

land.lhs.true2.i.i.i108:                          ; preds = %land.lhs.true.i.i.i105
  %sriov_wreg.i.i.i106 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %283, i32 0, i32 12
  %284 = ptrtoint ptr %sriov_wreg.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %sriov_wreg.i.i.i106, align 4
  %tobool6.not.i.i.i107 = icmp eq ptr %285, null
  br i1 %tobool6.not.i.i.i107, label %land.lhs.true2.i.i.i108.cond.false.i.i.i116_crit_edge, label %cond.true.i.i.i112

land.lhs.true2.i.i.i108.cond.false.i.i.i116_crit_edge: ; preds = %land.lhs.true2.i.i.i108
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i.i116

cond.true.i.i.i112:                               ; preds = %land.lhs.true2.i.i.i108
  call void @__sanitizer_cov_trace_pc() #6
  %286 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %arrayidx.i.i.i, align 8
  %288 = ptrtoint ptr %287 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %287, align 4
  %add.i.i.i110 = add i32 %289, 65
  %290 = and i16 %146, 1023
  %and13.i.i.i111 = zext i16 %290 to i32
  tail call void %285(ptr noundef %add.ptr.i.i, i32 noundef %add.i.i.i110, i32 noundef %and13.i.i.i111, i32 noundef 0, i32 noundef 22) #4
  br label %smu_v11_0_i2c_set_address.exit.i.i117

cond.false.i.i.i116:                              ; preds = %land.lhs.true2.i.i.i108.cond.false.i.i.i116_crit_edge, %land.lhs.true.i.i.i105.cond.false.i.i.i116_crit_edge, %if.end.i.i.cond.false.i.i.i116_crit_edge
  %291 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %arrayidx.i.i.i, align 8
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %292, align 4
  %add18.i.i.i114 = add i32 %294, 65
  %295 = and i16 %146, 1023
  %and20.i.i.i115 = zext i16 %295 to i32
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add18.i.i.i114, i32 noundef %and20.i.i.i115, i32 noundef 0) #4
  br label %smu_v11_0_i2c_set_address.exit.i.i117

smu_v11_0_i2c_set_address.exit.i.i117:            ; preds = %cond.false.i.i.i116, %cond.true.i.i.i112
  %296 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %virt.i.i, align 8
  %and.i151.i.i = and i32 %297, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i151.i.i)
  %tobool.not.i152.i.i = icmp eq i32 %and.i151.i.i, 0
  br i1 %tobool.not.i152.i.i, label %smu_v11_0_i2c_set_address.exit.i.i117.cond.false.i164.i.i_crit_edge, label %land.lhs.true.i155.i.i

smu_v11_0_i2c_set_address.exit.i.i117.cond.false.i164.i.i_crit_edge: ; preds = %smu_v11_0_i2c_set_address.exit.i.i117
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i164.i.i

land.lhs.true.i155.i.i:                           ; preds = %smu_v11_0_i2c_set_address.exit.i.i117
  %298 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool1.not.i154.i.i = icmp eq ptr %299, null
  br i1 %tobool1.not.i154.i.i, label %land.lhs.true.i155.i.i.cond.false.i164.i.i_crit_edge, label %land.lhs.true2.i158.i.i

land.lhs.true.i155.i.i.cond.false.i164.i.i_crit_edge: ; preds = %land.lhs.true.i155.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i164.i.i

land.lhs.true2.i158.i.i:                          ; preds = %land.lhs.true.i155.i.i
  %sriov_wreg.i156.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %299, i32 0, i32 12
  %300 = ptrtoint ptr %sriov_wreg.i156.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %sriov_wreg.i156.i.i, align 4
  %tobool6.not.i157.i.i = icmp eq ptr %301, null
  br i1 %tobool6.not.i157.i.i, label %land.lhs.true2.i158.i.i.cond.false.i164.i.i_crit_edge, label %cond.true.i161.i.i

land.lhs.true2.i158.i.i.cond.false.i164.i.i_crit_edge: ; preds = %land.lhs.true2.i158.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i164.i.i

cond.true.i161.i.i:                               ; preds = %land.lhs.true2.i158.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %302 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %arrayidx.i.i.i, align 8
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %303, align 4
  %add.i160.i.i = add i32 %305, 91
  tail call void %301(ptr noundef %add.ptr.i.i, i32 noundef %add.i160.i.i, i32 noundef 1, i32 noundef 0, i32 noundef 22) #4
  br label %smu_v11_0_i2c_enable.exit.i.i118

cond.false.i164.i.i:                              ; preds = %land.lhs.true2.i158.i.i.cond.false.i164.i.i_crit_edge, %land.lhs.true.i155.i.i.cond.false.i164.i.i_crit_edge, %smu_v11_0_i2c_set_address.exit.i.i117.cond.false.i164.i.i_crit_edge
  %306 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %arrayidx.i.i.i, align 8
  %308 = ptrtoint ptr %307 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %307, align 4
  %add18.i163.i.i = add i32 %309, 91
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add18.i163.i.i, i32 noundef 1, i32 noundef 0) #4
  br label %smu_v11_0_i2c_enable.exit.i.i118

smu_v11_0_i2c_enable.exit.i.i118:                 ; preds = %cond.false.i164.i.i, %cond.true.i161.i.i
  %310 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %virt.i.i, align 8
  %and.i167.i.i = and i32 %311, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i167.i.i)
  %tobool.not.i168.i.i = icmp eq i32 %and.i167.i.i, 0
  br i1 %tobool.not.i168.i.i, label %smu_v11_0_i2c_enable.exit.i.i118.cond.false.i177.i.i_crit_edge, label %land.lhs.true.i171.i.i

smu_v11_0_i2c_enable.exit.i.i118.cond.false.i177.i.i_crit_edge: ; preds = %smu_v11_0_i2c_enable.exit.i.i118
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i177.i.i

land.lhs.true.i171.i.i:                           ; preds = %smu_v11_0_i2c_enable.exit.i.i118
  %312 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool1.not.i170.i.i = icmp eq ptr %313, null
  br i1 %tobool1.not.i170.i.i, label %land.lhs.true.i171.i.i.cond.false.i177.i.i_crit_edge, label %land.lhs.true2.i173.i.i121

land.lhs.true.i171.i.i.cond.false.i177.i.i_crit_edge: ; preds = %land.lhs.true.i171.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i177.i.i

land.lhs.true2.i173.i.i121:                       ; preds = %land.lhs.true.i171.i.i
  %sriov_rreg.i.i.i119 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %313, i32 0, i32 13
  %314 = ptrtoint ptr %sriov_rreg.i.i.i119 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %sriov_rreg.i.i.i119, align 4
  %tobool6.not.i172.i.i120 = icmp eq ptr %315, null
  br i1 %tobool6.not.i172.i.i120, label %land.lhs.true2.i173.i.i121.cond.false.i177.i.i_crit_edge, label %cond.true.i176.i.i

land.lhs.true2.i173.i.i121.cond.false.i177.i.i_crit_edge: ; preds = %land.lhs.true2.i173.i.i121
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i177.i.i

cond.true.i176.i.i:                               ; preds = %land.lhs.true2.i173.i.i121
  call void @__sanitizer_cov_trace_pc() #6
  %316 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %arrayidx.i.i.i, align 8
  %318 = ptrtoint ptr %317 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %317, align 4
  %add.i175.i.i122 = add i32 %319, 80
  %call.i.i.i123 = tail call i32 %315(ptr noundef %add.ptr.i.i, i32 noundef %add.i175.i.i122, i32 noundef 0, i32 noundef 22) #4
  br label %smu_v11_0_i2c_clear_status.exit.i.i128

cond.false.i177.i.i:                              ; preds = %land.lhs.true2.i173.i.i121.cond.false.i177.i.i_crit_edge, %land.lhs.true.i171.i.i.cond.false.i177.i.i_crit_edge, %smu_v11_0_i2c_enable.exit.i.i118.cond.false.i177.i.i_crit_edge
  %320 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %arrayidx.i.i.i, align 8
  %322 = ptrtoint ptr %321 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %321, align 4
  %add17.i.i.i124 = add i32 %323, 80
  %call18.i.i.i125 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add17.i.i.i124, i32 noundef 0) #4
  br label %smu_v11_0_i2c_clear_status.exit.i.i128

smu_v11_0_i2c_clear_status.exit.i.i128:           ; preds = %cond.false.i177.i.i, %cond.true.i176.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %324 = load volatile i32, ptr @jiffies, align 128
  %add.i.i126 = add i32 %324, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %159)
  %cmp.not203.i.i127 = icmp eq i16 %159, 0
  br i1 %cmp.not203.i.i127, label %smu_v11_0_i2c_clear_status.exit.i.i128.while.end.i.i154_crit_edge, label %while.body.lr.ph.i.i131

smu_v11_0_i2c_clear_status.exit.i.i128.while.end.i.i154_crit_edge: ; preds = %smu_v11_0_i2c_clear_status.exit.i.i128
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i154

while.body.lr.ph.i.i131:                          ; preds = %smu_v11_0_i2c_clear_status.exit.i.i128
  %and39.i.i = and i32 %spec.select, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39.i.i)
  %tobool40.not.i.i = icmp eq i32 %and39.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select)
  %tobool49.not.i.i = icmp sgt i32 %spec.select, -1
  br label %while.body.i.i135

while.body.i.i135:                                ; preds = %if.end87.i.i.while.body.i.i135_crit_edge, %while.body.lr.ph.i.i131
  %bytes_sent.0205.i.i = phi i32 [ 0, %while.body.lr.ph.i.i131 ], [ %bytes_sent.1.i.i, %if.end87.i.i.while.body.i.i135_crit_edge ]
  %numbytes.addr.0204.i.i132 = phi i32 [ %conv.i95, %while.body.lr.ph.i.i131 ], [ %numbytes.addr.1.i.i, %if.end87.i.i.while.body.i.i135_crit_edge ]
  %325 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %virt.i.i, align 8
  %and.i.i133 = and i32 %326, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i133)
  %tobool.not.i.i134 = icmp eq i32 %and.i.i133, 0
  br i1 %tobool.not.i.i134, label %while.body.i.i135.cond.false.i.i139_crit_edge, label %land.lhs.true.i.i136

while.body.i.i135.cond.false.i.i139_crit_edge:    ; preds = %while.body.i.i135
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i139

land.lhs.true.i.i136:                             ; preds = %while.body.i.i135
  %327 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %328, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i136.cond.false.i.i139_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i136.cond.false.i.i139_crit_edge: ; preds = %land.lhs.true.i.i136
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i139

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i136
  %sriov_rreg.i.i137 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %328, i32 0, i32 13
  %329 = ptrtoint ptr %sriov_rreg.i.i137 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %sriov_rreg.i.i137, align 4
  %tobool9.not.i.i = icmp eq ptr %330, null
  br i1 %tobool9.not.i.i, label %land.lhs.true5.i.i.cond.false.i.i139_crit_edge, label %cond.true.i.i138

land.lhs.true5.i.i.cond.false.i.i139_crit_edge:   ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i139

cond.true.i.i138:                                 ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %331 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %arrayidx.i.i.i, align 8
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %332, align 4
  %add16.i.i = add i32 %334, 92
  %call17.i.i = tail call i32 %330(ptr noundef %add.ptr.i.i, i32 noundef %add16.i.i, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end.i.i141

cond.false.i.i139:                                ; preds = %land.lhs.true5.i.i.cond.false.i.i139_crit_edge, %land.lhs.true.i.i136.cond.false.i.i139_crit_edge, %while.body.i.i135.cond.false.i.i139_crit_edge
  %335 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %arrayidx.i.i.i, align 8
  %337 = ptrtoint ptr %336 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %336, align 4
  %add22.i.i = add i32 %338, 92
  %call23.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add22.i.i, i32 noundef 0) #4
  br label %cond.end.i.i141

cond.end.i.i141:                                  ; preds = %cond.false.i.i139, %cond.true.i.i138
  %cond.i.i140 = phi i32 [ %call17.i.i, %cond.true.i.i138 ], [ %call23.i.i, %cond.false.i.i139 ]
  %339 = and i32 %cond.i.i140, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %tobool25.not.i.i = icmp eq i32 %339, 0
  br i1 %tobool25.not.i.i, label %if.then26.i.i, label %if.else.i.i147

if.then26.i.i:                                    ; preds = %cond.end.i.i141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %340 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i126, %340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp27.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp27.i.i, label %if.then26.i.i.if.end104.sink.split.i.i_crit_edge, label %if.then26.i.i.if.end87.i.i_crit_edge

if.then26.i.i.if.end87.i.i_crit_edge:             ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end87.i.i

if.then26.i.i.if.end104.sink.split.i.i_crit_edge: ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104.sink.split.i.i

if.else.i.i147:                                   ; preds = %cond.end.i.i141
  %and31.i.i = and i32 %cond.i.i140, -256
  %arrayidx32.i.i = getelementptr i8, ptr %157, i32 %bytes_sent.0205.i.i
  %341 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load1_noabort(i32 %341)
  %342 = load i8, ptr %arrayidx32.i.i, align 1
  %conv33.i.i = zext i8 %342 to i32
  %or35.i.i = or i32 %and31.i.i, %conv33.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %numbytes.addr.0204.i.i132)
  %cmp36.i.i = icmp ne i32 %numbytes.addr.0204.i.i132, 1
  %or.cond.i.i142 = or i1 %tobool40.not.i.i, %cmp36.i.i
  %or43.i.i = or i32 %or35.i.i, 512
  %reg.0.i.i143 = select i1 %or.cond.i.i142, i32 %or35.i.i, i32 %or43.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes_sent.0205.i.i)
  %cmp45.i.i = icmp ne i32 %bytes_sent.0205.i.i, 0
  %or.cond147.i.i = or i1 %tobool49.not.i.i, %cmp45.i.i
  %or52.i.i = or i32 %reg.0.i.i143, 1024
  %reg.1.i.i144 = select i1 %or.cond147.i.i, i32 %reg.0.i.i143, i32 %or52.i.i
  %and54.i.i145 = and i32 %reg.1.i.i144, -257
  %343 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %virt.i.i, align 8
  %and58.i.i = and i32 %344, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i.i)
  %tobool59.not.i.i146 = icmp eq i32 %and58.i.i, 0
  br i1 %tobool59.not.i.i146, label %if.else.i.i147.cond.false80.i.i_crit_edge, label %land.lhs.true60.i.i149

if.else.i.i147.cond.false80.i.i_crit_edge:        ; preds = %if.else.i.i147
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false80.i.i

land.lhs.true60.i.i149:                           ; preds = %if.else.i.i147
  %345 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool64.not.i.i148 = icmp eq ptr %346, null
  br i1 %tobool64.not.i.i148, label %land.lhs.true60.i.i149.cond.false80.i.i_crit_edge, label %land.lhs.true65.i.i

land.lhs.true60.i.i149.cond.false80.i.i_crit_edge: ; preds = %land.lhs.true60.i.i149
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false80.i.i

land.lhs.true65.i.i:                              ; preds = %land.lhs.true60.i.i149
  %sriov_wreg.i.i150 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %346, i32 0, i32 12
  %347 = ptrtoint ptr %sriov_wreg.i.i150 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %sriov_wreg.i.i150, align 4
  %tobool69.not.i.i = icmp eq ptr %348, null
  br i1 %tobool69.not.i.i, label %land.lhs.true65.i.i.cond.false80.i.i_crit_edge, label %cond.true70.i.i

land.lhs.true65.i.i.cond.false80.i.i_crit_edge:   ; preds = %land.lhs.true65.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false80.i.i

cond.true70.i.i:                                  ; preds = %land.lhs.true65.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %349 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %arrayidx.i.i.i, align 8
  %351 = ptrtoint ptr %350 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %350, align 4
  %add79.i.i = add i32 %352, 68
  tail call void %348(ptr noundef %add.ptr.i.i, i32 noundef %add79.i.i, i32 noundef %and54.i.i145, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end86.i.i

cond.false80.i.i:                                 ; preds = %land.lhs.true65.i.i.cond.false80.i.i_crit_edge, %land.lhs.true60.i.i149.cond.false80.i.i_crit_edge, %if.else.i.i147.cond.false80.i.i_crit_edge
  %353 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %arrayidx.i.i.i, align 8
  %355 = ptrtoint ptr %354 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %354, align 4
  %add85.i.i = add i32 %356, 68
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr.i.i, i32 noundef %add85.i.i, i32 noundef %and54.i.i145, i32 noundef 0) #4
  br label %cond.end86.i.i

cond.end86.i.i:                                   ; preds = %cond.false80.i.i, %cond.true70.i.i
  %inc.i.i151 = add i32 %bytes_sent.0205.i.i, 1
  %dec.i.i152 = add i32 %numbytes.addr.0204.i.i132, -1
  br label %if.end87.i.i

if.end87.i.i:                                     ; preds = %cond.end86.i.i, %if.then26.i.i.if.end87.i.i_crit_edge
  %numbytes.addr.1.i.i = phi i32 [ %dec.i.i152, %cond.end86.i.i ], [ %numbytes.addr.0204.i.i132, %if.then26.i.i.if.end87.i.i_crit_edge ]
  %bytes_sent.1.i.i = phi i32 [ %inc.i.i151, %cond.end86.i.i ], [ %bytes_sent.0205.i.i, %if.then26.i.i.if.end87.i.i_crit_edge ]
  %cmp.not.i.i153 = icmp eq i32 %numbytes.addr.1.i.i, 0
  br i1 %cmp.not.i.i153, label %if.end87.i.i.while.end.i.i154_crit_edge, label %if.end87.i.i.while.body.i.i135_crit_edge

if.end87.i.i.while.body.i.i135_crit_edge:         ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i.i135

if.end87.i.i.while.end.i.i154_crit_edge:          ; preds = %if.end87.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i.i154

while.end.i.i154:                                 ; preds = %if.end87.i.i.while.end.i.i154_crit_edge, %smu_v11_0_i2c_clear_status.exit.i.i128.while.end.i.i154_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %357 = load volatile i32, ptr @jiffies, align 128
  %add.i179.i.i = add i32 %357, 2
  br label %do.body.i.i.i156

do.body.i.i.i156:                                 ; preds = %cond.end.i.i.i160.do.body.i.i.i156_crit_edge, %while.end.i.i154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %358 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i.i155 = sub i32 %add.i179.i.i, %358
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i155)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i155, 0
  br i1 %cmp.i.i.i, label %do.body.i.i.i156.if.end104.sink.split.i.i_crit_edge, label %if.end.i.i.i157

do.body.i.i.i156.if.end104.sink.split.i.i_crit_edge: ; preds = %do.body.i.i.i156
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104.sink.split.i.i

if.end.i.i.i157:                                  ; preds = %do.body.i.i.i156
  %359 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %virt.i.i, align 8
  %and.i183.i.i = and i32 %360, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i183.i.i)
  %tobool.not.i184.i.i = icmp eq i32 %and.i183.i.i, 0
  br i1 %tobool.not.i184.i.i, label %if.end.i.i.i157.cond.false.i191.i.i_crit_edge, label %land.lhs.true.i186.i.i

if.end.i.i.i157.cond.false.i191.i.i_crit_edge:    ; preds = %if.end.i.i.i157
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i191.i.i

land.lhs.true.i186.i.i:                           ; preds = %if.end.i.i.i157
  %361 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool1.not.i185.i.i = icmp eq ptr %362, null
  br i1 %tobool1.not.i185.i.i, label %land.lhs.true.i186.i.i.cond.false.i191.i.i_crit_edge, label %land.lhs.true2.i189.i.i

land.lhs.true.i186.i.i.cond.false.i191.i.i_crit_edge: ; preds = %land.lhs.true.i186.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i191.i.i

land.lhs.true2.i189.i.i:                          ; preds = %land.lhs.true.i186.i.i
  %sriov_rreg.i187.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %362, i32 0, i32 13
  %363 = ptrtoint ptr %sriov_rreg.i187.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %sriov_rreg.i187.i.i, align 4
  %tobool6.not.i188.i.i = icmp eq ptr %364, null
  br i1 %tobool6.not.i188.i.i, label %land.lhs.true2.i189.i.i.cond.false.i191.i.i_crit_edge, label %cond.true.i190.i.i

land.lhs.true2.i189.i.i.cond.false.i191.i.i_crit_edge: ; preds = %land.lhs.true2.i189.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i191.i.i

cond.true.i190.i.i:                               ; preds = %land.lhs.true2.i189.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %365 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %arrayidx.i.i.i, align 8
  %367 = ptrtoint ptr %366 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %366, align 4
  %add13.i.i.i = add i32 %368, 92
  %call14.i.i.i = tail call i32 %364(ptr noundef %add.ptr.i.i, i32 noundef %add13.i.i.i, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end.i.i.i160

cond.false.i191.i.i:                              ; preds = %land.lhs.true2.i189.i.i.cond.false.i191.i.i_crit_edge, %land.lhs.true.i186.i.i.cond.false.i191.i.i_crit_edge, %if.end.i.i.i157.cond.false.i191.i.i_crit_edge
  %369 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %arrayidx.i.i.i, align 8
  %371 = ptrtoint ptr %370 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %370, align 4
  %add19.i.i.i = add i32 %372, 92
  %call20.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add19.i.i.i, i32 noundef 0) #4
  br label %cond.end.i.i.i160

cond.end.i.i.i160:                                ; preds = %cond.false.i191.i.i, %cond.true.i190.i.i
  %cond.i.i.i158 = phi i32 [ %call14.i.i.i, %cond.true.i190.i.i ], [ %call20.i.i.i, %cond.false.i191.i.i ]
  %373 = and i32 %cond.i.i.i158, 4
  %cmp22.i.i.i159 = icmp eq i32 %373, 0
  br i1 %cmp22.i.i.i159, label %cond.end.i.i.i160.do.body.i.i.i156_crit_edge, label %if.end25.i.i.i

cond.end.i.i.i160.do.body.i.i.i156_crit_edge:     ; preds = %cond.end.i.i.i160
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i.i.i156

if.end25.i.i.i:                                   ; preds = %cond.end.i.i.i160
  %374 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load i32, ptr %virt.i.i, align 8
  %and28.i.i.i = and i32 %375, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i.i.i)
  %tobool29.not.i.i.i = icmp eq i32 %and28.i.i.i, 0
  br i1 %tobool29.not.i.i.i, label %if.end25.i.i.i.cond.false52.i.i.i_crit_edge, label %land.lhs.true30.i.i.i

if.end25.i.i.i.cond.false52.i.i.i_crit_edge:      ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false52.i.i.i

land.lhs.true30.i.i.i:                            ; preds = %if.end25.i.i.i
  %376 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool34.not.i.i.i = icmp eq ptr %377, null
  br i1 %tobool34.not.i.i.i, label %land.lhs.true30.i.i.i.cond.false52.i.i.i_crit_edge, label %land.lhs.true35.i.i.i

land.lhs.true30.i.i.i.cond.false52.i.i.i_crit_edge: ; preds = %land.lhs.true30.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false52.i.i.i

land.lhs.true35.i.i.i:                            ; preds = %land.lhs.true30.i.i.i
  %sriov_rreg39.i.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %377, i32 0, i32 13
  %378 = ptrtoint ptr %sriov_rreg39.i.i.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %sriov_rreg39.i.i.i, align 4
  %tobool40.not.i.i.i = icmp eq ptr %379, null
  br i1 %tobool40.not.i.i.i, label %land.lhs.true35.i.i.i.cond.false52.i.i.i_crit_edge, label %cond.true41.i.i.i

land.lhs.true35.i.i.i.cond.false52.i.i.i_crit_edge: ; preds = %land.lhs.true35.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false52.i.i.i

cond.true41.i.i.i:                                ; preds = %land.lhs.true35.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %380 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %arrayidx.i.i.i, align 8
  %382 = ptrtoint ptr %381 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %381, align 4
  %add50.i.i.i = add i32 %383, 75
  %call51.i.i.i = tail call i32 %379(ptr noundef %add.ptr.i.i, i32 noundef %add50.i.i.i, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end59.i.i.i

cond.false52.i.i.i:                               ; preds = %land.lhs.true35.i.i.i.cond.false52.i.i.i_crit_edge, %land.lhs.true30.i.i.i.cond.false52.i.i.i_crit_edge, %if.end25.i.i.i.cond.false52.i.i.i_crit_edge
  %384 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %arrayidx.i.i.i, align 8
  %386 = ptrtoint ptr %385 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load i32, ptr %385, align 4
  %add57.i.i.i = add i32 %387, 75
  %call58.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add57.i.i.i, i32 noundef 0) #4
  br label %cond.end59.i.i.i

cond.end59.i.i.i:                                 ; preds = %cond.false52.i.i.i, %cond.true41.i.i.i
  %cond60.i.i.i = phi i32 [ %call51.i.i.i, %cond.true41.i.i.i ], [ %call58.i.i.i, %cond.false52.i.i.i ]
  %388 = and i32 %cond60.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %388)
  %cmp63.not.i.i.i = icmp eq i32 %388, 0
  br i1 %cmp63.not.i.i.i, label %cond.end59.i.i.i.for.inc_crit_edge, label %if.then64.i.i.i

cond.end59.i.i.i.for.inc_crit_edge:               ; preds = %cond.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then64.i.i.i:                                  ; preds = %cond.end59.i.i.i
  %389 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %virt.i.i, align 8
  %and67.i.i.i = and i32 %390, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.i.i.i)
  %tobool68.not.i.i.i = icmp eq i32 %and67.i.i.i, 0
  br i1 %tobool68.not.i.i.i, label %if.then64.i.i.i.cond.false91.i.i.i_crit_edge, label %land.lhs.true69.i.i.i

if.then64.i.i.i.cond.false91.i.i.i_crit_edge:     ; preds = %if.then64.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false91.i.i.i

land.lhs.true69.i.i.i:                            ; preds = %if.then64.i.i.i
  %391 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool73.not.i.i.i = icmp eq ptr %392, null
  br i1 %tobool73.not.i.i.i, label %land.lhs.true69.i.i.i.cond.false91.i.i.i_crit_edge, label %land.lhs.true74.i.i.i

land.lhs.true69.i.i.i.cond.false91.i.i.i_crit_edge: ; preds = %land.lhs.true69.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false91.i.i.i

land.lhs.true74.i.i.i:                            ; preds = %land.lhs.true69.i.i.i
  %sriov_rreg78.i.i.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %392, i32 0, i32 13
  %393 = ptrtoint ptr %sriov_rreg78.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %sriov_rreg78.i.i.i, align 4
  %tobool79.not.i.i.i = icmp eq ptr %394, null
  br i1 %tobool79.not.i.i.i, label %land.lhs.true74.i.i.i.cond.false91.i.i.i_crit_edge, label %cond.true80.i.i.i

land.lhs.true74.i.i.i.cond.false91.i.i.i_crit_edge: ; preds = %land.lhs.true74.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false91.i.i.i

cond.true80.i.i.i:                                ; preds = %land.lhs.true74.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %395 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %arrayidx.i.i.i, align 8
  %397 = ptrtoint ptr %396 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %396, align 4
  %add89.i.i.i = add i32 %398, 96
  %call90.i.i.i = tail call i32 %394(ptr noundef %add.ptr.i.i, i32 noundef %add89.i.i.i, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end98.i.i.i

cond.false91.i.i.i:                               ; preds = %land.lhs.true74.i.i.i.cond.false91.i.i.i_crit_edge, %land.lhs.true69.i.i.i.cond.false91.i.i.i_crit_edge, %if.then64.i.i.i.cond.false91.i.i.i_crit_edge
  %399 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %arrayidx.i.i.i, align 8
  %401 = ptrtoint ptr %400 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %400, align 4
  %add96.i.i.i = add i32 %402, 96
  %call97.i.i.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add96.i.i.i, i32 noundef 0) #4
  br label %cond.end98.i.i.i

cond.end98.i.i.i:                                 ; preds = %cond.false91.i.i.i, %cond.true80.i.i.i
  %cond99.i.i.i = phi i32 [ %call90.i.i.i, %cond.true80.i.i.i ], [ %call97.i.i.i, %cond.false91.i.i.i ]
  %call104.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %cond99.i.i.i) #7
  %403 = and i32 %cond99.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %403)
  %cmp107.not.i.i.i = icmp eq i32 %403, 0
  %and110.i.i.i = and i32 %cond99.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110.i.i.i)
  %cmp112.not.i.i.i = icmp eq i32 %and110.i.i.i, 0
  %..i.i.i = select i1 %cmp112.not.i.i.i, i32 16, i32 1
  %ret.1.i.i.i = select i1 %cmp107.not.i.i.i, i32 %..i.i.i, i32 2
  %404 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %virt.i.i, align 8
  %and.i.i.i.i161 = and i32 %405, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i161)
  %tobool.not.i.i.i.i162 = icmp eq i32 %and.i.i.i.i161, 0
  br i1 %tobool.not.i.i.i.i162, label %cond.end98.i.i.i.cond.false.i.i.i.i173_crit_edge, label %land.lhs.true.i.i.i.i164

cond.end98.i.i.i.cond.false.i.i.i.i173_crit_edge: ; preds = %cond.end98.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i.i.i173

land.lhs.true.i.i.i.i164:                         ; preds = %cond.end98.i.i.i
  %406 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool1.not.i.i.i.i163 = icmp eq ptr %407, null
  br i1 %tobool1.not.i.i.i.i163, label %land.lhs.true.i.i.i.i164.cond.false.i.i.i.i173_crit_edge, label %land.lhs.true2.i.i.i.i167

land.lhs.true.i.i.i.i164.cond.false.i.i.i.i173_crit_edge: ; preds = %land.lhs.true.i.i.i.i164
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i.i.i173

land.lhs.true2.i.i.i.i167:                        ; preds = %land.lhs.true.i.i.i.i164
  %sriov_rreg.i.i.i.i165 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %407, i32 0, i32 13
  %408 = ptrtoint ptr %sriov_rreg.i.i.i.i165 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %sriov_rreg.i.i.i.i165, align 4
  %tobool6.not.i.i.i.i166 = icmp eq ptr %409, null
  br i1 %tobool6.not.i.i.i.i166, label %land.lhs.true2.i.i.i.i167.cond.false.i.i.i.i173_crit_edge, label %cond.true.i.i.i.i170

land.lhs.true2.i.i.i.i167.cond.false.i.i.i.i173_crit_edge: ; preds = %land.lhs.true2.i.i.i.i167
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i.i.i.i173

cond.true.i.i.i.i170:                             ; preds = %land.lhs.true2.i.i.i.i167
  call void @__sanitizer_cov_trace_pc() #6
  %410 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %arrayidx.i.i.i, align 8
  %412 = ptrtoint ptr %411 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %411, align 4
  %add.i.i.i.i168 = add i32 %413, 80
  %call.i.i.i.i169 = tail call i32 %409(ptr noundef %add.ptr.i.i, i32 noundef %add.i.i.i.i168, i32 noundef 0, i32 noundef 22) #4
  br label %if.end95.i.i

cond.false.i.i.i.i173:                            ; preds = %land.lhs.true2.i.i.i.i167.cond.false.i.i.i.i173_crit_edge, %land.lhs.true.i.i.i.i164.cond.false.i.i.i.i173_crit_edge, %cond.end98.i.i.i.cond.false.i.i.i.i173_crit_edge
  %414 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %arrayidx.i.i.i, align 8
  %416 = ptrtoint ptr %415 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %415, align 4
  %add17.i.i.i.i171 = add i32 %417, 80
  %call18.i.i.i.i172 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add17.i.i.i.i171, i32 noundef 0) #4
  br label %if.end95.i.i

if.end95.i.i:                                     ; preds = %cond.false.i.i.i.i173, %cond.true.i.i.i.i170
  %and96.i.i = and i32 %ret.1.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96.i.i)
  %tobool97.not.i.i = icmp eq i32 %and96.i.i, 0
  br i1 %tobool97.not.i.i, label %if.end95.i.i.if.end99.i.i_crit_edge, label %if.then98.i.i

if.end95.i.i.if.end99.i.i_crit_edge:              ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99.i.i

if.then98.i.i:                                    ; preds = %if.end95.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #4
  br label %if.end99.i.i

if.end99.i.i:                                     ; preds = %if.then98.i.i, %if.end95.i.i.if.end99.i.i_crit_edge
  %and100.i.i = and i32 %ret.1.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i.i)
  %tobool101.not.i.i = icmp eq i32 %and100.i.i, 0
  br i1 %tobool101.not.i.i, label %if.end99.i.i.if.then.i175_crit_edge, label %if.end99.i.i.if.end104.sink.split.i.i_crit_edge

if.end99.i.i.if.end104.sink.split.i.i_crit_edge:  ; preds = %if.end99.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end104.sink.split.i.i

if.end99.i.i.if.then.i175_crit_edge:              ; preds = %if.end99.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i175

if.end104.sink.split.i.i:                         ; preds = %if.end99.i.i.if.end104.sink.split.i.i_crit_edge, %do.body.i.i.i156.if.end104.sink.split.i.i_crit_edge, %if.then26.i.i.if.end104.sink.split.i.i_crit_edge
  %.str.8.sink.i.i174 = phi ptr [ @.str.10, %if.end99.i.i.if.end104.sink.split.i.i_crit_edge ], [ @.str.8, %do.body.i.i.i156.if.end104.sink.split.i.i_crit_edge ], [ @.str.8, %if.then26.i.i.if.end104.sink.split.i.i_crit_edge ]
  %ret.0195.ph.i.i = phi i32 [ %ret.1.i.i.i, %if.end99.i.i.if.end104.sink.split.i.i_crit_edge ], [ 8, %do.body.i.i.i156.if.end104.sink.split.i.i_crit_edge ], [ 8, %if.then26.i.i.if.end104.sink.split.i.i_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.8.sink.i.i174) #4
  br label %if.then.i175

if.then.i175:                                     ; preds = %if.end104.sink.split.i.i, %if.end99.i.i.if.then.i175_crit_edge
  %ret.0195.i.ph.i = phi i32 [ %ret.0195.ph.i.i, %if.end104.sink.split.i.i ], [ %ret.1.i.i.i, %if.end99.i.i.if.then.i175_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %ret.0195.i.ph.i) #4
  br label %for.end

for.inc:                                          ; preds = %cond.end59.i.i.i.for.inc_crit_edge, %smu_v11_0_i2c_receive.exit.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0194, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then.i175, %if.then.i, %smu_v11_0_i2c_init.exit.for.end_crit_edge
  %num.addr.2 = phi i32 [ -5, %if.then.i175 ], [ -5, %if.then.i ], [ %num, %smu_v11_0_i2c_init.exit.for.end_crit_edge ], [ %num, %for.inc.for.end_crit_edge ]
  %call.i = tail call fastcc i32 @smu_v11_0_i2c_enable(ptr noundef %i2c_adap, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i177 = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i177, label %for.end.smu_v11_0_i2c_fini.exit_crit_edge, label %if.then.i178

for.end.smu_v11_0_i2c_fini.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %smu_v11_0_i2c_fini.exit

if.then.i178:                                     ; preds = %for.end
  %418 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %virt.i.i, align 8
  %and.i = and i32 %419, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i178.cond.false.i_crit_edge, label %land.lhs.true.i

if.then.i178.cond.false.i_crit_edge:              ; preds = %if.then.i178
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.then.i178
  %funcs.i = getelementptr i8, ptr %i2c_adap, i32 2236
  %420 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %funcs.i, align 4
  %tobool1.not.i = icmp eq ptr %421, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %sriov_rreg.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %421, i32 0, i32 13
  %422 = ptrtoint ptr %sriov_rreg.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %sriov_rreg.i, align 4
  %tobool6.not.i = icmp eq ptr %423, null
  br i1 %tobool6.not.i, label %land.lhs.true2.i.cond.false.i_crit_edge, label %cond.true.i

land.lhs.true2.i.cond.false.i_crit_edge:          ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false.i

cond.true.i:                                      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %424 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %arrayidx.i, align 8
  %426 = ptrtoint ptr %425 to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %425, align 4
  %add.i = add i32 %427, 92
  %call13.i = tail call i32 %423(ptr noundef %add.ptr.i.i, i32 noundef %add.i, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end.i

cond.false.i:                                     ; preds = %land.lhs.true2.i.cond.false.i_crit_edge, %land.lhs.true.i.cond.false.i_crit_edge, %if.then.i178.cond.false.i_crit_edge
  %arrayidx15.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %428 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %arrayidx15.i, align 8
  %430 = ptrtoint ptr %429 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load i32, ptr %429, align 4
  %add18.i = add i32 %431, 92
  %call19.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add18.i, i32 noundef 0) #4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %call13.i, %cond.true.i ], [ %call19.i, %cond.false.i ]
  %432 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load i32, ptr %virt.i.i, align 8
  %and22.i = and i32 %433, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %cond.end.i.cond.false46.i_crit_edge, label %land.lhs.true24.i

cond.end.i.cond.false46.i_crit_edge:              ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false46.i

land.lhs.true24.i:                                ; preds = %cond.end.i
  %funcs27.i = getelementptr i8, ptr %i2c_adap, i32 2236
  %434 = ptrtoint ptr %funcs27.i to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %funcs27.i, align 4
  %tobool28.not.i = icmp eq ptr %435, null
  br i1 %tobool28.not.i, label %land.lhs.true24.i.cond.false46.i_crit_edge, label %land.lhs.true29.i

land.lhs.true24.i.cond.false46.i_crit_edge:       ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false46.i

land.lhs.true29.i:                                ; preds = %land.lhs.true24.i
  %sriov_rreg33.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %435, i32 0, i32 13
  %436 = ptrtoint ptr %sriov_rreg33.i to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %sriov_rreg33.i, align 4
  %tobool34.not.i = icmp eq ptr %437, null
  br i1 %tobool34.not.i, label %land.lhs.true29.i.cond.false46.i_crit_edge, label %cond.true35.i

land.lhs.true29.i.cond.false46.i_crit_edge:       ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false46.i

cond.true35.i:                                    ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx41.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %438 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %arrayidx41.i, align 8
  %440 = ptrtoint ptr %439 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %439, align 4
  %add44.i = add i32 %441, 91
  %call45.i = tail call i32 %437(ptr noundef %add.ptr.i.i, i32 noundef %add44.i, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end53.i

cond.false46.i:                                   ; preds = %land.lhs.true29.i.cond.false46.i_crit_edge, %land.lhs.true24.i.cond.false46.i_crit_edge, %cond.end.i.cond.false46.i_crit_edge
  %arrayidx48.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %442 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %arrayidx48.i, align 8
  %444 = ptrtoint ptr %443 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load i32, ptr %443, align 4
  %add51.i = add i32 %445, 91
  %call52.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add51.i, i32 noundef 0) #4
  br label %cond.end53.i

cond.end53.i:                                     ; preds = %cond.false46.i, %cond.true35.i
  %cond54.i = phi i32 [ %call45.i, %cond.true35.i ], [ %call52.i, %cond.false46.i ]
  %446 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load i32, ptr %virt.i.i, align 8
  %and57.i = and i32 %447, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %cond.end53.i.cond.false81.i_crit_edge, label %land.lhs.true59.i

cond.end53.i.cond.false81.i_crit_edge:            ; preds = %cond.end53.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false81.i

land.lhs.true59.i:                                ; preds = %cond.end53.i
  %funcs62.i = getelementptr i8, ptr %i2c_adap, i32 2236
  %448 = ptrtoint ptr %funcs62.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %funcs62.i, align 4
  %tobool63.not.i = icmp eq ptr %449, null
  br i1 %tobool63.not.i, label %land.lhs.true59.i.cond.false81.i_crit_edge, label %land.lhs.true64.i

land.lhs.true59.i.cond.false81.i_crit_edge:       ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false81.i

land.lhs.true64.i:                                ; preds = %land.lhs.true59.i
  %sriov_rreg68.i = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %449, i32 0, i32 13
  %450 = ptrtoint ptr %sriov_rreg68.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %sriov_rreg68.i, align 4
  %tobool69.not.i = icmp eq ptr %451, null
  br i1 %tobool69.not.i, label %land.lhs.true64.i.cond.false81.i_crit_edge, label %cond.true70.i

land.lhs.true64.i.cond.false81.i_crit_edge:       ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false81.i

cond.true70.i:                                    ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx76.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %452 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %arrayidx76.i, align 8
  %454 = ptrtoint ptr %453 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load i32, ptr %453, align 4
  %add79.i = add i32 %455, 103
  %call80.i = tail call i32 %451(ptr noundef %add.ptr.i.i, i32 noundef %add79.i, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end88.i

cond.false81.i:                                   ; preds = %land.lhs.true64.i.cond.false81.i_crit_edge, %land.lhs.true59.i.cond.false81.i_crit_edge, %cond.end53.i.cond.false81.i_crit_edge
  %arrayidx83.i = getelementptr i8, ptr %i2c_adap, i32 58576
  %456 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %arrayidx83.i, align 8
  %458 = ptrtoint ptr %457 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %457, align 4
  %add86.i = add i32 %459, 103
  %call87.i = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr.i.i, i32 noundef %add86.i, i32 noundef 0) #4
  br label %cond.end88.i

cond.end88.i:                                     ; preds = %cond.false81.i, %cond.true70.i
  %cond89.i = phi i32 [ %call80.i, %cond.true70.i ], [ %call87.i, %cond.false81.i ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %cond.i, i32 noundef %cond54.i, i32 noundef %cond89.i) #4
  tail call fastcc void @smu_v11_0_i2c_abort(ptr noundef %i2c_adap) #4
  br label %smu_v11_0_i2c_fini.exit

smu_v11_0_i2c_fini.exit:                          ; preds = %cond.end88.i, %for.end.smu_v11_0_i2c_fini.exit_crit_edge
  ret i32 %num.addr.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smu_v11_0_i2c_func(ptr nocapture noundef readnone %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smu_v11_0_i2c_enable(ptr noundef %control, i1 noundef zeroext %enable) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %control, i32 -31240
  %virt = getelementptr i8, ptr %control, i32 59040
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr i8, ptr %control, i32 2236
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true2

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %land.lhs.true2.cond.false_crit_edge, label %cond.true

land.lhs.true2.cond.false_crit_edge:              ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr i8, ptr %control, i32 58576
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 91
  %cond = zext i1 %enable to i32
  tail call void %5(ptr noundef %add.ptr, i32 noundef %add, i32 noundef %cond, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true2.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr i8, ptr %control, i32 58576
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx15, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add18 = add i32 %13, 91
  %cond20 = zext i1 %enable to i32
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr, i32 noundef %add18, i32 noundef %cond20, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  br i1 %enable, label %cond.end.cleanup60_crit_edge, label %for.cond.preheader

cond.end.cleanup60_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup60

for.cond.preheader:                               ; preds = %cond.end
  %funcs29 = getelementptr i8, ptr %control, i32 2236
  %arrayidx42 = getelementptr i8, ptr %control, i32 58576
  br label %for.body

for.body:                                         ; preds = %if.then57.for.body_crit_edge, %for.cond.preheader
  %ii.083 = phi i32 [ 1000, %for.cond.preheader ], [ %dec, %if.then57.for.body_crit_edge ]
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and24 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %for.body.cond.false46_crit_edge, label %land.lhs.true26

for.body.cond.false46_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false46

land.lhs.true26:                                  ; preds = %for.body
  %16 = ptrtoint ptr %funcs29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs29, align 4
  %tobool30.not = icmp eq ptr %17, null
  br i1 %tobool30.not, label %land.lhs.true26.cond.false46_crit_edge, label %land.lhs.true31

land.lhs.true26.cond.false46_crit_edge:           ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false46

land.lhs.true31:                                  ; preds = %land.lhs.true26
  %sriov_rreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 13
  %18 = ptrtoint ptr %sriov_rreg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_rreg, align 4
  %tobool35.not = icmp eq ptr %19, null
  br i1 %tobool35.not, label %land.lhs.true31.cond.false46_crit_edge, label %cond.true36

land.lhs.true31.cond.false46_crit_edge:           ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false46

cond.true36:                                      ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx42, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add45 = add i32 %23, 103
  %call = tail call i32 %19(ptr noundef %add.ptr, i32 noundef %add45, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end53

cond.false46:                                     ; preds = %land.lhs.true31.cond.false46_crit_edge, %land.lhs.true26.cond.false46_crit_edge, %for.body.cond.false46_crit_edge
  %24 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx42, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add51 = add i32 %27, 103
  %call52 = tail call i32 @amdgpu_device_rreg(ptr noundef %add.ptr, i32 noundef %add51, i32 noundef 0) #4
  br label %cond.end53

cond.end53:                                       ; preds = %cond.false46, %cond.true36
  %cond54 = phi i32 [ %call, %cond.true36 ], [ %call52, %cond.false46 ]
  %and55 = and i32 %cond54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %cond.end53.cleanup60_crit_edge, label %if.then57

cond.end53.cleanup60_crit_edge:                   ; preds = %cond.end53
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup60

if.then57:                                        ; preds = %cond.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 5368700) #4
  %dec = add nsw i32 %ii.083, -1
  %cmp = icmp ugt i32 %ii.083, 1
  br i1 %cmp, label %if.then57.for.body_crit_edge, label %if.then57.cleanup60_crit_edge

if.then57.cleanup60_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup60

if.then57.for.body_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup60:                                        ; preds = %if.then57.cleanup60_crit_edge, %cond.end53.cleanup60_crit_edge, %cond.end.cleanup60_crit_edge
  %retval.3 = phi i32 [ 0, %cond.end.cleanup60_crit_edge ], [ 0, %cond.end53.cleanup60_crit_edge ], [ 16, %if.then57.cleanup60_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @smu_v11_0_i2c_abort(ptr noundef %control) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %control, i32 -31240
  %virt = getelementptr i8, ptr %control, i32 59040
  %0 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %virt, align 8
  %and1 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.cond.false_crit_edge, label %land.lhs.true

entry.cond.false_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr i8, ptr %control, i32 2236
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %land.lhs.true.cond.false_crit_edge, label %land.lhs.true3

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

land.lhs.true3:                                   ; preds = %land.lhs.true
  %sriov_wreg = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %sriov_wreg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sriov_wreg, align 4
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %land.lhs.true3.cond.false_crit_edge, label %cond.true

land.lhs.true3.cond.false_crit_edge:              ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false

cond.true:                                        ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx = getelementptr i8, ptr %control, i32 58576
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %add = add i32 %9, 91
  tail call void %5(ptr noundef %add.ptr, i32 noundef %add, i32 noundef 1, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true3.cond.false_crit_edge, %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %arrayidx15 = getelementptr i8, ptr %control, i32 58576
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx15, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %add18 = add i32 %13, 91
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr, i32 noundef %add18, i32 noundef 1, i32 noundef 0) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %14 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %virt, align 8
  %and23 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %cond.end.cond.false46_crit_edge, label %land.lhs.true25

cond.end.cond.false46_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false46

land.lhs.true25:                                  ; preds = %cond.end
  %funcs28 = getelementptr i8, ptr %control, i32 2236
  %16 = ptrtoint ptr %funcs28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs28, align 4
  %tobool29.not = icmp eq ptr %17, null
  br i1 %tobool29.not, label %land.lhs.true25.cond.false46_crit_edge, label %land.lhs.true30

land.lhs.true25.cond.false46_crit_edge:           ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false46

land.lhs.true30:                                  ; preds = %land.lhs.true25
  %sriov_wreg34 = getelementptr inbounds %struct.amdgpu_rlc_funcs, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %sriov_wreg34 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sriov_wreg34, align 4
  %tobool35.not = icmp eq ptr %19, null
  br i1 %tobool35.not, label %land.lhs.true30.cond.false46_crit_edge, label %cond.true36

land.lhs.true30.cond.false46_crit_edge:           ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.false46

cond.true36:                                      ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx42 = getelementptr i8, ptr %control, i32 58576
  %20 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx42, align 8
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add45 = add i32 %23, 91
  tail call void %19(ptr noundef %add.ptr, i32 noundef %add45, i32 noundef 3, i32 noundef 0, i32 noundef 22) #4
  br label %cond.end52

cond.false46:                                     ; preds = %land.lhs.true30.cond.false46_crit_edge, %land.lhs.true25.cond.false46_crit_edge, %cond.end.cond.false46_crit_edge
  %arrayidx48 = getelementptr i8, ptr %control, i32 58576
  %24 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx48, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add51 = add i32 %27, 91
  tail call void @amdgpu_device_wreg(ptr noundef %add.ptr, i32 noundef %add51, i32 noundef 3, i32 noundef 0) #4
  br label %cond.end52

cond.end52:                                       ; preds = %cond.false46, %cond.true36
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_device_rreg(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdgpu_device_wreg(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lock_bus(ptr noundef %i2c, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %smu_i2c_mutex = getelementptr i8, ptr %i2c, i32 1360
  tail call void @mutex_lock_nested(ptr noundef %smu_i2c_mutex, i32 noundef 0) #4
  %add.ptr.i = getelementptr i8, ptr %i2c, i32 -31240
  %call.i = tail call i32 @amdgpu_dpm_smu_i2c_bus_access(ptr noundef %add.ptr.i, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bus_locked = getelementptr i8, ptr %i2c, i32 -2064
  %0 = ptrtoint ptr %bus_locked to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %bus_locked, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trylock_bus(ptr nocapture noundef readnone %i2c, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %.b35 = load i1, ptr @trylock_bus.__already_done, align 1
  br i1 %.b35, label %entry.if.end25_crit_edge, label %if.then, !prof !62

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @trylock_bus.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 608, i32 noundef 9, ptr noundef nonnull @.str.20) #4
  br label %if.end25

if.end25:                                         ; preds = %if.then, %entry.if.end25_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unlock_bus(ptr noundef %i2c, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %i2c, i32 -31240
  %call.i = tail call i32 @amdgpu_dpm_smu_i2c_bus_access(ptr noundef %add.ptr.i, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %bus_locked = getelementptr i8, ptr %i2c, i32 -2064
  %0 = ptrtoint ptr %bus_locked to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bus_locked, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %smu_i2c_mutex = getelementptr i8, ptr %i2c, i32 1360
  tail call void @mutex_unlock(ptr noundef %smu_i2c_mutex) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdgpu_dpm_smu_i2c_bus_access(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !42, !44, !46, !48, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @smu_v11_0_i2c_control_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 714, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 719, i32 49}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 725, i32 3}
!7 = !{ptr @smu_v11_0_i2c_algo, !8, !"smu_v11_0_i2c_algo", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 700, i32 35}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 494, i32 3}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @smu_v11_0_i2c_init._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @smu_v11_0_i2c_init._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 445, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 576, i32 3}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 402, i32 5}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 405, i32 5}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 408, i32 5}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 421, i32 2}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 425, i32 18}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 425, i32 29}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 589, i32 3}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 271, i32 2}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 193, i32 3}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @smu_v11_0_i2c_poll_tx_status._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @smu_v11_0_i2c_poll_tx_status._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 525, i32 3}
!42 = !{ptr @smu_v11_0_i2c_i2c_lock_ops, !43, !"smu_v11_0_i2c_i2c_lock_ops", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 623, i32 41}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 601, i32 3}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 608, i32 2}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 617, i32 3}
!51 = !{ptr @smu_v11_0_i2c_control_quirks, !52, !"smu_v11_0_i2c_control_quirks", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/amd/amdgpu/smu_v11_0_i2c.c", i32 705, i32 40}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"branch_weights", i32 2000, i32 1}
