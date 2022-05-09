; ModuleID = '/llk/IR_all_yes/drivers/net/can/cc770/cc770_platform.c_pt.bc'
source_filename = "../drivers/net/can/cc770/cc770_platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cc770_platform_data = type { i32, i8, i8, i8 }
%struct.cc770_priv = type { %struct.can_priv, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [5 x i8], i8, i8, i8, i8, ptr }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }

@__UNIQUE_ID_author459 = internal constant [62 x i8] c"cc770_platform.author=Wolfgang Grandegger <wg@grandegger.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description460 = internal constant [75 x i8] c"cc770_platform.description=Socket-CAN driver for CC770 on the platform bus\00", section ".modinfo", align 1
@__UNIQUE_ID_file461 = internal constant [57 x i8] c"cc770_platform.file=drivers/net/can/cc770/cc770_platform\00", section ".modinfo", align 1
@__UNIQUE_ID_license462 = internal constant [30 x i8] c"cc770_platform.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias463 = internal constant [45 x i8] c"cc770_platform.alias=platform:cc770_platform\00", section ".modinfo", align 1
@__initcall__kmod_cc770_platform__466_265_cc770_platform_driver_init6 = internal global ptr @cc770_platform_driver_init, section ".initcall6.init", align 4
@cc770_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cc770_platform_probe, ptr @cc770_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cc770_platform_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cc770_platform_driver_exit = internal global ptr @cc770_platform_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cc770_platform\00", [17 x i8] zeroinitializer }, align 32
@cc770_platform_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bosch,cc770\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intc,82527\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@cc770_platform_probe.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 52, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cc770_platform_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/can/cc770/cc770_platform.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"reg_base=0x%p irq=%d clock=%d cpu_interface=0x%02x bus_config=0x%02x clkout=0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@cc770_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 217, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"couldn't register CC700 device (err=%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cc770_platform_probe._entry_ptr = internal global ptr @cc770_platform_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bosch,external-clock-frequency\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bosch,divide-memory-clock\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bosch,iso-low-speed-mux\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bosch,no-comperator-bypass\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bosch,disconnect-rx0-input\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bosch,disconnect-rx1-input\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bosch,disconnect-tx1-output\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bosch,polarity-dominant\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bosch,clock-out-frequency\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bosch,slew-rate\00", [16 x i8] zeroinitializer }, align 32
@cc770_get_of_node_data.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 34, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cc770_get_of_node_data\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid clock-out-frequency\0A\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"cc770_platform_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 256, i32 31 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 258, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"cc770_platform_table\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 249, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 205, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 216, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 78, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 96, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 98, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 101, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 103, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 105, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 107, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 109, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 112, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 121, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [42 x i8] c"../drivers/net/can/cc770/cc770_platform.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 136, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias463, ptr @__UNIQUE_ID_author459, ptr @__UNIQUE_ID_description460, ptr @__UNIQUE_ID_file461, ptr @__UNIQUE_ID_license462, ptr @__exitcall_cc770_platform_driver_exit, ptr @__initcall__kmod_cc770_platform__466_265_cc770_platform_driver_init6, ptr @cc770_platform_driver_exit, ptr @cc770_platform_probe._entry, ptr @cc770_platform_probe._entry_ptr, ptr @cc770_platform_driver, ptr @.str, ptr @cc770_platform_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc770_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc770_platform_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc770_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cc770_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cc770_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cc770_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @cc770_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc770_platform_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end.i, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %sub.i = add i32 %1, 1
  %add.i = sub i32 %sub.i, %3
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 8
  %call3 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %add.i, ptr noundef %5, i32 noundef 0) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  %call8 = tail call ptr @ioremap(i32 noundef %7, i32 noundef %add.i) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end6.exit_release_mem_crit_edge, label %if.end11

if.end6.exit_release_mem_crit_edge:               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_release_mem

if.end11:                                         ; preds = %if.end6
  %call12 = tail call ptr @alloc_cc770dev(i32 noundef 0) #6
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.exit_unmap_mem_crit_edge, label %if.end15

if.end11.exit_unmap_mem_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_unmap_mem

if.end15:                                         ; preds = %if.end11
  %irq16 = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 64
  %8 = ptrtoint ptr %irq16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call1, ptr %irq16, align 4
  %read_reg = getelementptr i8, ptr %call12, i32 2620
  %9 = ptrtoint ptr %read_reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @cc770_platform_read_reg, ptr %read_reg, align 4
  %write_reg = getelementptr i8, ptr %call12, i32 2624
  %10 = ptrtoint ptr %write_reg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @cc770_platform_write_reg, ptr %write_reg, align 4
  %irq_flags = getelementptr i8, ptr %call12, i32 2648
  %11 = ptrtoint ptr %irq_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 128, ptr %irq_flags, align 4
  %reg_base = getelementptr i8, ptr %call12, i32 2644
  %12 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8, ptr %reg_base, align 4
  %dev18 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %tobool19.not = icmp eq ptr %14, null
  br i1 %tobool19.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %call12, i32 2304
  tail call fastcc void @cc770_get_of_node_data(ptr noundef %pdev, ptr noundef %add.ptr.i)
  br label %do.body

if.else:                                          ; preds = %if.end15
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %15 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_data.i, align 8
  %tobool24.not = icmp eq ptr %16, null
  br i1 %tobool24.not, label %if.else.exit_free_cc770_crit_edge, label %if.then25

if.else.exit_free_cc770_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit_free_cc770

if.then25:                                        ; preds = %if.else
  %17 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %platform_data.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %clock.i = getelementptr i8, ptr %call12, i32 2440
  %21 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %clock.i, align 4
  %cpu_interface.i = getelementptr i8, ptr %call12, i32 2658
  %22 = ptrtoint ptr %cpu_interface.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %cpu_interface.i, align 2
  %24 = and i8 %23, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.then25.cc770_get_platform_data.exit_crit_edge, label %if.then.i

if.then25.cc770_get_platform_data.exit_crit_edge: ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc770_get_platform_data.exit

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %div1.i = lshr i32 %20, 1
  %25 = ptrtoint ptr %clock.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div1.i, ptr %clock.i, align 4
  br label %cc770_get_platform_data.exit

cc770_get_platform_data.exit:                     ; preds = %if.then.i, %if.then25.cc770_get_platform_data.exit_crit_edge
  %cor.i = getelementptr inbounds %struct.cc770_platform_data, ptr %18, i32 0, i32 2
  %26 = ptrtoint ptr %cor.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cor.i, align 1
  %clkout.i = getelementptr i8, ptr %call12, i32 2659
  %28 = ptrtoint ptr %clkout.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %clkout.i, align 1
  %bcr.i = getelementptr inbounds %struct.cc770_platform_data, ptr %18, i32 0, i32 3
  %29 = ptrtoint ptr %bcr.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bcr.i, align 2
  %bus_config.i = getelementptr i8, ptr %call12, i32 2660
  %31 = ptrtoint ptr %bus_config.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %bus_config.i, align 4
  %cir.i = getelementptr inbounds %struct.cc770_platform_data, ptr %18, i32 0, i32 1
  %32 = ptrtoint ptr %cir.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cir.i, align 4
  %34 = ptrtoint ptr %cpu_interface.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %cpu_interface.i, align 2
  br label %do.body

do.body:                                          ; preds = %cc770_get_platform_data.exit, %if.then20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc770_platform_probe.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cc770_platform_probe, %do.end)) #6
          to label %if.then38 [label %do.end], !srcloc !62

if.then38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_base, align 4
  %37 = ptrtoint ptr %irq16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq16, align 4
  %clock = getelementptr i8, ptr %call12, i32 2440
  %39 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %clock, align 4
  %cpu_interface = getelementptr i8, ptr %call12, i32 2658
  %41 = ptrtoint ptr %cpu_interface to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cpu_interface, align 2
  %conv = zext i8 %42 to i32
  %bus_config = getelementptr i8, ptr %call12, i32 2660
  %43 = ptrtoint ptr %bus_config to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %bus_config, align 4
  %conv42 = zext i8 %44 to i32
  %clkout = getelementptr i8, ptr %call12, i32 2659
  %45 = ptrtoint ptr %clkout to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %clkout, align 1
  %conv43 = zext i8 %46 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc770_platform_probe.__UNIQUE_ID_ddebug465, ptr noundef %dev18, ptr noundef nonnull @.str.3, ptr noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %conv, i32 noundef %conv42, i32 noundef %conv43) #6
  br label %do.end

do.end:                                           ; preds = %if.then38, %do.body
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call12, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 133, i32 1
  %48 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %dev18, ptr %parent, align 8
  %call47 = tail call i32 @register_cc770dev(ptr noundef nonnull %call12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %do.end.cleanup_crit_edge, label %do.end52

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end52:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.4, i32 noundef %call47) #9
  br label %exit_free_cc770

exit_free_cc770:                                  ; preds = %do.end52, %if.else.exit_free_cc770_crit_edge
  %err.1 = phi i32 [ %call47, %do.end52 ], [ -19, %if.else.exit_free_cc770_crit_edge ]
  tail call void @free_cc770dev(ptr noundef nonnull %call12) #6
  br label %exit_unmap_mem

exit_unmap_mem:                                   ; preds = %exit_free_cc770, %if.end11.exit_unmap_mem_crit_edge
  %err.2 = phi i32 [ %err.1, %exit_free_cc770 ], [ -12, %if.end11.exit_unmap_mem_crit_edge ]
  tail call void @iounmap(ptr noundef nonnull %call8) #6
  br label %exit_release_mem

exit_release_mem:                                 ; preds = %exit_unmap_mem, %if.end6.exit_release_mem_crit_edge
  %err.3 = phi i32 [ %err.2, %exit_unmap_mem ], [ -12, %if.end6.exit_release_mem_crit_edge ]
  %49 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %50, i32 noundef %add.i) #6
  br label %cleanup

cleanup:                                          ; preds = %exit_release_mem, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %exit_release_mem ], [ -19, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc770_platform_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_cc770dev(ptr noundef %1) #6
  %reg_base = getelementptr i8, ptr %1, i32 2644
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  tail call void @iounmap(ptr noundef %3) #6
  tail call void @free_cc770dev(ptr noundef %1) #6
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call2, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %add.i) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_cc770dev(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @cc770_platform_read_reg(ptr nocapture noundef readonly %priv, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cc770_platform_write_reg(ptr nocapture noundef readonly %priv, i32 noundef %reg, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_base = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #6, !srcloc !66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc770_get_of_node_data(ptr noundef %pdev, ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  %prop_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop_size) #6
  %2 = ptrtoint ptr %prop_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %prop_size, align 4, !annotation !67
  %call = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %prop_size) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end.thread_crit_edge, label %land.lhs.true

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread

land.lhs.true:                                    ; preds = %entry
  %3 = ptrtoint ptr %prop_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %prop_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp eq i32 %4, 4
  br i1 %cmp, label %if.end, label %land.lhs.true.if.end.thread_crit_edge

land.lhs.true.if.end.thread_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.thread

if.end.thread:                                    ; preds = %land.lhs.true.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  %clock3 = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 13
  br label %if.then5

if.end:                                           ; preds = %land.lhs.true
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %call, align 4
  %clock = getelementptr inbounds %struct.can_priv, ptr %priv, i32 0, i32 13
  %7 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %6)
  %cmp4 = icmp ugt i32 %6, 10000000
  br i1 %cmp4, label %if.end.if.then5_crit_edge, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then5

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %if.end.thread
  %clock7 = phi ptr [ %clock3, %if.end.thread ], [ %clock, %if.end.if.then5_crit_edge ]
  %clkext.06 = phi i32 [ 16000000, %if.end.thread ], [ %6, %if.end.if.then5_crit_edge ]
  %cpu_interface = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 12
  %8 = ptrtoint ptr %cpu_interface to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %cpu_interface, align 2
  %10 = or i8 %9, 64
  store i8 %10, ptr %cpu_interface, align 2
  %div1 = lshr i32 %clkext.06, 1
  %11 = ptrtoint ptr %clock7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div1, ptr %clock7, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  %12 = phi i32 [ %div1, %if.then5 ], [ %6, %if.end.if.end10_crit_edge ]
  %clkext.05 = phi i32 [ %clkext.06, %if.then5 ], [ %6, %if.end.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %12)
  %cmp14 = icmp ugt i32 %12, 8000000
  br i1 %cmp14, label %if.then16, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %cpu_interface17 = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 12
  %13 = ptrtoint ptr %cpu_interface17 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cpu_interface17, align 2
  %15 = or i8 %14, 32
  store i8 %15, ptr %cpu_interface17, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end10.if.end21_crit_edge
  %call22 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef null) #6
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.if.end29_crit_edge, label %if.then24

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %cpu_interface25 = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 12
  %16 = ptrtoint ptr %cpu_interface25 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cpu_interface25, align 2
  %18 = or i8 %17, 32
  store i8 %18, ptr %cpu_interface25, align 2
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.end21.if.end29_crit_edge
  %call30 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef null) #6
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end29.if.end37_crit_edge, label %if.then32

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %cpu_interface33 = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 12
  %19 = ptrtoint ptr %cpu_interface33 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %cpu_interface33, align 2
  %21 = or i8 %20, 4
  store i8 %21, ptr %cpu_interface33, align 2
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end29.if.end37_crit_edge
  %call38 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.then40, label %if.end37.if.end44_crit_edge

if.end37.if.end44_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %bus_config = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 14
  %22 = ptrtoint ptr %bus_config to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bus_config, align 4
  %24 = or i8 %23, 64
  store i8 %24, ptr %bus_config, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %if.end37.if.end44_crit_edge
  %call45 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef null) #6
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end44.if.end52_crit_edge, label %if.then47

if.end44.if.end52_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %bus_config48 = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 14
  %25 = ptrtoint ptr %bus_config48 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bus_config48, align 4
  %27 = or i8 %26, 1
  store i8 %27, ptr %bus_config48, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %if.end44.if.end52_crit_edge
  %call53 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef null) #6
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %if.end52.if.end60_crit_edge, label %if.then55

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60

if.then55:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %bus_config56 = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 14
  %28 = ptrtoint ptr %bus_config56 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bus_config56, align 4
  %30 = or i8 %29, 2
  store i8 %30, ptr %bus_config56, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then55, %if.end52.if.end60_crit_edge
  %call61 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef null) #6
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.end60.if.end68_crit_edge, label %if.then63

if.end60.if.end68_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %bus_config64 = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 14
  %31 = ptrtoint ptr %bus_config64 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %bus_config64, align 4
  %33 = or i8 %32, 8
  store i8 %33, ptr %bus_config64, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %if.end60.if.end68_crit_edge
  %call69 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef null) #6
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %if.end68.if.end76_crit_edge, label %if.then71

if.end68.if.end76_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %bus_config72 = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 14
  %34 = ptrtoint ptr %bus_config72 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bus_config72, align 4
  %36 = or i8 %35, 32
  store i8 %36, ptr %bus_config72, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %if.end68.if.end76_crit_edge
  %call77 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %prop_size) #6
  %tobool78.not = icmp eq ptr %call77, null
  br i1 %tobool78.not, label %if.end76.if.end130_crit_edge, label %land.lhs.true79

if.end76.if.end130_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

land.lhs.true79:                                  ; preds = %if.end76
  %37 = ptrtoint ptr %prop_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %prop_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp80 = icmp eq i32 %38, 4
  br i1 %cmp80, label %land.lhs.true82, label %land.lhs.true79.if.end130_crit_edge

land.lhs.true79.if.end130_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

land.lhs.true82:                                  ; preds = %land.lhs.true79
  %39 = ptrtoint ptr %call77 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %call77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp83.not = icmp eq i32 %40, 0
  br i1 %cmp83.not, label %land.lhs.true82.if.end130_crit_edge, label %if.then85

land.lhs.true82.if.end130_crit_edge:              ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end130

if.then85:                                        ; preds = %land.lhs.true82
  %div86 = udiv i32 %clkext.05, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %clkext.05)
  %cmp87.not = icmp ule i32 %40, %clkext.05
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div86)
  %cmp90 = icmp ult i32 %div86, 16
  %or.cond = and i1 %cmp87.not, %cmp90
  br i1 %or.cond, label %if.then92, label %do.body

if.then92:                                        ; preds = %if.then85
  %cpu_interface93 = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 12
  %41 = ptrtoint ptr %cpu_interface93 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cpu_interface93, align 2
  %43 = or i8 %42, 1
  store i8 %43, ptr %cpu_interface93, align 2
  %clkout = getelementptr inbounds %struct.cc770_priv, ptr %priv, i32 0, i32 13
  %44 = ptrtoint ptr %clkout to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %clkout, align 1
  %46 = trunc i32 %div86 to i8
  %47 = add nuw nsw i8 %46, 15
  %48 = and i8 %47, 15
  %conv99 = or i8 %45, %48
  store i8 %conv99, ptr %clkout, align 1
  %call100 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %prop_size) #6
  %tobool101.not = icmp eq ptr %call100, null
  br i1 %tobool101.not, label %if.then92.if.else106_crit_edge, label %land.lhs.true102

if.then92.if.else106_crit_edge:                   ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else106

land.lhs.true102:                                 ; preds = %if.then92
  %49 = ptrtoint ptr %prop_size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %prop_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp103 = icmp eq i32 %50, 4
  br i1 %cmp103, label %if.then105, label %land.lhs.true102.if.else106_crit_edge

land.lhs.true102.if.else106_crit_edge:            ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else106

if.then105:                                       ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %call100 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %call100, align 4
  br label %if.end114

if.else106:                                       ; preds = %land.lhs.true102.if.else106_crit_edge, %if.then92.if.else106_crit_edge
  %mul = mul i32 %div86, %clkext.05
  %sub107 = add i32 %mul, -1
  %div108 = udiv i32 %sub107, 8000000
  %sub109 = sub nsw i32 3, %div108
  %53 = call i32 @llvm.smax.i32(i32 %sub109, i32 0)
  br label %if.end114

if.end114:                                        ; preds = %if.else106, %if.then105
  %slew.0 = phi i32 [ %52, %if.then105 ], [ %53, %if.else106 ]
  %54 = ptrtoint ptr %clkout to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %clkout, align 1
  %slew.0.tr = trunc i32 %slew.0 to i8
  %56 = shl i8 %slew.0.tr, 4
  %57 = and i8 %56, 48
  %conv119 = or i8 %57, %55
  store i8 %conv119, ptr %clkout, align 1
  br label %if.end130

do.body:                                          ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc770_get_of_node_data.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cc770_get_of_node_data, %if.end130)) #6
          to label %if.then126 [label %if.end130], !srcloc !62

if.then126:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc770_get_of_node_data.__UNIQUE_ID_ddebug464, ptr noundef %dev, ptr noundef nonnull @.str.18) #6
  br label %if.end130

if.end130:                                        ; preds = %if.then126, %do.body, %if.end114, %land.lhs.true82.if.end130_crit_edge, %land.lhs.true79.if.end130_crit_edge, %if.end76.if.end130_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop_size) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_cc770dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cc770dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_cc770dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__UNIQUE_ID_author459, !1, !"__UNIQUE_ID_author459", i1 false, i1 false}
!1 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 52, i32 1}
!2 = !{ptr @__UNIQUE_ID_description460, !3, !"__UNIQUE_ID_description460", i1 false, i1 false}
!3 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 53, i32 1}
!4 = !{ptr @__UNIQUE_ID_file461, !5, !"__UNIQUE_ID_file461", i1 false, i1 false}
!5 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 54, i32 1}
!6 = !{ptr @__UNIQUE_ID_license462, !5, !"__UNIQUE_ID_license462", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias463, !8, !"__UNIQUE_ID_alias463", i1 false, i1 false}
!8 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 55, i32 1}
!9 = !{ptr @__initcall__kmod_cc770_platform__466_265_cc770_platform_driver_init6, !10, !"__initcall__kmod_cc770_platform__466_265_cc770_platform_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 265, i32 1}
!11 = !{ptr @__exitcall_cc770_platform_driver_exit, !10, !"__exitcall_cc770_platform_driver_exit", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 258, i32 11}
!14 = !{ptr @cc770_platform_driver, !15, !"cc770_platform_driver", i1 false, i1 false}
!15 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 256, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 205, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cc770_platform_probe.__UNIQUE_ID_ddebug465, !17, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 216, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @cc770_platform_probe._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @cc770_platform_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 78, i32 29}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 96, i32 26}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 98, i32 26}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 101, i32 27}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 103, i32 26}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 105, i32 26}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 107, i32 26}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 109, i32 26}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 112, i32 29}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 121, i32 31}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 136, i32 4}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cc770_get_of_node_data.__UNIQUE_ID_ddebug464, !48, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!51 = !{ptr @cc770_platform_table, !52, !"cc770_platform_table", i1 false, i1 false}
!52 = !{!"../drivers/net/can/cc770/cc770_platform.c", i32 249, i32 34}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2148696466, i64 2148696471, i64 2148696484, i64 2148696528, i64 2148696562, i64 2148696583}
!63 = !{i64 4621041}
!64 = !{i64 2152160386}
!65 = !{i64 2152161991}
!66 = !{i64 4620646}
!67 = !{!"auto-init"}
