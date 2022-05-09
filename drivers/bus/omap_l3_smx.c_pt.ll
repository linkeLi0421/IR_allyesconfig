; ModuleID = '/llk/IR_all_yes/drivers/bus/omap_l3_smx.c_pt.bc'
source_filename = "../drivers/bus/omap_l3_smx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.omap3_l3 = type { ptr, ptr, ptr, i32, i32, i8 }

@__initcall__kmod_omap_l3_smx__187_291_omap3_l3_init2s = internal global ptr @omap3_l3_init, section ".initcall2s.init", align 4
@omap3_l3_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap3_l3_probe, ptr @omap3_l3_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap3_l3_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap3_l3_exit = internal global ptr @omap3_l3_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author188 = internal constant [32 x i8] c"omap_l3_smx.author=Felipe Balbi\00", section ".modinfo", align 1
@__UNIQUE_ID_author189 = internal constant [37 x i8] c"omap_l3_smx.author=Santosh Shilimkar\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [31 x i8] c"omap_l3_smx.author=Sricharan R\00", section ".modinfo", align 1
@__UNIQUE_ID_description191 = internal constant [56 x i8] c"omap_l3_smx.description=OMAP3XXX L3 Interconnect Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [41 x i8] c"omap_l3_smx.file=drivers/bus/omap_l3_smx\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [24 x i8] c"omap_l3_smx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"omap_l3_smx\00", [20 x i8] zeroinitializer }, align 32
@omap3_l3_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-l3-smx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@omap3_l3_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"couldn't find resource\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap3_l3_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/bus/omap_l3_smx.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap3_l3_probe._entry_ptr = internal global ptr @omap3_l3_probe._entry, section ".printk_index", align 4
@omap3_l3_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 234, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ioremap failed\0A\00", [16 x i8] zeroinitializer }, align 32
@omap3_l3_probe._entry_ptr.8 = internal global ptr @omap3_l3_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l3-debug-irq\00", [19 x i8] zeroinitializer }, align 32
@omap3_l3_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"couldn't request debug irq\0A\00", [36 x i8] zeroinitializer }, align 32
@omap3_l3_probe._entry_ptr.12 = internal global ptr @omap3_l3_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"l3-app-irq\00", [21 x i8] zeroinitializer }, align 32
@omap3_l3_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"couldn't request app irq\0A\00", [38 x i8] zeroinitializer }, align 32
@omap3_l3_probe._entry_ptr.16 = internal global ptr @omap3_l3_probe._entry.14, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@omap3_l3_bases = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @omap3_l3_app_bases, ptr @omap3_l3_debug_bases], [24 x i8] zeroinitializer }, align 32
@omap3_l3_app_bases = internal global { [64 x i32], [64 x i8] } { [64 x i32] [i32 5120, i32 5120, i32 5120, i32 0, i32 0, i32 0, i32 6144, i32 6144, i32 6144, i32 7168, i32 7168, i32 0, i32 22528, i32 22528, i32 22528, i32 21504, i32 21504, i32 0, i32 19456, i32 19456, i32 0, i32 20480, i32 20480, i32 0, i32 17408, i32 17408, i32 17408, i32 16384, i32 16384, i32 0, i32 0, i32 0, i32 0, i32 12288, i32 12288, i32 12288, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8192, i32 9216, i32 10240, i32 11264, i32 26624, i32 27648, i32 24576, i32 25600, i32 28672, i32 9216, i32 26624, i32 27648, i32 28672, i32 13312, i32 0, i32 0], [64 x i8] zeroinitializer }, align 32
@omap3_l3_debug_bases = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 5120, i32 0, i32 0, i32 23552, i32 23552, i32 0, i32 6144], [36 x i8] zeroinitializer }, align 32
@omap3_l3_block_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s seen by %s %s at address %x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"omap3_l3_block_irq\00", [45 x i8] zeroinitializer }, align 32
@omap3_l3_block_irq._entry_ptr = internal global ptr @omap3_l3_block_irq._entry, section ".printk_index", align 4
@.str.20 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"No Error\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unsupported Command\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Address Hole\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Protection Violation\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"In-band Error\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Request Timeout Not Accepted\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Request Timeout, no response\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"UNKNOWN error\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LCD\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SAD2D\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MPU\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IVA_SS\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IVA_SS_DMA\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SGX\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CAM\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAP\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SDMA_WR\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SDMA_RD\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"USB_OTG\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"USB_HOST\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"UNKNOWN Initiator\00", [46 x i8] zeroinitializer }, align 32
@switch.table.omap3_l3_app_irq = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.28, ptr @.str.28, ptr @.str.28, ptr @.str.28, ptr @.str.28, ptr @.str.28, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.28, ptr @.str.28, ptr @.str.26], [32 x i8] zeroinitializer }, align 32
@switch.table.omap3_l3_app_irq.42 = internal constant { [29 x ptr], [44 x i8] } { [29 x ptr] [ptr @.str.40, ptr @.str.39, ptr @.str.38, ptr @.str.38, ptr @.str.38, ptr @.str.38, ptr @.str.37, ptr @.str.37, ptr @.str.36, ptr @.str.35, ptr @.str.35, ptr @.str.35, ptr @.str.34, ptr @.str.33, ptr @.str.33, ptr @.str.33, ptr @.str.33, ptr @.str.33, ptr @.str.33, ptr @.str.32, ptr @.str.32, ptr @.str.32, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.31, ptr @.str.30, ptr @.str.29], [44 x i8] zeroinitializer }, align 32
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"omap3_l3_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 278, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 282, i32 13 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"omap3_l3_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 205, i32 34 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 228, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 234, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 241, i32 6 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 243, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 249, i32 6 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 251, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"omap3_l3_bases\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 310, i32 13 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"omap3_l3_app_bases\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 195, i32 21 }
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"omap3_l3_debug_bases\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [29 x i8] c"../drivers/bus/omap_l3_smx.h\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 294, i32 21 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 148, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 61, i32 10 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 63, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 65, i32 10 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 67, i32 10 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 69, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 71, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 73, i32 10 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 75, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 83, i32 10 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 85, i32 10 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 91, i32 10 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 95, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 102, i32 10 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 104, i32 10 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 108, i32 10 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 110, i32 10 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 113, i32 10 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 118, i32 10 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 120, i32 10 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 122, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [29 x i8] c"../drivers/bus/omap_l3_smx.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 124, i32 10 }
@___asan_gen_.178 = private unnamed_addr constant [30 x i8] c"switch.table.omap3_l3_app_irq\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [33 x i8] c"switch.table.omap3_l3_app_irq.42\00", align 1
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author188, ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__exitcall_omap3_l3_exit, ptr @__initcall__kmod_omap_l3_smx__187_291_omap3_l3_init2s, ptr @omap3_l3_block_irq._entry, ptr @omap3_l3_block_irq._entry_ptr, ptr @omap3_l3_exit, ptr @omap3_l3_probe._entry, ptr @omap3_l3_probe._entry.10, ptr @omap3_l3_probe._entry.14, ptr @omap3_l3_probe._entry.6, ptr @omap3_l3_probe._entry_ptr, ptr @omap3_l3_probe._entry_ptr.12, ptr @omap3_l3_probe._entry_ptr.16, ptr @omap3_l3_probe._entry_ptr.8, ptr @omap3_l3_driver, ptr @.str, ptr @omap3_l3_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @omap3_l3_bases, ptr @omap3_l3_app_bases, ptr @omap3_l3_debug_bases, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @switch.table.omap3_l3_app_irq, ptr @switch.table.omap3_l3_app_irq.42], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_l3_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_l3_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_l3_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_l3_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_l3_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_l3_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_l3_bases to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_l3_app_bases to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_l3_debug_bases to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_l3_block_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap3_l3_app_irq to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.omap3_l3_app_irq.42 to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_l3_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap3_l3_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap3_l3_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap3_l3_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_l3_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 24) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %err0

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %call6 = tail call ptr @ioremap(i32 noundef %3, i32 noundef %add.i) #6
  %rt = getelementptr inbounds %struct.omap3_l3, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %rt, align 8
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %do.end12, label %if.end14

do.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %dev13 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.7) #10
  br label %err0

if.end14:                                         ; preds = %if.end4
  %call15 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %debug_irq = getelementptr inbounds %struct.omap3_l3, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %debug_irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call15, ptr %debug_irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call15, ptr noundef nonnull @omap3_l3_app_irq, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end24, label %do.end22

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %dev23 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.11) #10
  br label %err1

if.end24:                                         ; preds = %if.end14
  %call25 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #6
  %app_irq = getelementptr inbounds %struct.omap3_l3, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %app_irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call25, ptr %app_irq, align 8
  %call.i64 = tail call i32 @request_threaded_irq(i32 noundef %call25, ptr noundef nonnull @omap3_l3_app_irq, ptr noundef null, i32 noundef 1, ptr noundef nonnull @.str.13, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool28.not = icmp eq i32 %call.i64, 0
  br i1 %tobool28.not, label %if.end24.cleanup_crit_edge, label %do.end32

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %dev33 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.15) #10
  %9 = ptrtoint ptr %debug_irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %debug_irq, align 4
  %call36 = tail call ptr @free_irq(i32 noundef %10, ptr noundef nonnull %call7.i.i) #6
  br label %err1

err1:                                             ; preds = %do.end32, %do.end22
  %ret.0 = phi i32 [ %call.i, %do.end22 ], [ %call.i64, %do.end32 ]
  %11 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rt, align 8
  tail call void @iounmap(ptr noundef %12) #6
  br label %err0

err0:                                             ; preds = %err1, %do.end12, %do.end
  %ret.1 = phi i32 [ %ret.0, %err1 ], [ -12, %do.end12 ], [ -19, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err0, %if.end24.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err0 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_l3_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %app_irq = getelementptr inbounds %struct.omap3_l3, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %app_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %app_irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #6
  %debug_irq = getelementptr inbounds %struct.omap3_l3, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %debug_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug_irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %1) #6
  %rt = getelementptr inbounds %struct.omap3_l3, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rt, align 4
  tail call void @iounmap(ptr noundef %7) #6
  tail call void @kfree(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_l3_app_irq(i32 noundef %irq, ptr nocapture noundef readonly %_l3) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %app_irq = getelementptr inbounds %struct.omap3_l3, ptr %_l3, i32 0, i32 4
  %0 = ptrtoint ptr %app_irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %app_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %irq)
  %cmp = icmp ne i32 %1, %irq
  %cond = zext i1 %cmp to i32
  %rt11 = getelementptr inbounds %struct.omap3_l3, ptr %_l3, i32 0, i32 2
  %2 = ptrtoint ptr %rt11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rt11, align 4
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 1296
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load volatile i64, ptr %add.ptr.i, align 8
  %and = and i64 %5, 4381720962646521539
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool1.not = icmp eq i64 %and, 0
  %extract.t40 = trunc i64 %5 to i32
  br i1 %tobool1.not, label %if.then.if.end13_crit_edge, label %do.body5, !prof !109

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.body5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/bus/omap_l3_smx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 177, 0\0A.popsection", ""() #6, !srcloc !110
  unreachable

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i41 = getelementptr i8, ptr %3, i32 1328
  %6 = ptrtoint ptr %add.ptr.i41 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load volatile i64, ptr %add.ptr.i41, align 8
  %extract.t = trunc i64 %7 to i32
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then.if.end13_crit_edge
  %status.0.off0 = phi i32 [ %extract.t, %if.else ], [ %extract.t40, %if.then.if.end13_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %status.0.off0, i1 false) #6, !range !111
  %rt16 = getelementptr inbounds %struct.omap3_l3, ptr %_l3, i32 0, i32 2
  %9 = ptrtoint ptr %rt16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rt16, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @omap3_l3_bases, i32 0, i32 %cond
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %arrayidx17 = getelementptr i32, ptr %12, i32 %8
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx17, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %14
  %add.ptr.i42 = getelementptr i8, ptr %add.ptr, i32 88
  %15 = ptrtoint ptr %add.ptr.i42 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load volatile i64, ptr %add.ptr.i42, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool19.not = icmp eq i64 %16, 0
  br i1 %tobool19.not, label %if.end13.if.end24_crit_edge, label %if.then20

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then20:                                        ; preds = %if.end13
  %add.ptr.i43 = getelementptr i8, ptr %add.ptr, i32 96
  %17 = ptrtoint ptr %add.ptr.i43 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load volatile i64, ptr %add.ptr.i43, align 8
  %conv22 = trunc i64 %18 to i32
  %19 = trunc i64 %16 to i32
  %20 = lshr i32 %19, 24
  %21 = lshr i64 %16, 8
  %conv2.i = trunc i64 %21 to i8
  %switch.tableidx = and i32 %20, 15
  %22 = xor i32 %switch.tableidx, 8
  %switch.gep = getelementptr inbounds [16 x ptr], ptr @switch.table.omap3_l3_app_irq, i32 0, i32 %22
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.tableidx46 = add i8 %conv2.i, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %switch.tableidx46)
  %24 = icmp ult i8 %switch.tableidx46, 29
  br i1 %24, label %switch.lookup, label %if.then20.omap3_l3_block_irq.exit_crit_edge

if.then20.omap3_l3_block_irq.exit_crit_edge:      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %omap3_l3_block_irq.exit

switch.lookup:                                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %25 = sext i8 %switch.tableidx46 to i32
  %switch.gep47 = getelementptr inbounds [29 x ptr], ptr @switch.table.omap3_l3_app_irq.42, i32 0, i32 %25
  %26 = ptrtoint ptr %switch.gep47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load48 = load ptr, ptr %switch.gep47, align 4
  br label %omap3_l3_block_irq.exit

omap3_l3_block_irq.exit:                          ; preds = %switch.lookup, %if.then20.omap3_l3_block_irq.exit_crit_edge
  %retval.0.i9.i = phi ptr [ %switch.load48, %switch.lookup ], [ @.str.41, %if.then20.omap3_l3_block_irq.exit_crit_edge ]
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull %switch.load, ptr noundef nonnull %retval.0.i9.i, ptr noundef nonnull @.str.20, i32 noundef %conv22) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 152, i32 noundef 9, ptr noundef null) #6
  br label %if.end24

if.end24:                                         ; preds = %omap3_l3_block_irq.exit, %if.end13.if.end24_crit_edge
  %ret.0 = phi i32 [ 1, %omap3_l3_block_irq.exit ], [ 0, %if.end13.if.end24_crit_edge ]
  %shl = shl nuw nsw i32 268435456, %cond
  %or25 = or i32 %shl, 16777216
  %conv26 = zext i32 %or25 to i64
  %add.ptr.i44 = getelementptr i8, ptr %add.ptr, i32 40
  %27 = ptrtoint ptr %add.ptr.i44 to i32
  call void @__asan_store8_noabort(i32 %27)
  store volatile i64 %conv26, ptr %add.ptr.i44, align 8
  %28 = ptrtoint ptr %add.ptr.i42 to i32
  call void @__asan_store8_noabort(i32 %28)
  store volatile i64 %16, ptr %add.ptr.i42, align 8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !49, !51, !52, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__initcall__kmod_omap_l3_smx__187_291_omap3_l3_init2s, !1, !"__initcall__kmod_omap_l3_smx__187_291_omap3_l3_init2s", i1 false, i1 false}
!1 = !{!"../drivers/bus/omap_l3_smx.c", i32 291, i32 1}
!2 = !{ptr @__exitcall_omap3_l3_exit, !3, !"__exitcall_omap3_l3_exit", i1 false, i1 false}
!3 = !{!"../drivers/bus/omap_l3_smx.c", i32 297, i32 1}
!4 = !{ptr @__UNIQUE_ID_author188, !5, !"__UNIQUE_ID_author188", i1 false, i1 false}
!5 = !{!"../drivers/bus/omap_l3_smx.c", i32 299, i32 1}
!6 = !{ptr @__UNIQUE_ID_author189, !7, !"__UNIQUE_ID_author189", i1 false, i1 false}
!7 = !{!"../drivers/bus/omap_l3_smx.c", i32 300, i32 1}
!8 = !{ptr @__UNIQUE_ID_author190, !9, !"__UNIQUE_ID_author190", i1 false, i1 false}
!9 = !{!"../drivers/bus/omap_l3_smx.c", i32 301, i32 1}
!10 = !{ptr @__UNIQUE_ID_description191, !11, !"__UNIQUE_ID_description191", i1 false, i1 false}
!11 = !{!"../drivers/bus/omap_l3_smx.c", i32 302, i32 1}
!12 = !{ptr @__UNIQUE_ID_file192, !13, !"__UNIQUE_ID_file192", i1 false, i1 false}
!13 = !{!"../drivers/bus/omap_l3_smx.c", i32 303, i32 1}
!14 = !{ptr @__UNIQUE_ID_license193, !13, !"__UNIQUE_ID_license193", i1 false, i1 false}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/bus/omap_l3_smx.c", i32 282, i32 13}
!17 = !{ptr @omap3_l3_driver, !18, !"omap3_l3_driver", i1 false, i1 false}
!18 = !{!"../drivers/bus/omap_l3_smx.c", i32 278, i32 31}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/bus/omap_l3_smx.c", i32 228, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @omap3_l3_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @omap3_l3_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/bus/omap_l3_smx.c", i32 234, i32 3}
!29 = !{ptr @omap3_l3_probe._entry.6, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @omap3_l3_probe._entry_ptr.8, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/bus/omap_l3_smx.c", i32 241, i32 6}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/bus/omap_l3_smx.c", i32 243, i32 3}
!35 = !{ptr @omap3_l3_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @omap3_l3_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/bus/omap_l3_smx.c", i32 249, i32 6}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/bus/omap_l3_smx.c", i32 251, i32 3}
!41 = !{ptr @omap3_l3_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @omap3_l3_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @omap3_l3_bases, !44, !"omap3_l3_bases", i1 false, i1 false}
!44 = !{!"../drivers/bus/omap_l3_smx.h", i32 310, i32 13}
!45 = !{ptr @omap3_l3_app_bases, !46, !"omap3_l3_app_bases", i1 false, i1 false}
!46 = !{!"../drivers/bus/omap_l3_smx.h", i32 195, i32 21}
!47 = !{ptr @omap3_l3_debug_bases, !48, !"omap3_l3_debug_bases", i1 false, i1 false}
!48 = !{!"../drivers/bus/omap_l3_smx.h", i32 294, i32 21}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/bus/omap_l3_smx.c", i32 148, i32 2}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @omap3_l3_block_irq._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @omap3_l3_block_irq._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = distinct !{null, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/bus/omap_l3_smx.c", i32 61, i32 10}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/bus/omap_l3_smx.c", i32 63, i32 10}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/bus/omap_l3_smx.c", i32 65, i32 10}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/bus/omap_l3_smx.c", i32 67, i32 10}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/bus/omap_l3_smx.c", i32 69, i32 10}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/bus/omap_l3_smx.c", i32 71, i32 10}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/bus/omap_l3_smx.c", i32 73, i32 10}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/bus/omap_l3_smx.c", i32 75, i32 10}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/bus/omap_l3_smx.c", i32 83, i32 10}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/bus/omap_l3_smx.c", i32 85, i32 10}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/bus/omap_l3_smx.c", i32 91, i32 10}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/bus/omap_l3_smx.c", i32 95, i32 10}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/bus/omap_l3_smx.c", i32 102, i32 10}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/bus/omap_l3_smx.c", i32 104, i32 10}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/bus/omap_l3_smx.c", i32 108, i32 10}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/bus/omap_l3_smx.c", i32 110, i32 10}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/bus/omap_l3_smx.c", i32 113, i32 10}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/bus/omap_l3_smx.c", i32 118, i32 10}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/bus/omap_l3_smx.c", i32 120, i32 10}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/bus/omap_l3_smx.c", i32 122, i32 10}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/bus/omap_l3_smx.c", i32 124, i32 10}
!98 = !{ptr @omap3_l3_match, !99, !"omap3_l3_match", i1 false, i1 false}
!99 = !{!"../drivers/bus/omap_l3_smx.c", i32 205, i32 34}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"branch_weights", i32 2000, i32 1}
!110 = !{i64 2153137503, i64 2153137993, i64 2153137540, i64 2153137596, i64 2153137630, i64 2153137654, i64 2153137695, i64 2153137716, i64 2153137744, i64 2153137778}
!111 = !{i32 0, i32 33}
