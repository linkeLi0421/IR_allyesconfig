; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ezchip/nps_enet.c_pt.bc'
source_filename = "../drivers/net/ethernet/ezchip/nps_enet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.sockaddr = type { i16, [14 x i8] }

@__initcall__kmod_nps_enet__350_665_nps_enet_driver_init6 = internal global ptr @nps_enet_driver_init, section ".initcall6.init", align 4
@nps_enet_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @nps_enet_probe, ptr @nps_enet_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nps_enet_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_nps_enet_driver_exit = internal global ptr @nps_enet_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author351 = internal constant [37 x i8] c"nps_enet.author=EZchip Semiconductor\00", section ".modinfo", align 1
@__UNIQUE_ID_file352 = internal constant [51 x i8] c"nps_enet.file=drivers/net/ethernet/ezchip/nps_enet\00", section ".modinfo", align 1
@__UNIQUE_ID_license353 = internal constant [24 x i8] c"nps_enet.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nps_mgt_enet\00", [19 x i8] zeroinitializer }, align 32
@nps_enet_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ezchip,nps-mgt-enet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@nps_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @nps_enet_open, ptr @nps_enet_stop, ptr @nps_enet_start_xmit, ptr null, ptr null, ptr null, ptr @nps_enet_set_rx_mode, ptr @nps_enet_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nps_enet_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@nps_enet_probe.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -106, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nps_enet\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nps_enet_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/ezchip/nps_enet.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Registers base address is 0x%p\0A\00", [32 x i8] zeroinitializer }, align 32
@nps_enet_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 611, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"failed to retrieve <irq Rx-Tx> value from device tree\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nps_enet_probe._entry_ptr = internal global ptr @nps_enet_probe._entry, section ".printk_index", align 4
@nps_enet_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 623, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to register ndev for %s, err = 0x%08x\0A\00", [50 x i8] zeroinitializer }, align 32
@nps_enet_probe._entry_ptr.10 = internal global ptr @nps_enet_probe._entry.8, section ".printk_index", align 4
@nps_enet_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 627, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"(rx/tx=%d)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nps_enet_probe._entry_ptr.14 = internal global ptr @nps_enet_probe._entry.11, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enet-rx-tx\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"nps_enet_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 656, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 660, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"nps_enet_dt_ids\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 650, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"nps_netdev_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 561, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 601, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 611, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 622, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 627, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [42 x i8] c"../drivers/net/ethernet/ezchip/nps_enet.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 489, i32 9 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author351, ptr @__UNIQUE_ID_file352, ptr @__UNIQUE_ID_license353, ptr @__exitcall_nps_enet_driver_exit, ptr @__initcall__kmod_nps_enet__350_665_nps_enet_driver_init6, ptr @nps_enet_driver_exit, ptr @nps_enet_probe._entry, ptr @nps_enet_probe._entry.11, ptr @nps_enet_probe._entry.8, ptr @nps_enet_probe._entry_ptr, ptr @nps_enet_probe._entry_ptr.10, ptr @nps_enet_probe._entry_ptr.14, ptr @nps_enet_driver, ptr @.str, ptr @nps_enet_dt_ids, ptr @nps_netdev_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nps_enet_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nps_enet_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nps_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nps_enet_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nps_enet_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nps_enet_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nps_enet_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @nps_enet_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nps_enet_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @nps_enet_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nps_enet_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 248, i32 noundef 1, i32 noundef 1) #7
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @nps_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 115
  %5 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 40, ptr %watchdog_timeo, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, -4097
  store i32 %and, ptr %flags, align 8
  %call7 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %add.ptr.i, align 8
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %do.body

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call7 to i32
  br label %out_netdev

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nps_enet_probe.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nps_enet_probe, %if.then18)) #7
          to label %do.end [label %if.then18], !srcloc !48

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nps_enet_probe.__UNIQUE_ID_ddebug349, ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef %11) #7
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call22 = tail call i32 @of_get_ethdev_address(ptr noundef %13, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %do.end.if.end25_crit_edge, label %if.then24

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then24:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @eth_hw_addr_random(ptr noundef nonnull %call)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %do.end.if.end25_crit_edge
  %call26 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr i8, ptr %call, i32 2308
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call26, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %do.end31, label %if.end32

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #10
  br label %out_netdev

if.end32:                                         ; preds = %if.end25
  %napi = getelementptr i8, ptr %call, i32 2320
  tail call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @nps_enet_poll, i32 noundef 2) #7
  %call33 = tail call i32 @register_netdev(ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.end42, label %do.end38

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, ptr noundef nonnull %call, i32 noundef %call33) #10
  tail call void @__netif_napi_del(ptr noundef %napi) #7
  tail call void @synchronize_net() #7
  br label %out_netdev

do.end42:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %16) #10
  br label %cleanup

out_netdev:                                       ; preds = %do.end38, %do.end31, %if.then10
  %err.0 = phi i32 [ %9, %if.then10 ], [ -19, %do.end31 ], [ %call33, %do.end38 ]
  tail call void @free_netdev(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %out_netdev, %do.end42, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_netdev ], [ 0, %do.end42 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nps_enet_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #7
  %napi = getelementptr i8, ptr %1, i32 2320
  tail call void @__netif_napi_del(ptr noundef %napi) #7
  tail call void @synchronize_net() #7
  tail call void @free_netdev(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @eth_hw_addr_random(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #7
  %0 = call ptr @memset(ptr %addr, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr, i32 noundef 6) #7
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %addr, align 1
  %3 = and i8 %2, -4
  %4 = or i8 %3, 2
  store i8 %4, ptr %addr, align 1
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #7
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 55
  %5 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %addr_assign_type, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nps_enet_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  %buf7.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i29.i = getelementptr i8, ptr %3, i32 2048
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29.i) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %and2.i = and i32 %4, 2047
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 2048
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %8 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %nps_enet_is_tx_pending.exit.i, label %entry.nps_enet_tx_handler.exit_crit_edge

entry.nps_enet_tx_handler.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nps_enet_tx_handler.exit

nps_enet_is_tx_pending.exit.i:                    ; preds = %entry
  %tx_skb.i.i = getelementptr i8, ptr %1, i32 2312
  %9 = ptrtoint ptr %tx_skb.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_skb.i.i, align 8
  %tobool1.i.not.i = icmp eq ptr %10, null
  br i1 %tobool1.i.not.i, label %nps_enet_is_tx_pending.exit.i.nps_enet_tx_handler.exit_crit_edge, label %if.end.i

nps_enet_is_tx_pending.exit.i.nps_enet_tx_handler.exit_crit_edge: ; preds = %nps_enet_is_tx_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nps_enet_tx_handler.exit

if.end.i:                                         ; preds = %nps_enet_is_tx_pending.exit.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i30.i = getelementptr i8, ptr %12, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 0) #7, !srcloc !52
  %13 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then7.i, !prof !53

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %tx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 5
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 1
  %14 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_packets.i, align 4
  %inc9.i = add i32 %15, 1
  store i32 %inc9.i, ptr %tx_packets.i, align 4
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 3
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %if.then7.i
  %tx_bytes.sink32.i = phi ptr [ %tx_bytes.i, %if.else.i ], [ %tx_errors.i, %if.then7.i ]
  %and2.sink.i = phi i32 [ %and2.i, %if.else.i ], [ 1, %if.then7.i ]
  %16 = ptrtoint ptr %tx_bytes.sink32.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_bytes.sink32.i, align 4
  %add.i = add i32 %17, %and2.sink.i
  store i32 %add.i, ptr %tx_bytes.sink32.i, align 4
  %18 = ptrtoint ptr %tx_skb.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_skb.i.i, align 8
  tail call void @consume_skb(ptr noundef %19) #7
  %20 = ptrtoint ptr %tx_skb.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %tx_skb.i.i, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %21 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %22, i32 0, i32 13
  %23 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i.i.i, align 4
  %and1.i.i.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.i.i.not.i = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool.i.i.not.i, label %if.end11.i.nps_enet_tx_handler.exit_crit_edge, label %if.then14.i

if.end11.i.nps_enet_tx_handler.exit_crit_edge:    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nps_enet_tx_handler.exit

if.then14.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @netif_tx_wake_queue(ptr noundef %22) #7
  br label %nps_enet_tx_handler.exit

nps_enet_tx_handler.exit:                         ; preds = %if.then14.i, %if.end11.i.nps_enet_tx_handler.exit_crit_edge, %nps_enet_is_tx_pending.exit.i.nps_enet_tx_handler.exit_crit_edge, %entry.nps_enet_tx_handler.exit_crit_edge
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i93.i = getelementptr i8, ptr %26, i32 2064
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i93.i) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %and6.i = and i32 %27, 2047
  %28 = and i32 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i19 = icmp eq i32 %28, 0
  br i1 %tobool.not.i19, label %nps_enet_tx_handler.exit.nps_enet_rx_handler.exit_crit_edge, label %if.end.i20

nps_enet_tx_handler.exit.nps_enet_rx_handler.exit_crit_edge: ; preds = %nps_enet_tx_handler.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %nps_enet_rx_handler.exit

if.end.i20:                                       ; preds = %nps_enet_tx_handler.exit
  %29 = and i32 %27, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool8.not.i = icmp eq i32 %29, 0
  br i1 %tobool8.not.i, label %if.end.i20.if.end11.i21_crit_edge, label %if.then9.i

if.end.i20.if.end11.i21_crit_edge:                ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i21

if.then9.i:                                       ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #9
  %rx_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %30 = ptrtoint ptr %rx_errors.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_errors.i, align 8
  %inc10.i = add i32 %31, 1
  store i32 %inc10.i, ptr %rx_errors.i, align 8
  br label %if.end11.i21

if.end11.i21:                                     ; preds = %if.then9.i, %if.end.i20.if.end11.i21_crit_edge
  %32 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool12.not.i = icmp eq i32 %32, 0
  br i1 %tobool12.not.i, label %if.end18.i, label %if.end18.thread.i

if.end18.i:                                       ; preds = %if.end11.i21
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %and6.i)
  %cmp.i = icmp ult i32 %and6.i, 60
  br i1 %cmp.i, label %if.end18.i.rx_irq_clean.i_crit_edge, label %if.end27.i, !prof !54

if.end18.i.rx_irq_clean.i_crit_edge:              ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx_irq_clean.i

if.end18.thread.i:                                ; preds = %if.end11.i21
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %33 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_crc_errors.i, align 8
  %inc15.i = add i32 %34, 1
  store i32 %inc15.i, ptr %rx_crc_errors.i, align 8
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %35 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx_dropped.i, align 8
  %inc17.i = add i32 %36, 1
  store i32 %inc17.i, ptr %rx_dropped.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %and6.i)
  %cmp107.i = icmp ult i32 %and6.i, 60
  br i1 %cmp107.i, label %if.end18.thread.i.rx_irq_clean.i_crit_edge, label %if.end18.thread.i.for.body.preheader.i96.i_crit_edge, !prof !54

if.end18.thread.i.for.body.preheader.i96.i_crit_edge: ; preds = %if.end18.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader.i96.i

if.end18.thread.i.rx_irq_clean.i_crit_edge:       ; preds = %if.end18.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx_irq_clean.i

if.end27.i:                                       ; preds = %if.end18.i
  br i1 %tobool8.not.i, label %if.end30.i, label %if.end27.i.for.body.preheader.i96.i_crit_edge

if.end27.i.for.body.preheader.i96.i_crit_edge:    ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader.i96.i

if.end30.i:                                       ; preds = %if.end27.i
  %add.i.i.i = add nuw nsw i32 %and6.i, 2
  %call.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add.i.i.i, i32 noundef 2592) #7
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then41.i, label %if.end48.i

if.then41.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  %rx_errors43.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %37 = ptrtoint ptr %rx_errors43.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_errors43.i, align 8
  %inc44.i = add i32 %38, 1
  store i32 %inc44.i, ptr %rx_errors43.i, align 8
  %rx_dropped46.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %39 = ptrtoint ptr %rx_dropped46.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rx_dropped46.i, align 8
  %inc47.i = add i32 %40, 1
  store i32 %inc47.i, ptr %rx_dropped46.i, align 8
  br label %for.body.preheader.i96.i

if.end48.i:                                       ; preds = %if.end30.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %41 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %42, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %43 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %44, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  %and.i.i = and i32 %27, 3
  %div23.i.i = lshr i32 %and6.i, 2
  %45 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  %and1.i.i = and i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.i = icmp eq i32 %and1.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end48.i.for.body.i.i_crit_edge

if.end48.i.for.body.i.i_crit_edge:                ; preds = %if.end48.i
  br label %for.body.i.i

if.then.i.i:                                      ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i94.i = getelementptr i8, ptr %47, i32 2072
  tail call void @__raw_readsl(ptr noundef %add.ptr.i94.i, ptr noundef %add.ptr.i.i.i.i, i32 noundef %div23.i.i) #7
  %add.ptr2.i.i = getelementptr i32, ptr %add.ptr.i.i.i.i, i32 %div23.i.i
  br label %if.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end48.i.for.body.i.i_crit_edge
  %i.027.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end48.i.for.body.i.i_crit_edge ]
  %reg.026.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i.i.i, %if.end48.i.for.body.i.i_crit_edge ]
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i24.i.i = getelementptr i8, ptr %49, i32 2072
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i.i) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %51 = ptrtoint ptr %reg.026.i.i to i32
  call void @__asan_storeN_noabort(i32 %51, i32 4)
  store i32 %50, ptr %reg.026.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.027.i.i, 1
  %incdec.ptr.i.i = getelementptr i32, ptr %reg.026.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div23.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i.if.end.i.i_crit_edge, %if.then.i.i
  %reg.1.i.i = phi ptr [ %add.ptr2.i.i, %if.then.i.i ], [ %incdec.ptr.i.i, %for.body.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.nps_enet_read_rx_fifo.exit.i_crit_edge, label %if.then6.i.i

if.end.i.i.nps_enet_read_rx_fifo.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nps_enet_read_rx_fifo.exit.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf7.i.i) #7
  %52 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %buf7.i.i, align 4, !annotation !55
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %54, i32 2072
  call void @__raw_readsl(ptr noundef %add.ptr9.i.i, ptr noundef nonnull %buf7.i.i, i32 noundef 1) #7
  %55 = call ptr @memcpy(ptr %reg.1.i.i, ptr %buf7.i.i, i32 %and.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf7.i.i) #7
  br label %nps_enet_read_rx_fifo.exit.i

nps_enet_read_rx_fifo.exit.i:                     ; preds = %if.then6.i.i, %if.end.i.i.nps_enet_read_rx_fifo.exit.i_crit_edge
  %call49.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %and6.i) #7
  %call50.i = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i.i, ptr noundef %1) #7
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %56 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %call50.i, ptr %protocol.i, align 8
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15
  %57 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i, -1537
  %bf.set.i = or i16 %bf.clear.i, 512
  store i16 %bf.set.i, ptr %ip_summed.i, align 8
  %stats51.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %58 = ptrtoint ptr %stats51.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %stats51.i, align 8
  %inc52.i = add i32 %59, 1
  store i32 %inc52.i, ptr %stats51.i, align 8
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %60 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_bytes.i, align 8
  %add.i22 = add i32 %61, %and6.i
  store i32 %add.i22, ptr %rx_bytes.i, align 8
  %call54.i = call i32 @netif_receive_skb(ptr noundef nonnull %call.i.i.i) #7
  br label %rx_irq_frame_done.i

rx_irq_clean.i:                                   ; preds = %if.end18.thread.i.rx_irq_clean.i_crit_edge, %if.end18.i.rx_irq_clean.i_crit_edge
  %rx_length_errors.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %62 = ptrtoint ptr %rx_length_errors.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rx_length_errors.i, align 8
  %inc23.i = add i32 %63, 1
  store i32 %inc23.i, ptr %rx_length_errors.i, align 8
  %rx_dropped25.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 6
  %64 = ptrtoint ptr %rx_dropped25.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_dropped25.i, align 8
  %inc26.i = add i32 %65, 1
  store i32 %inc26.i, ptr %rx_dropped25.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %cmp5.not.i.i = icmp eq i32 %and6.i, 0
  br i1 %cmp5.not.i.i, label %rx_irq_clean.i.rx_irq_frame_done.i_crit_edge, label %rx_irq_clean.i.for.body.preheader.i96.i_crit_edge

rx_irq_clean.i.for.body.preheader.i96.i_crit_edge: ; preds = %rx_irq_clean.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader.i96.i

rx_irq_clean.i.rx_irq_frame_done.i_crit_edge:     ; preds = %rx_irq_clean.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx_irq_frame_done.i

for.body.preheader.i96.i:                         ; preds = %rx_irq_clean.i.for.body.preheader.i96.i_crit_edge, %if.then41.i, %if.end27.i.for.body.preheader.i96.i_crit_edge, %if.end18.thread.i.for.body.preheader.i96.i_crit_edge
  %sub.i105.i = add nuw nsw i32 %and6.i, 3
  %div3.i.i = lshr i32 %sub.i105.i, 2
  br label %for.body.i99.i

for.body.i99.i:                                   ; preds = %for.body.i99.i.for.body.i99.i_crit_edge, %for.body.preheader.i96.i
  %i.06.i.i = phi i32 [ %inc.i97.i, %for.body.i99.i.for.body.i99.i_crit_edge ], [ 0, %for.body.preheader.i96.i ]
  %66 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i4.i.i = getelementptr i8, ptr %67, i32 2072
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i.i) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %inc.i97.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i98.i = icmp eq i32 %inc.i97.i, %div3.i.i
  br i1 %exitcond.not.i98.i, label %for.body.i99.i.rx_irq_frame_done.i_crit_edge, label %for.body.i99.i.for.body.i99.i_crit_edge

for.body.i99.i.for.body.i99.i_crit_edge:          ; preds = %for.body.i99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i99.i

for.body.i99.i.rx_irq_frame_done.i_crit_edge:     ; preds = %for.body.i99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rx_irq_frame_done.i

rx_irq_frame_done.i:                              ; preds = %for.body.i99.i.rx_irq_frame_done.i_crit_edge, %rx_irq_clean.i.rx_irq_frame_done.i_crit_edge, %nps_enet_read_rx_fifo.exit.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @arm_heavy_mb() #7
  %69 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i100.i = getelementptr i8, ptr %70, i32 2064
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100.i, i32 0) #7, !srcloc !52
  br label %nps_enet_rx_handler.exit

nps_enet_rx_handler.exit:                         ; preds = %rx_irq_frame_done.i, %nps_enet_tx_handler.exit.nps_enet_rx_handler.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %rx_irq_frame_done.i ], [ 0, %nps_enet_tx_handler.exit.nps_enet_rx_handler.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %budget)
  %cmp = icmp ult i32 %retval.0.i, %budget
  br i1 %cmp, label %land.lhs.true, label %nps_enet_rx_handler.exit.if.end7_crit_edge

nps_enet_rx_handler.exit.if.end7_crit_edge:       ; preds = %nps_enet_rx_handler.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %nps_enet_rx_handler.exit
  %call2 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %retval.0.i) #7
  br i1 %call2, label %if.then, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @arm_heavy_mb() #7
  %71 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i23 = getelementptr i8, ptr %72, i32 2240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23, i32 3) #7, !srcloc !52
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i24 = getelementptr i8, ptr %74, i32 2048
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i24) #7, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %76 = and i32 %75, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i25 = icmp eq i32 %76, 0
  br i1 %tobool.not.i25, label %nps_enet_is_tx_pending.exit, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

nps_enet_is_tx_pending.exit:                      ; preds = %if.then
  %tx_skb.i = getelementptr i8, ptr %1, i32 2312
  %77 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tx_skb.i, align 8
  %tobool1.i.not = icmp eq ptr %78, null
  br i1 %tobool1.i.not, label %nps_enet_is_tx_pending.exit.if.end7_crit_edge, label %if.then5

nps_enet_is_tx_pending.exit.if.end7_crit_edge:    ; preds = %nps_enet_is_tx_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %nps_enet_is_tx_pending.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  call void @arm_heavy_mb() #7
  %79 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i26 = getelementptr i8, ptr %80, i32 2240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 0) #7, !srcloc !52
  %call.i = call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #7
  br i1 %call.i, label %if.then.i, label %if.then5.if.end7_crit_edge

if.then5.if.end7_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  call void @__napi_schedule(ptr noundef %napi) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then.i, %if.then5.if.end7_crit_edge, %nps_enet_is_tx_pending.exit.if.end7_crit_edge, %if.then.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %nps_enet_rx_handler.exit.if.end7_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nps_enet_open(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %tx_skb = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tx_skb, align 8
  %ge_mac_cfg_2_value = getelementptr i8, ptr %ndev, i32 2544
  %1 = ptrtoint ptr %ge_mac_cfg_2_value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %ge_mac_cfg_2_value, align 8
  %ge_mac_cfg_3_value = getelementptr i8, ptr %ndev, i32 2548
  %2 = ptrtoint ptr %ge_mac_cfg_3_value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1073500160, ptr %ge_mac_cfg_3_value, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %4, i32 2240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 0) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %6, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #7, !srcloc !52
  %irq = getelementptr i8, ptr %ndev, i32 2308
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef nonnull @nps_enet_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %ndev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %napi = getelementptr i8, ptr %ndev, i32 2320
  tail call void @napi_enable(ptr noundef %napi) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i11.i = getelementptr i8, ptr %10, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 256) #7, !srcloc !52
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i12.i = getelementptr i8, ptr %12, i32 5120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 0) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i13.i = getelementptr i8, ptr %14, i32 5124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 3) #7, !srcloc !52
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i14.i = getelementptr i8, ptr %16, i32 5124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 0) #7, !srcloc !52
  %17 = ptrtoint ptr %ge_mac_cfg_2_value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ge_mac_cfg_2_value, align 4
  %or6.i = or i32 %18, 55574528
  store i32 %or6.i, ptr %ge_mac_cfg_2_value, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i58.i = getelementptr i8, ptr %20, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i, i32 %or6.i) #7, !srcloc !52
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 20
  %21 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mtu.i, align 4
  %add7.i = add i32 %22, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %add7.i)
  %cmp.i = icmp slt i32 %add7.i, 16384
  br i1 %cmp.i, label %if.then.i, label %if.end.nps_enet_hw_enable_control.exit_crit_edge

if.end.nps_enet_hw_enable_control.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %nps_enet_hw_enable_control.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %ge_mac_cfg_3_value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ge_mac_cfg_3_value, align 4
  %and8.i = and i32 %24, -1073676289
  %shl.i = shl i32 %add7.i, 16
  %or9.i = or i32 %and8.i, %shl.i
  store i32 %or9.i, ptr %ge_mac_cfg_3_value, align 4
  br label %nps_enet_hw_enable_control.exit

nps_enet_hw_enable_control.exit:                  ; preds = %if.then.i, %if.end.nps_enet_hw_enable_control.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i59.i = getelementptr i8, ptr %26, i32 2240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 3) #7, !srcloc !52
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %27 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_addr.i.i, align 64
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv.i.i = zext i8 %30 to i32
  %arrayidx3.i.i = getelementptr i8, ptr %28, i32 1
  %31 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = zext i8 %32 to i32
  %shl5.i.i = shl nuw nsw i32 %conv4.i.i, 8
  %or6.i.i = or i32 %shl5.i.i, %conv.i.i
  %arrayidx8.i.i = getelementptr i8, ptr %28, i32 2
  %33 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx8.i.i, align 1
  %conv9.i.i = zext i8 %34 to i32
  %shl10.i.i = shl nuw nsw i32 %conv9.i.i, 16
  %or11.i.i = or i32 %or6.i.i, %shl10.i.i
  %arrayidx13.i.i = getelementptr i8, ptr %28, i32 3
  %35 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx13.i.i, align 1
  %conv14.i.i = zext i8 %36 to i32
  %shl15.i.i = shl nuw i32 %conv14.i.i, 24
  %or16.i.i = or i32 %or11.i.i, %shl15.i.i
  %37 = ptrtoint ptr %ge_mac_cfg_2_value to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ge_mac_cfg_2_value, align 4
  %and.i.i = and i32 %38, -256
  %arrayidx18.i.i = getelementptr i8, ptr %28, i32 4
  %39 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx18.i.i, align 1
  %conv19.i.i = zext i8 %40 to i32
  %or21.i.i = or i32 %and.i.i, %conv19.i.i
  store i32 %or21.i.i, ptr %ge_mac_cfg_2_value, align 4
  %and22.i.i = and i32 %or21.i.i, -65281
  %arrayidx24.i.i = getelementptr i8, ptr %28, i32 5
  %41 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx24.i.i, align 1
  %conv25.i.i = zext i8 %42 to i32
  %shl26.i.i = shl nuw nsw i32 %conv25.i.i, 8
  %or27.i.i = or i32 %shl26.i.i, %and22.i.i
  store i32 %or27.i.i, ptr %ge_mac_cfg_2_value, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i44.i.i = getelementptr i8, ptr %44, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i.i, i32 %or16.i.i) #7, !srcloc !52
  %45 = ptrtoint ptr %ge_mac_cfg_2_value to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ge_mac_cfg_2_value, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i45.i.i = getelementptr i8, ptr %48, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i.i, i32 %46) #7, !srcloc !52
  %49 = ptrtoint ptr %ge_mac_cfg_3_value to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ge_mac_cfg_3_value, align 4
  %or23.i = or i32 %50, 32
  store i32 %or23.i, ptr %ge_mac_cfg_3_value, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i60.i = getelementptr i8, ptr %52, i32 4108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 %or23.i) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i61.i = getelementptr i8, ptr %54, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 1884053119) #7, !srcloc !52
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %55 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %56, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %nps_enet_hw_enable_control.exit, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nps_enet_stop(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %napi = getelementptr i8, ptr %ndev, i32 2320
  tail call void @napi_disable(ptr noundef %napi) #7
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %3, i32 2240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 0) #7, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i3.i = getelementptr i8, ptr %5, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 0) #7, !srcloc !52
  %irq = getelementptr i8, ptr %ndev, i32 2308
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %7, ptr noundef %ndev) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nps_enet_start_xmit(ptr noundef %skb, ptr nocapture noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  %tx_skb = getelementptr i8, ptr %ndev, i32 2312
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skb, ptr %tx_skb, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  tail call void @arm_heavy_mb() #7
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  %sext.i = shl i32 %4, 16
  %conv2.i = ashr exact i32 %sext.i, 16
  %sub.i = add nsw i32 %conv2.i, 3
  %div20.i = lshr i32 %sub.i, 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %and.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp423.not.i = icmp ult i32 %sub.i, 4
  br i1 %cmp423.not.i, label %for.cond.preheader.i.nps_enet_send_frame.exit_crit_edge, label %for.body.preheader.i

for.cond.preheader.i.nps_enet_send_frame.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nps_enet_send_frame.exit

for.body.preheader.i:                             ; preds = %for.cond.preheader.i
  %umax.i = tail call i32 @llvm.umax.i32(i32 %div20.i, i32 1) #7
  br label %for.body.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %9, i32 2056
  tail call void @__raw_writesl(ptr noundef %add.ptr.i4, ptr noundef %6, i32 noundef %div20.i) #7
  br label %nps_enet_send_frame.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %src.025.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %6, %for.body.preheader.i ]
  %i.024.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %10 = ptrtoint ptr %src.025.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %src.025.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %13, i32 2056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %11) #7, !srcloc !52
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %incdec.ptr.i = getelementptr i32, ptr %src.025.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.nps_enet_send_frame.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.nps_enet_send_frame.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nps_enet_send_frame.exit

nps_enet_send_frame.exit:                         ; preds = %for.body.i.nps_enet_send_frame.exit_crit_edge, %if.then.i, %for.cond.preheader.i.nps_enet_send_frame.exit_crit_edge
  %or8.i = or i32 %conv2.i, 32768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %15, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %or8.i) #7, !srcloc !52
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nps_enet_set_rx_mode(ptr nocapture noundef readonly %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %ge_mac_cfg_2_value1 = getelementptr i8, ptr %ndev, i32 2544
  %0 = ptrtoint ptr %ge_mac_cfg_2_value1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ge_mac_cfg_2_value1, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and3 = and i32 %1, -5242881
  %masksel = select i1 %tobool.not, i32 5242880, i32 0
  %ge_mac_cfg_2_value.0 = or i32 %masksel, %and3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i15 = getelementptr i8, ptr %5, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %ge_mac_cfg_2_value.0) #7, !srcloc !52
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nps_enet_set_mac_address(ptr noundef %ndev, ptr noundef %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @eth_mac_addr(ptr noundef %ndev, ptr noundef %p) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #7
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %ge_mac_cfg_2_value1.i = getelementptr i8, ptr %ndev, i32 2544
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr.i, align 64
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv.i = zext i8 %5 to i32
  %arrayidx3.i = getelementptr i8, ptr %3, i32 1
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %7 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %or6.i = or i32 %shl5.i, %conv.i
  %arrayidx8.i = getelementptr i8, ptr %3, i32 2
  %8 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8.i, align 1
  %conv9.i = zext i8 %9 to i32
  %shl10.i = shl nuw nsw i32 %conv9.i, 16
  %or11.i = or i32 %or6.i, %shl10.i
  %arrayidx13.i = getelementptr i8, ptr %3, i32 3
  %10 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %11 to i32
  %shl15.i = shl nuw i32 %conv14.i, 24
  %or16.i = or i32 %or11.i, %shl15.i
  %12 = ptrtoint ptr %ge_mac_cfg_2_value1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ge_mac_cfg_2_value1.i, align 4
  %and.i = and i32 %13, -256
  %arrayidx18.i = getelementptr i8, ptr %3, i32 4
  %14 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx18.i, align 1
  %conv19.i = zext i8 %15 to i32
  %or21.i = or i32 %and.i, %conv19.i
  store i32 %or21.i, ptr %ge_mac_cfg_2_value1.i, align 4
  %and22.i = and i32 %or21.i, -65281
  %arrayidx24.i = getelementptr i8, ptr %3, i32 5
  %16 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx24.i, align 1
  %conv25.i = zext i8 %17 to i32
  %shl26.i = shl nuw nsw i32 %conv25.i, 8
  %or27.i = or i32 %shl26.i, %and22.i
  store i32 %or27.i, ptr %ge_mac_cfg_2_value1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr.i44.i = getelementptr i8, ptr %19, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44.i, i32 %or16.i) #7, !srcloc !52
  %20 = ptrtoint ptr %ge_mac_cfg_2_value1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ge_mac_cfg_2_value1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr.i45.i = getelementptr i8, ptr %23, i32 4104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45.i, i32 %21) #7, !srcloc !52
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.then2 ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nps_enet_poll_controller(ptr noundef %ndev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #7
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr.i13.i = getelementptr i8, ptr %3, i32 2064
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 2048
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %8 = and i32 %7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i, label %entry.nps_enet_is_tx_pending.exit.i_crit_edge

entry.nps_enet_is_tx_pending.exit.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nps_enet_is_tx_pending.exit.i

land.rhs.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tx_skb.i.i = getelementptr i8, ptr %ndev, i32 2312
  %9 = ptrtoint ptr %tx_skb.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tx_skb.i.i, align 8
  %tobool1.i.i = icmp eq ptr %10, null
  br label %nps_enet_is_tx_pending.exit.i

nps_enet_is_tx_pending.exit.i:                    ; preds = %land.rhs.i.i, %entry.nps_enet_is_tx_pending.exit.i_crit_edge
  %11 = phi i1 [ true, %entry.nps_enet_is_tx_pending.exit.i_crit_edge ], [ %tobool1.i.i, %land.rhs.i.i ]
  %12 = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %or.cond.i = select i1 %11, i1 %tobool.not.i, i1 false
  br i1 %or.cond.i, label %nps_enet_is_tx_pending.exit.i.nps_enet_irq_handler.exit_crit_edge, label %if.then.i

nps_enet_is_tx_pending.exit.i.nps_enet_irq_handler.exit_crit_edge: ; preds = %nps_enet_is_tx_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nps_enet_irq_handler.exit

if.then.i:                                        ; preds = %nps_enet_is_tx_pending.exit.i
  %napi.i = getelementptr i8, ptr %ndev, i32 2320
  %call3.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi.i) #7
  br i1 %call3.i, label %if.then6.i, label %if.then.i.nps_enet_irq_handler.exit_crit_edge, !prof !53

if.then.i.nps_enet_irq_handler.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nps_enet_irq_handler.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 8
  %add.ptr.i14.i = getelementptr i8, ptr %14, i32 2240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 0) #7, !srcloc !52
  tail call void @__napi_schedule(ptr noundef %napi.i) #7
  br label %nps_enet_irq_handler.exit

nps_enet_irq_handler.exit:                        ; preds = %if.then6.i, %if.then.i.nps_enet_irq_handler.exit_crit_edge, %nps_enet_is_tx_pending.exit.i.nps_enet_irq_handler.exit_crit_edge
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %16) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nps_enet_irq_handler(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_instance, i32 2304
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %1, i32 2064
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 2048
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %6 = and i32 %5, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.nps_enet_is_tx_pending.exit_crit_edge

entry.nps_enet_is_tx_pending.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nps_enet_is_tx_pending.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tx_skb.i = getelementptr i8, ptr %dev_instance, i32 2312
  %7 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_skb.i, align 8
  %tobool1.i = icmp eq ptr %8, null
  br label %nps_enet_is_tx_pending.exit

nps_enet_is_tx_pending.exit:                      ; preds = %land.rhs.i, %entry.nps_enet_is_tx_pending.exit_crit_edge
  %9 = phi i1 [ true, %entry.nps_enet_is_tx_pending.exit_crit_edge ], [ %tobool1.i, %land.rhs.i ]
  %10 = and i32 %2, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %or.cond = select i1 %9, i1 %tobool.not, i1 false
  br i1 %or.cond, label %nps_enet_is_tx_pending.exit.if.end8_crit_edge, label %if.then

nps_enet_is_tx_pending.exit.if.end8_crit_edge:    ; preds = %nps_enet_is_tx_pending.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %nps_enet_is_tx_pending.exit
  %napi = getelementptr i8, ptr %dev_instance, i32 2320
  %call3 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #7
  br i1 %call3, label %if.then6, label %if.then.if.end8_crit_edge, !prof !53

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !51
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr.i, align 8
  %add.ptr.i14 = getelementptr i8, ptr %12, i32 2240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 0) #7, !srcloc !52
  tail call void @__napi_schedule(ptr noundef %napi) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.then.if.end8_crit_edge, %nps_enet_is_tx_pending.exit.if.end8_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_nps_enet__350_665_nps_enet_driver_init6, !1, !"__initcall__kmod_nps_enet__350_665_nps_enet_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ezchip/nps_enet.c", i32 665, i32 1}
!2 = !{ptr @__exitcall_nps_enet_driver_exit, !1, !"__exitcall_nps_enet_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author351, !4, !"__UNIQUE_ID_author351", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/ezchip/nps_enet.c", i32 667, i32 1}
!5 = !{ptr @__UNIQUE_ID_file352, !6, !"__UNIQUE_ID_file352", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/ezchip/nps_enet.c", i32 668, i32 1}
!7 = !{ptr @__UNIQUE_ID_license353, !6, !"__UNIQUE_ID_license353", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/ezchip/nps_enet.c", i32 660, i32 11}
!10 = !{ptr @nps_enet_driver, !11, !"nps_enet_driver", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/ezchip/nps_enet.c", i32 656, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/ezchip/nps_enet.c", i32 601, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nps_enet_probe.__UNIQUE_ID_ddebug349, !13, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/ezchip/nps_enet.c", i32 611, i32 3}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @nps_enet_probe._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @nps_enet_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/ezchip/nps_enet.c", i32 622, i32 3}
!26 = !{ptr @nps_enet_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @nps_enet_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/ezchip/nps_enet.c", i32 627, i32 2}
!30 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @nps_enet_probe._entry.11, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @nps_enet_probe._entry_ptr.14, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @nps_netdev_ops, !34, !"nps_netdev_ops", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/ezchip/nps_enet.c", i32 561, i32 36}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/ezchip/nps_enet.c", i32 489, i32 9}
!37 = !{ptr @nps_enet_dt_ids, !38, !"nps_enet_dt_ids", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/ezchip/nps_enet.c", i32 650, i32 34}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2148970515, i64 2148970520, i64 2148970533, i64 2148970577, i64 2148970611, i64 2148970632}
!49 = !{i64 6266110}
!50 = !{i64 2156625806}
!51 = !{i64 2156625267}
!52 = !{i64 6265692}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{!"branch_weights", i32 1, i32 2000}
!55 = !{!"auto-init"}
!56 = !{i64 2156627293}
