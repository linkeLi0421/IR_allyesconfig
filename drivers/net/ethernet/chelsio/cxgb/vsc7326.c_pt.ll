; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/chelsio/cxgb/vsc7326.c_pt.bc'
source_filename = "../drivers/net/ethernet/chelsio/cxgb/vsc7326.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.gmac = type { i32, ptr, ptr }
%struct.cmac_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.init_table = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cmac = type { %struct.cmac_statistics, ptr, ptr, ptr }
%struct.cmac_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct._cmac_instance = type { i32, i32 }
%struct.adapter = type { ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.adapter_params, ptr, ptr, ptr, %struct.napi_struct, [4 x %struct.port_info], %struct.delayed_work, %struct.timer_list, %struct.spinlock, %struct.spinlock, %struct.spinlock, [80 x i8], %struct.spinlock, i32, i32, i32, [72 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.mc5_params, %struct.tp_params, %struct.chelsio_pci_params, ptr, [8 x i16], i32, i32, i16, i8, i8, i8 }
%struct.sge_params = type { [2 x i32], [2 x i32], i32, i32, i32, i32, i32, i32, i32 }
%struct.mc5_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.chelsio_pci_params = type { i16, i8, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.port_info = type { ptr, ptr, ptr, %struct.link_config }
%struct.link_config = type { i32, i32, i16, i16, i8, i8, i8, i8, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.100, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.100 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }

@t1_vsc7326_ops = dso_local constant { %struct.gmac, [20 x i8] } { %struct.gmac { i32 15, ptr @vsc7326_mac_create, ptr @vsc7326_mac_reset }, [20 x i8] zeroinitializer }, align 32
@vsc7326_ops = internal constant { %struct.cmac_ops, [60 x i8] } { %struct.cmac_ops { ptr @mac_destroy, ptr @mac_reset, ptr @mac_intr_enable, ptr @mac_intr_disable, ptr @mac_intr_clear, ptr @mac_intr_handler, ptr @mac_enable, ptr @mac_disable, ptr null, ptr null, ptr @mac_set_mtu, ptr @mac_set_rx_mode, ptr @mac_set_speed_duplex_fc, ptr null, ptr @mac_update_statistics, ptr @mac_get_address, ptr @mac_set_address }, [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vsc7326_portinit = internal global { [4 x [22 x %struct.init_table]], [160 x i8] } { [4 x [22 x %struct.init_table]] [[22 x %struct.init_table] [%struct.init_table { i32 8236, i32 1264 }, %struct.init_table { i32 8242, i32 471297 }, %struct.init_table { i32 16384, i32 34 }, %struct.init_table { i32 16896, i32 34 }, %struct.init_table { i32 16416, i32 4128768 }, %struct.init_table { i32 16928, i32 1179648 }, %struct.init_table { i32 16512, i32 122029911 }, %struct.init_table { i32 17024, i32 27271167 }, %struct.init_table { i32 16544, i32 0 }, %struct.init_table { i32 17056, i32 0 }, %struct.init_table { i32 17984, i32 196607 }, %struct.init_table { i32 17472, i32 196607 }, %struct.init_table { i32 16384, i32 32 }, %struct.init_table { i32 16896, i32 32 }, %struct.init_table { i32 8196, i32 10000 }, %struct.init_table { i32 8220, i32 2 }, %struct.init_table { i32 8202, i32 2660 }, %struct.init_table { i32 8234, i32 16 }, %struct.init_table { i32 8212, i32 62563184 }, %struct.init_table { i32 8214, i32 131 }, %struct.init_table { i32 8214, i32 130 }, %struct.init_table { i32 8192, i32 33564063 }], [22 x %struct.init_table] [%struct.init_table { i32 8748, i32 1264 }, %struct.init_table { i32 8754, i32 471297 }, %struct.init_table { i32 16386, i32 34 }, %struct.init_table { i32 16898, i32 34 }, %struct.init_table { i32 16418, i32 8257599 }, %struct.init_table { i32 16930, i32 2359314 }, %struct.init_table { i32 16514, i32 122029911 }, %struct.init_table { i32 17026, i32 27271167 }, %struct.init_table { i32 16546, i32 0 }, %struct.init_table { i32 17058, i32 0 }, %struct.init_table { i32 17986, i32 196607 }, %struct.init_table { i32 17474, i32 196607 }, %struct.init_table { i32 16386, i32 32 }, %struct.init_table { i32 16898, i32 32 }, %struct.init_table { i32 8708, i32 10000 }, %struct.init_table { i32 8732, i32 2 }, %struct.init_table { i32 8714, i32 2660 }, %struct.init_table { i32 8746, i32 16 }, %struct.init_table { i32 8724, i32 62563184 }, %struct.init_table { i32 8726, i32 131 }, %struct.init_table { i32 8726, i32 130 }, %struct.init_table { i32 8704, i32 33564063 }], [22 x %struct.init_table] [%struct.init_table { i32 9260, i32 1264 }, %struct.init_table { i32 9266, i32 471297 }, %struct.init_table { i32 16388, i32 34 }, %struct.init_table { i32 16900, i32 34 }, %struct.init_table { i32 16420, i32 12386430 }, %struct.init_table { i32 16932, i32 3538980 }, %struct.init_table { i32 16516, i32 122029911 }, %struct.init_table { i32 17028, i32 27271167 }, %struct.init_table { i32 16548, i32 0 }, %struct.init_table { i32 17060, i32 0 }, %struct.init_table { i32 17988, i32 196607 }, %struct.init_table { i32 17476, i32 196607 }, %struct.init_table { i32 16388, i32 32 }, %struct.init_table { i32 16900, i32 32 }, %struct.init_table { i32 9220, i32 10000 }, %struct.init_table { i32 9244, i32 2 }, %struct.init_table { i32 9226, i32 2660 }, %struct.init_table { i32 9258, i32 16 }, %struct.init_table { i32 9236, i32 62563184 }, %struct.init_table { i32 9238, i32 131 }, %struct.init_table { i32 9238, i32 130 }, %struct.init_table { i32 9216, i32 33564063 }], [22 x %struct.init_table] [%struct.init_table { i32 9772, i32 1264 }, %struct.init_table { i32 9778, i32 471297 }, %struct.init_table { i32 16390, i32 34 }, %struct.init_table { i32 16902, i32 34 }, %struct.init_table { i32 16422, i32 16515261 }, %struct.init_table { i32 16934, i32 4718646 }, %struct.init_table { i32 16518, i32 122029911 }, %struct.init_table { i32 17030, i32 27271167 }, %struct.init_table { i32 16550, i32 0 }, %struct.init_table { i32 17062, i32 0 }, %struct.init_table { i32 17990, i32 196607 }, %struct.init_table { i32 17478, i32 196607 }, %struct.init_table { i32 16390, i32 32 }, %struct.init_table { i32 16902, i32 32 }, %struct.init_table { i32 9732, i32 10000 }, %struct.init_table { i32 9756, i32 2 }, %struct.init_table { i32 9738, i32 2660 }, %struct.init_table { i32 9770, i32 16 }, %struct.init_table { i32 9748, i32 62563184 }, %struct.init_table { i32 9750, i32 131 }, %struct.init_table { i32 9750, i32 130 }, %struct.init_table { i32 9728, i32 33564063 }]], [160 x i8] zeroinitializer }, align 32
@run_table._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013cxgb: sleep %d us\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"run_table\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/net/ethernet/chelsio/cxgb/vsc7326.c\00", [52 x i8] zeroinitializer }, align 32
@run_table._entry_ptr = internal global ptr @run_table._entry, section ".printk_index", align 4
@vsc_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013cxgb: Invalid tpi read from MAC, breaking loop.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vsc_read\00", [23 x i8] zeroinitializer }, align 32
@vsc_read._entry_ptr = internal global ptr @vsc_read._entry, section ".printk_index", align 4
@vsc7326_reset = internal global { [15 x %struct.init_table], [40 x i8] } { [15 x %struct.init_table] [%struct.init_table { i32 65038, i32 0 }, %struct.init_table { i32 58390, i32 32 }, %struct.init_table { i32 65074, i32 330752 }, %struct.init_table { i32 65074, i32 330752 }, %struct.init_table { i32 58380, i32 12052 }, %struct.init_table { i32 40960, i32 263177 }, %struct.init_table { i32 41094, i32 524288 }, %struct.init_table { i32 40968, i32 134742020 }, %struct.init_table { i32 40964, i32 68227076 }, %struct.init_table { i32 40970, i32 -2147476988 }, %struct.init_table { i32 40966, i32 33619968 }, %struct.init_table { i32 16478, i32 0 }, %struct.init_table { i32 16990, i32 0 }, %struct.init_table { i32 16414, i32 169869329 }, %struct.init_table { i32 16926, i32 -1610547055 }], [40 x i8] zeroinitializer }, align 32
@bist_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013cxgb: No bist address: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bist_wr\00", [24 x i8] zeroinitializer }, align 32
@bist_wr._entry_ptr = internal global ptr @bist_wr._entry, section ".printk_index", align 4
@bist_wr._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013cxgb: Suspicious write out of range value: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@bist_wr._entry_ptr.9 = internal global ptr @bist_wr._entry.7, section ".printk_index", align 4
@bist_wr._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013cxgb: Still in bist write: 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@bist_wr._entry_ptr.12 = internal global ptr @bist_wr._entry.10, section ".printk_index", align 4
@bist_wr._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013cxgb: bist write error: 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@bist_wr._entry_ptr.15 = internal global ptr @bist_wr._entry.13, section ".printk_index", align 4
@check_bist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013cxgb: Result: 0x%x  BIST error in ram %d, column: 0x%04x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"check_bist\00", [21 x i8] zeroinitializer }, align 32
@check_bist._entry_ptr = internal global ptr @check_bist._entry, section ".printk_index", align 4
@bist_rd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.18, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bist_rd\00", [24 x i8] zeroinitializer }, align 32
@bist_rd._entry_ptr = internal global ptr @bist_rd._entry, section ".printk_index", align 4
@bist_rd._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013cxgb: Still in bist read: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@bist_rd._entry_ptr.21 = internal global ptr @bist_rd._entry.19, section ".printk_index", align 4
@bist_rd._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013cxgb: bist read error: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@bist_rd._entry_ptr.24 = internal global ptr @bist_rd._entry.22, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 13, i64 14]
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"t1_vsc7326_ops\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 722, i32 19 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"vsc7326_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 665, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"vsc7326_portinit\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 113, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 227, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 50, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"vsc7326_reset\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 95, i32 26 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 270, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 273, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 283, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 285, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 308, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 243, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 253, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private constant [47 x i8] c"../drivers/net/ethernet/chelsio/cxgb/vsc7326.c\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 255, i32 3 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @bist_rd._entry, ptr @bist_rd._entry.19, ptr @bist_rd._entry.22, ptr @bist_rd._entry_ptr, ptr @bist_rd._entry_ptr.21, ptr @bist_rd._entry_ptr.24, ptr @bist_wr._entry, ptr @bist_wr._entry.10, ptr @bist_wr._entry.13, ptr @bist_wr._entry.7, ptr @bist_wr._entry_ptr, ptr @bist_wr._entry_ptr.12, ptr @bist_wr._entry_ptr.15, ptr @bist_wr._entry_ptr.9, ptr @check_bist._entry, ptr @check_bist._entry_ptr, ptr @run_table._entry, ptr @run_table._entry_ptr, ptr @vsc_read._entry, ptr @vsc_read._entry_ptr, ptr @t1_vsc7326_ops, ptr @vsc7326_ops, ptr @vsc7326_portinit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vsc7326_reset, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t1_vsc7326_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc7326_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc7326_portinit to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @run_table._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc7326_reset to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bist_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bist_wr._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bist_wr._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bist_wr._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_bist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bist_rd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bist_rd._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bist_rd._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vsc7326_mac_create(ptr noundef %adapter, i32 noundef %index) #0 align 64 {
entry:
  %vhi = alloca i32, align 4
  %vlo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 312) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.cmac, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @vsc7326_ops, ptr %ops, align 4
  %add.ptr = getelementptr %struct.cmac, ptr %call7.i.i, i32 1
  %instance = getelementptr inbounds %struct.cmac, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr, ptr %instance, align 8
  %adapter1 = getelementptr inbounds %struct.cmac, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %adapter1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %adapter, ptr %adapter1, align 8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %index, ptr %add.ptr, align 8
  %ticks = getelementptr inbounds %struct._cmac_instance, ptr %add.ptr, i32 0, i32 1
  %5 = ptrtoint ptr %ticks to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ticks, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %do.body.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhi) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vlo) #6
  %6 = ptrtoint ptr %vlo to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %vlo, align 4
  %7 = ptrtoint ptr %vhi to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %vhi, align 4
  %call5 = call i32 @t1_tpi_read(ptr noundef %adapter, i32 noundef 262140, ptr noundef nonnull %vlo) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748) #6
  %call6 = call i32 @t1_tpi_read(ptr noundef %adapter, i32 noundef 262136, ptr noundef nonnull %vhi) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %9(i32 noundef 1073740) #6
  %10 = ptrtoint ptr %vhi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vhi, align 4
  %12 = ptrtoint ptr %vlo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vlo, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vlo) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhi) #6
  %inc = add nuw nsw i32 %i.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %i.0)
  %cmp = icmp ult i32 %i.0, 9999
  %shl = shl i32 %11, 16
  %or = or i32 %shl, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or)
  %cmp7 = icmp eq i32 %or, -1
  %or.cond = select i1 %cmp, i1 %cmp7, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc7326_mac_reset(ptr noundef %adapter) #0 align 64 {
entry:
  %val.i3 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %result.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i) #6
  %1 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65535, ptr %result.i, align 4
  %call.i = call i32 @t1_tpi_read(ptr noundef %adapter, i32 noundef 1048600, ptr noundef nonnull %val.i) #6
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val.i, align 4
  %and.i = and i32 %3, -2
  store i32 %and.i, ptr %val.i, align 4
  %call1.i = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %and.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %4(i32 noundef 429496) #6
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %or2.i = or i32 %6, 2049
  store i32 %or2.i, ptr %val.i, align 4
  %call3.i = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 1048600, i32 noundef %or2.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %7(i32 noundef 214748000) #6
  %mac_lock.i.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i.i) #6
  %call.i.i = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 260116, i32 noundef 1) #6
  %call3.i.i = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 260112, i32 noundef 32768) #6
  call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i.i) #6
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %8(i32 noundef 214748000) #6
  call fastcc void @vsc_read(ptr noundef %adapter, i32 noundef 65028, ptr noundef nonnull %result.i) #6
  %9 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %result.i, align 4
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %vsc7326_full_reset.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

vsc7326_full_reset.exit:                          ; preds = %do.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i3) #6
  %11 = ptrtoint ptr %val.i3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %val.i3, align 4
  call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i.i) #6
  %call.i.i5 = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 260132, i32 noundef 5) #6
  %call3.i.i6 = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 260128, i32 noundef 0) #6
  call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i.i) #6
  call fastcc void @vsc_read(ptr noundef %adapter, i32 noundef 65032, ptr noundef nonnull %val.i3) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vsc7326_full_reset.exit
  %port.052.i = phi i32 [ 0, %vsc7326_full_reset.exit ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %and.i7 = shl i32 %port.052.i, 11
  %or1.i = or i32 %and.i7, 32856
  call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i.i) #6
  %add.i.i = or i32 %and.i7, 32860
  %call.i2.i = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef %add.i.i, i32 noundef 0) #6
  %call3.i3.i = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef %or1.i, i32 noundef 0) #6
  call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i.i) #6
  %inc.i = add nuw nsw i32 %port.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %12(i32 noundef 64424400) #6
  call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i.i) #6
  %call.i5.i = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 163844, i32 noundef 1033) #6
  %call3.i6.i = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 163840, i32 noundef 4) #6
  call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %13(i32 noundef 64424400) #6
  call fastcc void @bist_wr(ptr noundef %adapter, i32 noundef 13, i32 noundef 0, i32 noundef 2) #6
  call fastcc void @bist_wr(ptr noundef %adapter, i32 noundef 13, i32 noundef 1, i32 noundef 1) #6
  call fastcc void @bist_wr(ptr noundef %adapter, i32 noundef 14, i32 noundef 0, i32 noundef 2) #6
  call fastcc void @bist_wr(ptr noundef %adapter, i32 noundef 14, i32 noundef 1, i32 noundef 1) #6
  call fastcc void @bist_wr(ptr noundef %adapter, i32 noundef 20, i32 noundef 0, i32 noundef 2) #6
  call fastcc void @bist_wr(ptr noundef %adapter, i32 noundef 20, i32 noundef 1, i32 noundef 1) #6
  call fastcc void @bist_wr(ptr noundef %adapter, i32 noundef 21, i32 noundef 0, i32 noundef 2) #6
  call fastcc void @bist_wr(ptr noundef %adapter, i32 noundef 21, i32 noundef 1, i32 noundef 1) #6
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.end.i
  %__ms.053.i = phi i32 [ 200, %for.end.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.053.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %14(i32 noundef 214748000) #6
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %call.i7.i = call fastcc i32 @bist_rd(ptr noundef %adapter, i32 noundef 13, i32 noundef 2) #6
  %call1.i.i = call fastcc i32 @bist_rd(ptr noundef %adapter, i32 noundef 13, i32 noundef 14) #6
  %call2.i.i = call fastcc i32 @bist_rd(ptr noundef %adapter, i32 noundef 13, i32 noundef 13) #6
  %and.i.i = and i32 %call.i7.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.not.i.i, label %while.end.i.check_bist.exit.i_crit_edge, label %do.end.i.i

while.end.i.check_bist.exit.i_crit_edge:          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_bist.exit.i

do.end.i.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i8.i = shl i32 %call1.i.i, 8
  %add.i9.i = add i32 %shl.i8.i, %call2.i.i
  %call3.i10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call.i7.i, i32 noundef 13, i32 noundef %add.i9.i) #10
  br label %check_bist.exit.i

check_bist.exit.i:                                ; preds = %do.end.i.i, %while.end.i.check_bist.exit.i_crit_edge
  %call.i11.i = call fastcc i32 @bist_rd(ptr noundef %adapter, i32 noundef 14, i32 noundef 2) #6
  %call1.i12.i = call fastcc i32 @bist_rd(ptr noundef %adapter, i32 noundef 14, i32 noundef 14) #6
  %call2.i13.i = call fastcc i32 @bist_rd(ptr noundef %adapter, i32 noundef 14, i32 noundef 13) #6
  %and.i14.i = and i32 %call.i11.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i14.i)
  %cmp.not.i15.i = icmp eq i32 %and.i14.i, 3
  br i1 %cmp.not.i15.i, label %check_bist.exit.i.check_bist.exit20.i_crit_edge, label %do.end.i19.i

check_bist.exit.i.check_bist.exit20.i_crit_edge:  ; preds = %check_bist.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_bist.exit20.i

do.end.i19.i:                                     ; preds = %check_bist.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i16.i = shl i32 %call1.i12.i, 8
  %add.i17.i = add i32 %shl.i16.i, %call2.i13.i
  %call3.i18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call.i11.i, i32 noundef 14, i32 noundef %add.i17.i) #10
  br label %check_bist.exit20.i

check_bist.exit20.i:                              ; preds = %do.end.i19.i, %check_bist.exit.i.check_bist.exit20.i_crit_edge
  %call.i21.i = call fastcc i32 @bist_rd(ptr noundef %adapter, i32 noundef 20, i32 noundef 2) #6
  %call1.i22.i = call fastcc i32 @bist_rd(ptr noundef %adapter, i32 noundef 20, i32 noundef 14) #6
  %call2.i23.i = call fastcc i32 @bist_rd(ptr noundef %adapter, i32 noundef 20, i32 noundef 13) #6
  %and.i24.i = and i32 %call.i21.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i24.i)
  %cmp.not.i25.i = icmp eq i32 %and.i24.i, 3
  br i1 %cmp.not.i25.i, label %check_bist.exit20.i.check_bist.exit30.i_crit_edge, label %do.end.i29.i

check_bist.exit20.i.check_bist.exit30.i_crit_edge: ; preds = %check_bist.exit20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_bist.exit30.i

do.end.i29.i:                                     ; preds = %check_bist.exit20.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i26.i = shl i32 %call1.i22.i, 8
  %add.i27.i = add i32 %shl.i26.i, %call2.i23.i
  %call3.i28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call.i21.i, i32 noundef 20, i32 noundef %add.i27.i) #10
  br label %check_bist.exit30.i

check_bist.exit30.i:                              ; preds = %do.end.i29.i, %check_bist.exit20.i.check_bist.exit30.i_crit_edge
  %call.i31.i = call fastcc i32 @bist_rd(ptr noundef %adapter, i32 noundef 21, i32 noundef 2) #6
  %call1.i32.i = call fastcc i32 @bist_rd(ptr noundef %adapter, i32 noundef 21, i32 noundef 14) #6
  %call2.i33.i = call fastcc i32 @bist_rd(ptr noundef %adapter, i32 noundef 21, i32 noundef 13) #6
  %and.i34.i = and i32 %call.i31.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i34.i)
  %cmp.not.i35.i = icmp eq i32 %and.i34.i, 3
  br i1 %cmp.not.i35.i, label %check_bist.exit30.i.check_bist.exit40.i_crit_edge, label %do.end.i39.i

check_bist.exit30.i.check_bist.exit40.i_crit_edge: ; preds = %check_bist.exit30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %check_bist.exit40.i

do.end.i39.i:                                     ; preds = %check_bist.exit30.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i36.i = shl i32 %call1.i32.i, 8
  %add.i37.i = add i32 %shl.i36.i, %call2.i33.i
  %call3.i38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call.i31.i, i32 noundef 21, i32 noundef %add.i37.i) #10
  br label %check_bist.exit40.i

check_bist.exit40.i:                              ; preds = %do.end.i39.i, %check_bist.exit30.i.check_bist.exit40.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 21474800) #6
  call fastcc void @bist_wr(ptr noundef %adapter, i32 noundef 13, i32 noundef 0, i32 noundef 0) #6
  call fastcc void @bist_wr(ptr noundef %adapter, i32 noundef 14, i32 noundef 0, i32 noundef 0) #6
  call fastcc void @bist_wr(ptr noundef %adapter, i32 noundef 20, i32 noundef 0, i32 noundef 0) #6
  call fastcc void @bist_wr(ptr noundef %adapter, i32 noundef 21, i32 noundef 0, i32 noundef 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %16(i32 noundef 64424400) #6
  call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i.i) #6
  %call.i42.i = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 163844, i32 noundef 1024) #6
  %call3.i43.i = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 163840, i32 noundef 24580) #6
  call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 64424400) #6
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.body15.i.for.body15.i_crit_edge, %check_bist.exit40.i
  %port.154.i = phi i32 [ 0, %check_bist.exit40.i ], [ %inc21.i, %for.body15.i.for.body15.i_crit_edge ]
  %and16.i = shl i32 %port.154.i, 11
  %or19.i = or i32 %and16.i, 32856
  call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i.i) #6
  %add.i46.i = or i32 %and16.i, 32860
  %call.i47.i = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef %add.i46.i, i32 noundef 1) #6
  %call3.i48.i = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef %or19.i, i32 noundef 0) #6
  call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i.i) #6
  %inc21.i = add nuw nsw i32 %port.154.i, 1
  %exitcond56.not.i = icmp eq i32 %inc21.i, 12
  br i1 %exitcond56.not.i, label %run_bist_all.exit, label %for.body15.i.for.body15.i_crit_edge

for.body15.i.for.body15.i_crit_edge:              ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15.i

run_bist_all.exit:                                ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 64424400) #6
  call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i.i) #6
  %call.i50.i = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 260132, i32 noundef 0) #6
  %call3.i51.i = call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 260128, i32 noundef 0) #6
  call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i3) #6
  call fastcc void @run_table(ptr noundef %adapter, ptr noundef nonnull @vsc7326_reset, i32 noundef 15)
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_tpi_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mac_destroy(ptr noundef %mac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %mac) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac_reset(ptr nocapture noundef readonly %mac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %instance = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 3
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %adapter = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %arrayidx = getelementptr [4 x [22 x %struct.init_table]], ptr @vsc7326_portinit, i32 0, i32 %3
  tail call fastcc void @run_table(ptr noundef %5, ptr noundef %arrayidx, i32 noundef 22)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mac_intr_enable(ptr nocapture noundef readnone %mac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mac_intr_disable(ptr nocapture noundef readnone %mac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mac_intr_clear(ptr nocapture noundef readnone %mac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mac_intr_handler(ptr nocapture noundef readnone %mac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac_enable(ptr nocapture noundef readonly %mac, i32 noundef %which) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !62
  %instance = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 3
  %1 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %instance, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %adapter = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %add = shl i32 %4, 3
  %mac_lock.i = getelementptr inbounds %struct.adapter, ptr %6, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i) #6
  %shl = add i32 %add, 512
  %or = and i32 %shl, 2040
  %shl.i = or i32 %or, 67584
  %add.i = or i32 %or, 67588
  %call.i = tail call i32 @t1_tpi_write(ptr noundef %6, i32 noundef %add.i, i32 noundef 1008) #6
  %call3.i = tail call i32 @t1_tpi_write(ptr noundef %6, i32 noundef %shl.i, i32 noundef 330) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i) #6
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %and2 = shl i32 %4, 9
  %shl3 = and i32 %and2, 7680
  %or4 = or i32 %shl3, 8192
  call fastcc void @vsc_read(ptr noundef %8, i32 noundef %or4, ptr noundef nonnull %val)
  %and6 = and i32 %which, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %or7 = or i32 %10, 2
  store i32 %or7, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and8 = and i32 %which, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %or11 = or i32 %12, 1
  store i32 %or11, ptr %val, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %mac_lock.i24 = getelementptr inbounds %struct.adapter, ptr %14, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i24) #6
  %shl.i25 = shl nuw nsw i32 %or4, 2
  %add.i26 = or i32 %shl.i25, 4
  %and.i = and i32 %16, 65535
  %call.i27 = tail call i32 @t1_tpi_write(ptr noundef %14, i32 noundef %add.i26, i32 noundef %and.i) #6
  %shr.i = lshr i32 %16, 16
  %call3.i28 = tail call i32 @t1_tpi_write(ptr noundef %14, i32 noundef %shl.i25, i32 noundef %shr.i) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i24) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac_disable(ptr nocapture noundef %mac, i32 noundef %which) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !62
  %instance = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 3
  %1 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %instance, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %adapter.i = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %5 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter.i, align 8
  %arrayidx.i = getelementptr [4 x [22 x %struct.init_table]], ptr @vsc7326_portinit, i32 0, i32 %4
  tail call fastcc void @run_table(ptr noundef %6, ptr noundef %arrayidx.i, i32 noundef 22) #6
  %7 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter.i, align 8
  %and = shl i32 %4, 9
  %shl = and i32 %and, 7680
  %or = or i32 %shl, 8192
  call fastcc void @vsc_read(ptr noundef %8, i32 noundef %or, ptr noundef nonnull %val)
  %and2 = and i32 %which, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and3 = and i32 %10, -3
  store i32 %and3, ptr %val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and4 = and i32 %which, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end8_crit_edge, label %if.then6

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and7 = and i32 %12, -2
  store i32 %and7, ptr %val, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.if.end8_crit_edge
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %mac_lock.i = getelementptr inbounds %struct.adapter, ptr %14, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i) #6
  %shl.i = shl nuw nsw i32 %or, 2
  %add.i = or i32 %shl.i, 4
  %and.i = and i32 %16, 65535
  %call.i = tail call i32 @t1_tpi_write(ptr noundef %14, i32 noundef %add.i, i32 noundef %and.i) #6
  %shr.i = lshr i32 %16, 16
  %call3.i = tail call i32 @t1_tpi_write(ptr noundef %14, i32 noundef %shl.i, i32 noundef %shr.i) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i) #6
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  call fastcc void @vsc_read(ptr noundef %18, i32 noundef %or, ptr noundef nonnull %val)
  %19 = shl nuw nsw i32 %shl, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end8
  %i.043 = phi i32 [ 0, %if.end8 ], [ %inc, %for.body.for.body_crit_edge ]
  %20 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i, align 8
  %mac_lock.i38 = getelementptr inbounds %struct.adapter, ptr %21, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i38) #6
  %22 = shl i32 %i.043, 3
  %or25 = or i32 %22, %19
  %shl.i39 = or i32 %or25, 131072
  %add.i40 = or i32 %or25, 131076
  %call.i41 = tail call i32 @t1_tpi_write(ptr noundef %21, i32 noundef %add.i40, i32 noundef 0) #6
  %call3.i42 = tail call i32 @t1_tpi_write(ptr noundef %21, i32 noundef %shl.i39, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i38) #6
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, 59
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %23 = call ptr @memset(ptr %mac, i32 0, i32 288)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac_set_mtu(ptr nocapture noundef readonly %mac, i32 noundef %mtu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %instance = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 3
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %adapter = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %and = shl i32 %3, 11
  %shl = and i32 %and, 30720
  %or1 = or i32 %shl, 32784
  %add2 = add i32 %mtu, 18
  %mac_lock.i = getelementptr inbounds %struct.adapter, ptr %5, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i) #6
  %add.i = or i32 %shl, 32788
  %and.i = and i32 %add2, 65535
  %call.i = tail call i32 @t1_tpi_write(ptr noundef %5, i32 noundef %add.i, i32 noundef %and.i) #6
  %shr.i = lshr i32 %add2, 16
  %call3.i = tail call i32 @t1_tpi_write(ptr noundef %5, i32 noundef %or1, i32 noundef %shr.i) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac_set_rx_mode(ptr nocapture noundef readonly %mac, ptr nocapture noundef readonly %rm) #0 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #6
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v, align 4, !annotation !62
  %instance = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 3
  %1 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %instance, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %adapter = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  call fastcc void @vsc_read(ptr noundef %6, i32 noundef 16410, ptr noundef nonnull %v)
  %7 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %v, align 4
  %or = or i32 %8, 4096
  %9 = ptrtoint ptr %rm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rm, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 8
  %and = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %add2 = add i32 %4, 16
  %shl3 = shl nuw i32 1, %add2
  %or4 = or i32 %or, %shl3
  %neg = xor i32 %shl3, -1
  %and1 = and i32 %or, %neg
  %storemerge = select i1 %tobool.not, i32 %or4, i32 %and1
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %mac_lock.i = getelementptr inbounds %struct.adapter, ptr %14, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i) #6
  %and.i = and i32 %storemerge, 65535
  %call.i = tail call i32 @t1_tpi_write(ptr noundef %14, i32 noundef 65644, i32 noundef %and.i) #6
  %shr.i = lshr i32 %storemerge, 16
  %call3.i = tail call i32 @t1_tpi_write(ptr noundef %14, i32 noundef 65640, i32 noundef %shr.i) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac_set_speed_duplex_fc(ptr nocapture noundef readonly %mac, i32 noundef %speed, i32 noundef %duplex, i32 noundef %fc) #0 align 64 {
entry:
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #6
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v, align 4, !annotation !62
  %instance = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 3
  %1 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %instance, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %speed)
  %cmp = icmp sgt i32 %speed, -1
  br i1 %cmp, label %switch.early.test, label %if.end.thread

switch.early.test:                                ; preds = %entry
  %5 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %speed, label %switch.early.test.cleanup_crit_edge [
    i32 1000, label %switch.early.test.if.end_crit_edge
    i32 100, label %switch.early.test.if.end_crit_edge203
    i32 10, label %switch.early.test.if.end_crit_edge204
  ]

switch.early.test.if.end_crit_edge204:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

switch.early.test.if.end_crit_edge203:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

switch.early.test.if.end_crit_edge:               ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

switch.early.test.cleanup_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %switch.early.test.if.end_crit_edge, %switch.early.test.if.end_crit_edge203, %switch.early.test.if.end_crit_edge204
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %duplex)
  %6 = icmp slt i32 %duplex, 2
  br i1 %6, label %if.then12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %duplex)
  %7 = icmp slt i32 %duplex, 2
  br i1 %7, label %if.end10.if.end90_crit_edge, label %if.end.thread.cleanup_crit_edge

if.end.thread.cleanup_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10.if.end90_crit_edge:                      ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  %.pre = shl i32 %4, 9
  %.pre202 = and i32 %.pre, 7680
  br label %if.end90

if.then12:                                        ; preds = %if.end
  %adapter = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %and = shl i32 %4, 9
  %shl = and i32 %and, 7680
  %or = or i32 %shl, 8192
  call fastcc void @vsc_read(ptr noundef %9, i32 noundef %or, ptr noundef nonnull %v)
  %10 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %v, align 4
  %and15 = and i32 %11, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %speed)
  %cmp17 = icmp eq i32 %speed, 1000
  %spec.select.v = select i1 %cmp17, i32 12, i32 4
  %spec.select = or i32 %and15, %spec.select.v
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %mac_lock.i = getelementptr inbounds %struct.adapter, ptr %13, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i) #6
  %shl.i = shl nuw nsw i32 %or, 2
  %add.i = or i32 %shl.i, 4
  %call.i = tail call i32 @t1_tpi_write(ptr noundef %13, i32 noundef %add.i, i32 noundef %spec.select) #6
  %shr.i = lshr i32 %11, 16
  %call3.i = tail call i32 @t1_tpi_write(ptr noundef %13, i32 noundef %shl.i, i32 noundef %shr.i) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i) #6
  br i1 %cmp17, label %if.then28, label %if.else

if.then28:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 130, ptr %v, align 4
  br label %if.end33

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %speed)
  %cmp29 = icmp eq i32 %speed, 100
  br i1 %cmp29, label %if.then30, label %if.else31

if.then30:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 132, ptr %v, align 4
  br label %if.end33

if.else31:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 134, ptr %v, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.then30, %if.then28
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %19 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %v, align 4
  %mac_lock.i162 = getelementptr inbounds %struct.adapter, ptr %18, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i162) #6
  %or38 = shl nuw nsw i32 %shl, 2
  %shl.i163 = or i32 %or38, 32856
  %add.i164 = or i32 %or38, 32860
  %or39 = and i32 %20, 65534
  %and.i165 = or i32 %or39, 1
  %call.i166 = tail call i32 @t1_tpi_write(ptr noundef %18, i32 noundef %add.i164, i32 noundef %and.i165) #6
  %shr.i167 = lshr i32 %20, 16
  %call3.i168 = tail call i32 @t1_tpi_write(ptr noundef %18, i32 noundef %shl.i163, i32 noundef %shr.i167) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i162) #6
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  %mac_lock.i169 = getelementptr inbounds %struct.adapter, ptr %22, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i169) #6
  %and.i172 = and i32 %20, 65535
  %call.i173 = tail call i32 @t1_tpi_write(ptr noundef %22, i32 noundef %add.i164, i32 noundef %and.i172) #6
  %call3.i175 = tail call i32 @t1_tpi_write(ptr noundef %22, i32 noundef %shl.i163, i32 noundef %shr.i167) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i169) #6
  %23 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter, align 8
  %or49 = or i32 %shl, 8236
  call fastcc void @vsc_read(ptr noundef %24, i32 noundef %or49, ptr noundef nonnull %v)
  %25 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %v, align 4
  %and50 = and i32 %26, -65281
  br i1 %cmp17, label %if.then52, label %if.else54

if.then52:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %or53 = or i32 %and50, 1024
  %27 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or53, ptr %v, align 4
  br label %if.end61

if.else54:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %speed)
  %cmp55 = icmp eq i32 %speed, 100
  br i1 %cmp55, label %if.then56, label %if.else58

if.then56:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #8
  %or57 = or i32 %and50, 8192
  %28 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or57, ptr %v, align 4
  br label %if.end61

if.else58:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #8
  %or59 = or i32 %26, 65280
  %29 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or59, ptr %v, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.else58, %if.then56, %if.then52
  %. = phi i32 [ 9623, %if.then56 ], [ 9623, %if.else58 ], [ 9631, %if.then52 ]
  %cond = phi i32 [ 17, %if.then56 ], [ 17, %if.else58 ], [ 5, %if.then52 ]
  %30 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adapter, align 8
  %32 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %v, align 4
  %mac_lock.i176 = getelementptr inbounds %struct.adapter, ptr %31, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i176) #6
  %shl.i177 = shl nuw nsw i32 %or49, 2
  %add.i178 = or i32 %shl.i177, 4
  %and.i179 = and i32 %33, 65535
  %call.i180 = tail call i32 @t1_tpi_write(ptr noundef %31, i32 noundef %add.i178, i32 noundef %and.i179) #6
  %shr.i181 = lshr i32 %33, 16
  %call3.i182 = tail call i32 @t1_tpi_write(ptr noundef %31, i32 noundef %shl.i177, i32 noundef %shr.i181) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i176) #6
  %34 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter, align 8
  %mac_lock.i183 = getelementptr inbounds %struct.adapter, ptr %35, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i183) #6
  %shl.i184 = or i32 %or38, 32960
  %add.i185 = or i32 %or38, 32964
  %call.i187 = tail call i32 @t1_tpi_write(ptr noundef %35, i32 noundef %add.i185, i32 noundef %cond) #6
  %call3.i188 = tail call i32 @t1_tpi_write(ptr noundef %35, i32 noundef %shl.i184, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i183) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %duplex)
  %cmp73 = icmp eq i32 %duplex, 0
  %enable.0 = select i1 %cmp73, i32 9619, i32 %.
  %36 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter, align 8
  %mac_lock.i189 = getelementptr inbounds %struct.adapter, ptr %37, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i189) #6
  %call.i192 = tail call i32 @t1_tpi_write(ptr noundef %37, i32 noundef %add.i, i32 noundef %enable.0) #6
  %call3.i193 = tail call i32 @t1_tpi_write(ptr noundef %37, i32 noundef %shl.i, i32 noundef 0) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i189) #6
  br label %if.end90

if.end90:                                         ; preds = %if.end61, %if.end10.if.end90_crit_edge
  %shl93.pre-phi = phi i32 [ %.pre202, %if.end10.if.end90_crit_edge ], [ %shl, %if.end61 ]
  %adapter91 = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %38 = ptrtoint ptr %adapter91 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter91, align 8
  %or95 = or i32 %shl93.pre-phi, 8194
  call fastcc void @vsc_read(ptr noundef %39, i32 noundef %or95, ptr noundef nonnull %v)
  %40 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %v, align 4
  %and96 = and i32 %41, -983041
  %and98 = and i32 %fc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool.not = icmp eq i32 %and98, 0
  %spec.select161.v = select i1 %tobool.not, i32 131072, i32 393216
  %spec.select161 = or i32 %and96, %spec.select161.v
  %and102 = shl i32 %fc, 18
  %42 = and i32 %and102, 524288
  %43 = or i32 %42, %spec.select161
  %44 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %fc)
  %cmp107 = icmp eq i32 %fc, 3
  br i1 %cmp107, label %if.then108, label %if.end90.if.end110_crit_edge

if.end90.if.end110_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then108:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %v, align 4
  %or109 = or i32 %46, 65536
  store i32 %or109, ptr %v, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then108, %if.end90.if.end110_crit_edge
  %47 = ptrtoint ptr %adapter91 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %adapter91, align 8
  %49 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %v, align 4
  %mac_lock.i194 = getelementptr inbounds %struct.adapter, ptr %48, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i194) #6
  %shl.i195 = shl nuw nsw i32 %or95, 2
  %add.i196 = or i32 %shl.i195, 4
  %and.i197 = and i32 %50, 65535
  %call.i198 = tail call i32 @t1_tpi_write(ptr noundef %48, i32 noundef %add.i196, i32 noundef %and.i197) #6
  %shr.i199 = lshr i32 %50, 16
  %call3.i200 = tail call i32 @t1_tpi_write(ptr noundef %48, i32 noundef %shl.i195, i32 noundef %shr.i199) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i194) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end110, %if.end.thread.cleanup_crit_edge, %if.end.cleanup_crit_edge, %switch.early.test.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end110 ], [ -1, %switch.early.test.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mac_update_statistics(ptr noundef returned %mac, i32 noundef %flag) #0 align 64 {
entry:
  %v.i43 = alloca i32, align 4
  %v.i32 = alloca i32, align 4
  %v.i = alloca i32, align 4
  %v.i55.i = alloca i32, align 4
  %v.i44.i = alloca i32, align 4
  %v.i33.i = alloca i32, align 4
  %v.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flag)
  %cmp = icmp eq i32 %flag, 1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %instance = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 3
  %0 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %instance, align 8
  %ticks = getelementptr inbounds %struct._cmac_instance, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ticks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ticks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 119, i32 %3)
  %cmp1 = icmp ugt i32 %3, 119
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %instance.i = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 3
  %4 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %instance.i, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i = shl i32 %7, 9
  %shl.i = and i32 %and.i, 7680
  %or4.i = or i32 %shl.i, 32780
  %add.ptr.i = getelementptr i64, ptr %mac, i32 19
  %adapter.i.i = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then
  %i.066.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i) #6
  %8 = ptrtoint ptr %v.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %v.i.i, align 4, !annotation !62
  %9 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter.i.i, align 8
  call fastcc void @vsc_read(ptr noundef %10, i32 noundef %or4.i, ptr noundef nonnull %v.i.i) #6
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %add.ptr.i, align 8
  %sub.i.i = and i64 %12, -4294967296
  %13 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %v.i.i, align 4
  %conv2.i.i = zext i32 %14 to i64
  %add.i.i = or i64 %sub.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i = icmp ne i32 %14, 0
  %conv.i.i = trunc i64 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %conv.i.i)
  %cmp4.i.i = icmp ult i32 %14, %conv.i.i
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp4.i.i, i1 false
  %add7.i.i = add i64 %add.i.i, 4294967296
  %spec.select.i.i = select i1 %or.cond.i.i, i64 %add7.i.i, i64 %add.i.i
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %spec.select.i.i, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i) #6
  %inc.i = add nuw nsw i32 %i.066.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 18
  br i1 %exitcond.not.i, label %port_stats_update.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

port_stats_update.exit:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %or8.i = or i32 %shl.i, 32820
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i33.i) #6
  %16 = ptrtoint ptr %v.i33.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %v.i33.i, align 4, !annotation !62
  %17 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i.i, align 8
  call fastcc void @vsc_read(ptr noundef %18, i32 noundef %or8.i, ptr noundef nonnull %v.i33.i) #6
  %19 = ptrtoint ptr %mac to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %mac, align 8
  %sub.i35.i = and i64 %20, -4294967296
  %21 = ptrtoint ptr %v.i33.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %v.i33.i, align 4
  %conv2.i36.i = zext i32 %22 to i64
  %add.i37.i = or i64 %sub.i35.i, %conv2.i36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i38.i = icmp ne i32 %22, 0
  %conv.i39.i = trunc i64 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv.i39.i)
  %cmp4.i40.i = icmp ult i32 %22, %conv.i39.i
  %or.cond.i41.i = select i1 %cmp.i38.i, i1 %cmp4.i40.i, i1 false
  %add7.i42.i = add i64 %add.i37.i, 4294967296
  %spec.select.i43.i = select i1 %or.cond.i41.i, i64 %add7.i42.i, i64 %add.i37.i
  %23 = ptrtoint ptr %mac to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %spec.select.i43.i, ptr %mac, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i33.i) #6
  %or13.i = or i32 %shl.i, 32776
  %RxOctetsOK.i = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i44.i) #6
  %24 = ptrtoint ptr %v.i44.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %v.i44.i, align 4, !annotation !62
  %25 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter.i.i, align 8
  call fastcc void @vsc_read(ptr noundef %26, i32 noundef %or13.i, ptr noundef nonnull %v.i44.i) #6
  %27 = ptrtoint ptr %RxOctetsOK.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %RxOctetsOK.i, align 8
  %sub.i46.i = and i64 %28, -4294967296
  %29 = ptrtoint ptr %v.i44.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %v.i44.i, align 4
  %conv2.i47.i = zext i32 %30 to i64
  %add.i48.i = or i64 %sub.i46.i, %conv2.i47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i49.i = icmp ne i32 %30, 0
  %conv.i50.i = trunc i64 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv.i50.i)
  %cmp4.i51.i = icmp ult i32 %30, %conv.i50.i
  %or.cond.i52.i = select i1 %cmp.i49.i, i1 %cmp4.i51.i, i1 false
  %add7.i53.i = add i64 %add.i48.i, 4294967296
  %spec.select.i54.i = select i1 %or.cond.i52.i, i64 %add7.i53.i, i64 %add.i48.i
  %31 = ptrtoint ptr %RxOctetsOK.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %spec.select.i54.i, ptr %RxOctetsOK.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i44.i) #6
  %or18.i = or i32 %shl.i, 32778
  %RxOctetsBad.i = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i55.i) #6
  %32 = ptrtoint ptr %v.i55.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %v.i55.i, align 4, !annotation !62
  %33 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i.i, align 8
  call fastcc void @vsc_read(ptr noundef %34, i32 noundef %or18.i, ptr noundef nonnull %v.i55.i) #6
  %35 = ptrtoint ptr %RxOctetsBad.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %RxOctetsBad.i, align 8
  %sub.i57.i = and i64 %36, -4294967296
  %37 = ptrtoint ptr %v.i55.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %v.i55.i, align 4
  %conv2.i58.i = zext i32 %38 to i64
  %add.i59.i = or i64 %sub.i57.i, %conv2.i58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i60.i = icmp ne i32 %38, 0
  %conv.i61.i = trunc i64 %36 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv.i61.i)
  %cmp4.i62.i = icmp ult i32 %38, %conv.i61.i
  %or.cond.i63.i = select i1 %cmp.i60.i, i1 %cmp4.i62.i, i1 false
  %add7.i64.i = add i64 %add.i59.i, 4294967296
  %spec.select.i65.i = select i1 %or.cond.i63.i, i64 %add7.i64.i, i64 %add.i59.i
  %39 = ptrtoint ptr %RxOctetsBad.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %spec.select.i65.i, ptr %RxOctetsBad.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i55.i) #6
  %40 = ptrtoint ptr %instance.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %instance.i, align 8
  %ticks3 = getelementptr inbounds %struct._cmac_instance, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %ticks3 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %ticks3, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 4
  %and = shl i32 %44, 9
  %shl = and i32 %and, 7680
  %or5 = or i32 %shl, 32776
  %RxOctetsOK = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #6
  %45 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %v.i, align 4, !annotation !62
  %adapter.i = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %46 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter.i, align 8
  call fastcc void @vsc_read(ptr noundef %47, i32 noundef %or5, ptr noundef nonnull %v.i) #6
  %48 = ptrtoint ptr %RxOctetsOK to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %RxOctetsOK, align 8
  %sub.i = and i64 %49, -4294967296
  %50 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %v.i, align 4
  %conv2.i = zext i32 %51 to i64
  %add.i = or i64 %sub.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i = icmp ne i32 %51, 0
  %conv.i = trunc i64 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %conv.i)
  %cmp4.i = icmp ult i32 %51, %conv.i
  %or.cond.i = select i1 %cmp.i, i1 %cmp4.i, i1 false
  %add7.i = add i64 %add.i, 4294967296
  %spec.select.i = select i1 %or.cond.i, i64 %add7.i, i64 %add.i
  %52 = ptrtoint ptr %RxOctetsOK to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %spec.select.i, ptr %RxOctetsOK, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #6
  %or9 = or i32 %shl, 32778
  %RxOctetsBad = getelementptr inbounds %struct.cmac_statistics, ptr %mac, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i32) #6
  %53 = ptrtoint ptr %v.i32 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %v.i32, align 4, !annotation !62
  %54 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adapter.i, align 8
  call fastcc void @vsc_read(ptr noundef %55, i32 noundef %or9, ptr noundef nonnull %v.i32) #6
  %56 = ptrtoint ptr %RxOctetsBad to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %RxOctetsBad, align 8
  %sub.i34 = and i64 %57, -4294967296
  %58 = ptrtoint ptr %v.i32 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %v.i32, align 4
  %conv2.i35 = zext i32 %59 to i64
  %add.i36 = or i64 %sub.i34, %conv2.i35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp.i37 = icmp ne i32 %59, 0
  %conv.i38 = trunc i64 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %conv.i38)
  %cmp4.i39 = icmp ult i32 %59, %conv.i38
  %or.cond.i40 = select i1 %cmp.i37, i1 %cmp4.i39, i1 false
  %add7.i41 = add i64 %add.i36, 4294967296
  %spec.select.i42 = select i1 %or.cond.i40, i64 %add7.i41, i64 %add.i36
  %60 = ptrtoint ptr %RxOctetsBad to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %spec.select.i42, ptr %RxOctetsBad, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i32) #6
  %or14 = or i32 %shl, 32820
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i43) #6
  %61 = ptrtoint ptr %v.i43 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %v.i43, align 4, !annotation !62
  %62 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %adapter.i, align 8
  call fastcc void @vsc_read(ptr noundef %63, i32 noundef %or14, ptr noundef nonnull %v.i43) #6
  %64 = ptrtoint ptr %mac to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %mac, align 8
  %sub.i45 = and i64 %65, -4294967296
  %66 = ptrtoint ptr %v.i43 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %v.i43, align 4
  %conv2.i46 = zext i32 %67 to i64
  %add.i47 = or i64 %sub.i45, %conv2.i46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i48 = icmp ne i32 %67, 0
  %conv.i49 = trunc i64 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %conv.i49)
  %cmp4.i50 = icmp ult i32 %67, %conv.i49
  %or.cond.i51 = select i1 %cmp.i48, i1 %cmp4.i50, i1 false
  %add7.i52 = add i64 %add.i47, 4294967296
  %spec.select.i53 = select i1 %or.cond.i51, i64 %add7.i52, i64 %add.i47
  %68 = ptrtoint ptr %mac to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %spec.select.i53, ptr %mac, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i43) #6
  %69 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %instance, align 8
  %ticks17 = getelementptr inbounds %struct._cmac_instance, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %ticks17 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ticks17, align 4
  %inc = add i32 %72, 1
  store i32 %inc, ptr %ticks17, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %port_stats_update.exit
  ret ptr %mac
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac_get_address(ptr nocapture noundef readonly %mac, ptr nocapture noundef writeonly %addr) #0 align 64 {
entry:
  %addr_lo = alloca i32, align 4
  %addr_hi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_lo) #6
  %0 = ptrtoint ptr %addr_lo to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr_lo, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_hi) #6
  %1 = ptrtoint ptr %addr_hi to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %addr_hi, align 4, !annotation !62
  %instance = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 3
  %2 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %instance, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %adapter = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %and = shl i32 %5, 9
  %shl = and i32 %and, 7680
  %or1 = or i32 %shl, 8200
  call fastcc void @vsc_read(ptr noundef %7, i32 noundef %or1, ptr noundef nonnull %addr_lo)
  %8 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter, align 8
  %or6 = or i32 %shl, 8198
  call fastcc void @vsc_read(ptr noundef %9, i32 noundef %or6, ptr noundef nonnull %addr_hi)
  %10 = ptrtoint ptr %addr_hi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %addr_hi, align 4
  %shr = lshr i32 %11, 16
  %conv = trunc i32 %shr to i8
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %addr, align 1
  %shr7 = lshr i32 %11, 8
  %conv8 = trunc i32 %shr7 to i8
  %arrayidx9 = getelementptr i8, ptr %addr, i32 1
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv8, ptr %arrayidx9, align 1
  %conv10 = trunc i32 %11 to i8
  %arrayidx11 = getelementptr i8, ptr %addr, i32 2
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv10, ptr %arrayidx11, align 1
  %15 = ptrtoint ptr %addr_lo to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %addr_lo, align 4
  %shr12 = lshr i32 %16, 16
  %conv13 = trunc i32 %shr12 to i8
  %arrayidx14 = getelementptr i8, ptr %addr, i32 3
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv13, ptr %arrayidx14, align 1
  %shr15 = lshr i32 %16, 8
  %conv16 = trunc i32 %shr15 to i8
  %arrayidx17 = getelementptr i8, ptr %addr, i32 4
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv16, ptr %arrayidx17, align 1
  %conv18 = trunc i32 %16 to i8
  %arrayidx19 = getelementptr i8, ptr %addr, i32 5
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv18, ptr %arrayidx19, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_hi) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_lo) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac_set_address(ptr nocapture noundef readonly %mac, ptr nocapture noundef readonly %addr) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !62
  %instance = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 3
  %1 = ptrtoint ptr %instance to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %instance, align 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %adapter = getelementptr inbounds %struct.cmac, ptr %mac, i32 0, i32 1
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %and = shl i32 %4, 11
  %shl = and i32 %and, 30720
  %arrayidx = getelementptr i8, ptr %addr, i32 3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %arrayidx3 = getelementptr i8, ptr %addr, i32 4
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %10 to i32
  %shl5 = shl nuw nsw i32 %conv4, 8
  %arrayidx7 = getelementptr i8, ptr %addr, i32 5
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %12 to i32
  %or9 = or i32 %shl5, %conv8
  %mac_lock.i = getelementptr inbounds %struct.adapter, ptr %6, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i) #6
  %shl.i = or i32 %shl, 32800
  %add.i = or i32 %shl, 32804
  %call.i = tail call i32 @t1_tpi_write(ptr noundef %6, i32 noundef %add.i, i32 noundef %or9) #6
  %call3.i = tail call i32 @t1_tpi_write(ptr noundef %6, i32 noundef %shl.i, i32 noundef %conv) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i) #6
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %addr, align 1
  %conv16 = zext i8 %16 to i32
  %arrayidx18 = getelementptr i8, ptr %addr, i32 1
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %18 to i32
  %shl20 = shl nuw nsw i32 %conv19, 8
  %arrayidx22 = getelementptr i8, ptr %addr, i32 2
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %20 to i32
  %or24 = or i32 %shl20, %conv23
  %mac_lock.i74 = getelementptr inbounds %struct.adapter, ptr %14, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i74) #6
  %shl.i75 = or i32 %shl, 32792
  %add.i76 = or i32 %shl, 32796
  %call.i78 = tail call i32 @t1_tpi_write(ptr noundef %14, i32 noundef %add.i76, i32 noundef %or24) #6
  %call3.i80 = tail call i32 @t1_tpi_write(ptr noundef %14, i32 noundef %shl.i75, i32 noundef %conv16) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i74) #6
  %21 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter, align 8
  call fastcc void @vsc_read(ptr noundef %22, i32 noundef 16410, ptr noundef nonnull %val)
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %and26 = and i32 %24, 268369920
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adapter, align 8
  %shl28 = shl i32 %4, 28
  %or29 = or i32 %and26, %shl28
  %mac_lock.i81 = getelementptr inbounds %struct.adapter, ptr %26, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i81) #6
  %and.i82 = and i32 %24, 65535
  %call.i83 = tail call i32 @t1_tpi_write(ptr noundef %26, i32 noundef 65644, i32 noundef %and.i82) #6
  %shr.i84 = lshr exact i32 %or29, 16
  %call3.i85 = tail call i32 @t1_tpi_write(ptr noundef %26, i32 noundef 65640, i32 noundef %shr.i84) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i81) #6
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %29 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx3, align 1
  %conv32 = zext i8 %30 to i32
  %shl33 = shl nuw nsw i32 %conv32, 8
  %31 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx7, align 1
  %conv36 = zext i8 %32 to i32
  %or34 = or i32 %shl33, %conv36
  %mac_lock.i86 = getelementptr inbounds %struct.adapter, ptr %28, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i86) #6
  %call.i88 = tail call i32 @t1_tpi_write(ptr noundef %28, i32 noundef 66156, i32 noundef %or34) #6
  %call3.i90 = tail call i32 @t1_tpi_write(ptr noundef %28, i32 noundef 66152, i32 noundef 65535) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i86) #6
  %33 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter, align 8
  %35 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx22, align 1
  %conv40 = zext i8 %36 to i32
  %shl41 = shl nuw nsw i32 %conv40, 8
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx, align 1
  %conv44 = zext i8 %38 to i32
  %or42 = or i32 %shl41, %conv44
  %mac_lock.i91 = getelementptr inbounds %struct.adapter, ptr %34, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i91) #6
  %call.i93 = tail call i32 @t1_tpi_write(ptr noundef %34, i32 noundef 66284, i32 noundef %or42) #6
  %call3.i95 = tail call i32 @t1_tpi_write(ptr noundef %34, i32 noundef 66280, i32 noundef 65535) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i91) #6
  %39 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter, align 8
  %41 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %addr, align 1
  %conv48 = zext i8 %42 to i32
  %shl49 = shl nuw nsw i32 %conv48, 8
  %43 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx18, align 1
  %conv52 = zext i8 %44 to i32
  %or50 = or i32 %shl49, %conv52
  %mac_lock.i96 = getelementptr inbounds %struct.adapter, ptr %40, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i96) #6
  %call.i98 = tail call i32 @t1_tpi_write(ptr noundef %40, i32 noundef 66412, i32 noundef %or50) #6
  %call3.i100 = tail call i32 @t1_tpi_write(ptr noundef %40, i32 noundef 66408, i32 noundef 65535) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i96) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @run_table(ptr noundef %adapter, ptr nocapture noundef readonly %ib, i32 noundef %len) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp36 = icmp sgt i32 %len, 0
  br i1 %cmp36, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mac_lock.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.init_table, ptr %ib, i32 %i.037
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp1 = icmp eq i32 %1, -1
  %data = getelementptr %struct.init_table, ptr %ib, i32 %i.037, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  br i1 %cmp1, label %cond.false9, label %if.else

cond.false9:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %4(i32 noundef %3) #6
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %6) #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i) #6
  %shl.i = shl i32 %1, 2
  %add.i = add i32 %shl.i, 4
  %and.i = and i32 %3, 65535
  %call.i = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef %add.i, i32 noundef %and.i) #6
  %shr.i = lshr i32 %3, 16
  %call3.i = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef %shl.i, i32 noundef %shr.i) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i) #6
  br label %for.inc

for.inc:                                          ; preds = %if.else, %cond.false9
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @t1_tpi_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc_read(ptr noundef %adapter, i32 noundef %addr, ptr nocapture noundef writeonly %val) unnamed_addr #0 align 64 {
entry:
  %vlo = alloca i32, align 4
  %vhi = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vlo) #6
  %0 = ptrtoint ptr %vlo to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %vlo, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhi) #6
  %1 = ptrtoint ptr %vhi to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %vhi, align 4, !annotation !62
  %mac_lock = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock) #6
  %shl = shl i32 %addr, 2
  %add = add i32 %shl, 4
  %call = call i32 @t1_tpi_read(ptr noundef %adapter, i32 noundef %add, ptr noundef nonnull %vlo) #6
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %call1 = call i32 @t1_tpi_read(ptr noundef %adapter, i32 noundef 262140, ptr noundef nonnull %vlo) #6
  %call2 = call i32 @t1_tpi_read(ptr noundef %adapter, i32 noundef 262136, ptr noundef nonnull %vhi) #6
  %2 = ptrtoint ptr %vlo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vlo, align 4
  %inc = add nuw nsw i32 %i.0, 1
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %i.0)
  %cmp4 = icmp ult i32 %i.0, 49
  %or.cond = select i1 %cmp, i1 %cmp4, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %inc)
  %cmp5 = icmp eq i32 %inc, 50
  br i1 %cmp5, label %do.end8, label %do.end.if.end_crit_edge

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #10
  br label %if.end

if.end:                                           ; preds = %do.end8, %do.end.if.end_crit_edge
  %call10 = call i32 @t1_tpi_read(ptr noundef %adapter, i32 noundef 262132, ptr noundef nonnull %vlo) #6
  %call11 = call i32 @t1_tpi_read(ptr noundef %adapter, i32 noundef 262128, ptr noundef nonnull %vhi) #6
  %4 = ptrtoint ptr %vhi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vhi, align 4
  %shl12 = shl i32 %5, 16
  %6 = ptrtoint ptr %vlo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vlo, align 4
  %or13 = or i32 %shl12, %7
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or13, ptr %val, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %mac_lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhi) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vlo) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bist_wr(ptr noundef %adapter, i32 noundef %moduleid, i32 noundef %address, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  %result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #6
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %result, align 4
  %and = shl i32 %address, 16
  %shl = and i32 %and, 16711680
  %shl16 = shl i32 %value, 8
  %or = or i32 %shl, %shl16
  %and18 = and i32 %moduleid, 255
  %mac_lock.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i) #6
  %shl16.masked = and i32 %shl16, 65280
  %and.i = or i32 %shl16.masked, %and18
  %call.i = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 231428, i32 noundef %and.i) #6
  %or20 = lshr i32 %or, 16
  %shr.i = or i32 %or20, 256
  %call3.i = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 231424, i32 noundef %shr.i) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %1(i32 noundef 1073740) #6
  call fastcc void @vsc_read(ptr noundef %adapter, i32 noundef 57856, ptr noundef nonnull %result)
  %2 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %result, align 4
  %and21 = and i32 %3, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22.not = icmp eq i32 %and21, 0
  br i1 %cmp22.not, label %if.else, label %entry.if.end38.sink.split_crit_edge

entry.if.end38.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.sink.split

if.else:                                          ; preds = %entry
  %and29 = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %cmp30.not = icmp eq i32 %and29, 0
  br i1 %cmp30.not, label %if.else.if.end38_crit_edge, label %if.else.if.end38.sink.split_crit_edge

if.else.if.end38.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.sink.split

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end38.sink.split:                              ; preds = %if.else.if.end38.sink.split_crit_edge, %entry.if.end38.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.11, %entry.if.end38.sink.split_crit_edge ], [ @.str.14, %if.else.if.end38.sink.split_crit_edge ]
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.14.sink, i32 noundef %3) #10
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.else.if.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bist_rd(ptr noundef %adapter, i32 noundef %moduleid, i32 noundef %address) unnamed_addr #0 align 64 {
entry:
  %result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #6
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %result, align 4
  %1 = zext i32 %address to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %address, label %do.end [
    i32 2, label %entry.if.end_crit_edge
    i32 13, label %entry.if.end_crit_edge38
    i32 14, label %entry.if.end_crit_edge39
  ]

entry.if.end_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %address) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge, %entry.if.end_crit_edge38, %entry.if.end_crit_edge39
  %shl = and i32 %address, 255
  %and9 = and i32 %moduleid, 255
  %mac_lock.i = getelementptr inbounds %struct.adapter, ptr %adapter, i32 0, i32 18
  tail call void @_raw_spin_lock_bh(ptr noundef %mac_lock.i) #6
  %call.i = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 231428, i32 noundef %and9) #6
  %call3.i = tail call i32 @t1_tpi_write(ptr noundef %adapter, i32 noundef 231424, i32 noundef %shl) #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %mac_lock.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 2147480) #6
  call fastcc void @vsc_read(ptr noundef %adapter, i32 noundef 57858, ptr noundef nonnull %result)
  %3 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %result, align 4
  %and12 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %cmp13.not = icmp eq i32 %and12, 0
  br i1 %cmp13.not, label %if.else, label %if.end.if.end29.sink.split_crit_edge

if.end.if.end29.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.sink.split

if.else:                                          ; preds = %if.end
  %and20 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %cmp21.not = icmp eq i32 %and20, 0
  br i1 %cmp21.not, label %if.else.if.end29_crit_edge, label %if.else.if.end29.sink.split_crit_edge

if.else.if.end29.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.sink.split

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end29.sink.split:                              ; preds = %if.else.if.end29.sink.split_crit_edge, %if.end.if.end29.sink.split_crit_edge
  %.str.23.sink = phi ptr [ @.str.20, %if.end.if.end29.sink.split_crit_edge ], [ @.str.23, %if.else.if.end29.sink.split_crit_edge ]
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.23.sink, i32 noundef %4) #10
  br label %if.end29

if.end29:                                         ; preds = %if.end29.sink.split, %if.else.if.end29_crit_edge
  %and30 = and i32 %4, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #6
  ret i32 %and30
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @t1_vsc7326_ops, !1, !"t1_vsc7326_ops", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/chelsio/cxgb/vsc7326.c", i32 722, i32 19}
!2 = !{ptr @vsc7326_ops, !3, !"vsc7326_ops", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/chelsio/cxgb/vsc7326.c", i32 665, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/chelsio/cxgb/vsc7326.c", i32 227, i32 4}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @run_table._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @run_table._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @vsc7326_portinit, !11, !"vsc7326_portinit", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/chelsio/cxgb/vsc7326.c", i32 113, i32 26}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/chelsio/cxgb/vsc7326.c", i32 50, i32 3}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @vsc_read._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @vsc_read._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/chelsio/cxgb/vsc7326.c", i32 270, i32 4}
!19 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bist_wr._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @bist_wr._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/chelsio/cxgb/vsc7326.c", i32 273, i32 3}
!24 = !{ptr @bist_wr._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bist_wr._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/chelsio/cxgb/vsc7326.c", i32 283, i32 3}
!28 = !{ptr @bist_wr._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @bist_wr._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/chelsio/cxgb/vsc7326.c", i32 285, i32 3}
!32 = !{ptr @bist_wr._entry.13, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bist_wr._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/chelsio/cxgb/vsc7326.c", i32 308, i32 3}
!36 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @check_bist._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @check_bist._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/chelsio/cxgb/vsc7326.c", i32 243, i32 4}
!41 = !{ptr @bist_rd._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @bist_rd._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/chelsio/cxgb/vsc7326.c", i32 253, i32 3}
!45 = !{ptr @bist_rd._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @bist_rd._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/chelsio/cxgb/vsc7326.c", i32 255, i32 3}
!49 = !{ptr @bist_rd._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @bist_rd._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @vsc7326_reset, !52, !"vsc7326_reset", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/chelsio/cxgb/vsc7326.c", i32 95, i32 26}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
