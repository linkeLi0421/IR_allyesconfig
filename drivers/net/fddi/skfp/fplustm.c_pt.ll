; ModuleID = '/llk/IR_all_yes/drivers/net/fddi/skfp/fplustm.c_pt.bc'
source_filename = "../drivers/net/fddi/skfp/fplustm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fddi_addr = type { [6 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s_smc = type { %struct.s_smt_os, %struct.s_smt_hw, %struct.smt_config, %struct.smt_values, %struct.s_ecm, %struct.s_rmt, %struct.s_cfm, %struct.s_pcm, [2 x %struct.s_phy], %struct.s_queue, %struct.s_timer, %struct.s_srf, [14 x %struct.s_srf_evc], %struct.fddi_mib, %struct.s_ess }
%struct.s_smt_os = type { ptr, ptr, i32, [4 x i8], %struct.pci_dev, i32, [8 x i8], i32, i32, ptr, i32, i32, %struct.sk_buff_head, i32, i8, %struct.fddi_statistics, ptr, i32, i32, %struct.hw_modul, %struct.spinlock, [4 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.114, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.114 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.fddi_statistics = type { %struct.net_device_stats, [8 x i8], i32, i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], [6 x i8], [6 x i8], [6 x i8], i32, i32, i32, [6 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [6 x i8], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hw_modul = type { %struct.s_mbuf_pool, %struct.hwm_r, ptr, i16, i16, i16, i16, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.s_mbuf_pool = type { ptr, ptr }
%struct.hwm_r = type { i32, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.s_smt_hw = type { ptr, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i8, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, %struct.mac_parameter, %struct.mac_counter, i16, %struct.s_smt_fp }
%struct.mac_parameter = type { i32, i32 }
%struct.mac_counter = type { i32, i32 }
%struct.s_smt_fp = type { i16, i16, i16, i16, i16, i16, i16, %struct.err_st, %struct.fddi_mac_sf, [2 x ptr], [2 x ptr], [2 x %struct.s_smt_tx_queue], [2 x %struct.s_smt_rx_queue], %struct.s_smt_fifo_conf, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.115, %struct.fddi_addr, i32, i32, i32 }
%struct.err_st = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fddi_mac_sf = type { i8, %struct.fddi_addr, %struct.fddi_addr, [32 x i8] }
%struct.s_smt_tx_queue = type { ptr, ptr, ptr, i16, i16, ptr, ptr }
%struct.s_smt_rx_queue = type { ptr, ptr, ptr, i16, i16, ptr, ptr }
%struct.s_smt_fifo_conf = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.anon.115 = type { [32 x %struct.s_fpmc] }
%struct.s_fpmc = type { %struct.fddi_addr, i8, i8 }
%struct.smt_config = type { i8, i8, i8, i8, [1 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.smt_values = type { i32, i32, i32, [5 x i32], i32, i16, i16, i32, i32, %struct.smt_timer, [1 x i32] }
%struct.smt_timer = type { ptr, ptr, i32, i32, i16, i16 }
%struct.s_ecm = type { i8, i8, i8, i8, i32, [2 x i8], %struct.smt_timer }
%struct.s_rmt = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.smt_timer, %struct.smt_timer, %struct.smt_timer, i8, i8, i8, i8 }
%struct.s_cfm = type { i8, [3 x i8] }
%struct.s_pcm = type { [3 x i8] }
%struct.s_phy = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, [10 x i8], [10 x i8], [10 x i32], %struct.smt_timer, %struct.smt_timer, %struct.smt_timer, i8, i8, i8, [1 x i8], i32, %struct.lem_counter, %struct.s_plc }
%struct.lem_counter = type { i16, i32, i16 }
%struct.s_plc = type { i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s_queue = type { [64 x %struct.event_queue], ptr, ptr }
%struct.event_queue = type { i16, i16 }
%struct.s_timer = type { ptr, %struct.smt_timer }
%struct.s_srf = type { i32, i8, i8, i8, i32, i16 }
%struct.s_srf_evc = type { i8, i8, i8, i16, ptr, ptr }
%struct.fddi_mib = type { [8 x i8], %struct.smt_sid, i32, i32, i32, i32, i32, i16, %struct.smt_sid, i16, i16, i16, [32 x i8], [32 x i8], i16, i8, i8, i8, i8, i16, i16, i16, i16, i8, i32, [2 x i16], i16, i8, i16, i16, i16, i8, i8, [8 x i8], [8 x i8], %struct.SetCountType, %struct.smt_sid, [1 x %struct.fddi_mib_m], [2 x %struct.fddi_mib_a], [2 x %struct.fddi_mib_p], %struct.anon.117 }
%struct.SetCountType = type { i32, [8 x i8] }
%struct.smt_sid = type { [2 x i8], %struct.fddi_addr }
%struct.fddi_mib_m = type { i16, i32, i32, i8, i8, i8, i8, i16, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, %struct.fddi_addr, i16, i16, i16, i16, %struct.fddi_addr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.fddi_mib_a = type { i16, i32, i32, i32, i32, i32, i32, i32 }
%struct.fddi_mib_p = type { i16, i16, i8, %struct.anon.116, i16, [4 x i8], i16, i8, i8, i16, i16, i16, i16, i8, i32, i32, i32, i32, i32, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.anon.116 = type { i8, i8 }
%struct.anon.117 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.s_ess = type { i8, i8, i8, i8, ptr, i32, i32 }

@fddi_broadcast = dso_local constant { %struct.fddi_addr, [26 x i8] } { %struct.fddi_addr { [6 x i8] c"\FF\FF\FF\FF\FF\FF" }, [26 x i8] zeroinitializer }, align 32
@mac2_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016SMT PANIC: code: %d, msg: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mac2_irq\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/fddi/skfp/fplustm.c\00", [32 x i8] zeroinitializer }, align 32
@mac2_irq._entry_ptr = internal global ptr @mac2_irq._entry, section ".printk_index", align 4
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ST2U.FM_SERRSF error in special frame\00", [58 x i8] zeroinitializer }, align 32
@mac3_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mac3_irq\00", [23 x i8] zeroinitializer }, align 32
@mac3_irq._entry_ptr = internal global ptr @mac3_irq._entry, section ".printk_index", align 4
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ST3L: parity error in receive queue 2\00", [58 x i8] zeroinitializer }, align 32
@mac3_irq._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mac3_irq._entry_ptr.7 = internal global ptr @mac3_irq._entry.6, section ".printk_index", align 4
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ST3L: parity error in receive queue 1\00", [58 x i8] zeroinitializer }, align 32
@mac_update_multicast._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.9, ptr @.str.2, i32 1228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mac_update_multicast\00", [43 x i8] zeroinitializer }, align 32
@mac_update_multicast._entry_ptr = internal global ptr @mac_update_multicast._entry, section ".printk_index", align 4
@cam_warning = internal global { [27 x i8], [37 x i8] } { [27 x i8] c"E_SMT_004: CAM still busy\0A\00", [37 x i8] zeroinitializer }, align 32
@init_ram._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.10, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_ram\00", [23 x i8] zeroinitializer }, align 32
@init_ram._entry_ptr = internal global ptr @init_ram._entry, section ".printk_index", align 4
@write_mdr_warning = internal global { [35 x i8], [61 x i8] } { [35 x i8] c"E350 write_mdr() FM_SNPPND is set\0A\00", [61 x i8] zeroinitializer }, align 32
@write_mdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.11, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"write_mdr\00", [22 x i8] zeroinitializer }, align 32
@write_mdr._entry_ptr = internal global ptr @write_mdr._entry, section ".printk_index", align 4
@dbeacon_multi = internal constant { %struct.fddi_addr, [26 x i8] } { %struct.fddi_addr { [6 x i8] c"\01\80\C2\00\01\00" }, [26 x i8] zeroinitializer }, align 32
@copy_tx_mac._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.12, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"copy_tx_mac\00", [20 x i8] zeroinitializer }, align 32
@copy_tx_mac._entry_ptr = internal global ptr @copy_tx_mac._entry, section ".printk_index", align 4
@directed_beacon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.13, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"directed_beacon\00", [16 x i8] zeroinitializer }, align 32
@directed_beacon._entry_ptr = internal global ptr @directed_beacon._entry, section ".printk_index", align 4
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.14 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"fddi_broadcast\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 65, i32 24 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 786, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 810, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 813, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 1228, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"cam_warning\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 46, i32 13 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 173, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"write_mdr_warning\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 45, i32 13 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 139, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"dbeacon_multi\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 67, i32 31 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 399, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [35 x i8] c"../drivers/net/fddi/skfp/fplustm.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 451, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @copy_tx_mac._entry, ptr @copy_tx_mac._entry_ptr, ptr @directed_beacon._entry, ptr @directed_beacon._entry_ptr, ptr @init_ram._entry, ptr @init_ram._entry_ptr, ptr @mac2_irq._entry, ptr @mac2_irq._entry_ptr, ptr @mac3_irq._entry, ptr @mac3_irq._entry.6, ptr @mac3_irq._entry_ptr, ptr @mac3_irq._entry_ptr.7, ptr @mac_update_multicast._entry, ptr @mac_update_multicast._entry_ptr, ptr @write_mdr._entry, ptr @write_mdr._entry_ptr, ptr @fddi_broadcast, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.9, ptr @cam_warning, ptr @.str.10, ptr @write_mdr_warning, ptr @.str.11, ptr @dbeacon_multi, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fddi_broadcast to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac2_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac3_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac3_irq._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mac_update_multicast._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_warning to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ram._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_mdr_warning to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_mdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbeacon_multi to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_tx_mac._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @directed_beacon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac_update_counter(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fddiMACFrame_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 32
  %0 = ptrtoint ptr %fddiMACFrame_Ct to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fddiMACFrame_Ct, align 4
  %and = and i32 %1, -65536
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 1284
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !55
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %conv = zext i16 %5 to i32
  %add = or i32 %and, %conv
  %6 = ptrtoint ptr %fddiMACFrame_Ct to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %fddiMACFrame_Ct, align 4
  %fddiMACLost_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 37
  %7 = ptrtoint ptr %fddiMACLost_Ct to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fddiMACLost_Ct, align 4
  %and8 = and i32 %8, -65536
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %add.ptr11 = getelementptr i8, ptr %10, i32 1288
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr11) #6, !srcloc !55
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %conv13 = zext i16 %12 to i32
  %add14 = or i32 %and8, %conv13
  %13 = ptrtoint ptr %fddiMACLost_Ct to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add14, ptr %fddiMACLost_Ct, align 4
  %fddiMACError_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 36
  %14 = ptrtoint ptr %fddiMACError_Ct to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fddiMACError_Ct, align 4
  %and22 = and i32 %15, -65536
  %16 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw, align 8
  %add.ptr25 = getelementptr i8, ptr %17, i32 1292
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr25) #6, !srcloc !55
  %19 = tail call i16 @llvm.bswap.i16(i16 %18) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %conv27 = zext i16 %19 to i32
  %add28 = or i32 %and22, %conv27
  %20 = ptrtoint ptr %fddiMACError_Ct to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add28, ptr %fddiMACError_Ct, align 4
  %21 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %22, i32 1120
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !55
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %conv.i = zext i16 %24 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 5
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 8
  %add.ptr3.i = getelementptr i8, ptr %26, i32 1124
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %28 = lshr i16 %27, 2
  %29 = and i16 %28, 31
  %and.i = zext i16 %29 to i32
  %add.i = or i32 %shl.i, %and.i
  %or.i = or i32 %add.i, -2097152
  %fddiMACT_Neg = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 20
  %30 = ptrtoint ptr %fddiMACT_Neg to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i, ptr %fddiMACT_Neg, align 4
  tail call void @smt_emulate_token_ct(ptr noundef %smc, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_emulate_token_ct(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_formac_tsync(ptr nocapture noundef readonly %smc, i32 noundef %sync_bw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 0, %sync_bw
  %0 = lshr i32 %sub, 5
  %conv = trunc i32 %0 to i16
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 1148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %3) #6, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @formac_tx_restart(ptr nocapture noundef readonly %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 4352) #6, !srcloc !58
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr3 = getelementptr i8, ptr %3, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3, i16 4608) #6, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac2_irq(ptr noundef %smc, i16 noundef zeroext %code_s2u, i16 noundef zeroext %code_s2l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %code_s2u to i32
  %and = and i32 %conv, 85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %0 = and i16 %code_s2l, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %tobool3.not = icmp eq i16 %0, 0
  %or.cond314 = and i1 %tobool.not, %tobool3.not
  br i1 %or.cond314, label %entry.if.end5_crit_edge, label %if.end5.sink.split

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5.sink.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 18) #6
  br label %if.end5

if.end5:                                          ; preds = %if.end5.sink.split, %entry.if.end5_crit_edge
  %s2l = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 15
  %1 = ptrtoint ptr %s2l to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %s2l, align 4
  %conv7 = zext i16 %code_s2l to i32
  %xor293 = xor i16 %2, %code_s2l
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %xor293)
  %tobool17.not = icmp sgt i16 %xor293, -1
  br i1 %tobool17.not, label %lor.lhs.false, label %if.then23

lor.lhs.false:                                    ; preds = %if.end5
  %mac_ring_is_up = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 24
  %3 = ptrtoint ptr %mac_ring_is_up to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %mac_ring_is_up, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool19.not = icmp ne i16 %4, 0
  %and21 = and i32 %conv7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %or.cond = or i1 %tobool22.not, %tobool19.not
  br i1 %or.cond, label %if.end30, label %lor.lhs.false.if.then27_crit_edge

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

if.then23:                                        ; preds = %if.end5
  %.pre = and i32 %conv7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool26.not = icmp eq i32 %.pre, 0
  br i1 %tobool26.not, label %if.else28, label %if.then23.if.then27_crit_edge

if.then23.if.then27_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then27

if.then27:                                        ; preds = %if.then23.if.then27_crit_edge, %lor.lhs.false.if.then27_crit_edge
  %hw1.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %5 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw1.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 1088
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %8 = and i16 %7, -12296
  %9 = tail call i16 @llvm.bswap.i16(i16 %8) #6
  %rx_mode.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 3
  %10 = ptrtoint ptr %rx_mode.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rx_mode.i.i, align 2
  %or13.i.i = or i16 %9, %11
  %12 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw1.i, align 8
  %add.ptr6.i.i = getelementptr i8, ptr %13, i32 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %14 = tail call i16 @llvm.bswap.i16(i16 %or13.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i.i, i16 %14) #6, !srcloc !58
  %15 = ptrtoint ptr %hw1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw1.i, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %16, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i, i16 8192) #6, !srcloc !58
  %mac_ring_is_up.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 24
  %17 = ptrtoint ptr %mac_ring_is_up.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %mac_ring_is_up.i, align 8
  tail call void @llc_restart_tx(ptr noundef %smc) #6
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 1) #6
  %fddiMACRingOp_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 40
  %18 = ptrtoint ptr %fddiMACRingOp_Ct to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fddiMACRingOp_Ct, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %fddiMACRingOp_Ct, align 4
  br label %mac2_end

if.else28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  %hw1.i298 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %20 = ptrtoint ptr %hw1.i298 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw1.i298, align 8
  %add.ptr.i299 = getelementptr i8, ptr %21, i32 1088
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i299) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %23 = and i16 %22, -8
  %24 = or i16 %23, 4
  %25 = ptrtoint ptr %hw1.i298 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw1.i298, align 8
  %add.ptr5.i = getelementptr i8, ptr %26, i32 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 %24) #6, !srcloc !58
  %27 = ptrtoint ptr %hw1.i298 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw1.i298, align 8
  %add.ptr8.i = getelementptr i8, ptr %28, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 4096) #6, !srcloc !58
  %mac_ring_is_up10.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 24
  %29 = ptrtoint ptr %mac_ring_is_up10.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %mac_ring_is_up10.i, align 8
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 2) #6
  br label %mac2_end

if.end30:                                         ; preds = %lor.lhs.false
  %and32 = and i32 %conv7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end39_crit_edge, label %if.then34

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %fddiMACNotCopied_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 39
  %30 = ptrtoint ptr %fddiMACNotCopied_Ct to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fddiMACNotCopied_Ct, align 4
  %inc38 = add i32 %31, 1
  store i32 %inc38, ptr %fddiMACNotCopied_Ct, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then34, %if.end30.if.end39_crit_edge
  %and41 = and i32 %conv, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end46_crit_edge, label %if.then43

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %mac_r_restart_counter = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 23, i32 1
  %32 = ptrtoint ptr %mac_r_restart_counter to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mac_r_restart_counter, align 4
  %inc45 = add i32 %33, 1
  store i32 %inc45, ptr %mac_r_restart_counter, align 4
  tail call void @smt_stat_counter(ptr noundef %smc, i32 noundef 1) #6
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end39.if.end46_crit_edge
  %and48 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end46.if.end51_crit_edge, label %if.then50

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 4) #6
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end46.if.end51_crit_edge
  %and53 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end51.if.end56_crit_edge, label %if.then55

if.end51.if.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 3) #6
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end51.if.end56_crit_edge
  %and65 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp ne i32 %and65, 0
  %and69 = and i32 %conv7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %or.cond296 = and i1 %tobool66.not, %tobool70.not
  br i1 %or.cond296, label %if.then71, label %if.end56.if.end72_crit_edge

if.end56.if.end72_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then71:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 5) #6
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end56.if.end72_crit_edge
  br i1 %tobool70.not, label %if.end72.if.end77_crit_edge, label %if.then76

if.end72.if.end77_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 7) #6
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %if.end72.if.end77_crit_edge
  %34 = and i32 %conv7, 1026
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %if.end77.if.end94_crit_edge, label %if.then93

if.end77.if.end94_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then93:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 6) #6
  br label %if.end94

if.end94:                                         ; preds = %if.then93, %if.end77.if.end94_crit_edge
  %and96 = and i32 %conv7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and96)
  %tobool97.not = icmp eq i32 %and96, 0
  br i1 %tobool97.not, label %if.end94.if.end99_crit_edge, label %if.then98

if.end94.if.end99_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end99

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %r = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 5
  %36 = ptrtoint ptr %r to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 2, ptr %r, align 4
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 10) #6
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end94.if.end99_crit_edge
  %and101 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end99.if.end107_crit_edge, label %if.then103

if.end99.if.end107_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then103:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #8
  %err_bec_stat = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7, i32 10
  %37 = ptrtoint ptr %err_bec_stat to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %err_bec_stat, align 4
  %inc106 = add i32 %38, 1
  store i32 %inc106, ptr %err_bec_stat, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then103, %if.end99.if.end107_crit_edge
  %and109 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109)
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %if.end107.if.end116_crit_edge, label %if.then111

if.end107.if.end116_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

if.then111:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %err_clm_stat = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7, i32 11
  %39 = ptrtoint ptr %err_clm_stat to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %err_clm_stat, align 4
  %inc115 = add i32 %40, 1
  store i32 %inc115, ptr %err_clm_stat, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then111, %if.end107.if.end116_crit_edge
  %and118 = and i32 %conv7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  br i1 %tobool119.not, label %if.end116.if.end125_crit_edge, label %if.then120

if.end116.if.end125_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

if.then120:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  %fddiMACTvxExpired_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 38
  %41 = ptrtoint ptr %fddiMACTvxExpired_Ct to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fddiMACTvxExpired_Ct, align 4
  %inc124 = add i32 %42, 1
  store i32 %inc124, ptr %fddiMACTvxExpired_Ct, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then120, %if.end116.if.end125_crit_edge
  %and127 = and i32 %conv, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127)
  %tobool128.not = icmp eq i32 %and127, 0
  br i1 %tobool128.not, label %if.end125.if.end147_crit_edge, label %land.lhs.true133

if.end125.if.end147_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

land.lhs.true133:                                 ; preds = %if.end125
  %43 = ptrtoint ptr %s2l to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %s2l, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %44)
  %tobool139.not = icmp sgt i16 %44, -1
  br i1 %tobool139.not, label %land.lhs.true133.if.end147_crit_edge, label %if.then140

land.lhs.true133.if.end147_crit_edge:             ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147

if.then140:                                       ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #8
  %hw1.i300 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %45 = ptrtoint ptr %hw1.i300 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw1.i300, align 8
  %add.ptr.i301 = getelementptr i8, ptr %46, i32 1088
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i301) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %48 = and i16 %47, -8
  %49 = or i16 %48, 4
  %50 = ptrtoint ptr %hw1.i300 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw1.i300, align 8
  %add.ptr5.i302 = getelementptr i8, ptr %51, i32 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i302, i16 %49) #6, !srcloc !58
  %52 = ptrtoint ptr %hw1.i300 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hw1.i300, align 8
  %add.ptr8.i303 = getelementptr i8, ptr %53, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i303, i16 4096) #6, !srcloc !58
  %54 = ptrtoint ptr %mac_ring_is_up to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %mac_ring_is_up, align 8
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 2) #6
  %55 = ptrtoint ptr %hw1.i300 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw1.i300, align 8
  %add.ptr.i306 = getelementptr i8, ptr %56, i32 1088
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i306) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  %58 = and i16 %57, -12296
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #6
  %rx_mode.i.i307 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 3
  %60 = ptrtoint ptr %rx_mode.i.i307 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %rx_mode.i.i307, align 2
  %or13.i.i308 = or i16 %59, %61
  %62 = ptrtoint ptr %hw1.i300 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw1.i300, align 8
  %add.ptr6.i.i309 = getelementptr i8, ptr %63, i32 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %64 = tail call i16 @llvm.bswap.i16(i16 %or13.i.i308) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i.i309, i16 %64) #6, !srcloc !58
  %65 = ptrtoint ptr %hw1.i300 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hw1.i300, align 8
  %add.ptr9.i.i310 = getelementptr i8, ptr %66, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i310, i16 8192) #6, !srcloc !58
  %67 = ptrtoint ptr %mac_ring_is_up to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 1, ptr %mac_ring_is_up, align 8
  tail call void @llc_restart_tx(ptr noundef %smc) #6
  tail call void @queue_event(ptr noundef %smc, i32 noundef 3, i32 noundef 1) #6
  %fddiMACRingOp_Ct144 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 40
  %68 = ptrtoint ptr %fddiMACRingOp_Ct144 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fddiMACRingOp_Ct144, align 4
  %inc145 = add i32 %69, 1
  store i32 %inc145, ptr %fddiMACRingOp_Ct144, align 4
  br label %if.end147

if.end147:                                        ; preds = %if.then140, %land.lhs.true133.if.end147_crit_edge, %if.end125.if.end147_crit_edge
  %and149 = and i32 %conv7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end147.if.end156_crit_edge, label %if.then151

if.end147.if.end156_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end156

if.then151:                                       ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #8
  %err_phinv = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7, i32 13
  %70 = ptrtoint ptr %err_phinv to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %err_phinv, align 4
  %inc155 = add i32 %71, 1
  store i32 %inc155, ptr %err_phinv, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then151, %if.end147.if.end156_crit_edge
  %and158 = and i32 %conv7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end156.if.end165_crit_edge, label %if.then160

if.end156.if.end165_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.then160:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #8
  %err_sifg_det = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7, i32 12
  %72 = ptrtoint ptr %err_sifg_det to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %err_sifg_det, align 4
  %inc164 = add i32 %73, 1
  store i32 %inc164, ptr %err_sifg_det, align 4
  br label %if.end165

if.end165:                                        ; preds = %if.then160, %if.end156.if.end165_crit_edge
  %and167 = and i32 %conv7, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167)
  %tobool168.not = icmp eq i32 %and167, 0
  br i1 %tobool168.not, label %if.end165.if.end174_crit_edge, label %if.then169

if.end165.if.end174_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

if.then169:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  %err_tkiss = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7, i32 14
  %74 = ptrtoint ptr %err_tkiss to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %err_tkiss, align 4
  %inc173 = add i32 %75, 1
  store i32 %inc173, ptr %err_tkiss, align 4
  br label %if.end174

if.end174:                                        ; preds = %if.then169, %if.end165.if.end174_crit_edge
  %and176 = and i32 %conv7, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and176)
  %tobool177.not = icmp eq i32 %and176, 0
  br i1 %tobool177.not, label %if.end174.if.end183_crit_edge, label %if.then178

if.end174.if.end183_crit_edge:                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183

if.then178:                                       ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  %err_tkerr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7, i32 15
  %76 = ptrtoint ptr %err_tkerr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %err_tkerr, align 4
  %inc182 = add i32 %77, 1
  store i32 %inc182, ptr %err_tkerr, align 4
  br label %if.end183

if.end183:                                        ; preds = %if.then178, %if.end174.if.end183_crit_edge
  %and185 = and i32 %conv7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.end183.if.end191_crit_edge, label %if.then187

if.end183.if.end191_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191

if.then187:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #8
  %fddiMACFrame_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 32
  %78 = ptrtoint ptr %fddiMACFrame_Ct to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fddiMACFrame_Ct, align 4
  %add = add i32 %79, 65536
  store i32 %add, ptr %fddiMACFrame_Ct, align 4
  br label %if.end191

if.end191:                                        ; preds = %if.then187, %if.end183.if.end191_crit_edge
  %and193 = and i32 %conv7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %if.end191.if.end200_crit_edge, label %if.then195

if.end191.if.end200_crit_edge:                    ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end200

if.then195:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #8
  %fddiMACError_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 36
  %80 = ptrtoint ptr %fddiMACError_Ct to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %fddiMACError_Ct, align 4
  %add199 = add i32 %81, 65536
  store i32 %add199, ptr %fddiMACError_Ct, align 4
  br label %if.end200

if.end200:                                        ; preds = %if.then195, %if.end191.if.end200_crit_edge
  %and202 = and i32 %conv7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and202)
  %tobool203.not = icmp eq i32 %and202, 0
  br i1 %tobool203.not, label %if.end200.if.end209_crit_edge, label %if.then204

if.end200.if.end209_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209

if.then204:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #8
  %fddiMACLost_Ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 37
  %82 = ptrtoint ptr %fddiMACLost_Ct to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fddiMACLost_Ct, align 4
  %add208 = add i32 %83, 65536
  store i32 %add208, ptr %fddiMACLost_Ct, align 4
  br label %if.end209

if.end209:                                        ; preds = %if.then204, %if.end200.if.end209_crit_edge
  %and211 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %if.end209.mac2_end_crit_edge, label %do.end

if.end209.mac2_end_crit_edge:                     ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #8
  br label %mac2_end

do.end:                                           ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 114, ptr noundef nonnull @.str.3) #9
  br label %mac2_end

mac2_end:                                         ; preds = %do.end, %if.end209.mac2_end_crit_edge, %if.else28, %if.then27
  %s2u = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 14
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %84 = ptrtoint ptr %s2l to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %code_s2l, ptr %s2l, align 4
  %85 = ptrtoint ptr %s2u to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %code_s2u, ptr %s2u, align 2
  %86 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %87, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 24550) #6, !srcloc !58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @queue_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @smt_stat_counter(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac3_irq(ptr noundef %smc, i16 noundef zeroext %code_s3u, i16 noundef zeroext %code_s3l) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %code_s3u to i32
  %and = and i32 %conv, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mac_r_restart_counter = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 23, i32 1
  %0 = ptrtoint ptr %mac_r_restart_counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mac_r_restart_counter, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %mac_r_restart_counter, align 4
  tail call void @smt_stat_counter(ptr noundef %smc, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 115, ptr noundef nonnull @.str.5) #9
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %and7 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end14_crit_edge, label %do.end11

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 116, ptr noundef nonnull @.str.8) #9
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %if.end5.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_fplus(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %nsa_mode = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 4
  %0 = ptrtoint ptr %nsa_mode to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 512, ptr %nsa_mode, align 4
  %rx_mode = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 3
  %1 = ptrtoint ptr %rx_mode to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 0, ptr %rx_mode, align 2
  %group_addr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 23
  %2 = call ptr @memset(ptr %group_addr, i32 255, i32 6)
  %func_addr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 24
  %3 = ptrtoint ptr %func_addr to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %func_addr, align 4
  %frselreg_init = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 2
  %4 = ptrtoint ptr %frselreg_init to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %frselreg_init, align 4
  tail call void @init_driver_fplus(ptr noundef %smc) #6
  %sas = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %sas to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sas, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mdr3init = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 1
  %7 = ptrtoint ptr %mdr3init to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mdr3init, align 2
  %9 = or i16 %8, 256
  store i16 %9, ptr %mdr3init, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %mac_ct = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 23
  %10 = ptrtoint ptr %mac_ct to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mac_ct, align 8
  %mac_r_restart_counter = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 23, i32 1
  %11 = ptrtoint ptr %mac_r_restart_counter to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %mac_r_restart_counter, align 4
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 16
  %fm_st1u = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 16
  %14 = ptrtoint ptr %fm_st1u to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %fm_st1u, align 4
  %add.ptr22 = getelementptr i8, ptr %13, i32 20
  %fm_st1l = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 17
  %15 = ptrtoint ptr %fm_st1l to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr22, ptr %fm_st1l, align 4
  %add.ptr27 = getelementptr i8, ptr %13, i32 24
  %fm_st2u = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 18
  %16 = ptrtoint ptr %fm_st2u to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr27, ptr %fm_st2u, align 4
  %add.ptr32 = getelementptr i8, ptr %13, i32 28
  %fm_st2l = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 19
  %17 = ptrtoint ptr %fm_st2l to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr32, ptr %fm_st2l, align 4
  %add.ptr37 = getelementptr i8, ptr %13, i32 52
  %fm_st3u = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 20
  %18 = ptrtoint ptr %fm_st3u to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr37, ptr %fm_st3u, align 4
  %add.ptr42 = getelementptr i8, ptr %13, i32 56
  %fm_st3l = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 21
  %19 = ptrtoint ptr %fm_st3l to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr42, ptr %fm_st3l, align 4
  %s2u = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 14
  %20 = ptrtoint ptr %s2u to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %s2u, align 2
  %s2l = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 15
  %21 = ptrtoint ptr %s2l to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %s2l, align 4
  %mac_ring_is_up = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 24
  %22 = ptrtoint ptr %mac_ring_is_up to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %mac_ring_is_up, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 1284
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #6, !srcloc !58
  %23 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw, align 8
  %add.ptr3.i = getelementptr i8, ptr %24, i32 1288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 0) #6, !srcloc !58
  %25 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hw, align 8
  %add.ptr6.i = getelementptr i8, ptr %26, i32 1292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i, i16 0) #6, !srcloc !58
  %err_stats.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 7
  %27 = call ptr @memset(ptr %err_stats.i, i32 0, i32 64)
  %fddiMACRingOp_Ct.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 40
  %28 = ptrtoint ptr %fddiMACRingOp_Ct.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %fddiMACRingOp_Ct.i, align 4
  %mac_pa = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 22
  %29 = ptrtoint ptr %mac_pa to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %mac_pa, align 8
  %t_pri = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 22, i32 1
  %30 = ptrtoint ptr %t_pri to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %t_pri, align 4
  tail call void @mac_do_pci_fix(ptr noundef %smc) #6
  tail call fastcc void @init_mac(ptr noundef %smc, i32 noundef 1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_driver_fplus(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac_do_pci_fix(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_mac(ptr noundef %smc, i32 noundef %all) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #6, !srcloc !58
  %fddiMACT_Req.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 19
  %2 = ptrtoint ptr %fddiMACT_Req.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fddiMACT_Req.i, align 4
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 1056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 -1) #6, !srcloc !58
  %fddi_home_addr.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 19
  %arrayidx2.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 19, i32 0, i32 4
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2.i, align 4
  %conv.i = zext i8 %7 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %arrayidx6.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 19, i32 0, i32 5
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6.i, align 1
  %conv7.i = zext i8 %9 to i16
  %add.i = or i16 %shl.i, %conv7.i
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr11.i = getelementptr i8, ptr %11, i32 1068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %12 = tail call i16 @llvm.bswap.i16(i16 %add.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 %12) #6, !srcloc !58
  %arrayidx15.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 19, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15.i, align 2
  %conv16.i = zext i8 %14 to i16
  %shl17.i = shl nuw i16 %conv16.i, 8
  %arrayidx21.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 19, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx21.i, align 1
  %conv22.i = zext i8 %16 to i16
  %add23.i = or i16 %shl17.i, %conv22.i
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %add.ptr27.i = getelementptr i8, ptr %18, i32 1064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %19 = tail call i16 @llvm.bswap.i16(i16 %add23.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27.i, i16 %19) #6, !srcloc !58
  %20 = ptrtoint ptr %fddi_home_addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %fddi_home_addr.i, align 4
  %conv32.i = zext i8 %21 to i16
  %shl33.i = shl nuw i16 %conv32.i, 8
  %arrayidx37.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 19, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx37.i, align 1
  %conv38.i = zext i8 %23 to i16
  %add39.i = or i16 %shl33.i, %conv38.i
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 8
  %add.ptr43.i = getelementptr i8, ptr %25, i32 1060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %26 = tail call i16 @llvm.bswap.i16(i16 %add39.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr43.i, i16 %26) #6, !srcloc !58
  %27 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw, align 8
  %add.ptr46.i = getelementptr i8, ptr %28, i32 1072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr46.i, i16 -1) #6, !srcloc !58
  %group_addr.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 23
  %arrayidx49.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 23, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx49.i, align 4
  %conv50.i = zext i8 %30 to i16
  %shl51.i = shl nuw i16 %conv50.i, 8
  %arrayidx56.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 23, i32 0, i32 5
  %31 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx56.i, align 1
  %conv57.i = zext i8 %32 to i16
  %add58.i = or i16 %shl51.i, %conv57.i
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 8
  %add.ptr62.i = getelementptr i8, ptr %34, i32 1084
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %35 = tail call i16 @llvm.bswap.i16(i16 %add58.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr62.i, i16 %35) #6, !srcloc !58
  %arrayidx67.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 23, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx67.i, align 2
  %conv68.i = zext i8 %37 to i16
  %shl69.i = shl nuw i16 %conv68.i, 8
  %arrayidx74.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 23, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx74.i, align 1
  %conv75.i = zext i8 %39 to i16
  %add76.i = or i16 %shl69.i, %conv75.i
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 8
  %add.ptr80.i = getelementptr i8, ptr %41, i32 1080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %42 = tail call i16 @llvm.bswap.i16(i16 %add76.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr80.i, i16 %42) #6, !srcloc !58
  %43 = ptrtoint ptr %group_addr.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %group_addr.i, align 4
  %conv86.i = zext i8 %44 to i16
  %shl87.i = shl nuw i16 %conv86.i, 8
  %arrayidx92.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 23, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx92.i, align 1
  %conv93.i = zext i8 %46 to i16
  %add94.i = or i16 %shl87.i, %conv93.i
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw, align 8
  %add.ptr98.i = getelementptr i8, ptr %48, i32 1076
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %49 = tail call i16 @llvm.bswap.i16(i16 %add94.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr98.i, i16 %49) #6, !srcloc !58
  %50 = lshr i32 %3, 16
  %conv99.i = trunc i32 %50 to i16
  %51 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hw, align 8
  %add.ptr102.i = getelementptr i8, ptr %52, i32 1132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %53 = tail call i16 @llvm.bswap.i16(i16 %conv99.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr102.i, i16 %53) #6, !srcloc !58
  %conv103.i = trunc i32 %3 to i16
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 8
  %add.ptr106.i = getelementptr i8, ptr %55, i32 1128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %56 = tail call i16 @llvm.bswap.i16(i16 %conv103.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr106.i, i16 %56) #6, !srcloc !58
  %57 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw, align 8
  %add.ptr3 = getelementptr i8, ptr %58, i32 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3, i16 16) #6, !srcloc !58
  %fp = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25
  %59 = ptrtoint ptr %fp to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %fp, align 4
  %61 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw, align 8
  %add.ptr7 = getelementptr i8, ptr %62, i32 1152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %63 = tail call i16 @llvm.bswap.i16(i16 %60) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 %63) #6, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %all)
  %tobool.not = icmp eq i32 %all, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %fifo.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13
  %64 = ptrtoint ptr %fifo.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %fifo.i, align 4
  %rbc_ram_end.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 1
  %65 = ptrtoint ptr %rbc_ram_end.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -32768, ptr %rbc_ram_end.i, align 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then
  %k.0.i = phi i32 [ 10000, %if.then ], [ %dec.i, %while.cond.i.while.cond.i_crit_edge ]
  %66 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hw, align 8
  %add.ptr.i3 = getelementptr i8, ptr %67, i32 1092
  %68 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i3) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %69 = and i16 %68, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool.not.i = icmp eq i16 %69, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0.i)
  %tobool11.not.i = icmp eq i32 %k.0.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool11.not.i
  %dec.i = add nsw i32 %k.0.i, -1
  br i1 %or.cond.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  br i1 %tobool11.not.i, label %do.end.i, label %while.end.i.if.end.i_crit_edge

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 130, ptr noundef nonnull @write_mdr_warning) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %while.end.i.if.end.i_crit_edge
  %70 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %fifo.i, align 4
  %72 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw, align 8
  %add.ptr22.i = getelementptr i8, ptr %73, i32 1268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %74 = tail call i16 @llvm.bswap.i16(i16 %71) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22.i, i16 %74) #6, !srcloc !58
  %75 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %fifo.i, align 4
  %77 = ptrtoint ptr %rbc_ram_end.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %rbc_ram_end.i, align 2
  %sub62.i = add i16 %78, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %76, i16 %sub62.i)
  %cmp63.i = icmp ult i16 %76, %sub62.i
  br i1 %cmp63.i, label %if.end.i.while.cond.i.preheader.i_crit_edge, label %if.end.i.while.cond.i55.i.preheader_crit_edge

if.end.i.while.cond.i55.i.preheader_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i55.i.preheader

if.end.i.while.cond.i.preheader.i_crit_edge:      ; preds = %if.end.i
  br label %while.cond.i.preheader.i

while.cond.i.preheader.i:                         ; preds = %write_mdr.exit.i.while.cond.i.preheader.i_crit_edge, %if.end.i.while.cond.i.preheader.i_crit_edge
  %i.064.i = phi i16 [ %inc.i, %write_mdr.exit.i.while.cond.i.preheader.i_crit_edge ], [ %76, %if.end.i.while.cond.i.preheader.i_crit_edge ]
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %while.cond.i.preheader.i
  %k.0.i.i = phi i32 [ %dec.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ], [ 10000, %while.cond.i.preheader.i ]
  %79 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hw, align 8
  %add.ptr.i.i = getelementptr i8, ptr %80, i32 1092
  %81 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %82 = and i16 %81, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool.not.i.i = icmp eq i16 %82, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0.i.i)
  %tobool1.not.i.i = icmp eq i32 %k.0.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool1.not.i.i
  %dec.i.i = add nsw i32 %k.0.i.i, -1
  br i1 %or.cond.i.i, label %while.end.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  br i1 %tobool1.not.i.i, label %do.end.i.i, label %while.end.i.i.write_mdr.exit.i_crit_edge

while.end.i.i.write_mdr.exit.i_crit_edge:         ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_mdr.exit.i

do.end.i.i:                                       ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 130, ptr noundef nonnull @write_mdr_warning) #9
  br label %write_mdr.exit.i

write_mdr.exit.i:                                 ; preds = %do.end.i.i, %while.end.i.i.write_mdr.exit.i_crit_edge
  %83 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %84, i32 1272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i.i, i16 0) #6, !srcloc !58
  %85 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hw, align 8
  %add.ptr11.i.i = getelementptr i8, ptr %86, i32 1276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i, i16 0) #6, !srcloc !58
  %inc.i = add nuw i16 %i.064.i, 1
  %87 = ptrtoint ptr %rbc_ram_end.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %rbc_ram_end.i, align 2
  %sub.i = add i16 %88, -1
  %cmp.i = icmp ult i16 %inc.i, %sub.i
  br i1 %cmp.i, label %write_mdr.exit.i.while.cond.i.preheader.i_crit_edge, label %write_mdr.exit.i.while.cond.i55.i.preheader_crit_edge

write_mdr.exit.i.while.cond.i55.i.preheader_crit_edge: ; preds = %write_mdr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i55.i.preheader

write_mdr.exit.i.while.cond.i.preheader.i_crit_edge: ; preds = %write_mdr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.preheader.i

while.cond.i55.i.preheader:                       ; preds = %write_mdr.exit.i.while.cond.i55.i.preheader_crit_edge, %if.end.i.while.cond.i55.i.preheader_crit_edge
  br label %while.cond.i55.i

while.cond.i55.i:                                 ; preds = %while.cond.i55.i.while.cond.i55.i_crit_edge, %while.cond.i55.i.preheader
  %k.0.i49.i = phi i32 [ %dec.i54.i, %while.cond.i55.i.while.cond.i55.i_crit_edge ], [ 10000, %while.cond.i55.i.preheader ]
  %89 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hw, align 8
  %add.ptr.i50.i = getelementptr i8, ptr %90, i32 1092
  %91 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i50.i) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %92 = and i16 %91, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool.not.i51.i = icmp eq i16 %92, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0.i49.i)
  %tobool1.not.i52.i = icmp eq i32 %k.0.i49.i, 0
  %or.cond.i53.i = select i1 %tobool.not.i51.i, i1 true, i1 %tobool1.not.i52.i
  %dec.i54.i = add nsw i32 %k.0.i49.i, -1
  br i1 %or.cond.i53.i, label %while.end.i56.i, label %while.cond.i55.i.while.cond.i55.i_crit_edge

while.cond.i55.i.while.cond.i55.i_crit_edge:      ; preds = %while.cond.i55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i55.i

while.end.i56.i:                                  ; preds = %while.cond.i55.i
  br i1 %tobool1.not.i52.i, label %do.end.i58.i, label %while.end.i56.i.init_ram.exit_crit_edge

while.end.i56.i.init_ram.exit_crit_edge:          ; preds = %while.end.i56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_ram.exit

do.end.i58.i:                                     ; preds = %while.end.i56.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i57.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 130, ptr noundef nonnull @write_mdr_warning) #9
  br label %init_ram.exit

init_ram.exit:                                    ; preds = %do.end.i58.i, %while.end.i56.i.init_ram.exit_crit_edge
  %93 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw, align 8
  %add.ptr7.i59.i = getelementptr i8, ptr %94, i32 1272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i59.i, i16 0) #6, !srcloc !58
  %95 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hw, align 8
  %add.ptr11.i60.i = getelementptr i8, ptr %96, i32 1276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i60.i, i16 0) #6, !srcloc !58
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw, align 8
  %add.ptr10 = getelementptr i8, ptr %98, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr10, i8 16) #6, !srcloc !60
  %call = tail call i32 @hwt_quick_read(ptr noundef %smc) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %init_ram.exit
  %time.0 = phi i32 [ 0, %init_ram.exit ], [ %call, %if.else ]
  %rx1_fifo_size.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 3
  %99 = ptrtoint ptr %rx1_fifo_size.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 16351, ptr %rx1_fifo_size.i, align 2
  %rx2_fifo_size.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 5
  %100 = ptrtoint ptr %rx2_fifo_size.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %rx2_fifo_size.i, align 2
  %fddiPATHSbaPayload.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 1
  %101 = ptrtoint ptr %fddiPATHSbaPayload.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fddiPATHSbaPayload.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool.not.i4 = icmp eq i32 %102, 0
  br i1 %tobool.not.i4, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %fddiESSSynchTxMode.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 7
  %103 = ptrtoint ptr %fddiESSSynchTxMode.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %fddiESSSynchTxMode.i, align 4
  %fifo_config_mode.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 10
  %105 = ptrtoint ptr %fifo_config_mode.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %fifo_config_mode.i, align 4
  %107 = or i16 %104, %106
  %or9.i = or i16 %107, 2
  store i16 %or9.i, ptr %fifo_config_mode.i, align 4
  br label %if.end.i5

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %fifo_config_mode14.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 10
  %108 = ptrtoint ptr %fifo_config_mode14.i to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %fifo_config_mode14.i, align 4
  %110 = and i16 %109, -4
  store i16 %110, ptr %fifo_config_mode14.i, align 4
  br label %if.end.i5

if.end.i5:                                        ; preds = %if.else.i, %if.then.i
  %fifo_config_mode20.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 10
  %111 = ptrtoint ptr %fifo_config_mode20.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %fifo_config_mode20.i, align 4
  %conv21.i = zext i16 %112 to i32
  %and22.i = and i32 %conv21.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.else49.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end.i5
  %and30.i = and i32 %conv21.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  %tx_s_size43.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 7
  br i1 %tobool31.not.i, label %if.else39.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %tx_s_size43.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 14080, ptr %tx_s_size43.i, align 2
  br label %smt_split_up_fifo.exit

if.else39.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %tx_s_size43.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 8192, ptr %tx_s_size43.i, align 2
  br label %smt_split_up_fifo.exit

if.else49.i:                                      ; preds = %if.end.i5
  call void @__sanitizer_cov_trace_pc() #8
  %tx_s_size53.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 7
  %115 = ptrtoint ptr %tx_s_size53.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 0, ptr %tx_s_size53.i, align 2
  br label %smt_split_up_fifo.exit

smt_split_up_fifo.exit:                           ; preds = %if.else49.i, %if.else39.i, %if.then32.i
  %.sink.i = phi i16 [ 2304, %if.then32.i ], [ 8192, %if.else39.i ], [ 16384, %if.else49.i ]
  %tx_a0_size.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 9
  %116 = ptrtoint ptr %tx_a0_size.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %.sink.i, ptr %tx_a0_size.i, align 2
  %fifo.i6 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13
  %117 = ptrtoint ptr %fifo.i6 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %fifo.i6, align 4
  %add.i7 = add i16 %118, 33
  %rx1_fifo_start.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 2
  %119 = ptrtoint ptr %rx1_fifo_start.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %add.i7, ptr %rx1_fifo_start.i, align 4
  %add77.i = add i16 %118, 16384
  %tx_s_start.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 6
  %120 = ptrtoint ptr %tx_s_start.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %add77.i, ptr %tx_s_start.i, align 4
  %tx_s_size90.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 7
  %121 = ptrtoint ptr %tx_s_size90.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %tx_s_size90.i, align 2
  %add92.i = add i16 %122, %add77.i
  %tx_a0_start.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 8
  %123 = ptrtoint ptr %tx_a0_start.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %add92.i, ptr %tx_a0_start.i, align 4
  %add107.i = add i16 %add92.i, %.sink.i
  %rx2_fifo_start.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 4
  %124 = ptrtoint ptr %rx2_fifo_start.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %add107.i, ptr %rx2_fifo_start.i, align 4
  %tx_q.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 11
  %tx.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 9
  %125 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %tx_q.i, ptr %tx.i, align 4
  %126 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hw, align 8
  %add.ptr.i9 = getelementptr i8, ptr %127, i32 124
  %tx_bmu_ctl.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 11, i32 0, i32 5
  %128 = ptrtoint ptr %tx_bmu_ctl.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %add.ptr.i9, ptr %tx_bmu_ctl.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %127, i32 720
  %tx_bmu_dsc.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 11, i32 0, i32 6
  %129 = ptrtoint ptr %tx_bmu_dsc.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %add.ptr7.i, ptr %tx_bmu_dsc.i, align 4
  %sync_bw.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 14, i32 5
  %130 = ptrtoint ptr %sync_bw.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %sync_bw.i, align 8
  %sub.i.i = sub i32 0, %131
  %132 = lshr i32 %sub.i.i, 5
  %conv.i.i = trunc i32 %132 to i16
  %add.ptr.i.i10 = getelementptr i8, ptr %127, i32 1148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %133 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i10, i16 %133) #6, !srcloc !58
  %arrayidx11.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 11, i32 1
  %arrayidx15.i11 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 9, i32 1
  %134 = ptrtoint ptr %arrayidx15.i11 to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %arrayidx11.i, ptr %arrayidx15.i11, align 4
  %135 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %hw, align 8
  %add.ptr18.i = getelementptr i8, ptr %136, i32 120
  %tx_bmu_ctl19.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 11, i32 1, i32 5
  %137 = ptrtoint ptr %tx_bmu_ctl19.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %add.ptr18.i, ptr %tx_bmu_ctl19.i, align 4
  %add.ptr22.i12 = getelementptr i8, ptr %136, i32 656
  %tx_bmu_dsc23.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 11, i32 1, i32 6
  %138 = ptrtoint ptr %tx_bmu_dsc23.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %add.ptr22.i12, ptr %tx_bmu_dsc23.i, align 4
  tail call void @llc_recover_tx(ptr noundef %smc) #6
  %rx_q.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 12
  %rx.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 10
  %139 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %rx_q.i, ptr %rx.i, align 4
  %140 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %hw, align 8
  %add.ptr.i14 = getelementptr i8, ptr %141, i32 112
  %rx_bmu_ctl.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 12, i32 0, i32 5
  %142 = ptrtoint ptr %rx_bmu_ctl.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %add.ptr.i14, ptr %rx_bmu_ctl.i, align 4
  %add.ptr7.i15 = getelementptr i8, ptr %141, i32 528
  %rx_bmu_dsc.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 12, i32 0, i32 6
  %143 = ptrtoint ptr %rx_bmu_dsc.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %add.ptr7.i15, ptr %rx_bmu_dsc.i, align 4
  %arrayidx11.i16 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 12, i32 1
  %arrayidx15.i17 = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 10, i32 1
  %144 = ptrtoint ptr %arrayidx15.i17 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %arrayidx11.i16, ptr %arrayidx15.i17, align 4
  %add.ptr18.i18 = getelementptr i8, ptr %141, i32 116
  %rx_bmu_ctl19.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 12, i32 1, i32 5
  %145 = ptrtoint ptr %rx_bmu_ctl19.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %add.ptr18.i18, ptr %rx_bmu_ctl19.i, align 4
  %add.ptr22.i19 = getelementptr i8, ptr %141, i32 592
  %rx_bmu_dsc23.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 12, i32 1, i32 6
  %146 = ptrtoint ptr %rx_bmu_dsc23.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %add.ptr22.i19, ptr %rx_bmu_dsc23.i, align 4
  %147 = ptrtoint ptr %rx2_fifo_start.i to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %rx2_fifo_start.i, align 4
  %sub.i22 = add i16 %148, -1
  %add.ptr.i23 = getelementptr i8, ptr %141, i32 1256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %149 = tail call i16 @llvm.bswap.i16(i16 %sub.i22) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i23, i16 %149) #6, !srcloc !58
  %150 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %hw, align 8
  %add.ptr5.i = getelementptr i8, ptr %151, i32 1224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5.i, i16 %149) #6, !srcloc !58
  %152 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw, align 8
  %add.ptr8.i = getelementptr i8, ptr %153, i32 1240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i, i16 %149) #6, !srcloc !58
  %154 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %hw, align 8
  %add.ptr11.i24 = getelementptr i8, ptr %155, i32 1176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i24, i16 %149) #6, !srcloc !58
  %156 = ptrtoint ptr %rx1_fifo_start.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %rx1_fifo_start.i, align 4
  %158 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %hw, align 8
  %add.ptr.i.i25 = getelementptr i8, ptr %159, i32 1204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %160 = tail call i16 @llvm.bswap.i16(i16 %157) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i25, i16 %160) #6, !srcloc !58
  %161 = ptrtoint ptr %rx1_fifo_start.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %rx1_fifo_start.i, align 4
  %163 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %hw, align 8
  %add.ptr8.i.i = getelementptr i8, ptr %164, i32 1212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %165 = tail call i16 @llvm.bswap.i16(i16 %162) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr8.i.i, i16 %165) #6, !srcloc !58
  %166 = ptrtoint ptr %rx1_fifo_start.i to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %rx1_fifo_start.i, align 4
  %168 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %hw, align 8
  %add.ptr15.i.i = getelementptr i8, ptr %169, i32 1208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %170 = tail call i16 @llvm.bswap.i16(i16 %167) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15.i.i, i16 %170) #6, !srcloc !58
  %171 = ptrtoint ptr %tx_s_start.i to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %tx_s_start.i, align 4
  %sub.i.i26 = add i16 %172, -1
  %173 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %hw, align 8
  %add.ptr22.i.i = getelementptr i8, ptr %174, i32 1164
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %175 = tail call i16 @llvm.bswap.i16(i16 %sub.i.i26) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22.i.i, i16 %175) #6, !srcloc !58
  %176 = ptrtoint ptr %rx2_fifo_size.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %rx2_fifo_size.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %177)
  %tobool.not.i.i27 = icmp eq i16 %177, 0
  br i1 %tobool.not.i.i27, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %smt_split_up_fifo.exit
  call void @__sanitizer_cov_trace_pc() #8
  %178 = ptrtoint ptr %rx2_fifo_start.i to i32
  call void @__asan_load2_noabort(i32 %178)
  %179 = load i16, ptr %rx2_fifo_start.i, align 4
  %180 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hw, align 8
  %add.ptr31.i.i = getelementptr i8, ptr %181, i32 1440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %182 = tail call i16 @llvm.bswap.i16(i16 %179) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr31.i.i, i16 %182) #6, !srcloc !58
  %183 = ptrtoint ptr %rx2_fifo_start.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %rx2_fifo_start.i, align 4
  %185 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hw, align 8
  %add.ptr38.i.i = getelementptr i8, ptr %186, i32 1448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %187 = tail call i16 @llvm.bswap.i16(i16 %184) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr38.i.i, i16 %187) #6, !srcloc !58
  %188 = ptrtoint ptr %rx2_fifo_start.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %rx2_fifo_start.i, align 4
  %190 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %hw, align 8
  %add.ptr45.i.i = getelementptr i8, ptr %191, i32 1444
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %192 = tail call i16 @llvm.bswap.i16(i16 %189) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr45.i.i, i16 %192) #6, !srcloc !58
  %rbc_ram_end.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 1
  %193 = ptrtoint ptr %rbc_ram_end.i.i to i32
  call void @__asan_load2_noabort(i32 %193)
  %194 = load i16, ptr %rbc_ram_end.i.i, align 2
  %sub50.i.i = add i16 %194, -1
  %195 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %hw, align 8
  %add.ptr54.i.i = getelementptr i8, ptr %196, i32 1452
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %197 = tail call i16 @llvm.bswap.i16(i16 %sub50.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr54.i.i, i16 %197) #6, !srcloc !58
  br label %set_recvptr.exit.i

if.else.i.i:                                      ; preds = %smt_split_up_fifo.exit
  call void @__sanitizer_cov_trace_pc() #8
  %rbc_ram_end58.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 1
  %198 = ptrtoint ptr %rbc_ram_end58.i.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %rbc_ram_end58.i.i, align 2
  %sub60.i.i = add i16 %199, -1
  %200 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %hw, align 8
  %add.ptr64.i.i = getelementptr i8, ptr %201, i32 1440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %202 = tail call i16 @llvm.bswap.i16(i16 %sub60.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr64.i.i, i16 %202) #6, !srcloc !58
  %203 = ptrtoint ptr %rbc_ram_end58.i.i to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %rbc_ram_end58.i.i, align 2
  %sub70.i.i = add i16 %204, -1
  %205 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %hw, align 8
  %add.ptr74.i.i = getelementptr i8, ptr %206, i32 1448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %207 = tail call i16 @llvm.bswap.i16(i16 %sub70.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr74.i.i, i16 %207) #6, !srcloc !58
  %208 = ptrtoint ptr %rbc_ram_end58.i.i to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %rbc_ram_end58.i.i, align 2
  %sub80.i.i = add i16 %209, -1
  %210 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %hw, align 8
  %add.ptr84.i.i = getelementptr i8, ptr %211, i32 1444
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %212 = tail call i16 @llvm.bswap.i16(i16 %sub80.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr84.i.i, i16 %212) #6, !srcloc !58
  %213 = ptrtoint ptr %rbc_ram_end58.i.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %rbc_ram_end58.i.i, align 2
  %sub90.i.i = add i16 %214, -1
  %215 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %hw, align 8
  %add.ptr94.i.i = getelementptr i8, ptr %216, i32 1452
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %217 = tail call i16 @llvm.bswap.i16(i16 %sub90.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr94.i.i, i16 %217) #6, !srcloc !58
  br label %set_recvptr.exit.i

set_recvptr.exit.i:                               ; preds = %if.else.i.i, %if.then.i.i
  %218 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %hw, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %219, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i22.i, i16 8192) #6, !srcloc !58
  %220 = ptrtoint ptr %tx_a0_start.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %tx_a0_start.i, align 4
  %222 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %hw, align 8
  %add.ptr4.i.i = getelementptr i8, ptr %223, i32 1252
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %224 = tail call i16 @llvm.bswap.i16(i16 %221) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4.i.i, i16 %224) #6, !srcloc !58
  %225 = ptrtoint ptr %tx_a0_start.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %tx_a0_start.i, align 4
  %227 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %hw, align 8
  %add.ptr11.i.i28 = getelementptr i8, ptr %228, i32 1236
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %229 = tail call i16 @llvm.bswap.i16(i16 %226) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i28, i16 %229) #6, !srcloc !58
  %230 = ptrtoint ptr %tx_a0_start.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %tx_a0_start.i, align 4
  %232 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %hw, align 8
  %add.ptr18.i.i = getelementptr i8, ptr %233, i32 1220
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %234 = tail call i16 @llvm.bswap.i16(i16 %231) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18.i.i, i16 %234) #6, !srcloc !58
  %235 = ptrtoint ptr %rx2_fifo_start.i to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %rx2_fifo_start.i, align 4
  %sub.i24.i = add i16 %236, -1
  %237 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %hw, align 8
  %add.ptr25.i.i = getelementptr i8, ptr %238, i32 1172
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %239 = tail call i16 @llvm.bswap.i16(i16 %sub.i24.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr25.i.i, i16 %239) #6, !srcloc !58
  %240 = ptrtoint ptr %tx_s_size90.i to i32
  call void @__asan_load2_noabort(i32 %240)
  %241 = load i16, ptr %tx_s_size90.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %241)
  %tobool.not.i25.i = icmp eq i16 %241, 0
  br i1 %tobool.not.i25.i, label %if.else.i28.i, label %if.then.i27.i

if.then.i27.i:                                    ; preds = %set_recvptr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %242 = ptrtoint ptr %tx_s_start.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %tx_s_start.i, align 4
  %244 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %hw, align 8
  %add.ptr34.i.i = getelementptr i8, ptr %245, i32 1248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %246 = tail call i16 @llvm.bswap.i16(i16 %243) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr34.i.i, i16 %246) #6, !srcloc !58
  %247 = ptrtoint ptr %tx_s_start.i to i32
  call void @__asan_load2_noabort(i32 %247)
  %248 = load i16, ptr %tx_s_start.i, align 4
  %249 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %hw, align 8
  %add.ptr41.i.i = getelementptr i8, ptr %250, i32 1232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %251 = tail call i16 @llvm.bswap.i16(i16 %248) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr41.i.i, i16 %251) #6, !srcloc !58
  %252 = ptrtoint ptr %tx_s_start.i to i32
  call void @__asan_load2_noabort(i32 %252)
  %253 = load i16, ptr %tx_s_start.i, align 4
  %254 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %hw, align 8
  %add.ptr48.i.i = getelementptr i8, ptr %255, i32 1216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %256 = tail call i16 @llvm.bswap.i16(i16 %253) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr48.i.i, i16 %256) #6, !srcloc !58
  %257 = ptrtoint ptr %tx_a0_start.i to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %tx_a0_start.i, align 4
  %sub54.i.i = add i16 %258, -1
  %259 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %hw, align 8
  %add.ptr58.i.i = getelementptr i8, ptr %260, i32 1168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %261 = tail call i16 @llvm.bswap.i16(i16 %sub54.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr58.i.i, i16 %261) #6, !srcloc !58
  br label %init_rbc.exit

if.else.i28.i:                                    ; preds = %set_recvptr.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %262 = ptrtoint ptr %tx_a0_start.i to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %tx_a0_start.i, align 4
  %sub64.i.i = add i16 %263, -1
  %264 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %hw, align 8
  %add.ptr68.i.i = getelementptr i8, ptr %265, i32 1248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %266 = tail call i16 @llvm.bswap.i16(i16 %sub64.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr68.i.i, i16 %266) #6, !srcloc !58
  %267 = ptrtoint ptr %tx_a0_start.i to i32
  call void @__asan_load2_noabort(i32 %267)
  %268 = load i16, ptr %tx_a0_start.i, align 4
  %sub74.i.i = add i16 %268, -1
  %269 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %hw, align 8
  %add.ptr78.i.i = getelementptr i8, ptr %270, i32 1232
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %271 = tail call i16 @llvm.bswap.i16(i16 %sub74.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr78.i.i, i16 %271) #6, !srcloc !58
  %272 = ptrtoint ptr %tx_a0_start.i to i32
  call void @__asan_load2_noabort(i32 %272)
  %273 = load i16, ptr %tx_a0_start.i, align 4
  %sub84.i.i = add i16 %273, -1
  %274 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %hw, align 8
  %add.ptr88.i.i = getelementptr i8, ptr %275, i32 1216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %276 = tail call i16 @llvm.bswap.i16(i16 %sub84.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr88.i.i, i16 %276) #6, !srcloc !58
  %277 = ptrtoint ptr %tx_a0_start.i to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %tx_a0_start.i, align 4
  %sub94.i.i = add i16 %278, -1
  %279 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %hw, align 8
  %add.ptr98.i.i = getelementptr i8, ptr %280, i32 1168
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %281 = tail call i16 @llvm.bswap.i16(i16 %sub94.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr98.i.i, i16 %281) #6, !srcloc !58
  br label %init_rbc.exit

init_rbc.exit:                                    ; preds = %if.else.i28.i, %if.then.i27.i
  %282 = ptrtoint ptr %fddiMACT_Req.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %fddiMACT_Req.i, align 4
  %mac_sfb.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 8
  %284 = ptrtoint ptr %mac_sfb.i to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 -61, ptr %mac_sfb.i, align 1
  %mac_source.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 8, i32 2
  %mac_dest.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 8, i32 1
  %fddi_canon_addr.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 20
  %285 = call ptr @memcpy(ptr %mac_dest.i, ptr %fddi_canon_addr.i, i32 6)
  %286 = call ptr @memcpy(ptr %mac_source.i, ptr %fddi_canon_addr.i, i32 6)
  %mac_info.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 8, i32 3
  %287 = lshr i32 %283, 24
  %conv.i.i30 = trunc i32 %287 to i8
  %288 = ptrtoint ptr %mac_info.i to i32
  call void @__asan_store1_noabort(i32 %288)
  store i8 %conv.i.i30, ptr %mac_info.i, align 1
  %289 = lshr i32 %283, 16
  %conv2.i.i = trunc i32 %289 to i8
  %arrayidx3.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 8, i32 3, i32 1
  %290 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 %conv2.i.i, ptr %arrayidx3.i.i, align 1
  %291 = lshr i32 %283, 8
  %conv5.i.i = trunc i32 %291 to i8
  %arrayidx6.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 8, i32 3, i32 2
  %292 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 %conv5.i.i, ptr %arrayidx6.i.i, align 1
  %conv8.i.i = trunc i32 %283 to i8
  %arrayidx9.i.i = getelementptr %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 8, i32 3, i32 3
  %293 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 %conv8.i.i, ptr %arrayidx9.i.i, align 1
  %294 = ptrtoint ptr %fifo.i6 to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %fifo.i6, align 4
  %conv.i32 = zext i16 %295 to i32
  %add.i33 = add nuw nsw i32 %conv.i32, 8
  tail call fastcc void @copy_tx_mac(ptr noundef %smc, i32 noundef 1073741824, ptr noundef %mac_sfb.i, i32 noundef %add.i33, i32 noundef 17) #6
  %296 = ptrtoint ptr %fifo.i6 to i32
  call void @__asan_load2_noabort(i32 %296)
  %297 = load i16, ptr %fifo.i6, align 4
  %add9.i = add i16 %297, 8
  %298 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %hw, align 8
  %add.ptr.i34 = getelementptr i8, ptr %299, i32 1184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %300 = tail call i16 @llvm.bswap.i16(i16 %add9.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i34, i16 %300) #6, !srcloc !58
  %301 = ptrtoint ptr %mac_sfb.i to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 -62, ptr %mac_sfb.i, align 1
  %302 = call ptr @memcpy(ptr %mac_source.i, ptr %fddi_canon_addr.i, i32 6)
  %303 = call ptr @memset(ptr %mac_dest.i, i32 0, i32 6)
  %304 = ptrtoint ptr %mac_info.i to i32
  call void @__asan_storeN_noabort(i32 %304, i32 4)
  store i32 0, ptr %mac_info.i, align 1
  %305 = ptrtoint ptr %fifo.i6 to i32
  call void @__asan_load2_noabort(i32 %305)
  %306 = load i16, ptr %fifo.i6, align 4
  %conv27.i = zext i16 %306 to i32
  %add28.i = add nuw nsw i32 %conv27.i, 16
  tail call fastcc void @copy_tx_mac(ptr noundef %smc, i32 noundef 1073741824, ptr noundef %mac_sfb.i, i32 noundef %add28.i, i32 noundef 17) #6
  %307 = ptrtoint ptr %fifo.i6 to i32
  call void @__asan_load2_noabort(i32 %307)
  %308 = load i16, ptr %fifo.i6, align 4
  %add34.i = add i16 %308, 16
  %309 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %hw, align 8
  %add.ptr38.i = getelementptr i8, ptr %310, i32 1188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %311 = tail call i16 @llvm.bswap.i16(i16 %add34.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr38.i, i16 %311) #6, !srcloc !58
  %312 = ptrtoint ptr %mac_sfb.i to i32
  call void @__asan_store1_noabort(i32 %312)
  store i8 -62, ptr %mac_sfb.i, align 1
  %313 = call ptr @memcpy(ptr %mac_source.i, ptr %fddi_canon_addr.i, i32 6)
  %314 = call ptr @memcpy(ptr %mac_dest.i, ptr @dbeacon_multi, i32 6)
  %315 = ptrtoint ptr %mac_info.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 1, ptr %mac_info.i, align 1
  %316 = call ptr @memset(ptr %arrayidx3.i.i, i32 0, i32 11)
  %317 = ptrtoint ptr %fifo.i6 to i32
  call void @__asan_load2_noabort(i32 %317)
  %318 = load i16, ptr %fifo.i6, align 4
  %conv60.i = zext i16 %318 to i32
  %add61.i = add nuw nsw i32 %conv60.i, 24
  tail call fastcc void @copy_tx_mac(ptr noundef %smc, i32 noundef 1342177280, ptr noundef %mac_sfb.i, i32 noundef %add61.i, i32 noundef 23) #6
  %319 = ptrtoint ptr %rx1_fifo_start.i to i32
  call void @__asan_load2_noabort(i32 %319)
  %320 = load i16, ptr %rx1_fifo_start.i, align 4
  %sub66.i = add i16 %320, -1
  %321 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %hw, align 8
  %add.ptr70.i = getelementptr i8, ptr %322, i32 1160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %323 = tail call i16 @llvm.bswap.i16(i16 %sub66.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr70.i, i16 %323) #6, !srcloc !58
  %324 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %hw, align 8
  %add.ptr73.i = getelementptr i8, ptr %325, i32 1192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr73.i, i16 0) #6, !srcloc !58
  %326 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %hw, align 8
  %add.ptr76.i = getelementptr i8, ptr %327, i32 1196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr76.i, i16 0) #6, !srcloc !58
  %328 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %hw, align 8
  %add.ptr13 = getelementptr i8, ptr %329, i32 1156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 224) #6, !srcloc !58
  %rx_mode = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 3
  %330 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load2_noabort(i32 %330)
  %331 = load i16, ptr %rx_mode, align 2
  %332 = or i16 %331, 128
  %333 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %hw, align 8
  %add.ptr19 = getelementptr i8, ptr %334, i32 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %335 = tail call i16 @llvm.bswap.i16(i16 %332) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr19, i16 %335) #6, !srcloc !58
  %336 = ptrtoint ptr %fp to i32
  call void @__asan_load2_noabort(i32 %336)
  %337 = load i16, ptr %fp, align 4
  %338 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %hw, align 8
  %add.ptr25 = getelementptr i8, ptr %339, i32 1152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %340 = tail call i16 @llvm.bswap.i16(i16 %337) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr25, i16 %340) #6, !srcloc !58
  %mdr3init = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 1
  %341 = ptrtoint ptr %mdr3init to i32
  call void @__asan_load2_noabort(i32 %341)
  %342 = load i16, ptr %mdr3init, align 2
  %343 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %hw, align 8
  %add.ptr30 = getelementptr i8, ptr %344, i32 1408
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %345 = tail call i16 @llvm.bswap.i16(i16 %342) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr30, i16 %345) #6, !srcloc !58
  %frselreg_init = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 2
  %346 = ptrtoint ptr %frselreg_init to i32
  call void @__asan_load2_noabort(i32 %346)
  %347 = load i16, ptr %frselreg_init, align 4
  %348 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %hw, align 8
  %add.ptr35 = getelementptr i8, ptr %349, i32 1300
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %350 = tail call i16 @llvm.bswap.i16(i16 %347) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr35, i16 %350) #6, !srcloc !58
  %fddiMACT_Max = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 22
  %351 = ptrtoint ptr %fddiMACT_Max to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %fddiMACT_Max, align 4
  %div1 = lshr i32 %352, 5
  %conv39 = trunc i32 %div1 to i16
  %conv40 = and i32 %div1, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534, i32 %conv40)
  %cmp = icmp eq i32 %conv40, 65534
  br i1 %cmp, label %init_rbc.exit.if.then51_crit_edge, label %lor.lhs.false

init_rbc.exit.if.then51_crit_edge:                ; preds = %init_rbc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51

lor.lhs.false:                                    ; preds = %init_rbc.exit
  %353 = urem i16 %conv39, 39
  %.zext = zext i16 %353 to i32
  %mul = sub nsw i32 %div1, %.zext
  %conv48 = and i32 %mul, 65535
  %sub = sub nsw i32 %conv40, %conv48
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %sub)
  %cmp49 = icmp eq i32 %sub, 22
  br i1 %cmp49, label %lor.lhs.false.if.then51_crit_edge, label %lor.lhs.false.if.end52_crit_edge

lor.lhs.false.if.end52_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

lor.lhs.false.if.then51_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51

if.then51:                                        ; preds = %lor.lhs.false.if.then51_crit_edge, %init_rbc.exit.if.then51_crit_edge
  %dec = add i16 %conv39, -1
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %lor.lhs.false.if.end52_crit_edge
  %t_max.0 = phi i16 [ %dec, %if.then51 ], [ %conv39, %lor.lhs.false.if.end52_crit_edge ]
  %354 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %hw, align 8
  %add.ptr55 = getelementptr i8, ptr %355, i32 1104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %356 = tail call i16 @llvm.bswap.i16(i16 %t_max.0) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr55, i16 %356) #6, !srcloc !58
  %fddiMACTvxValue = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 24
  %357 = ptrtoint ptr %fddiMACTvxValue to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %fddiMACTvxValue, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65000, i32 %358)
  %cmp59 = icmp ult i32 %358, -65000
  br i1 %cmp59, label %if.then61, label %if.else65

if.then61:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %359 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %hw, align 8
  %add.ptr64 = getelementptr i8, ptr %360, i32 1108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr64, i16 512) #6, !srcloc !58
  br label %if.end75

if.else65:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %div70 = udiv i32 %358, 255
  %361 = trunc i32 %div70 to i16
  %362 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %hw, align 8
  %add.ptr74 = getelementptr i8, ptr %363, i32 1108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %conv71 = shl i16 %361, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr74, i16 %conv71) #6, !srcloc !58
  br label %if.end75

if.end75:                                         ; preds = %if.else65, %if.then61
  %364 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %hw, align 8
  %add.ptr78 = getelementptr i8, ptr %365, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr78, i16 4352) #6, !srcloc !58
  %366 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %hw, align 8
  %add.ptr81 = getelementptr i8, ptr %367, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr81, i16 4608) #6, !srcloc !58
  %368 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %hw, align 8
  %add.ptr84 = getelementptr i8, ptr %369, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr84, i16 8192) #6, !srcloc !58
  %370 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %hw, align 8
  %add.ptr87 = getelementptr i8, ptr %371, i32 1456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr87, i16 -1) #6, !srcloc !58
  %372 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %hw, align 8
  %add.ptr.i37 = getelementptr i8, ptr %373, i32 320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 0) #6, !srcloc !62
  %374 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %hw, align 8
  %add.ptr3.i = getelementptr i8, ptr %375, i32 328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i, i16 1024) #6, !srcloc !58
  br i1 %tobool.not, label %if.then89, label %if.end75.if.end125_crit_edge

if.end75.if.end125_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

if.then89:                                        ; preds = %if.end75
  tail call void @hwt_wait_time(ptr noundef %smc, i32 noundef %time.0, i32 noundef 125000) #6
  %376 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %hw, align 8
  %add.ptr92 = getelementptr i8, ptr %377, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 5575936) #6, !srcloc !62
  %378 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %hw, align 8
  %add.ptr95 = getelementptr i8, ptr %379, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr95, i32 5575936) #6, !srcloc !62
  %380 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %hw, align 8
  %add.ptr98 = getelementptr i8, ptr %381, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 5575936) #6, !srcloc !62
  %382 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %hw, align 8
  %add.ptr101 = getelementptr i8, ptr %383, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr101, i8 32) #6, !srcloc !60
  %384 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %hw, align 8
  %add.ptr104 = getelementptr i8, ptr %385, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 11151872) #6, !srcloc !62
  %386 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %hw, align 8
  %add.ptr107 = getelementptr i8, ptr %387, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 11151872) #6, !srcloc !62
  %388 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %hw, align 8
  %add.ptr110 = getelementptr i8, ptr %389, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr110, i32 11151872) #6, !srcloc !62
  %hw_is_64bit = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 12
  %390 = ptrtoint ptr %hw_is_64bit to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %hw_is_64bit, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %391)
  %tobool112.not = icmp eq i32 %391, 0
  br i1 %tobool112.not, label %if.then113, label %if.then89.if.end123_crit_edge

if.then89.if.end123_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then113:                                       ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #8
  %392 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %hw, align 8
  %add.ptr116 = getelementptr i8, ptr %393, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 402653184) #6, !srcloc !62
  %394 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %hw, align 8
  %add.ptr119 = getelementptr i8, ptr %395, i32 672
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 402653184) #6, !srcloc !62
  %396 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %hw, align 8
  %add.ptr122 = getelementptr i8, ptr %397, i32 736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 402653184) #6, !srcloc !62
  br label %if.end123

if.end123:                                        ; preds = %if.then113, %if.then89.if.end123_crit_edge
  %hw_state = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 11
  %398 = ptrtoint ptr %hw_state to i32
  call void @__asan_store2_noabort(i32 %398)
  store i16 0, ptr %hw_state, align 2
  tail call void @mac_drv_repair_descr(ptr noundef %smc) #6
  br label %if.end125

if.end125:                                        ; preds = %if.end123, %if.end75.if.end125_crit_edge
  %hw_state127 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 11
  %399 = ptrtoint ptr %hw_state127 to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 1, ptr %hw_state127, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @config_mux(ptr noundef %smc, i32 noundef %mux) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @plc_config_mux(ptr noundef %smc, i32 noundef %mux) #6
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1088
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %3 = or i16 %2, -32768
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr4 = getelementptr i8, ptr %5, i32 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr4, i16 %3) #6, !srcloc !58
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @plc_config_mux(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm_mac_check_beacon_claim(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 230) #6, !srcloc !58
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 1088
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %5 = and i16 %4, -12296
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #6
  %rx_mode.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 3
  %7 = ptrtoint ptr %rx_mode.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rx_mode.i, align 2
  %or13.i = or i16 %6, %8
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 8
  %add.ptr6.i = getelementptr i8, ptr %10, i32 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %11 = tail call i16 @llvm.bswap.i16(i16 %or13.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i, i16 %11) #6, !srcloc !58
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %add.ptr9.i = getelementptr i8, ptr %13, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i, i16 8192) #6, !srcloc !58
  tail call void @process_receive(ptr noundef %smc) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @process_receive(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sm_ma_control(ptr noundef %smc, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 5, label %sw.bb
    i32 0, label %sw.bb1
    i32 1, label %sw.bb2
    i32 3, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hw.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %1 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 4096) #6, !srcloc !58
  %3 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %4, i32 1088
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %6 = and i16 %5, -8
  %7 = or i16 %6, 4
  %8 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw.i, align 8
  %add.ptr7.i = getelementptr i8, ptr %9, i32 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i, i16 %7) #6, !srcloc !58
  %10 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw.i, align 8
  %add.ptr10.i = getelementptr i8, ptr %11, i32 1088
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr10.i) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %13 = and i16 %12, -113
  %14 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw.i, align 8
  %add.ptr18.i = getelementptr i8, ptr %15, i32 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18.i, i16 %13) #6, !srcloc !58
  %16 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hw.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 -1) #6, !srcloc !58
  %18 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw.i, align 8
  %add.ptr3.i.i = getelementptr i8, ptr %19, i32 1044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i.i, i16 -1) #6, !srcloc !58
  %20 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw.i, align 8
  %add.ptr6.i.i = getelementptr i8, ptr %21, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i.i, i16 -1) #6, !srcloc !58
  %22 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw.i, align 8
  %add.ptr9.i.i = getelementptr i8, ptr %23, i32 1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i, i16 -1) #6, !srcloc !58
  %24 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw.i, align 8
  %add.ptr12.i.i = getelementptr i8, ptr %25, i32 1420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12.i.i, i16 -1) #6, !srcloc !58
  %26 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw.i, align 8
  %add.ptr15.i.i = getelementptr i8, ptr %27, i32 1424
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15.i.i, i16 -1) #6, !srcloc !58
  %mac_ring_is_up.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 24
  %28 = ptrtoint ptr %mac_ring_is_up.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %mac_ring_is_up.i, align 8
  %hw_state.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 11
  %29 = ptrtoint ptr %hw_state.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %hw_state.i, align 2
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @init_mac(ptr noundef %smc, i32 noundef 0)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hw.i.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %30 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw.i.i, align 8
  %add.ptr.i.i7 = getelementptr i8, ptr %31, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i7, i16 -153) #6, !srcloc !58
  %32 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw.i.i, align 8
  %add.ptr3.i.i8 = getelementptr i8, ptr %33, i32 1044
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3.i.i8, i16 -820) #6, !srcloc !58
  %34 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw.i.i, align 8
  %add.ptr6.i.i9 = getelementptr i8, ptr %35, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6.i.i9, i16 24550) #6, !srcloc !58
  %36 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw.i.i, align 8
  %add.ptr9.i.i10 = getelementptr i8, ptr %37, i32 1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i10, i16 -30405) #6, !srcloc !58
  %38 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw.i.i, align 8
  %add.ptr12.i.i11 = getelementptr i8, ptr %39, i32 1420
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr12.i.i11, i16 -25) #6, !srcloc !58
  %40 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw.i.i, align 8
  %add.ptr15.i.i12 = getelementptr i8, ptr %41, i32 1424
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr15.i.i12, i16 -3073) #6, !srcloc !58
  %42 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %hw.i.i, align 8
  %add.ptr.i13 = getelementptr i8, ptr %43, i32 1088
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i13) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %45 = and i16 %44, 20360
  %rx_mode.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 3
  %46 = ptrtoint ptr %rx_mode.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %rx_mode.i, align 2
  %48 = or i16 %45, -32720
  %49 = call i16 @llvm.bswap.i16(i16 %48)
  %or311.i = or i16 %49, %47
  %50 = ptrtoint ptr %hw.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw.i.i, align 8
  %add.ptr7.i14 = getelementptr i8, ptr %51, i32 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %52 = tail call i16 @llvm.bswap.i16(i16 %or311.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i14, i16 %52) #6, !srcloc !58
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %fddiMACUpstreamNbr.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 8
  %53 = ptrtoint ptr %fddiMACUpstreamNbr.i to i32
  call void @__asan_loadN_noabort(i32 %53, i32 3)
  %a.sroa.0.sroa.5.sroa.0.0.copyload.i = load i24, ptr %fddiMACUpstreamNbr.i, align 2
  %a.sroa.6.1.fddiMACUpstreamNbr.sroa_idx.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 37, i32 0, i32 8, i32 0, i32 3
  %54 = ptrtoint ptr %a.sroa.6.1.fddiMACUpstreamNbr.sroa_idx.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 3)
  %a.sroa.6.1.copyload.i = load i24, ptr %a.sroa.6.1.fddiMACUpstreamNbr.sroa_idx.i, align 1
  %hw.i15 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %sw.bb3
  %k.0.i = phi i32 [ 10000, %sw.bb3 ], [ %dec.i, %while.cond.i.while.cond.i_crit_edge ]
  %55 = ptrtoint ptr %hw.i15 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hw.i15, align 8
  %add.ptr3.i16 = getelementptr i8, ptr %56, i32 1092
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3.i16) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %58 = and i16 %57, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool.not.i = icmp eq i16 %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0.i)
  %tobool4.not.i = icmp eq i32 %k.0.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool4.not.i
  %dec.i = add nsw i32 %k.0.i, -1
  br i1 %or.cond.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  br i1 %tobool4.not.i, label %do.end.i, label %while.end.i.if.end.i_crit_edge

while.end.i.if.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 130, ptr noundef nonnull @write_mdr_warning) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %while.end.i.if.end.i_crit_edge
  %fifo.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13
  %59 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %fifo.i, align 4
  %add9.i = add i16 %60, 28
  %61 = ptrtoint ptr %hw.i15 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw.i15, align 8
  %add.ptr13.i = getelementptr i8, ptr %62, i32 1268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %63 = tail call i16 @llvm.bswap.i16(i16 %add9.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13.i, i16 %63) #6, !srcloc !58
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.end.i
  %k.0.i.i = phi i32 [ 10000, %if.end.i ], [ %dec.i.i, %while.cond.i.i.while.cond.i.i_crit_edge ]
  %64 = ptrtoint ptr %hw.i15 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw.i15, align 8
  %add.ptr.i.i17 = getelementptr i8, ptr %65, i32 1092
  %66 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i17) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %67 = and i16 %66, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.i.i = icmp eq i16 %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0.i.i)
  %tobool1.not.i.i = icmp eq i32 %k.0.i.i, 0
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 true, i1 %tobool1.not.i.i
  %dec.i.i = add nsw i32 %k.0.i.i, -1
  br i1 %or.cond.i.i, label %while.end.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %a.sroa.0.sroa.5.0.insert.ext.i = zext i24 %a.sroa.0.sroa.5.sroa.0.0.copyload.i to i32
  %68 = tail call i32 @llvm.bswap.i32(i32 %a.sroa.0.sroa.5.0.insert.ext.i) #6
  br i1 %tobool1.not.i.i, label %do.end.i.i, label %while.end.i.i.write_mdr.exit.i_crit_edge

while.end.i.i.write_mdr.exit.i_crit_edge:         ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_mdr.exit.i

do.end.i.i:                                       ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 130, ptr noundef nonnull @write_mdr_warning) #9
  br label %write_mdr.exit.i

write_mdr.exit.i:                                 ; preds = %do.end.i.i, %while.end.i.i.write_mdr.exit.i_crit_edge
  %shr.i.i = lshr i32 %68, 16
  %conv4.i.i = trunc i32 %shr.i.i to i16
  %69 = ptrtoint ptr %hw.i15 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hw.i15, align 8
  %add.ptr7.i.i = getelementptr i8, ptr %70, i32 1272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %71 = tail call i16 @llvm.bswap.i16(i16 %conv4.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i.i, i16 %71) #6, !srcloc !58
  %conv8.i.i = trunc i32 %68 to i16
  %72 = ptrtoint ptr %hw.i15 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw.i15, align 8
  %add.ptr11.i.i = getelementptr i8, ptr %73, i32 1276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %74 = lshr exact i16 %conv8.i.i, 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i.i, i16 %74) #6, !srcloc !58
  %75 = ptrtoint ptr %hw.i15 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw.i15, align 8
  %add.ptr17.i = getelementptr i8, ptr %76, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr17.i, i16 12288) #6, !srcloc !58
  br label %while.cond.i46.i

while.cond.i46.i:                                 ; preds = %while.cond.i46.i.while.cond.i46.i_crit_edge, %write_mdr.exit.i
  %k.0.i40.i = phi i32 [ 10000, %write_mdr.exit.i ], [ %dec.i45.i, %while.cond.i46.i.while.cond.i46.i_crit_edge ]
  %77 = ptrtoint ptr %hw.i15 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw.i15, align 8
  %add.ptr.i41.i = getelementptr i8, ptr %78, i32 1092
  %79 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i41.i) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %80 = and i16 %79, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %80)
  %tobool.not.i42.i = icmp eq i16 %80, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0.i40.i)
  %tobool1.not.i43.i = icmp eq i32 %k.0.i40.i, 0
  %or.cond.i44.i = select i1 %tobool.not.i42.i, i1 true, i1 %tobool1.not.i43.i
  %dec.i45.i = add nsw i32 %k.0.i40.i, -1
  br i1 %or.cond.i44.i, label %while.end.i47.i, label %while.cond.i46.i.while.cond.i46.i_crit_edge

while.cond.i46.i.while.cond.i46.i_crit_edge:      ; preds = %while.cond.i46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i46.i

while.end.i47.i:                                  ; preds = %while.cond.i46.i
  br i1 %tobool1.not.i43.i, label %do.end.i49.i, label %while.end.i47.i.directed_beacon.exit_crit_edge

while.end.i47.i.directed_beacon.exit_crit_edge:   ; preds = %while.end.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %directed_beacon.exit

do.end.i49.i:                                     ; preds = %while.end.i47.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i48.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 130, ptr noundef nonnull @write_mdr_warning) #9
  br label %directed_beacon.exit

directed_beacon.exit:                             ; preds = %do.end.i49.i, %while.end.i47.i.directed_beacon.exit_crit_edge
  %a.sroa.6.1.insert.ext.i = zext i24 %a.sroa.6.1.copyload.i to i32
  %81 = tail call i32 @llvm.bswap.i32(i32 %a.sroa.6.1.insert.ext.i) #6
  %82 = lshr exact i32 %81, 8
  %83 = ptrtoint ptr %hw.i15 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hw.i15, align 8
  %add.ptr7.i52.i = getelementptr i8, ptr %84, i32 1272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %sh.diff.i = lshr i32 %81, 16
  %tr.sh.diff.i = trunc i32 %sh.diff.i to i16
  %85 = and i16 %tr.sh.diff.i, -256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i52.i, i16 %85) #6, !srcloc !58
  %conv8.i53.i = trunc i32 %82 to i16
  %86 = ptrtoint ptr %hw.i15 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %hw.i15, align 8
  %add.ptr11.i54.i = getelementptr i8, ptr %87, i32 1276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %88 = tail call i16 @llvm.bswap.i16(i16 %conv8.i53.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i54.i, i16 %88) #6, !srcloc !58
  %89 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %fifo.i, align 4
  %add24.i = add i16 %90, 24
  %91 = ptrtoint ptr %hw.i15 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hw.i15, align 8
  %add.ptr28.i = getelementptr i8, ptr %92, i32 1188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %93 = tail call i16 @llvm.bswap.i16(i16 %add24.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr28.i, i16 %93) #6, !srcloc !58
  br label %sw.epilog

sw.epilog:                                        ; preds = %directed_beacon.exit, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sm_mac_get_tx_state(ptr nocapture noundef readonly %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1092
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !55
  %3 = lshr i16 %2, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %4 = and i16 %3, 7
  %and = zext i16 %4 to i32
  ret i32 %and
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac_clear_multicast(ptr nocapture noundef %smc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %os_slots_used = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 26
  %0 = ptrtoint ptr %os_slots_used to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %os_slots_used, align 4
  %mc = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.09 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %tb.07 = phi ptr [ %mc, %entry ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %perm = getelementptr inbounds %struct.s_fpmc, ptr %tb.07, i32 0, i32 2
  %1 = ptrtoint ptr %perm to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %perm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %n = getelementptr inbounds %struct.s_fpmc, ptr %tb.07, i32 0, i32 1
  %3 = ptrtoint ptr %n to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %n, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.09, 1
  %incdec.ptr = getelementptr %struct.s_fpmc, ptr %tb.07, i32 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mac_add_multicast(ptr noundef %smc, ptr nocapture noundef readonly %addr, i32 noundef %can) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %can, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %smt_slots_used = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 25
  %0 = ptrtoint ptr %smt_slots_used to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %smt_slots_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp sgt i32 %1, 3
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %entry
  %os_slots_used = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 26
  %2 = ptrtoint ptr %os_slots_used to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %os_slots_used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %3)
  %cmp4 = icmp sgt i32 %3, 27
  br i1 %cmp4, label %if.else.cleanup_crit_edge, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.else.if.end7_crit_edge, %if.then.if.end7_crit_edge
  %and8 = and i32 %can, -129
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %own.sroa.0.0.copyload38 = load i32, ptr %addr, align 1
  %own.sroa.0.sroa.0.0.extract.shift = lshr i32 %own.sroa.0.0.copyload38, 24
  %own.sroa.0.sroa.0.0.extract.trunc = trunc i32 %own.sroa.0.sroa.0.0.extract.shift to i8
  %own.sroa.0.sroa.8.0.extract.shift = lshr i32 %own.sroa.0.0.copyload38, 16
  %own.sroa.0.sroa.8.0.extract.trunc = trunc i32 %own.sroa.0.sroa.8.0.extract.shift to i8
  %own.sroa.0.sroa.11.0.extract.shift = lshr i32 %own.sroa.0.0.copyload38, 8
  %own.sroa.0.sroa.11.0.extract.trunc = trunc i32 %own.sroa.0.sroa.11.0.extract.shift to i8
  %own.sroa.0.sroa.14.0.extract.trunc = trunc i32 %own.sroa.0.0.copyload38 to i8
  %own.sroa.17.0.addr.sroa_idx = getelementptr inbounds i8, ptr %addr, i32 4
  %5 = ptrtoint ptr %own.sroa.17.0.addr.sroa_idx to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %own.sroa.17.0.copyload42 = load i16, ptr %own.sroa.17.0.addr.sroa_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not.i = icmp eq i32 %and8, 0
  br i1 %tobool.not.i, label %if.end7.if.end.i_crit_edge, label %cond.false.i

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

cond.false.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %own.sroa.0.sroa.0.0.extract.shift
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %idxprom.i.1.i = and i32 %own.sroa.0.sroa.8.0.extract.shift, 255
  %arrayidx.i.1.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.1.i
  %8 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.1.i, align 1
  %idxprom.i.2.i = and i32 %own.sroa.0.sroa.11.0.extract.shift, 255
  %arrayidx.i.2.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.2.i
  %10 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.2.i, align 1
  %idxprom.i.3.i = and i32 %own.sroa.0.0.copyload38, 255
  %arrayidx.i.3.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.3.i
  %12 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i.3.i, align 1
  %own.sroa.17.4.extract.shift = lshr i16 %own.sroa.17.0.copyload42, 8
  %idxprom.i.4.i = zext i16 %own.sroa.17.4.extract.shift to i32
  %arrayidx.i.4.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.4.i
  %14 = ptrtoint ptr %arrayidx.i.4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i.4.i, align 1
  %own.sroa.17.4.insert.ext = zext i8 %15 to i16
  %own.sroa.17.4.insert.shift = shl nuw i16 %own.sroa.17.4.insert.ext, 8
  %own.sroa.17.5.extract.trunc.mask = and i16 %own.sroa.17.0.copyload42, 255
  %idxprom.i.5.i = zext i16 %own.sroa.17.5.extract.trunc.mask to i32
  %arrayidx.i.5.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %idxprom.i.5.i
  %16 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.5.i, align 1
  %own.sroa.17.5.insert.ext = zext i8 %17 to i16
  %own.sroa.17.5.insert.insert49 = or i16 %own.sroa.17.4.insert.shift, %own.sroa.17.5.insert.ext
  br label %if.end.i

if.end.i:                                         ; preds = %cond.false.i, %if.end7.if.end.i_crit_edge
  %own.sroa.0.sroa.14.0 = phi i8 [ %own.sroa.0.sroa.14.0.extract.trunc, %if.end7.if.end.i_crit_edge ], [ %13, %cond.false.i ]
  %own.sroa.0.sroa.11.0 = phi i8 [ %own.sroa.0.sroa.11.0.extract.trunc, %if.end7.if.end.i_crit_edge ], [ %11, %cond.false.i ]
  %own.sroa.0.sroa.8.0 = phi i8 [ %own.sroa.0.sroa.8.0.extract.trunc, %if.end7.if.end.i_crit_edge ], [ %9, %cond.false.i ]
  %own.sroa.0.sroa.0.0 = phi i8 [ %own.sroa.0.sroa.0.0.extract.trunc, %if.end7.if.end.i_crit_edge ], [ %7, %cond.false.i ]
  %own.sroa.17.0 = phi i16 [ %own.sroa.17.0.copyload42, %if.end7.if.end.i_crit_edge ], [ %own.sroa.17.5.insert.insert49, %cond.false.i ]
  %mc.i = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 22
  %own.sroa.0.sroa.14.0.insert.ext = zext i8 %own.sroa.0.sroa.14.0 to i32
  %own.sroa.0.sroa.11.0.insert.ext = zext i8 %own.sroa.0.sroa.11.0 to i32
  %own.sroa.0.sroa.11.0.insert.shift = shl nuw nsw i32 %own.sroa.0.sroa.11.0.insert.ext, 8
  %own.sroa.0.sroa.11.0.insert.insert = or i32 %own.sroa.0.sroa.11.0.insert.shift, %own.sroa.0.sroa.14.0.insert.ext
  %own.sroa.0.sroa.8.0.insert.ext = zext i8 %own.sroa.0.sroa.8.0 to i32
  %own.sroa.0.sroa.8.0.insert.shift = shl nuw nsw i32 %own.sroa.0.sroa.8.0.insert.ext, 16
  %own.sroa.0.sroa.8.0.insert.insert = or i32 %own.sroa.0.sroa.11.0.insert.insert, %own.sroa.0.sroa.8.0.insert.shift
  %own.sroa.0.sroa.0.0.insert.ext = zext i8 %own.sroa.0.sroa.0.0 to i32
  %own.sroa.0.sroa.0.0.insert.shift = shl nuw i32 %own.sroa.0.sroa.0.0.insert.ext, 24
  %own.sroa.0.sroa.0.0.insert.insert = or i32 %own.sroa.0.sroa.8.0.insert.insert, %own.sroa.0.sroa.0.0.insert.shift
  br label %for.body26.i

for.body26.i:                                     ; preds = %for.inc38.i.for.body26.i_crit_edge, %if.end.i
  %tb.05.i = phi ptr [ %mc.i, %if.end.i ], [ %incdec.ptr40.i, %for.inc38.i.for.body26.i_crit_edge ]
  %slot.04.i = phi ptr [ null, %if.end.i ], [ %slot.1.i, %for.inc38.i.for.body26.i_crit_edge ]
  %i.13.i = phi i32 [ 0, %if.end.i ], [ %inc39.i, %for.inc38.i.for.body26.i_crit_edge ]
  %n.i = getelementptr inbounds %struct.s_fpmc, ptr %tb.05.i, i32 0, i32 1
  %18 = ptrtoint ptr %n.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %n.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool27.not.i = icmp eq i8 %19, 0
  br i1 %tobool27.not.i, label %land.lhs.true.i, label %if.end33.i

land.lhs.true.i:                                  ; preds = %for.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  %tobool30.not.i = icmp eq ptr %slot.04.i, null
  %spec.select.i = select i1 %tobool30.not.i, ptr %tb.05.i, ptr %slot.04.i
  br label %for.inc38.i

if.end33.i:                                       ; preds = %for.body26.i
  %20 = ptrtoint ptr %tb.05.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tb.05.i, align 4
  %xor.i.i = xor i32 %21, %own.sroa.0.sroa.0.0.insert.insert
  %add.ptr.i.i = getelementptr i8, ptr %tb.05.i, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %add.ptr.i.i, align 2
  %xor37.i.i = xor i16 %23, %own.sroa.17.0
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %if.end33.i.mac_get_mc_table.exit_crit_edge, label %if.end33.i.for.inc38.i_crit_edge

if.end33.i.for.inc38.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc38.i

if.end33.i.mac_get_mc_table.exit_crit_edge:       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mac_get_mc_table.exit

for.inc38.i:                                      ; preds = %if.end33.i.for.inc38.i_crit_edge, %land.lhs.true.i
  %slot.1.i = phi ptr [ %slot.04.i, %if.end33.i.for.inc38.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %inc39.i = add nuw nsw i32 %i.13.i, 1
  %incdec.ptr40.i = getelementptr %struct.s_fpmc, ptr %tb.05.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc39.i, 32
  br i1 %exitcond.not.i, label %for.inc38.i.mac_get_mc_table.exit_crit_edge, label %for.inc38.i.for.body26.i_crit_edge

for.inc38.i.for.body26.i_crit_edge:               ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26.i

for.inc38.i.mac_get_mc_table.exit_crit_edge:      ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mac_get_mc_table.exit

mac_get_mc_table.exit:                            ; preds = %for.inc38.i.mac_get_mc_table.exit_crit_edge, %if.end33.i.mac_get_mc_table.exit_crit_edge
  %retval.0.i = phi ptr [ %tb.05.i, %if.end33.i.mac_get_mc_table.exit_crit_edge ], [ %slot.1.i, %for.inc38.i.mac_get_mc_table.exit_crit_edge ]
  %tobool9.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool9.not, label %mac_get_mc_table.exit.cleanup_crit_edge, label %if.end11

mac_get_mc_table.exit.cleanup_crit_edge:          ; preds = %mac_get_mc_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %mac_get_mc_table.exit
  call void @__sanitizer_cov_trace_pc() #8
  %n = getelementptr inbounds %struct.s_fpmc, ptr %retval.0.i, i32 0, i32 1
  %24 = ptrtoint ptr %n to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %n, align 1
  %inc = add i8 %25, 1
  store i8 %inc, ptr %n, align 1
  %26 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %own.sroa.0.sroa.0.0.insert.insert, ptr %retval.0.i, align 1
  %own.sroa.17.0.retval.0.i.sroa_idx = getelementptr inbounds i8, ptr %retval.0.i, i32 4
  %27 = ptrtoint ptr %own.sroa.17.0.retval.0.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %27, i32 2)
  store i16 %own.sroa.17.0, ptr %own.sroa.17.0.retval.0.i.sroa_idx, align 1
  %not.tobool.not = xor i1 %tobool.not, true
  %conv = zext i1 %not.tobool.not to i8
  %perm = getelementptr inbounds %struct.s_fpmc, ptr %retval.0.i, i32 0, i32 2
  %28 = ptrtoint ptr %perm to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %perm, align 1
  %smt_slots_used19 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 25
  %os_slots_used24 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 26
  %smt_slots_used19.sink65 = select i1 %tobool.not, ptr %os_slots_used24, ptr %smt_slots_used19
  %29 = ptrtoint ptr %smt_slots_used19.sink65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %smt_slots_used19.sink65, align 4
  %inc20 = add i32 %30, 1
  store i32 %inc20, ptr %smt_slots_used19.sink65, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %mac_get_mc_table.exit.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %mac_get_mc_table.exit.cleanup_crit_edge ], [ 0, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac_update_multicast(ptr nocapture noundef readonly %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #6, !srcloc !58
  %func_addr = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 24
  %2 = ptrtoint ptr %func_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %func_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr7 = getelementptr i8, ptr %5, i32 1776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 -1) #6, !srcloc !58
  %6 = ptrtoint ptr %func_addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %func_addr, align 1
  %conv = zext i8 %7 to i16
  %shl = shl nuw i16 %conv, 8
  %arrayidx8 = getelementptr i8, ptr %func_addr, i32 1
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %9 to i16
  %add = or i16 %shl, %conv9
  %neg = xor i16 %add, -1
  %10 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw, align 8
  %add.ptr13 = getelementptr i8, ptr %11, i32 1784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %12 = tail call i16 @llvm.bswap.i16(i16 %neg) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 %12) #6, !srcloc !58
  %arrayidx14 = getelementptr i8, ptr %func_addr, i32 2
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %14 to i16
  %shl16 = shl nuw i16 %conv15, 8
  %arrayidx17 = getelementptr i8, ptr %func_addr, i32 3
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %16 to i16
  %add19 = or i16 %shl16, %conv18
  %neg20 = xor i16 %add19, -1
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %add.ptr24 = getelementptr i8, ptr %18, i32 1792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %19 = tail call i16 @llvm.bswap.i16(i16 %neg20) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr24, i16 %19) #6, !srcloc !58
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 8
  %add.ptr27 = getelementptr i8, ptr %21, i32 1800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27, i16 768) #6, !srcloc !58
  %22 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hw, align 8
  %add.ptr30 = getelementptr i8, ptr %23, i32 1752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr30, i16 192) #6, !srcloc !58
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 8
  %add.ptr33 = getelementptr i8, ptr %25, i32 1760
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr33, i16 0) #6, !srcloc !58
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 8
  %add.ptr36 = getelementptr i8, ptr %27, i32 1768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr36, i16 0) #6, !srcloc !58
  %28 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw, align 8
  %add.ptr39 = getelementptr i8, ptr %29, i32 1728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr39, i16 256) #6, !srcloc !58
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  %add.ptr42 = getelementptr i8, ptr %31, i32 1792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr42, i16 -1) #6, !srcloc !58
  %32 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hw, align 8
  %add.ptr45 = getelementptr i8, ptr %33, i32 1784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr45, i16 -1) #6, !srcloc !58
  %34 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hw, align 8
  %add.ptr48 = getelementptr i8, ptr %35, i32 1776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr48, i16 -1) #6, !srcloc !58
  %36 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw, align 8
  %add.ptr51 = getelementptr i8, ptr %37, i32 1800
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr51, i16 768) #6, !srcloc !58
  %mc = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 22
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %tb.0146 = phi ptr [ %mc, %if.end ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %i.0145 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %n = getelementptr inbounds %struct.s_fpmc, ptr %tb.0146, i32 0, i32 1
  %38 = ptrtoint ptr %n to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %n, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool55.not = icmp eq i8 %39, 0
  br i1 %tobool55.not, label %for.body.for.inc_crit_edge, label %for.body.while.cond_crit_edge

for.body.while.cond_crit_edge:                    ; preds = %for.body
  br label %while.cond

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %for.body.while.cond_crit_edge
  %k.0 = phi i32 [ %dec, %while.cond.while.cond_crit_edge ], [ 10, %for.body.while.cond_crit_edge ]
  %40 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hw, align 8
  %add.ptr59 = getelementptr i8, ptr %41, i32 1736
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr59) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %.mask = and i16 %42, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %tobool61.not = icmp ne i16 %.mask, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0)
  %tobool62.not = icmp eq i32 %k.0, 0
  %or.cond = select i1 %tobool61.not, i1 true, i1 %tobool62.not
  %dec = add nsw i32 %k.0, -1
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br i1 %tobool62.not, label %do.end, label %while.end.if.end66_crit_edge

while.end.if.end66_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 131, ptr noundef nonnull @cam_warning) #9
  br label %if.end66

if.end66:                                         ; preds = %do.end, %while.end.if.end66_crit_edge
  %43 = ptrtoint ptr %tb.0146 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %tb.0146, align 1
  %conv69 = zext i8 %44 to i16
  %shl70 = shl nuw i16 %conv69, 8
  %arrayidx73 = getelementptr [6 x i8], ptr %tb.0146, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %46 to i16
  %add75 = or i16 %shl70, %conv74
  %47 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw, align 8
  %add.ptr79 = getelementptr i8, ptr %48, i32 1752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %49 = tail call i16 @llvm.bswap.i16(i16 %add75) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr79, i16 %49) #6, !srcloc !58
  %arrayidx82 = getelementptr [6 x i8], ptr %tb.0146, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx82, align 1
  %conv83 = zext i8 %51 to i16
  %shl84 = shl nuw i16 %conv83, 8
  %arrayidx87 = getelementptr [6 x i8], ptr %tb.0146, i32 0, i32 3
  %52 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx87, align 1
  %conv88 = zext i8 %53 to i16
  %add89 = or i16 %shl84, %conv88
  %54 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw, align 8
  %add.ptr93 = getelementptr i8, ptr %55, i32 1760
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %56 = tail call i16 @llvm.bswap.i16(i16 %add89) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr93, i16 %56) #6, !srcloc !58
  %arrayidx96 = getelementptr [6 x i8], ptr %tb.0146, i32 0, i32 4
  %57 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx96, align 1
  %conv97 = zext i8 %58 to i16
  %shl98 = shl nuw i16 %conv97, 8
  %arrayidx101 = getelementptr [6 x i8], ptr %tb.0146, i32 0, i32 5
  %59 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %60 to i16
  %add103 = or i16 %shl98, %conv102
  %61 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hw, align 8
  %add.ptr107 = getelementptr i8, ptr %62, i32 1768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %63 = tail call i16 @llvm.bswap.i16(i16 %add103) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr107, i16 %63) #6, !srcloc !58
  %64 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hw, align 8
  %add.ptr110 = getelementptr i8, ptr %65, i32 1728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr110, i16 256) #6, !srcloc !58
  br label %for.inc

for.inc:                                          ; preds = %if.end66, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0145, 1
  %incdec.ptr = getelementptr %struct.s_fpmc, ptr %tb.0146, i32 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mac_set_rx_mode(ptr nocapture noundef %smc, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %mode, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb8
    i32 4, label %sw.bb15
    i32 5, label %sw.bb22
    i32 6, label %sw.bb38
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_prom = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 5
  %1 = ptrtoint ptr %rx_prom to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %rx_prom, align 2
  %3 = or i16 %2, 2
  store i16 %3, ptr %rx_prom, align 2
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_prom5 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 5
  %4 = ptrtoint ptr %rx_prom5 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %rx_prom5, align 2
  %6 = and i16 %5, -3
  store i16 %6, ptr %rx_prom5, align 2
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_prom11 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 5
  %7 = ptrtoint ptr %rx_prom11 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %rx_prom11, align 2
  %9 = or i16 %8, 1
  store i16 %9, ptr %rx_prom11, align 2
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %rx_prom18 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 5
  %10 = ptrtoint ptr %rx_prom18 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %rx_prom18, align 2
  %12 = and i16 %11, -2
  store i16 %12, ptr %rx_prom18, align 2
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nsa_mode = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 4
  %13 = ptrtoint ptr %nsa_mode to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %nsa_mode, align 4
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nsa_mode41 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 4
  %14 = ptrtoint ptr %nsa_mode41 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 512, ptr %nsa_mode41, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb38, %sw.bb22, %sw.bb15, %sw.bb8, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %rx_prom58 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 5
  %15 = ptrtoint ptr %rx_prom58 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %rx_prom58, align 2
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not = icmp eq i16 %17, 0
  br i1 %tobool.not, label %if.else, label %sw.epilog.if.end87_crit_edge

sw.epilog.if.end87_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %nsa_mode83 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 4
  %18 = ptrtoint ptr %nsa_mode83 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nsa_mode83, align 4
  %and68 = shl i16 %16, 3
  %20 = and i16 %and68, 16
  %21 = or i16 %20, %19
  br label %if.end87

if.end87:                                         ; preds = %if.else, %sw.epilog.if.end87_crit_edge
  %.sink = phi i16 [ 1536, %sw.epilog.if.end87_crit_edge ], [ %21, %if.else ]
  %rx_mode79 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 3
  %22 = ptrtoint ptr %rx_mode79 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %.sink, ptr %rx_mode79, align 2
  %hw56 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %23 = ptrtoint ptr %hw56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hw56, align 8
  %add.ptr = getelementptr i8, ptr %24, i32 1088
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %26 = and i16 %25, -12296
  %27 = tail call i16 @llvm.bswap.i16(i16 %26)
  %rx_mode93 = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 3
  %28 = ptrtoint ptr %rx_mode93 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %rx_mode93, align 2
  %or95122 = or i16 %27, %29
  %30 = ptrtoint ptr %hw56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw56, align 8
  %add.ptr99 = getelementptr i8, ptr %31, i32 1088
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %32 = tail call i16 @llvm.bswap.i16(i16 %or95122) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr99, i16 %32) #6, !srcloc !58
  tail call void @mac_update_multicast(ptr noundef %smc)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtm_irq(ptr nocapture noundef readonly %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 256) #6, !srcloc !58
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr3 = getelementptr i8, ptr %3, i32 328
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr3) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %5 = and i16 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 8
  %add.ptr6 = getelementptr i8, ptr %7, i32 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr6, i16 1280) #6, !srcloc !58
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %add.ptr9 = getelementptr i8, ptr %9, i32 328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9, i16 1024) #6, !srcloc !58
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtm_set_timer(ptr nocapture noundef readonly %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fddiPATHT_Rmode = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 3
  %0 = ptrtoint ptr %fddiPATHT_Rmode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fddiPATHT_Rmode, align 4
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 320
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #6, !srcloc !62
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @formac_reinit_tx(ptr noundef %smc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_s_size = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1, i32 25, i32 13, i32 7
  %0 = ptrtoint ptr %tx_s_size to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tx_s_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fddiPATHSbaPayload = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 13, i32 38, i32 0, i32 1
  %2 = ptrtoint ptr %fddiPATHSbaPayload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fddiPATHSbaPayload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @init_mac(ptr noundef %smc, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_restart_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwt_quick_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwt_wait_time(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mac_drv_repair_descr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @llc_recover_tx(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @copy_tx_mac(ptr nocapture noundef readonly %smc, i32 noundef %td, ptr nocapture noundef readonly %mac, i32 noundef %off, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.s_smc, ptr %smc, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %k.0 = phi i32 [ 10000, %entry ], [ %dec, %while.cond.while.cond_crit_edge ]
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 1092
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %3 = and i16 %2, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0)
  %tobool1.not = icmp eq i32 %k.0, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  %dec = add nsw i32 %k.0, -1
  br i1 %or.cond, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br i1 %tobool1.not, label %do.end, label %while.end.if.end_crit_edge

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 130, ptr noundef nonnull @write_mdr_warning) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %while.end.if.end_crit_edge
  %conv4 = trunc i32 %off to i16
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %add.ptr7 = getelementptr i8, ptr %5, i32 1268
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv4) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 %6) #6, !srcloc !58
  %add = add i32 %len, 3
  %div = sdiv i32 %add, 4
  br label %for.cond

for.cond:                                         ; preds = %write_mdr.exit, %if.end
  %p.0 = phi ptr [ %mac, %if.end ], [ %incdec.ptr, %write_mdr.exit ]
  %i.0 = phi i32 [ %div, %if.end ], [ %dec15, %write_mdr.exit ]
  %7 = zext i32 %i.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %i.0, label %for.cond.if.end14_crit_edge [
    i32 0, label %for.end
    i32 1, label %if.then10
  ]

for.cond.if.end14_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then10:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 8
  %add.ptr13 = getelementptr i8, ptr %9, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13, i16 12288) #6, !srcloc !58
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %for.cond.if.end14_crit_edge
  %10 = ptrtoint ptr %p.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p.0, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end14
  %k.0.i = phi i32 [ 10000, %if.end14 ], [ %dec.i, %while.cond.i.while.cond.i_crit_edge ]
  %12 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hw, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 1092
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %15 = and i16 %14, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i = icmp eq i16 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0.i)
  %tobool1.not.i = icmp eq i32 %k.0.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  %dec.i = add nsw i32 %k.0.i, -1
  br i1 %or.cond.i, label %while.end.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.end.i:                                      ; preds = %while.cond.i
  %16 = tail call i32 @llvm.bswap.i32(i32 %11)
  br i1 %tobool1.not.i, label %do.end.i, label %while.end.i.write_mdr.exit_crit_edge

while.end.i.write_mdr.exit_crit_edge:             ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_mdr.exit

do.end.i:                                         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 130, ptr noundef nonnull @write_mdr_warning) #9
  br label %write_mdr.exit

write_mdr.exit:                                   ; preds = %do.end.i, %while.end.i.write_mdr.exit_crit_edge
  %shr.i = lshr i32 %16, 16
  %conv4.i = trunc i32 %shr.i to i16
  %17 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw, align 8
  %add.ptr7.i = getelementptr i8, ptr %18, i32 1272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv4.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i, i16 %19) #6, !srcloc !58
  %20 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hw, align 8
  %add.ptr11.i = getelementptr i8, ptr %21, i32 1276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %22 = lshr i32 %11, 16
  %23 = trunc i32 %22 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i, i16 %23) #6, !srcloc !58
  %incdec.ptr = getelementptr i32, ptr %p.0, i32 1
  %dec15 = add i32 %i.0, -1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw, align 8
  %add.ptr18 = getelementptr i8, ptr %25, i32 1028
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr18, i16 12288) #6, !srcloc !58
  br label %while.cond.i36

while.cond.i36:                                   ; preds = %while.cond.i36.while.cond.i36_crit_edge, %for.end
  %k.0.i30 = phi i32 [ 10000, %for.end ], [ %dec.i35, %while.cond.i36.while.cond.i36_crit_edge ]
  %26 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw, align 8
  %add.ptr.i31 = getelementptr i8, ptr %27, i32 1092
  %28 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i31) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %29 = and i16 %28, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i32 = icmp eq i16 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0.i30)
  %tobool1.not.i33 = icmp eq i32 %k.0.i30, 0
  %or.cond.i34 = select i1 %tobool.not.i32, i1 true, i1 %tobool1.not.i33
  %dec.i35 = add nsw i32 %k.0.i30, -1
  br i1 %or.cond.i34, label %while.end.i37, label %while.cond.i36.while.cond.i36_crit_edge

while.cond.i36.while.cond.i36_crit_edge:          ; preds = %while.cond.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i36

while.end.i37:                                    ; preds = %while.cond.i36
  br i1 %tobool1.not.i33, label %do.end.i39, label %while.end.i37.write_mdr.exit45_crit_edge

while.end.i37.write_mdr.exit45_crit_edge:         ; preds = %while.end.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %write_mdr.exit45

do.end.i39:                                       ; preds = %while.end.i37
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 130, ptr noundef nonnull @write_mdr_warning) #9
  br label %write_mdr.exit45

write_mdr.exit45:                                 ; preds = %do.end.i39, %while.end.i37.write_mdr.exit45_crit_edge
  %shr.i40 = lshr i32 %td, 16
  %conv4.i41 = trunc i32 %shr.i40 to i16
  %30 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hw, align 8
  %add.ptr7.i42 = getelementptr i8, ptr %31, i32 1272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %32 = tail call i16 @llvm.bswap.i16(i16 %conv4.i41) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i42, i16 %32) #6, !srcloc !58
  %conv8.i43 = trunc i32 %td to i16
  %33 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hw, align 8
  %add.ptr11.i44 = getelementptr i8, ptr %34, i32 1276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv8.i43) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11.i44, i16 %35) #6, !srcloc !58
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !43, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @fddi_broadcast, !1, !"fddi_broadcast", i1 false, i1 false}
!1 = !{!"../drivers/net/fddi/skfp/fplustm.c", i32 65, i32 24}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/fddi/skfp/fplustm.c", i32 786, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mac2_irq._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @mac2_irq._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/fddi/skfp/fplustm.c", i32 810, i32 3}
!11 = !{ptr @mac3_irq._entry, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @mac3_irq._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mac3_irq._entry.6, !15, !"_entry", i1 false, i1 false}
!15 = !{!"../drivers/net/fddi/skfp/fplustm.c", i32 813, i32 3}
!16 = !{ptr @mac3_irq._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/fddi/skfp/fplustm.c", i32 1228, i32 4}
!20 = !{ptr @mac_update_multicast._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mac_update_multicast._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/fddi/skfp/fplustm.c", i32 173, i32 2}
!24 = !{ptr @init_ram._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @init_ram._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @write_mdr_warning, !27, !"write_mdr_warning", i1 false, i1 false}
!27 = !{!"../drivers/net/fddi/skfp/fplustm.c", i32 45, i32 13}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/fddi/skfp/fplustm.c", i32 139, i32 2}
!30 = !{ptr @write_mdr._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @write_mdr._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/fddi/skfp/fplustm.c", i32 399, i32 2}
!34 = !{ptr @copy_tx_mac._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @copy_tx_mac._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = distinct !{null, !37, !"null_addr", i1 false, i1 false}
!37 = !{!"../drivers/net/fddi/skfp/fplustm.c", i32 66, i32 31}
!38 = !{ptr @dbeacon_multi, !39, !"dbeacon_multi", i1 false, i1 false}
!39 = !{!"../drivers/net/fddi/skfp/fplustm.c", i32 67, i32 31}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/fddi/skfp/fplustm.c", i32 451, i32 2}
!42 = !{ptr @directed_beacon._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @directed_beacon._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @cam_warning, !45, !"cam_warning", i1 false, i1 false}
!45 = !{!"../drivers/net/fddi/skfp/fplustm.c", i32 46, i32 13}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 726380}
!56 = !{i64 2148914614}
!57 = !{i64 2148916031}
!58 = !{i64 726180}
!59 = !{i64 2148915607}
!60 = !{i64 726603}
!61 = !{i64 2148916581}
!62 = !{i64 726800}
