; ModuleID = '/llk/IR_all_yes/drivers/net/can/m_can/tcan4x5x-core.c_pt.bc'
source_filename = "../drivers/net/can/m_can/tcan4x5x-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.m_can_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcan4x5x_priv = type { %struct.m_can_classdev, ptr, ptr, ptr, ptr, ptr, ptr, [96 x i8], %struct.tcan4x5x_map_buf, %struct.tcan4x5x_map_buf }
%struct.m_can_classdev = type { %struct.can_priv, %struct.can_rx_offload, %struct.napi_struct, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, [7 x %struct.mram_cfg] }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.can_rx_offload = type { ptr, ptr, %struct.sk_buff_head, %struct.sk_buff_head, i32, i32, i32, %struct.napi_struct, i8 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mram_cfg = type { i16, i8 }
%struct.tcan4x5x_map_buf = type { %struct.tcan4x5x_buf_cmd, [1024 x i8], [124 x i8] }
%struct.tcan4x5x_buf_cmd = type <{ i8, i16, i8 }>
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.144, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.144 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@__initcall__kmod_tcan4x5x__464_432_tcan4x5x_can_driver_init6 = internal global ptr @tcan4x5x_can_driver_init, section ".initcall6.init", align 4
@tcan4x5x_can_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @tcan4x5x_id_table, ptr @tcan4x5x_can_probe, ptr @tcan4x5x_can_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tcan4x5x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_tcan4x5x_can_driver_exit = internal global ptr @tcan4x5x_can_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author465 = internal constant [44 x i8] c"tcan4x5x.author=Dan Murphy <dmurphy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description466 = internal constant [59 x i8] c"tcan4x5x.description=Texas Instruments TCAN4x5x CAN driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file467 = internal constant [45 x i8] c"tcan4x5x.file=drivers/net/can/m_can/tcan4x5x\00", section ".modinfo", align 1
@__UNIQUE_ID_license468 = internal constant [24 x i8] c"tcan4x5x.license=GPL v2\00", section ".modinfo", align 1
@tcan4x5x_id_table = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"tcan4x5x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcan4x5x\00", [23 x i8] zeroinitializer }, align 32
@tcan4x5x_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tcan4x5x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vsup\00", [27 x i8] zeroinitializer }, align 32
@tcan4x5x_can_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 332, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no CAN clock source defined\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tcan4x5x_can_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/can/m_can/tcan4x5x-core.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tcan4x5x_can_probe._entry_ptr = internal global ptr @tcan4x5x_can_probe._entry, section ".printk_index", align 4
@tcan4x5x_ops = internal global { %struct.m_can_ops, [40 x i8] } { %struct.m_can_ops { ptr @tcan4x5x_clear_interrupts, ptr @tcan4x5x_read_reg, ptr @tcan4x5x_write_reg, ptr @tcan4x5x_read_fifo, ptr @tcan4x5x_write_fifo, ptr @tcan4x5x_init }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"TCAN4X5X successfully initialized.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device-wake\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device-state\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"tcan4x5x_can_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 422, i32 26 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"tcan4x5x_id_table\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 413, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 424, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"tcan4x5x_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 404, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 322, i32 55 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 332, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"tcan4x5x_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 300, i32 25 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 381, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 271, i32 57 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 280, i32 60 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [41 x i8] c"../drivers/net/can/m_can/tcan4x5x-core.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 290, i32 14 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author465, ptr @__UNIQUE_ID_description466, ptr @__UNIQUE_ID_file467, ptr @__UNIQUE_ID_license468, ptr @__exitcall_tcan4x5x_can_driver_exit, ptr @__initcall__kmod_tcan4x5x__464_432_tcan4x5x_can_driver_init6, ptr @tcan4x5x_can_driver_exit, ptr @tcan4x5x_can_probe._entry, ptr @tcan4x5x_can_probe._entry_ptr, ptr @tcan4x5x_can_driver, ptr @tcan4x5x_id_table, ptr @.str, ptr @tcan4x5x_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tcan4x5x_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcan4x5x_can_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcan4x5x_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcan4x5x_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcan4x5x_can_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcan4x5x_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcan4x5x_can_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @tcan4x5x_can_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcan4x5x_can_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @tcan4x5x_can_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcan4x5x_can_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @m_can_class_allocate_dev(ptr noundef %spi, i32 noundef 3456) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.1) #5
  %power = getelementptr inbounds %struct.tcan4x5x_priv, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %power, align 4
  %cmp = icmp eq ptr %call3, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.end.out_m_can_class_free_dev_crit_edge, label %if.else

if.end.out_m_can_class_free_dev_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_m_can_class_free_dev

if.else:                                          ; preds = %if.end
  %1 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %power, align 4
  %call9 = tail call i32 @m_can_class_get_clocks(ptr noundef nonnull %call) #5
  %cclk = getelementptr inbounds %struct.m_can_classdev, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %cclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cclk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end16.thread, label %if.end16

if.end16.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.2) #8
  br label %if.end20

if.end16:                                         ; preds = %if.else
  %call15 = tail call i32 @clk_get_rate(ptr noundef %3) #5
  %4 = add i32 %call15, -40000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -20000001, i32 %4)
  %5 = icmp ult i32 %4, -20000001
  br i1 %5, label %if.end16.out_m_can_class_free_dev_crit_edge, label %if.end16.if.end20_crit_edge

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end16.out_m_can_class_free_dev_crit_edge:      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_m_can_class_free_dev

if.end20:                                         ; preds = %if.end16.if.end20_crit_edge, %if.end16.thread
  %freq.0105 = phi i32 [ 40000000, %if.end16.thread ], [ %call15, %if.end16.if.end20_crit_edge ]
  %spi21 = getelementptr inbounds %struct.tcan4x5x_priv, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %spi21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %spi21, align 4
  %pm_clock_support = getelementptr inbounds %struct.m_can_classdev, ptr %call, i32 0, i32 16
  %7 = ptrtoint ptr %pm_clock_support to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %pm_clock_support, align 4
  %clock = getelementptr inbounds %struct.can_priv, ptr %call, i32 0, i32 13
  %8 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %freq.0105, ptr %clock, align 8
  %dev24 = getelementptr inbounds %struct.m_can_classdev, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spi, ptr %dev24, align 4
  %ops = getelementptr inbounds %struct.m_can_classdev, ptr %call, i32 0, i32 13
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tcan4x5x_ops, ptr %ops, align 8
  %is_peripheral = getelementptr inbounds %struct.m_can_classdev, ptr %call, i32 0, i32 17
  %11 = ptrtoint ptr %is_peripheral to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %is_peripheral, align 8
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %net = getelementptr inbounds %struct.m_can_classdev, ptr %call, i32 0, i32 3
  %14 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %net, align 8
  %irq25 = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 64
  %16 = ptrtoint ptr %irq25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %irq25, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %driver_data.i.i, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %18 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 8, ptr %bits_per_word, align 1
  %call26 = tail call i32 @spi_setup(ptr noundef %spi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end20.out_m_can_class_free_dev_crit_edge

if.end20.out_m_can_class_free_dev_crit_edge:      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_m_can_class_free_dev

if.end29:                                         ; preds = %if.end20
  %call30 = tail call i32 @tcan4x5x_regmap_init(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.out_m_can_class_free_dev_crit_edge

if.end29.out_m_can_class_free_dev_crit_edge:      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_m_can_class_free_dev

if.end33:                                         ; preds = %if.end29
  %19 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %power, align 4
  %tobool.not.i.i = icmp eq ptr %20, null
  %cmp.i.i = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.end33.if.end38_crit_edge, label %tcan4x5x_power_enable.exit

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

tcan4x5x_power_enable.exit:                       ; preds = %if.end33
  %call2.i = tail call i32 @regulator_enable(ptr noundef nonnull %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool36.not = icmp eq i32 %call2.i, 0
  br i1 %tobool36.not, label %tcan4x5x_power_enable.exit.if.end38_crit_edge, label %tcan4x5x_power_enable.exit.out_m_can_class_free_dev_crit_edge

tcan4x5x_power_enable.exit.out_m_can_class_free_dev_crit_edge: ; preds = %tcan4x5x_power_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_m_can_class_free_dev

tcan4x5x_power_enable.exit.if.end38_crit_edge:    ; preds = %tcan4x5x_power_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.end38:                                         ; preds = %tcan4x5x_power_enable.exit.if.end38_crit_edge, %if.end33.if.end38_crit_edge
  %call39 = tail call fastcc i32 @tcan4x5x_get_gpios(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.out_power_crit_edge

if.end38.out_power_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_power

if.end42:                                         ; preds = %if.end38
  %call43 = tail call i32 @tcan4x5x_init(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.out_power_crit_edge

if.end42.out_power_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_power

if.end46:                                         ; preds = %if.end42
  %call47 = tail call i32 @m_can_class_register(ptr noundef nonnull %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %if.end46.out_power_crit_edge

if.end46.out_power_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_power

if.end50:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %net, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %22, ptr noundef nonnull @.str.7) #8
  br label %cleanup

out_power:                                        ; preds = %if.end46.out_power_crit_edge, %if.end42.out_power_crit_edge, %if.end38.out_power_crit_edge
  %ret.0 = phi i32 [ %call39, %if.end38.out_power_crit_edge ], [ %call43, %if.end42.out_power_crit_edge ], [ %call47, %if.end46.out_power_crit_edge ]
  %23 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %power, align 4
  %tobool.not.i.i96 = icmp eq ptr %24, null
  %cmp.i.i97 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i98 = or i1 %tobool.not.i.i96, %cmp.i.i97
  br i1 %spec.select.i.i98, label %out_power.out_m_can_class_free_dev_crit_edge, label %if.end.i99

out_power.out_m_can_class_free_dev_crit_edge:     ; preds = %out_power
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_m_can_class_free_dev

if.end.i99:                                       ; preds = %out_power
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call i32 @regulator_disable(ptr noundef nonnull %24) #5
  br label %out_m_can_class_free_dev

out_m_can_class_free_dev:                         ; preds = %if.end.i99, %out_power.out_m_can_class_free_dev_crit_edge, %tcan4x5x_power_enable.exit.out_m_can_class_free_dev_crit_edge, %if.end29.out_m_can_class_free_dev_crit_edge, %if.end20.out_m_can_class_free_dev_crit_edge, %if.end16.out_m_can_class_free_dev_crit_edge, %if.end.out_m_can_class_free_dev_crit_edge
  %ret.1 = phi i32 [ %call26, %if.end20.out_m_can_class_free_dev_crit_edge ], [ %call30, %if.end29.out_m_can_class_free_dev_crit_edge ], [ %call2.i, %tcan4x5x_power_enable.exit.out_m_can_class_free_dev_crit_edge ], [ -517, %if.end.out_m_can_class_free_dev_crit_edge ], [ -34, %if.end16.out_m_can_class_free_dev_crit_edge ], [ %ret.0, %out_power.out_m_can_class_free_dev_crit_edge ], [ %ret.0, %if.end.i99 ]
  %net54 = getelementptr inbounds %struct.m_can_classdev, ptr %call, i32 0, i32 3
  %25 = ptrtoint ptr %net54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %net54, align 8
  tail call void @m_can_class_free_dev(ptr noundef %26) #5
  br label %cleanup

cleanup:                                          ; preds = %out_m_can_class_free_dev, %if.end50, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_m_can_class_free_dev ], [ 0, %if.end50 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcan4x5x_can_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @m_can_class_unregister(ptr noundef %1) #5
  %power = getelementptr inbounds %struct.tcan4x5x_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  %cmp.i.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.tcan4x5x_power_enable.exit_crit_edge, label %if.end.i

entry.tcan4x5x_power_enable.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tcan4x5x_power_enable.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = tail call i32 @regulator_disable(ptr noundef nonnull %3) #5
  br label %tcan4x5x_power_enable.exit

tcan4x5x_power_enable.exit:                       ; preds = %if.end.i, %entry.tcan4x5x_power_enable.exit_crit_edge
  %net = getelementptr inbounds %struct.m_can_classdev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net, align 8
  tail call void @m_can_class_free_dev(ptr noundef %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @m_can_class_allocate_dev(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m_can_class_get_clocks(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcan4x5x_regmap_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcan4x5x_get_gpios(ptr nocapture noundef %cdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.m_can_classdev, ptr %cdev, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call1 = tail call ptr @devm_gpiod_get(ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef 7) #5
  %device_wake_gpio = getelementptr inbounds %struct.tcan4x5x_priv, ptr %cdev, i32 0, i32 4
  %2 = ptrtoint ptr %device_wake_gpio to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %device_wake_gpio, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  %cmp = icmp eq ptr %call1, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %regmap.i = getelementptr inbounds %struct.tcan4x5x_priv, ptr %cdev, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 2048, i32 noundef -1073741824, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call10 = tail call ptr @devm_gpiod_get_optional(ptr noundef %6, ptr noundef nonnull @.str.9, i32 noundef 3) #5
  %reset_gpio = getelementptr inbounds %struct.tcan4x5x_priv, ptr %cdev, i32 0, i32 3
  %7 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call10, ptr %reset_gpio, align 16
  %cmp.i43 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i43, label %if.end15.thread, label %if.end15

if.end15.thread:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %reset_gpio, align 16
  br label %if.else.i

if.end15:                                         ; preds = %if.end8
  %tobool.not.i = icmp eq ptr %call10, null
  br i1 %tobool.not.i, label %if.end15.if.else.i_crit_edge, label %if.then.i

if.end15.if.else.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value(ptr noundef nonnull %call10, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 100, i32 noundef 2) #5
  %9 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset_gpio, align 16
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 0) #5
  br label %if.end18

if.else.i:                                        ; preds = %if.end15.if.else.i_crit_edge, %if.end15.thread
  %regmap.i44 = getelementptr inbounds %struct.tcan4x5x_priv, ptr %cdev, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i44 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i44, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 2048, i32 noundef 4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.else.i.if.end18_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else.i.if.end18_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end18:                                         ; preds = %if.else.i.if.end18_crit_edge, %if.then.i
  tail call void @usleep_range_state(i32 noundef 700, i32 noundef 1000, i32 noundef 2) #5
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %call20 = tail call ptr @devm_gpiod_get_optional(ptr noundef %14, ptr noundef nonnull @.str.10, i32 noundef 1) #5
  %device_state_gpio = getelementptr inbounds %struct.tcan4x5x_priv, ptr %cdev, i32 0, i32 5
  %15 = ptrtoint ptr %device_state_gpio to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call20, ptr %device_state_gpio, align 8
  %cmp.i45 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %if.then23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %device_state_gpio to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %device_state_gpio, align 8
  %regmap.i46 = getelementptr inbounds %struct.tcan4x5x_priv, ptr %cdev, i32 0, i32 1
  %17 = ptrtoint ptr %regmap.i46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i46, align 8
  %call.i.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 2048, i32 noundef 512, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end18.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -517, %if.then.cleanup_crit_edge ], [ 0, %if.then23 ], [ 0, %if.end18.cleanup_crit_edge ], [ %call.i, %if.else.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcan4x5x_init(ptr noundef %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device_state_gpio.i = getelementptr inbounds %struct.tcan4x5x_priv, ptr %cdev, i32 0, i32 5
  %0 = ptrtoint ptr %device_state_gpio.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_state_gpio.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tcan4x5x_check_wake.exit_crit_edge, label %if.end.i

entry.tcan4x5x_check_wake.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tcan4x5x_check_wake.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call i32 @gpiod_get_value(ptr noundef nonnull %1) #5
  %device_wake_gpio.i = getelementptr inbounds %struct.tcan4x5x_priv, ptr %cdev, i32 0, i32 4
  %2 = ptrtoint ptr %device_wake_gpio.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_wake_gpio.i, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  %or.cond.i = select i1 %tobool2.not.i, i1 true, i1 %tobool3.not.i
  br i1 %or.cond.i, label %if.end.i.tcan4x5x_check_wake.exit_crit_edge, label %if.then4.i

if.end.i.tcan4x5x_check_wake.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tcan4x5x_check_wake.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value(ptr noundef nonnull %3, i32 noundef 0) #5
  tail call void @usleep_range_state(i32 noundef 5, i32 noundef 50, i32 noundef 2) #5
  %4 = ptrtoint ptr %device_wake_gpio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_wake_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #5
  br label %tcan4x5x_check_wake.exit

tcan4x5x_check_wake.exit:                         ; preds = %if.then4.i, %if.end.i.tcan4x5x_check_wake.exit_crit_edge, %entry.tcan4x5x_check_wake.exit_crit_edge
  %regmap.i.i = getelementptr inbounds %struct.tcan4x5x_priv, ptr %cdev, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i.i, align 8
  %call1.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 12, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i27 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i27, label %if.end.i29, label %tcan4x5x_check_wake.exit.cleanup_crit_edge

tcan4x5x_check_wake.exit.cleanup_crit_edge:       ; preds = %tcan4x5x_check_wake.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i29:                                       ; preds = %tcan4x5x_check_wake.exit
  %8 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i, align 8
  %call1.i19.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 2084, i32 noundef 597) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19.i)
  %tobool2.not.i28 = icmp eq i32 %call1.i19.i, 0
  br i1 %tobool2.not.i28, label %if.end4.i, label %if.end.i29.cleanup_crit_edge

if.end.i29.cleanup_crit_edge:                     ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i29
  %10 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i.i, align 8
  %call1.i21.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 2080, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21.i)
  %tobool6.not.i = icmp eq i32 %call1.i21.i, 0
  br i1 %tobool6.not.i, label %tcan4x5x_clear_interrupts.exit, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

tcan4x5x_clear_interrupts.exit:                   ; preds = %if.end4.i
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 8
  %call1.i23.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 16, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i23.i)
  %tobool.not = icmp eq i32 %call1.i23.i, 0
  br i1 %tobool.not, label %if.end, label %tcan4x5x_clear_interrupts.exit.cleanup_crit_edge

tcan4x5x_clear_interrupts.exit.cleanup_crit_edge: ; preds = %tcan4x5x_clear_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %tcan4x5x_clear_interrupts.exit
  %14 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i.i, align 8
  %call1.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 2096, i32 noundef 32818) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool3.not = icmp eq i32 %call1.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @m_can_init_ram(ptr noundef %cdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i, align 8
  %call.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 2048, i32 noundef 192, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tcan4x5x_clear_interrupts.exit.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i29.cleanup_crit_edge, %tcan4x5x_check_wake.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i23.i, %tcan4x5x_clear_interrupts.exit.cleanup_crit_edge ], [ %call1.i, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call.i30, %if.end9 ], [ %call1.i21.i, %if.end4.i.cleanup_crit_edge ], [ %call1.i19.i, %if.end.i29.cleanup_crit_edge ], [ %call1.i.i, %tcan4x5x_check_wake.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m_can_class_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @m_can_class_free_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcan4x5x_clear_interrupts(ptr nocapture noundef readonly %cdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.tcan4x5x_priv, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 8
  %call1.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 12, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 8
  %call1.i19 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 2084, i32 noundef 597) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool2.not = icmp eq i32 %call1.i19, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 8
  %call1.i21 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 2080, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool6.not = icmp eq i32 %call1.i21, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 8
  %call1.i23 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 16, i32 noundef -1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i23, %if.end8 ], [ %call1.i, %entry.cleanup_crit_edge ], [ %call1.i19, %if.end.cleanup_crit_edge ], [ %call1.i21, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcan4x5x_read_reg(ptr nocapture noundef readonly %cdev, i32 noundef %reg) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !47
  %regmap = getelementptr inbounds %struct.tcan4x5x_priv, ptr %cdev, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 8
  %add = add i32 %reg, 4096
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %val) #5
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcan4x5x_write_reg(ptr nocapture noundef readonly %cdev, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.tcan4x5x_priv, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 8
  %add = add i32 %reg, 4096
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %add, i32 noundef %val) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcan4x5x_read_fifo(ptr nocapture noundef readonly %cdev, i32 noundef %addr_offset, ptr noundef %val, i32 noundef %val_count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.tcan4x5x_priv, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 8
  %add = add i32 %addr_offset, 32768
  %call1 = tail call i32 @regmap_bulk_read(ptr noundef %1, i32 noundef %add, ptr noundef %val, i32 noundef %val_count) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcan4x5x_write_fifo(ptr nocapture noundef readonly %cdev, i32 noundef %addr_offset, ptr noundef %val, i32 noundef %val_count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.tcan4x5x_priv, ptr %cdev, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 8
  %add = add i32 %addr_offset, 32768
  %call1 = tail call i32 @regmap_bulk_write(ptr noundef %1, i32 noundef %add, ptr noundef %val, i32 noundef %val_count) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @m_can_init_ram(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @m_can_class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @__initcall__kmod_tcan4x5x__464_432_tcan4x5x_can_driver_init6, !1, !"__initcall__kmod_tcan4x5x__464_432_tcan4x5x_can_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/m_can/tcan4x5x-core.c", i32 432, i32 1}
!2 = !{ptr @__exitcall_tcan4x5x_can_driver_exit, !1, !"__exitcall_tcan4x5x_can_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author465, !4, !"__UNIQUE_ID_author465", i1 false, i1 false}
!4 = !{!"../drivers/net/can/m_can/tcan4x5x-core.c", i32 434, i32 1}
!5 = !{ptr @__UNIQUE_ID_description466, !6, !"__UNIQUE_ID_description466", i1 false, i1 false}
!6 = !{!"../drivers/net/can/m_can/tcan4x5x-core.c", i32 435, i32 1}
!7 = !{ptr @__UNIQUE_ID_file467, !8, !"__UNIQUE_ID_file467", i1 false, i1 false}
!8 = !{!"../drivers/net/can/m_can/tcan4x5x-core.c", i32 436, i32 1}
!9 = !{ptr @__UNIQUE_ID_license468, !8, !"__UNIQUE_ID_license468", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/can/m_can/tcan4x5x-core.c", i32 424, i32 11}
!12 = !{ptr @tcan4x5x_can_driver, !13, !"tcan4x5x_can_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/can/m_can/tcan4x5x-core.c", i32 422, i32 26}
!14 = !{ptr @tcan4x5x_id_table, !15, !"tcan4x5x_id_table", i1 false, i1 false}
!15 = !{!"../drivers/net/can/m_can/tcan4x5x-core.c", i32 413, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/can/m_can/tcan4x5x-core.c", i32 322, i32 55}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/can/m_can/tcan4x5x-core.c", i32 332, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tcan4x5x_can_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @tcan4x5x_can_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/can/m_can/tcan4x5x-core.c", i32 381, i32 31}
!28 = !{ptr @tcan4x5x_ops, !29, !"tcan4x5x_ops", i1 false, i1 false}
!29 = !{!"../drivers/net/can/m_can/tcan4x5x-core.c", i32 300, i32 25}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/can/m_can/tcan4x5x-core.c", i32 271, i32 57}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/can/m_can/tcan4x5x-core.c", i32 280, i32 60}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/can/m_can/tcan4x5x-core.c", i32 290, i32 14}
!36 = !{ptr @tcan4x5x_of_match, !37, !"tcan4x5x_of_match", i1 false, i1 false}
!37 = !{!"../drivers/net/can/m_can/tcan4x5x-core.c", i32 404, i32 34}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"auto-init"}
