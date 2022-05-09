; ModuleID = '/llk/IR_all_yes/drivers/net/can/c_can/c_can_pci.c_pt.bc'
source_filename = "../drivers/net/can/c_can/c_can_pci.c"
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
%struct.c_can_pci_data = type { i32, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.126, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.126 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.c_can_priv = type { %struct.can_priv, %struct.napi_struct, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, i32, %struct.c_can_tx_ring, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.c_can_raminit, ptr, i32 }
%struct.can_priv = type { ptr, %struct.can_device_stats, ptr, ptr, %struct.can_bittiming, %struct.can_bittiming, ptr, %struct.can_tdc, i32, ptr, ptr, i32, i32, %struct.can_clock, i32, ptr, i16, ptr, [2 x i16], i32, ptr, i32, i32, i32, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.can_device_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.can_bittiming = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.can_tdc = type { i32, i32, i32 }
%struct.can_clock = type { i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.c_can_tx_ring = type { i32, i32, i32 }
%struct.c_can_raminit = type { ptr, i32, %struct.raminit_bits, i8 }
%struct.raminit_bits = type { i8, i8 }

@__initcall__kmod_c_can_pci__462_292_c_can_pci_driver_init6 = internal global ptr @c_can_pci_driver_init, section ".initcall6.init", align 4
@c_can_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @c_can_pci_tbl, ptr @c_can_pci_probe, ptr @c_can_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_c_can_pci_driver_exit = internal global ptr @c_can_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author463 = internal constant [57 x i8] c"c_can_pci.author=Federico Vaga <federico.vaga@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file464 = internal constant [47 x i8] c"c_can_pci.file=drivers/net/can/c_can/c_can_pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license465 = internal constant [25 x i8] c"c_can_pci.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description466 = internal constant [74 x i8] c"c_can_pci.description=PCI CAN bus driver for Bosch C_CAN/D_CAN controller\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"c_can_pci\00", [22 x i8] zeroinitializer }, align 32
@c_can_pci_tbl = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4170, i32 52241, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @c_can_sta2x11 to i32), i32 0 }, %struct.pci_device_id { i32 32902, i32 34840, i32 -1, i32 -1, i32 0, i32 0, i32 ptrtoint (ptr @c_can_pch to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@c_can_sta2x11 = internal constant { %struct.c_can_pci_data, [40 x i8] } { %struct.c_can_pci_data { i32 0, i32 32, i32 1, i32 52000000, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@c_can_pch = internal constant { %struct.c_can_pci_data, [40 x i8] } { %struct.c_can_pci_data { i32 0, i32 32, i32 2, i32 50000000, i32 1, ptr @c_can_pci_reset_pch }, [40 x i8] zeroinitializer }, align 32
@c_can_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 126, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci_enable_device FAILED\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"c_can_pci_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/can/c_can/c_can_pci.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@c_can_pci_probe._entry_ptr = internal global ptr @c_can_pci_probe._entry, section ".printk_index", align 4
@c_can_pci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 132, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pci_request_regions FAILED\0A\00", [36 x i8] zeroinitializer }, align 32
@c_can_pci_probe._entry_ptr.8 = internal global ptr @c_can_pci_probe._entry.6, section ".printk_index", align 4
@c_can_pci_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 138, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MSI enabled\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@c_can_pci_probe._entry_ptr.12 = internal global ptr @c_can_pci_probe._entry.9, section ".printk_index", align 4
@c_can_pci_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 146, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"device has no PCI memory resources, failing adapter\0A\00", [43 x i8] zeroinitializer }, align 32
@c_can_pci_probe._entry_ptr.15 = internal global ptr @c_can_pci_probe._entry.13, section ".printk_index", align 4
@c_can_pci_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 167, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no clock frequency defined\0A\00", [36 x i8] zeroinitializer }, align 32
@c_can_pci_probe._entry_ptr.18 = internal global ptr @c_can_pci_probe._entry.16, section ".printk_index", align 4
@reg_map_c_can = internal constant { [39 x i16], [50 x i8] } { [39 x i16] [i16 0, i16 0, i16 2, i16 4, i16 6, i16 8, i16 10, i16 12, i16 16, i16 18, i16 20, i16 22, i16 24, i16 26, i16 28, i16 30, i16 32, i16 34, i16 36, i16 64, i16 66, i16 68, i16 70, i16 72, i16 74, i16 76, i16 78, i16 80, i16 82, i16 84, i16 128, i16 130, i16 144, i16 146, i16 160, i16 162, i16 0, i16 176, i16 178], [50 x i8] zeroinitializer }, align 32
@reg_map_d_can = internal constant { [40 x i16], [48 x i8] } { [40 x i16] [i16 0, i16 2, i16 4, i16 8, i16 12, i16 16, i16 20, i16 14, i16 256, i16 258, i16 260, i16 262, i16 264, i16 266, i16 268, i16 272, i16 274, i16 276, i16 278, i16 288, i16 290, i16 292, i16 294, i16 296, i16 298, i16 300, i16 304, i16 306, i16 308, i16 310, i16 136, i16 138, i16 156, i16 158, i16 176, i16 178, i16 180, i16 196, i16 198, i16 24], [48 x i8] zeroinitializer }, align 32
@c_can_pci_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"registering %s failed (err=%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@c_can_pci_probe._entry_ptr.21 = internal global ptr @c_can_pci_probe._entry.19, section ".printk_index", align 4
@c_can_pci_probe.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.22, i8 0, i8 55, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s device registered (regs=%p, irq=%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@switch.table.c_can_pci_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @c_can_pci_read_reg_aligned_to_16bit, ptr @c_can_pci_read_reg_aligned_to_32bit, ptr @c_can_pci_read_reg_32bit], [20 x i8] zeroinitializer }, align 32
@switch.table.c_can_pci_probe.23 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @c_can_pci_write_reg_aligned_to_16bit, ptr @c_can_pci_write_reg_aligned_to_32bit, ptr @c_can_pci_write_reg_32bit], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"c_can_pci_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 285, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 292, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"c_can_pci_tbl\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 277, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"c_can_sta2x11\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 255, i32 36 }
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"c_can_pch\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 263, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 126, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 132, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 138, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 145, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 167, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [14 x i8] c"reg_map_c_can\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 68, i32 33 }
@___asan_gen_.87 = private unnamed_addr constant [14 x i8] c"reg_map_d_can\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [33 x i8] c"../drivers/net/can/c_can/c_can.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 108, i32 33 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 214, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [37 x i8] c"../drivers/net/can/c_can/c_can_pci.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 219, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [29 x i8] c"switch.table.c_can_pci_probe\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [32 x i8] c"switch.table.c_can_pci_probe.23\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author463, ptr @__UNIQUE_ID_description466, ptr @__UNIQUE_ID_file464, ptr @__UNIQUE_ID_license465, ptr @__exitcall_c_can_pci_driver_exit, ptr @__initcall__kmod_c_can_pci__462_292_c_can_pci_driver_init6, ptr @c_can_pci_driver_exit, ptr @c_can_pci_probe._entry, ptr @c_can_pci_probe._entry.13, ptr @c_can_pci_probe._entry.16, ptr @c_can_pci_probe._entry.19, ptr @c_can_pci_probe._entry.6, ptr @c_can_pci_probe._entry.9, ptr @c_can_pci_probe._entry_ptr, ptr @c_can_pci_probe._entry_ptr.12, ptr @c_can_pci_probe._entry_ptr.15, ptr @c_can_pci_probe._entry_ptr.18, ptr @c_can_pci_probe._entry_ptr.21, ptr @c_can_pci_probe._entry_ptr.8, ptr @c_can_pci_driver, ptr @.str, ptr @c_can_pci_tbl, ptr @c_can_sta2x11, ptr @c_can_pch, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @reg_map_c_can, ptr @reg_map_d_can, ptr @.str.20, ptr @.str.22, ptr @switch.table.c_can_pci_probe, ptr @switch.table.c_can_pci_probe.23], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_pci_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_sta2x11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_pch to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_pci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_pci_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_pci_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_pci_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_map_c_can to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg_map_d_can to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c_can_pci_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.c_can_pci_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.c_can_pci_probe.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @c_can_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @c_can_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @c_can_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pci_unregister_driver(ptr noundef nonnull @c_can_pci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c_can_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %2 = inttoptr i32 %1 to ptr
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.7) #8
  br label %out_disable_device

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @pci_enable_msi(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end15, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.10) #8
  tail call void @pci_set_master(ptr noundef %pdev) #5
  br label %if.end17

if.end17:                                         ; preds = %do.end15, %if.end9.if.end17_crit_edge
  %bar = getelementptr inbounds %struct.c_can_pci_data, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bar, align 4
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %4, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.end17.cond.end_crit_edge, label %cond.false

if.end17.cond.end_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %6, 1
  %add = sub i32 %sub, %8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end17.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %if.end17.cond.end_crit_edge ]
  %call26 = tail call ptr @pci_iomap(ptr noundef %pdev, i32 noundef %4, i32 noundef %cond) #5
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %do.end31, label %if.end33

do.end31:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.14) #8
  br label %out_release_regions

if.end33:                                         ; preds = %cond.end
  %msg_obj_num = getelementptr inbounds %struct.c_can_pci_data, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %msg_obj_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_obj_num, align 4
  %call34 = tail call ptr @alloc_c_can_dev(i32 noundef %10) #5
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.out_iounmap_crit_edge, label %if.end37

if.end33.out_iounmap_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_iounmap

if.end37:                                         ; preds = %if.end33
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call34, ptr %driver_data.i.i, align 4
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call34, i32 0, i32 133, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev39, ptr %parent, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  %irq41 = getelementptr inbounds %struct.net_device, ptr %call34, i32 0, i32 64
  %15 = ptrtoint ptr %irq41 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %irq41, align 4
  %base = getelementptr i8, ptr %call34, i32 2920
  %16 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call26, ptr %base, align 8
  %device = getelementptr i8, ptr %call34, i32 2844
  %17 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev39, ptr %device, align 4
  %freq = getelementptr inbounds %struct.c_can_pci_data, ptr %2, i32 0, i32 3
  %18 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool43.not = icmp eq i32 %19, 0
  br i1 %tobool43.not, label %do.end47, label %if.else

do.end47:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.17) #8
  br label %out_free_c_can

if.else:                                          ; preds = %if.end37
  %clock = getelementptr i8, ptr %call34, i32 2440
  %20 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %clock, align 8
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %2, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.else.out_free_c_can_crit_edge [
    i32 0, label %if.else.sw.epilog_crit_edge
    i32 1, label %sw.bb52
  ]

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.else.out_free_c_can_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_c_can

sw.bb52:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb52, %if.else.sw.epilog_crit_edge
  %reg_map_d_can.sink = phi ptr [ @reg_map_d_can, %sw.bb52 ], [ @reg_map_c_can, %if.else.sw.epilog_crit_edge ]
  %regs53 = getelementptr i8, ptr %call34, i32 2924
  %24 = ptrtoint ptr %regs53 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %reg_map_d_can.sink, ptr %regs53, align 4
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %2, align 4
  %type55 = getelementptr i8, ptr %call34, i32 2928
  %27 = ptrtoint ptr %type55 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %type55, align 8
  %reg_align = getelementptr inbounds %struct.c_can_pci_data, ptr %2, i32 0, i32 2
  %28 = ptrtoint ptr %reg_align to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg_align, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %30 = icmp ult i32 %29, 3
  br i1 %30, label %switch.lookup, label %sw.epilog.out_free_c_can_crit_edge

sw.epilog.out_free_c_can_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_free_c_can

switch.lookup:                                    ; preds = %sw.epilog
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.c_can_pci_probe, i32 0, i32 %29
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep154 = getelementptr inbounds [3 x ptr], ptr @switch.table.c_can_pci_probe.23, i32 0, i32 %29
  %32 = ptrtoint ptr %switch.gep154 to i32
  call void @__asan_load4_noabort(i32 %32)
  %switch.load155 = load ptr, ptr %switch.gep154, align 4
  %read_reg61 = getelementptr i8, ptr %call34, i32 2904
  %33 = ptrtoint ptr %read_reg61 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %switch.load, ptr %read_reg61, align 8
  %write_reg62 = getelementptr i8, ptr %call34, i32 2908
  %34 = ptrtoint ptr %write_reg62 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %switch.load155, ptr %write_reg62, align 4
  %read_reg32 = getelementptr i8, ptr %call34, i32 2912
  %35 = ptrtoint ptr %read_reg32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @c_can_pci_read_reg32, ptr %read_reg32, align 8
  %write_reg32 = getelementptr i8, ptr %call34, i32 2916
  %36 = ptrtoint ptr %write_reg32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @c_can_pci_write_reg32, ptr %write_reg32, align 4
  %init = getelementptr inbounds %struct.c_can_pci_data, ptr %2, i32 0, i32 5
  %37 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %init, align 4
  %raminit = getelementptr i8, ptr %call34, i32 2944
  %39 = ptrtoint ptr %raminit to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %raminit, align 8
  %call65 = tail call i32 @register_c_can_dev(ptr noundef nonnull %call34) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.body73, label %do.end70

do.end70:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev39, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str, i32 noundef %call65) #8
  br label %out_free_c_can

do.body73:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c_can_pci_probe.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@c_can_pci_probe, %cleanup)) #5
          to label %if.then79 [label %cleanup], !srcloc !64

if.then79:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #7
  %regs81 = getelementptr i8, ptr %call34, i32 2924
  %40 = ptrtoint ptr %regs81 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs81, align 4
  %42 = ptrtoint ptr %irq41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq41, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c_can_pci_probe.__UNIQUE_ID_ddebug461, ptr noundef %dev39, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str, ptr noundef %41, i32 noundef %43) #5
  br label %cleanup

out_free_c_can:                                   ; preds = %do.end70, %sw.epilog.out_free_c_can_crit_edge, %if.else.out_free_c_can_crit_edge, %do.end47
  %ret.0 = phi i32 [ %call65, %do.end70 ], [ -19, %do.end47 ], [ -22, %if.else.out_free_c_can_crit_edge ], [ -22, %sw.epilog.out_free_c_can_crit_edge ]
  tail call void @free_c_can_dev(ptr noundef nonnull %call34) #5
  br label %out_iounmap

out_iounmap:                                      ; preds = %out_free_c_can, %if.end33.out_iounmap_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_free_c_can ], [ -12, %if.end33.out_iounmap_crit_edge ]
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef nonnull %call26) #5
  br label %out_release_regions

out_release_regions:                              ; preds = %out_iounmap, %do.end31
  %ret.2 = phi i32 [ %ret.1, %out_iounmap ], [ -12, %do.end31 ]
  tail call void @pci_disable_msi(ptr noundef %pdev) #5
  tail call void @pci_clear_master(ptr noundef %pdev) #5
  tail call void @pci_release_regions(ptr noundef %pdev) #5
  br label %out_disable_device

out_disable_device:                               ; preds = %out_release_regions, %do.end7
  %ret.3 = phi i32 [ %call2, %do.end7 ], [ %ret.2, %out_release_regions ]
  tail call void @pci_disable_device(ptr noundef %pdev) #5
  br label %cleanup

cleanup:                                          ; preds = %out_disable_device, %if.then79, %do.body73, %do.end
  %retval.0 = phi i32 [ 0, %if.then79 ], [ %call, %do.end ], [ %ret.3, %out_disable_device ], [ 0, %do.body73 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c_can_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %base = getelementptr i8, ptr %1, i32 2920
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 8
  tail call void @unregister_c_can_dev(ptr noundef %1) #5
  tail call void @free_c_can_dev(ptr noundef %1) #5
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %3) #5
  tail call void @pci_disable_msi(ptr noundef %pdev) #5
  tail call void @pci_clear_master(ptr noundef %pdev) #5
  tail call void @pci_release_regions(ptr noundef %pdev) #5
  tail call void @pci_disable_device(ptr noundef %pdev) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c_can_pci_reset_pch(ptr nocapture noundef readonly %priv, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %base = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 508
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #5, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !66
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_c_can_dev(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @c_can_pci_read_reg_aligned_to_32bit(ptr nocapture noundef readonly %priv, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %regs = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i16, ptr %3, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #5, !srcloc !67
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  ret i16 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c_can_pci_write_reg_aligned_to_32bit(ptr nocapture noundef readonly %priv, i32 noundef %index, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %0 = tail call i16 @llvm.bswap.i16(i16 %val)
  %base = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 20
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 8
  %regs = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 21
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i16, ptr %4, i32 %index
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %add.ptr = getelementptr i8, ptr %2, i32 %mul
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #5, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @c_can_pci_read_reg_aligned_to_16bit(ptr nocapture noundef readonly %priv, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %regs = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i16, ptr %3, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #5, !srcloc !67
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  ret i16 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c_can_pci_write_reg_aligned_to_16bit(ptr nocapture noundef readonly %priv, i32 noundef %index, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %0 = tail call i16 @llvm.bswap.i16(i16 %val)
  %base = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 20
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 8
  %regs = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 21
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i16, ptr %4, i32 %index
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %6 to i32
  %add.ptr = getelementptr i8, ptr %2, i32 %conv
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #5, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @c_can_pci_read_reg_32bit(ptr nocapture noundef readonly %priv, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %regs = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i16, ptr %3, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv, 1
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !73
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  %conv1 = trunc i32 %7 to i16
  ret i16 %conv1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c_can_pci_write_reg_32bit(ptr nocapture noundef readonly %priv, i32 noundef %index, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %val to i32
  %base = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 20
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 8
  %regs = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 21
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i16, ptr %3, i32 %index
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv1 = zext i16 %5 to i32
  %mul = shl nuw nsw i32 %conv1, 1
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %conv) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #5, !srcloc !66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c_can_pci_read_reg32(ptr noundef %priv, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %read_reg = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg, align 8
  %call = tail call zeroext i16 %1(ptr noundef %priv, i32 noundef %index) #5
  %conv = zext i16 %call to i32
  %2 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_reg, align 8
  %add = add i32 %index, 1
  %call2 = tail call zeroext i16 %3(ptr noundef %priv, i32 noundef %add) #5
  %conv3 = zext i16 %call2 to i32
  %shl = shl nuw i32 %conv3, 16
  %or = or i32 %shl, %conv
  ret i32 %or
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c_can_pci_write_reg32(ptr noundef %priv, i32 noundef %index, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write_reg = getelementptr inbounds %struct.c_can_priv, ptr %priv, i32 0, i32 17
  %0 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write_reg, align 4
  %add = add i32 %index, 1
  %shr = lshr i32 %val, 16
  %conv = trunc i32 %shr to i16
  tail call void %1(ptr noundef %priv, i32 noundef %add, i16 noundef zeroext %conv) #5
  %2 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write_reg, align 4
  %conv2 = trunc i32 %val to i16
  tail call void %3(ptr noundef %priv, i32 noundef %index, i16 noundef zeroext %conv2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_c_can_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_c_can_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_c_can_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_c_can_pci__462_292_c_can_pci_driver_init6, !1, !"__initcall__kmod_c_can_pci__462_292_c_can_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/can/c_can/c_can_pci.c", i32 292, i32 1}
!2 = !{ptr @__exitcall_c_can_pci_driver_exit, !1, !"__exitcall_c_can_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author463, !4, !"__UNIQUE_ID_author463", i1 false, i1 false}
!4 = !{!"../drivers/net/can/c_can/c_can_pci.c", i32 294, i32 1}
!5 = !{ptr @__UNIQUE_ID_file464, !6, !"__UNIQUE_ID_file464", i1 false, i1 false}
!6 = !{!"../drivers/net/can/c_can/c_can_pci.c", i32 295, i32 1}
!7 = !{ptr @__UNIQUE_ID_license465, !6, !"__UNIQUE_ID_license465", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description466, !9, !"__UNIQUE_ID_description466", i1 false, i1 false}
!9 = !{!"../drivers/net/can/c_can/c_can_pci.c", i32 296, i32 1}
!10 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @c_can_pci_driver, !12, !"c_can_pci_driver", i1 false, i1 false}
!12 = !{!"../drivers/net/can/c_can/c_can_pci.c", i32 285, i32 26}
!13 = !{ptr @c_can_pci_tbl, !14, !"c_can_pci_tbl", i1 false, i1 false}
!14 = !{!"../drivers/net/can/c_can/c_can_pci.c", i32 277, i32 35}
!15 = !{ptr @c_can_sta2x11, !16, !"c_can_sta2x11", i1 false, i1 false}
!16 = !{!"../drivers/net/can/c_can/c_can_pci.c", i32 255, i32 36}
!17 = !{ptr @c_can_pch, !18, !"c_can_pch", i1 false, i1 false}
!18 = !{!"../drivers/net/can/c_can/c_can_pci.c", i32 263, i32 36}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/can/c_can/c_can_pci.c", i32 126, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @c_can_pci_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @c_can_pci_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/can/c_can/c_can_pci.c", i32 132, i32 3}
!29 = !{ptr @c_can_pci_probe._entry.6, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @c_can_pci_probe._entry_ptr.8, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/can/c_can/c_can_pci.c", i32 138, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @c_can_pci_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @c_can_pci_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/can/c_can/c_can_pci.c", i32 145, i32 3}
!38 = !{ptr @c_can_pci_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @c_can_pci_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/can/c_can/c_can_pci.c", i32 167, i32 3}
!42 = !{ptr @c_can_pci_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @c_can_pci_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/can/c_can/c_can_pci.c", i32 214, i32 3}
!46 = !{ptr @c_can_pci_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @c_can_pci_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/can/c_can/c_can_pci.c", i32 219, i32 2}
!50 = !{ptr @c_can_pci_probe.__UNIQUE_ID_ddebug461, !49, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!51 = !{ptr @reg_map_c_can, !52, !"reg_map_c_can", i1 false, i1 false}
!52 = !{!"../drivers/net/can/c_can/c_can.h", i32 68, i32 33}
!53 = !{ptr @reg_map_d_can, !54, !"reg_map_d_can", i1 false, i1 false}
!54 = !{!"../drivers/net/can/c_can/c_can.h", i32 108, i32 33}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148696814, i64 2148696819, i64 2148696832, i64 2148696876, i64 2148696910, i64 2148696931}
!65 = !{i64 2154256607}
!66 = !{i64 6714485}
!67 = !{i64 6714065}
!68 = !{i64 2157232573}
!69 = !{i64 2157232804}
!70 = !{i64 6713865}
!71 = !{i64 2157231604}
!72 = !{i64 2157231831}
!73 = !{i64 6714903}
!74 = !{i64 2154255252}
