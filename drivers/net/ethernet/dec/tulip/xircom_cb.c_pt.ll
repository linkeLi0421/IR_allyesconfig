; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/dec/tulip/xircom_cb.c_pt.bc'
source_filename = "../drivers/net/ethernet/dec/tulip/xircom_cb.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%union.anon.99 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.104, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.118, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.104 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.118 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.xircom_private = type { ptr, ptr, i32, i32, [4 x ptr], ptr, i32, i32, %struct.spinlock, ptr, ptr }
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

@__UNIQUE_ID_description341 = internal constant [53 x i8] c"xircom_cb.description=Xircom Cardbus ethernet driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author342 = internal constant [54 x i8] c"xircom_cb.author=Arjan van de Ven <arjanv@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file343 = internal constant [56 x i8] c"xircom_cb.file=drivers/net/ethernet/dec/tulip/xircom_cb\00", section ".modinfo", align 1
@__UNIQUE_ID_license344 = internal constant [22 x i8] c"xircom_cb.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_xircom_cb__347_1172_xircom_ops_init6 = internal global ptr @xircom_ops_init, section ".initcall6.init", align 4
@xircom_ops = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @xircom_pci_table, ptr @xircom_probe, ptr @xircom_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_xircom_ops_exit = internal global ptr @xircom_ops_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xircom_cb\00", [22 x i8] zeroinitializer }, align 32
@xircom_pci_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4445, i32 3, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@xircom_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013xircom_cb: %s: failed to allocate io-region\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xircom_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/dec/tulip/xircom_cb.c\00", [53 x i8] zeroinitializer }, align 32
@xircom_probe._entry_ptr = internal global ptr @xircom_probe._entry, section ".printk_index", align 4
@xircom_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&private->lock\00", [17 x i8] zeroinitializer }, align 32
@netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @xircom_open, ptr @xircom_close, ptr @xircom_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xircom_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@xircom_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013xircom_cb: %s: netdevice registration failed\0A\00", [48 x i8] zeroinitializer }, align 32
@xircom_probe._entry_ptr.7 = internal global ptr @xircom_probe._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Xircom cardbus revision %i at irq %i\0A\00", [58 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Receiver failed to deactivate\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Transmitter failed to deactivate\0A\00", [62 x i8] zeroinitializer }, align 32
@read_mac_address.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 1, i8 2, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"read_mac_address\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %pM\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xircom_cb:  %pM\0A\00", [47 x i8] zeroinitializer }, align 32
@bufferoffsets = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 128, i32 2048, i32 4096, i32 6144], [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"xircom cardbus adaptor found, using irq %i\0A\00", [52 x i8] zeroinitializer }, align 32
@xircom_interrupt.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 87, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xircom_interrupt\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Link status has changed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Link is %d mbit\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Packet length %i is bogus\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Transmitter failed to re-activate\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Receiver failed to re-activate\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"xircom_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 146, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1172, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"xircom_pci_table\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 140, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 217, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 257, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [11 x i8] c"netdev_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 173, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 268, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 272, i32 19 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 768, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 856, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1032, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"bufferoffsets\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 73, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 444, i32 19 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 350, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 352, i32 20 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 1114, i32 20 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 826, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [46 x i8] c"../drivers/net/ethernet/dec/tulip/xircom_cb.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 739, i32 8 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author342, ptr @__UNIQUE_ID_description341, ptr @__UNIQUE_ID_file343, ptr @__UNIQUE_ID_license344, ptr @__exitcall_xircom_ops_exit, ptr @__initcall__kmod_xircom_cb__347_1172_xircom_ops_init6, ptr @xircom_ops_exit, ptr @xircom_probe._entry, ptr @xircom_probe._entry.5, ptr @xircom_probe._entry_ptr, ptr @xircom_probe._entry_ptr.7, ptr @xircom_ops, ptr @.str, ptr @xircom_pci_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xircom_probe.__key, ptr @.str.4, ptr @netdev_ops, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @bufferoffsets, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xircom_ops to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xircom_pci_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xircom_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xircom_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xircom_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bufferoffsets to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xircom_ops_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @xircom_ops, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xircom_ops_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @xircom_ops) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xircom_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %tmp16 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp16) #6
  %0 = ptrtoint ptr %tmp16 to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tmp16, align 2, !annotation !66
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @pci_write_config_dword(ptr noundef %pdev, i32 noundef 64, i32 noundef 0) #6
  tail call void @pci_set_master(ptr noundef %pdev) #6
  %call3 = call i32 @pci_read_config_word(ptr noundef %pdev, i32 noundef 6, ptr noundef nonnull %tmp16) #6
  %1 = ptrtoint ptr %tmp16 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tmp16, align 2
  %call4 = call i32 @pci_write_config_word(ptr noundef %pdev, i32 noundef 6, i16 noundef zeroext %2) #6
  %call5 = call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  br label %err_disable

if.end9:                                          ; preds = %if.end
  %call10 = call ptr @alloc_etherdev_mqs(i32 noundef 96, i32 noundef 1, i32 noundef 1) #6
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %if.end9.err_release_crit_edge, label %if.end12

if.end9.err_release_crit_edge:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_release

if.end12:                                         ; preds = %if.end9
  %add.ptr.i = getelementptr i8, ptr %call10, i32 2304
  %rx_dma_handle = getelementptr i8, ptr %call10, i32 2312
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 8192, ptr noundef %rx_dma_handle, i32 noundef 3264, i32 noundef 0) #6
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %add.ptr.i, align 4
  %cmp16 = icmp eq ptr %call.i, null
  br i1 %cmp16, label %if.end12.rx_buf_fail_crit_edge, label %if.end18

if.end12.rx_buf_fail_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %rx_buf_fail

if.end18:                                         ; preds = %if.end12
  %tx_dma_handle = getelementptr i8, ptr %call10, i32 2316
  %call.i117 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 8192, ptr noundef %tx_dma_handle, i32 noundef 3264, i32 noundef 0) #6
  %tx_buffer = getelementptr i8, ptr %call10, i32 2308
  %4 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i117, ptr %tx_buffer, align 4
  %cmp21 = icmp eq ptr %call.i117, null
  br i1 %cmp21, label %if.end18.tx_buf_fail_crit_edge, label %if.end23

if.end18.tx_buf_fail_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %tx_buf_fail

if.end23:                                         ; preds = %if.end18
  %parent = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 133, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %parent, align 8
  %dev26 = getelementptr i8, ptr %call10, i32 2396
  %6 = ptrtoint ptr %dev26 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call10, ptr %dev26, align 4
  %pdev27 = getelementptr i8, ptr %call10, i32 2392
  %7 = ptrtoint ptr %pdev27 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pdev, ptr %pdev27, align 4
  %call28 = call ptr @pci_iomap(ptr noundef %pdev, i32 noundef 0, i32 noundef 0) #6
  %ioaddr = getelementptr i8, ptr %call10, i32 2336
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call28, ptr %ioaddr, align 4
  %tobool30.not = icmp eq ptr %call28, null
  br i1 %tobool30.not, label %if.end23.reg_fail_crit_edge, label %do.body33

if.end23.reg_fail_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %reg_fail

do.body33:                                        ; preds = %if.end23
  %lock = getelementptr i8, ptr %call10, i32 2348
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @xircom_probe.__key, i16 noundef signext 3) #6
  call fastcc void @initialize_card(ptr noundef %add.ptr.i)
  call fastcc void @read_mac_address(ptr noundef %add.ptr.i)
  call fastcc void @setup_descriptors(ptr noundef %add.ptr.i)
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call10, i32 0, i32 16
  %9 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @netdev_ops, ptr %netdev_ops, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call10, ptr %driver_data.i.i, align 4
  %call37 = call i32 @register_netdev(ptr noundef nonnull %call10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end42, label %if.end45

do.end42:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #9
  %11 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr, align 4
  call void @pci_iounmap(ptr noundef %pdev, ptr noundef %12) #6
  br label %reg_fail

if.end45:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %13 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %revision, align 4
  %conv = zext i8 %14 to i32
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @netdev_info(ptr noundef nonnull %call10, ptr noundef nonnull @.str.8, i32 noundef %conv, i32 noundef %16) #9
  call fastcc void @transceiver_voodoo(ptr noundef %add.ptr.i)
  %call53 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call fastcc void @activate_transmitter(ptr noundef %add.ptr.i)
  call fastcc void @activate_receiver(ptr noundef %add.ptr.i)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call53) #6
  %17 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioaddr, align 4
  %add.ptr.i118 = getelementptr i8, ptr %18, i32 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 0) #6, !srcloc !68
  br label %out

out:                                              ; preds = %err_disable, %if.end45, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %rc.5, %err_disable ], [ %call37, %if.end45 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp16) #6
  ret i32 %rc.0

reg_fail:                                         ; preds = %do.end42, %if.end23.reg_fail_crit_edge
  %rc.1 = phi i32 [ %call37, %do.end42 ], [ -12, %if.end23.reg_fail_crit_edge ]
  %19 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_buffer, align 4
  %21 = ptrtoint ptr %tx_dma_handle to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef 8192, ptr noundef %20, i32 noundef %22, i32 noundef 0) #6
  br label %tx_buf_fail

tx_buf_fail:                                      ; preds = %reg_fail, %if.end18.tx_buf_fail_crit_edge
  %rc.2 = phi i32 [ -12, %if.end18.tx_buf_fail_crit_edge ], [ %rc.1, %reg_fail ]
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr.i, align 4
  %25 = ptrtoint ptr %rx_dma_handle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_dma_handle, align 4
  call void @dma_free_attrs(ptr noundef %dev, i32 noundef 8192, ptr noundef %24, i32 noundef %26, i32 noundef 0) #6
  br label %rx_buf_fail

rx_buf_fail:                                      ; preds = %tx_buf_fail, %if.end12.rx_buf_fail_crit_edge
  %rc.3 = phi i32 [ -12, %if.end12.rx_buf_fail_crit_edge ], [ %rc.2, %tx_buf_fail ]
  call void @free_netdev(ptr noundef nonnull %call10) #6
  br label %err_release

err_release:                                      ; preds = %rx_buf_fail, %if.end9.err_release_crit_edge
  %rc.4 = phi i32 [ %rc.3, %rx_buf_fail ], [ -12, %if.end9.err_release_crit_edge ]
  call void @pci_release_regions(ptr noundef %pdev) #6
  br label %err_disable

err_disable:                                      ; preds = %err_release, %do.end
  %rc.5 = phi i32 [ %call5, %do.end ], [ %rc.4, %err_release ]
  call void @pci_disable_device(ptr noundef %pdev) #6
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xircom_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @unregister_netdev(ptr noundef %1) #6
  %ioaddr = getelementptr i8, ptr %1, i32 2336
  %2 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr, align 4
  tail call void @pci_iounmap(ptr noundef %pdev, ptr noundef %3) #6
  %tx_buffer = getelementptr i8, ptr %1, i32 2308
  %4 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_buffer, align 4
  %tx_dma_handle = getelementptr i8, ptr %1, i32 2316
  %6 = ptrtoint ptr %tx_dma_handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_dma_handle, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 8192, ptr noundef %5, i32 noundef %7, i32 noundef 0) #6
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 4
  %rx_dma_handle = getelementptr i8, ptr %1, i32 2312
  %10 = ptrtoint ptr %rx_dma_handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_dma_handle, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef 8192, ptr noundef %9, i32 noundef %11, i32 noundef 0) #6
  tail call void @free_netdev(ptr noundef %1) #6
  tail call void @pci_release_regions(ptr noundef %pdev) #6
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @initialize_card(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 5
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %lock = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #6, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 21474800) #6
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %6 = and i32 %5, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %6) #6, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #6, !srcloc !68
  %7 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !68
  %9 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i27 = getelementptr i8, ptr %10, i32 48
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %12 = and i32 %11, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 %12) #6, !srcloc !68
  %dev.i = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 10
  %13 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 40
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %16 = and i32 %15, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.not.i, label %entry.deactivate_receiver.exit_crit_edge, label %if.end.i

entry.deactivate_receiver.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %deactivate_receiver.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 10737400) #6
  %18 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %19, i32 40
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %21 = and i32 %20, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i.not.i.1 = icmp eq i32 %21, 0
  br i1 %tobool.not.i.not.i.1, label %if.end.i.deactivate_receiver.exit_crit_edge, label %if.end.i.1

if.end.i.deactivate_receiver.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %deactivate_receiver.exit

if.end6.thread.i:                                 ; preds = %if.end.i.8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 10737400) #6
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %24, ptr noundef nonnull @.str.9) #9
  br label %deactivate_receiver.exit

if.end.i.1:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 10737400) #6
  %26 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %27, i32 40
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %29 = and i32 %28, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.not.i.2 = icmp eq i32 %29, 0
  br i1 %tobool.not.i.not.i.2, label %if.end.i.1.deactivate_receiver.exit_crit_edge, label %if.end.i.2

if.end.i.1.deactivate_receiver.exit_crit_edge:    ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %deactivate_receiver.exit

if.end.i.2:                                       ; preds = %if.end.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 10737400) #6
  %31 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i.i.3 = getelementptr i8, ptr %32, i32 40
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.3) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %34 = and i32 %33, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.not.i.3 = icmp eq i32 %34, 0
  br i1 %tobool.not.i.not.i.3, label %if.end.i.2.deactivate_receiver.exit_crit_edge, label %if.end.i.3

if.end.i.2.deactivate_receiver.exit_crit_edge:    ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %deactivate_receiver.exit

if.end.i.3:                                       ; preds = %if.end.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 10737400) #6
  %36 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i.i.4 = getelementptr i8, ptr %37, i32 40
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.4) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %39 = and i32 %38, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.not.i.4 = icmp eq i32 %39, 0
  br i1 %tobool.not.i.not.i.4, label %if.end.i.3.deactivate_receiver.exit_crit_edge, label %if.end.i.4

if.end.i.3.deactivate_receiver.exit_crit_edge:    ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %deactivate_receiver.exit

if.end.i.4:                                       ; preds = %if.end.i.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 10737400) #6
  %41 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i.i.5 = getelementptr i8, ptr %42, i32 40
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.5) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %44 = and i32 %43, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.i.not.i.5 = icmp eq i32 %44, 0
  br i1 %tobool.not.i.not.i.5, label %if.end.i.4.deactivate_receiver.exit_crit_edge, label %if.end.i.5

if.end.i.4.deactivate_receiver.exit_crit_edge:    ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %deactivate_receiver.exit

if.end.i.5:                                       ; preds = %if.end.i.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 10737400) #6
  %46 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i.i.6 = getelementptr i8, ptr %47, i32 40
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.6) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %49 = and i32 %48, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.not.i.6 = icmp eq i32 %49, 0
  br i1 %tobool.not.i.not.i.6, label %if.end.i.5.deactivate_receiver.exit_crit_edge, label %if.end.i.6

if.end.i.5.deactivate_receiver.exit_crit_edge:    ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %deactivate_receiver.exit

if.end.i.6:                                       ; preds = %if.end.i.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 10737400) #6
  %51 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i.i.7 = getelementptr i8, ptr %52, i32 40
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.7) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %54 = and i32 %53, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i.not.i.7 = icmp eq i32 %54, 0
  br i1 %tobool.not.i.not.i.7, label %if.end.i.6.deactivate_receiver.exit_crit_edge, label %if.end.i.7

if.end.i.6.deactivate_receiver.exit_crit_edge:    ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %deactivate_receiver.exit

if.end.i.7:                                       ; preds = %if.end.i.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 10737400) #6
  %56 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i.i.8 = getelementptr i8, ptr %57, i32 40
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.8) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %59 = and i32 %58, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i.not.i.8 = icmp eq i32 %59, 0
  br i1 %tobool.not.i.not.i.8, label %if.end.i.7.deactivate_receiver.exit_crit_edge, label %if.end.i.8

if.end.i.7.deactivate_receiver.exit_crit_edge:    ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %deactivate_receiver.exit

if.end.i.8:                                       ; preds = %if.end.i.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 10737400) #6
  %61 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i.i.9 = getelementptr i8, ptr %62, i32 40
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.9) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %64 = and i32 %63, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i.not.i.9 = icmp eq i32 %64, 0
  br i1 %tobool.not.i.not.i.9, label %if.end.i.8.deactivate_receiver.exit_crit_edge, label %if.end6.thread.i

if.end.i.8.deactivate_receiver.exit_crit_edge:    ; preds = %if.end.i.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %deactivate_receiver.exit

deactivate_receiver.exit:                         ; preds = %if.end.i.8.deactivate_receiver.exit_crit_edge, %if.end.i.7.deactivate_receiver.exit_crit_edge, %if.end.i.6.deactivate_receiver.exit_crit_edge, %if.end.i.5.deactivate_receiver.exit_crit_edge, %if.end.i.4.deactivate_receiver.exit_crit_edge, %if.end.i.3.deactivate_receiver.exit_crit_edge, %if.end.i.2.deactivate_receiver.exit_crit_edge, %if.end.i.1.deactivate_receiver.exit_crit_edge, %if.end6.thread.i, %if.end.i.deactivate_receiver.exit_crit_edge, %entry.deactivate_receiver.exit_crit_edge
  %65 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i29 = getelementptr i8, ptr %66, i32 48
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i29) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %68 = and i32 %67, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %68) #6, !srcloc !68
  br label %while.body.i34

while.body.i34:                                   ; preds = %if.end.i37.while.body.i34_crit_edge, %deactivate_receiver.exit
  %counter.013.i31 = phi i32 [ 20, %deactivate_receiver.exit ], [ %dec.i35, %if.end.i37.while.body.i34_crit_edge ]
  %69 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i.i32 = getelementptr i8, ptr %70, i32 40
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i32) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %72 = and i32 %71, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i.not.i33 = icmp eq i32 %72, 0
  br i1 %tobool.not.i.not.i33, label %while.body.i34.deactivate_transmitter.exit_crit_edge, label %if.end.i37

while.body.i34.deactivate_transmitter.exit_crit_edge: ; preds = %while.body.i34
  call void @__sanitizer_cov_trace_pc() #8
  br label %deactivate_transmitter.exit

if.end.i37:                                       ; preds = %while.body.i34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 10737400) #6
  %dec.i35 = add nsw i32 %counter.013.i31, -1
  %cmp4.i36 = icmp eq i32 %dec.i35, 0
  br i1 %cmp4.i36, label %if.end6.thread.i38, label %if.end.i37.while.body.i34_crit_edge

if.end.i37.while.body.i34_crit_edge:              ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i34

if.end6.thread.i38:                               ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %75, ptr noundef nonnull @.str.10) #9
  br label %deactivate_transmitter.exit

deactivate_transmitter.exit:                      ; preds = %if.end6.thread.i38, %while.body.i34.deactivate_transmitter.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_mac_address(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 5
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %lock = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %add.ptr = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1048576) #6, !srcloc !68
  %add.ptr8 = getelementptr i8, ptr %1, i32 80
  br label %for.body

for.body:                                         ; preds = %if.else.for.body_crit_edge, %entry
  %i.0101 = phi i32 [ 256, %entry ], [ %add56, %if.else.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.0101) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %2) #6, !srcloc !68
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %add = add nuw nsw i32 %i.0101, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %4 = tail call i32 @llvm.bswap.i32(i32 %add) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %4) #6, !srcloc !68
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %add16 = add nuw nsw i32 %i.0101, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %add16) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %6) #6, !srcloc !68
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %add21 = add nuw nsw i32 %i.0101, 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %add21) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %8) #6, !srcloc !68
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %.mask = and i32 %3, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 570425344, i32 %.mask)
  %cmp27 = icmp eq i32 %.mask, 570425344
  %.mask98 = and i32 %7, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %.mask98)
  %cmp30 = icmp eq i32 %.mask98, 67108864
  %or.cond = select i1 %cmp27, i1 %cmp30, i1 false
  %.mask99 = and i32 %9, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 100663296, i32 %.mask99)
  %cmp34 = icmp eq i32 %.mask99, 100663296
  %or.cond94 = select i1 %or.cond, i1 %cmp34, i1 false
  br i1 %or.cond94, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #6
  %10 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %11 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %12 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %13 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %14 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %add40 = add nuw nsw i32 %i.0101, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %add40) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %15) #6, !srcloc !68
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %conv45 = trunc i32 %17 to i8
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv45, ptr %addr, align 1
  %add41.1 = add nuw nsw i32 %i.0101, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %19 = tail call i32 @llvm.bswap.i32(i32 %add41.1) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %19) #6, !srcloc !68
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  %21 = lshr i32 %20, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %conv45.1 = trunc i32 %21 to i8
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv45.1, ptr %10, align 1
  %add41.2 = add nuw nsw i32 %i.0101, 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %add41.2) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %23) #6, !srcloc !68
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  %25 = lshr i32 %24, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %conv45.2 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv45.2, ptr %11, align 1
  %add41.3 = add nuw nsw i32 %i.0101, 7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %add41.3) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %27) #6, !srcloc !68
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  %29 = lshr i32 %28, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %conv45.3 = trunc i32 %29 to i8
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv45.3, ptr %12, align 1
  %add41.4 = add nuw nsw i32 %i.0101, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %31 = tail call i32 @llvm.bswap.i32(i32 %add41.4) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %31) #6, !srcloc !68
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  %33 = lshr i32 %32, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %conv45.4 = trunc i32 %33 to i8
  %34 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv45.4, ptr %13, align 1
  %add41.5 = add nuw nsw i32 %i.0101, 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %35 = tail call i32 @llvm.bswap.i32(i32 %add41.5) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %35) #6, !srcloc !68
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  %37 = lshr i32 %36, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %conv45.5 = trunc i32 %37 to i8
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv45.5, ptr %14, align 1
  %dev = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 10
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  call void @dev_addr_mod(ptr noundef %40, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #6
  br label %for.end57

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %5)
  %cmp47 = icmp ugt i32 %5, 16777215
  %41 = lshr i32 %5, 24
  %add56 = add nuw nsw i32 %add16, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 503, i32 %add56)
  %cmp6 = icmp ult i32 %add56, 503
  %or.cond105 = select i1 %cmp47, i1 %cmp6, i1 false
  br i1 %or.cond105, label %if.else.for.body_crit_edge, label %if.else.for.end57_crit_edge

if.else.for.end57_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end57

if.else.for.body_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end57:                                        ; preds = %if.else.for.end57_crit_edge, %if.then
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_mac_address.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@read_mac_address, %do.end69)) #6
          to label %if.then65 [label %do.end69], !srcloc !71

if.then65:                                        ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #8
  %dev66 = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 10
  %42 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev66, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 86
  %44 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @read_mac_address.__UNIQUE_ID_ddebug346, ptr noundef nonnull @.str.13, ptr noundef %45) #6
  br label %do.end69

do.end69:                                         ; preds = %if.then65, %for.end57
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_descriptors(ptr nocapture noundef readonly %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 5
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %do.body3, label %do.body9, !prof !72

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/dec/tulip/xircom_cb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 566, 0\0A.popsection", ""() #6, !srcloc !73
  unreachable

do.body9:                                         ; preds = %entry
  %tx_buffer = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 1
  %4 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_buffer, align 4
  %cmp10 = icmp eq ptr %5, null
  br i1 %cmp10, label %do.body18, label %if.end74.3, !prof !72

do.body18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/dec/tulip/xircom_cb.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 567, 0\0A.popsection", ""() #6, !srcloc !74
  unreachable

if.end74.3:                                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %6 = call ptr @memset(ptr %3, i32 0, i32 128)
  %rx_dma_handle = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 2
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 128, ptr %8, align 4
  %10 = load ptr, ptr %card, align 4
  %arrayidx33 = getelementptr i32, ptr %10, i32 1
  %11 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 393216, ptr %arrayidx33, align 4
  %12 = ptrtoint ptr %rx_dma_handle to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_dma_handle, align 4
  %add42 = add i32 %13, 128
  %14 = tail call i32 @llvm.bswap.i32(i32 %add42)
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %arrayidx46 = getelementptr i32, ptr %16, i32 2
  %17 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %arrayidx46, align 4
  %18 = load ptr, ptr %card, align 4
  %arrayidx50 = getelementptr i32, ptr %18, i32 3
  %19 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %arrayidx50, align 4
  %20 = load ptr, ptr %card, align 4
  %arrayidx.1 = getelementptr i32, ptr %20, i32 4
  %21 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 128, ptr %arrayidx.1, align 4
  %22 = load ptr, ptr %card, align 4
  %arrayidx33.1 = getelementptr i32, ptr %22, i32 5
  %23 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 393216, ptr %arrayidx33.1, align 4
  %24 = ptrtoint ptr %rx_dma_handle to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_dma_handle, align 4
  %add42.1 = add i32 %25, 2048
  %26 = tail call i32 @llvm.bswap.i32(i32 %add42.1)
  %27 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card, align 4
  %arrayidx46.1 = getelementptr i32, ptr %28, i32 6
  %29 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %26, ptr %arrayidx46.1, align 4
  %30 = load ptr, ptr %card, align 4
  %arrayidx50.1 = getelementptr i32, ptr %30, i32 7
  %31 = ptrtoint ptr %arrayidx50.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx50.1, align 4
  %32 = load ptr, ptr %card, align 4
  %arrayidx.2 = getelementptr i32, ptr %32, i32 8
  %33 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 128, ptr %arrayidx.2, align 4
  %34 = load ptr, ptr %card, align 4
  %arrayidx33.2 = getelementptr i32, ptr %34, i32 9
  %35 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 393216, ptr %arrayidx33.2, align 4
  %36 = ptrtoint ptr %rx_dma_handle to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_dma_handle, align 4
  %add42.2 = add i32 %37, 4096
  %38 = tail call i32 @llvm.bswap.i32(i32 %add42.2)
  %39 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card, align 4
  %arrayidx46.2 = getelementptr i32, ptr %40, i32 10
  %41 = ptrtoint ptr %arrayidx46.2 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %arrayidx46.2, align 4
  %42 = load ptr, ptr %card, align 4
  %arrayidx50.2 = getelementptr i32, ptr %42, i32 11
  %43 = ptrtoint ptr %arrayidx50.2 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %arrayidx50.2, align 4
  %44 = load ptr, ptr %card, align 4
  %arrayidx.3 = getelementptr i32, ptr %44, i32 12
  %45 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 128, ptr %arrayidx.3, align 4
  %46 = load ptr, ptr %card, align 4
  %arrayidx33.3 = getelementptr i32, ptr %46, i32 13
  %47 = ptrtoint ptr %arrayidx33.3 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 393216, ptr %arrayidx33.3, align 4
  %48 = load ptr, ptr %card, align 4
  %arrayidx39.3 = getelementptr i32, ptr %48, i32 13
  %49 = ptrtoint ptr %arrayidx39.3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx39.3, align 4
  %or.3 = or i32 %50, 2
  store i32 %or.3, ptr %arrayidx39.3, align 4
  %51 = ptrtoint ptr %rx_dma_handle to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_dma_handle, align 4
  %add42.3 = add i32 %52, 6144
  %53 = tail call i32 @llvm.bswap.i32(i32 %add42.3)
  %54 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card, align 4
  %arrayidx46.3 = getelementptr i32, ptr %55, i32 14
  %56 = ptrtoint ptr %arrayidx46.3 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %53, ptr %arrayidx46.3, align 4
  %57 = load ptr, ptr %card, align 4
  %arrayidx50.3 = getelementptr i32, ptr %57, i32 15
  %58 = ptrtoint ptr %arrayidx50.3 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %arrayidx50.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %rx_dma_handle to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %rx_dma_handle, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %61) #6, !srcloc !68
  %62 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tx_buffer, align 4
  %64 = call ptr @memset(ptr %63, i32 0, i32 128)
  %tx_dma_handle = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 3
  %65 = load ptr, ptr %tx_buffer, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %65, align 4
  %67 = load ptr, ptr %tx_buffer, align 4
  %arrayidx66 = getelementptr i32, ptr %67, i32 1
  %68 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 393216, ptr %arrayidx66, align 4
  %69 = ptrtoint ptr %tx_dma_handle to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tx_dma_handle, align 4
  %add76 = add i32 %70, 128
  %71 = tail call i32 @llvm.bswap.i32(i32 %add76)
  %72 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tx_buffer, align 4
  %arrayidx80 = getelementptr i32, ptr %73, i32 2
  %74 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %71, ptr %arrayidx80, align 4
  %75 = load ptr, ptr %tx_buffer, align 4
  %arrayidx84 = getelementptr i32, ptr %75, i32 3
  %76 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %arrayidx84, align 4
  %77 = load ptr, ptr %tx_buffer, align 4
  %arrayidx62.1 = getelementptr i32, ptr %77, i32 4
  %78 = ptrtoint ptr %arrayidx62.1 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %arrayidx62.1, align 4
  %79 = load ptr, ptr %tx_buffer, align 4
  %arrayidx66.1 = getelementptr i32, ptr %79, i32 5
  %80 = ptrtoint ptr %arrayidx66.1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 393216, ptr %arrayidx66.1, align 4
  %81 = ptrtoint ptr %tx_dma_handle to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tx_dma_handle, align 4
  %add76.1 = add i32 %82, 2048
  %83 = tail call i32 @llvm.bswap.i32(i32 %add76.1)
  %84 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tx_buffer, align 4
  %arrayidx80.1 = getelementptr i32, ptr %85, i32 6
  %86 = ptrtoint ptr %arrayidx80.1 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %83, ptr %arrayidx80.1, align 4
  %87 = load ptr, ptr %tx_buffer, align 4
  %arrayidx84.1 = getelementptr i32, ptr %87, i32 7
  %88 = ptrtoint ptr %arrayidx84.1 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %arrayidx84.1, align 4
  %89 = load ptr, ptr %tx_buffer, align 4
  %arrayidx62.2 = getelementptr i32, ptr %89, i32 8
  %90 = ptrtoint ptr %arrayidx62.2 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %arrayidx62.2, align 4
  %91 = load ptr, ptr %tx_buffer, align 4
  %arrayidx66.2 = getelementptr i32, ptr %91, i32 9
  %92 = ptrtoint ptr %arrayidx66.2 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 393216, ptr %arrayidx66.2, align 4
  %93 = ptrtoint ptr %tx_dma_handle to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %tx_dma_handle, align 4
  %add76.2 = add i32 %94, 4096
  %95 = tail call i32 @llvm.bswap.i32(i32 %add76.2)
  %96 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %tx_buffer, align 4
  %arrayidx80.2 = getelementptr i32, ptr %97, i32 10
  %98 = ptrtoint ptr %arrayidx80.2 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %95, ptr %arrayidx80.2, align 4
  %99 = load ptr, ptr %tx_buffer, align 4
  %arrayidx84.2 = getelementptr i32, ptr %99, i32 11
  %100 = ptrtoint ptr %arrayidx84.2 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %arrayidx84.2, align 4
  %101 = load ptr, ptr %tx_buffer, align 4
  %arrayidx62.3 = getelementptr i32, ptr %101, i32 12
  %102 = ptrtoint ptr %arrayidx62.3 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %arrayidx62.3, align 4
  %103 = load ptr, ptr %tx_buffer, align 4
  %arrayidx66.3 = getelementptr i32, ptr %103, i32 13
  %104 = ptrtoint ptr %arrayidx66.3 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 393216, ptr %arrayidx66.3, align 4
  %105 = load ptr, ptr %tx_buffer, align 4
  %arrayidx72.3 = getelementptr i32, ptr %105, i32 13
  %106 = ptrtoint ptr %arrayidx72.3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx72.3, align 4
  %or73.3 = or i32 %107, 2
  store i32 %or73.3, ptr %arrayidx72.3, align 4
  %108 = ptrtoint ptr %tx_dma_handle to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tx_dma_handle, align 4
  %add76.3 = add i32 %109, 6144
  %110 = tail call i32 @llvm.bswap.i32(i32 %add76.3)
  %111 = ptrtoint ptr %tx_buffer to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %tx_buffer, align 4
  %arrayidx80.3 = getelementptr i32, ptr %112, i32 14
  %113 = ptrtoint ptr %arrayidx80.3 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %110, ptr %arrayidx80.3, align 4
  %114 = load ptr, ptr %tx_buffer, align 4
  %arrayidx84.3 = getelementptr i32, ptr %114, i32 15
  %115 = ptrtoint ptr %arrayidx84.3 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %arrayidx84.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %116 = ptrtoint ptr %tx_dma_handle to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %tx_dma_handle, align 4
  %add.ptr92 = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %118 = tail call i32 @llvm.bswap.i32(i32 %117) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92, i32 %118) #6, !srcloc !68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @transceiver_voodoo(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 5
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %pdev = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 9
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %call = tail call i32 @pci_write_config_dword(ptr noundef %3, i32 noundef 64, i32 noundef 0) #6
  tail call fastcc void @setup_descriptors(ptr noundef %card)
  %lock = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %add.ptr = getelementptr i8, ptr %1, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 134217728) #6, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 5368700) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1448) #6, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 5368700) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 4000) #6, !srcloc !68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 5368700) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  %dev = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 10
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %10, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @activate_transmitter(ptr nocapture noundef readonly %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 5
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %7 = and i32 %6, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.not = icmp eq i32 %7, 0
  br i1 %tobool.not.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and4 = and i32 %3, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %and4) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #6, !srcloc !68
  %dev = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 10
  %9 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49 = getelementptr i8, ptr %10, i32 40
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %12 = and i32 %11, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i50.not = icmp eq i32 %12, 0
  br i1 %tobool.not.i50.not, label %if.end.while.end_crit_edge, label %if.end9

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 10737400) #6
  %14 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.1 = getelementptr i8, ptr %15, i32 40
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.1) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %17 = and i32 %16, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i50.not.1 = icmp eq i32 %17, 0
  br i1 %tobool.not.i50.not.1, label %if.end9.while.end_crit_edge, label %if.end9.1

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.1:                                        ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 10737400) #6
  %19 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.2 = getelementptr i8, ptr %20, i32 40
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.2) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %22 = and i32 %21, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i50.not.2 = icmp eq i32 %22, 0
  br i1 %tobool.not.i50.not.2, label %if.end9.1.while.end_crit_edge, label %if.end9.2

if.end9.1.while.end_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.2:                                        ; preds = %if.end9.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 10737400) #6
  %24 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.3 = getelementptr i8, ptr %25, i32 40
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.3) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %27 = and i32 %26, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i50.not.3 = icmp eq i32 %27, 0
  br i1 %tobool.not.i50.not.3, label %if.end9.2.while.end_crit_edge, label %if.end9.3

if.end9.2.while.end_crit_edge:                    ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.3:                                        ; preds = %if.end9.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 10737400) #6
  %29 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.4 = getelementptr i8, ptr %30, i32 40
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.4) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %32 = and i32 %31, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i50.not.4 = icmp eq i32 %32, 0
  br i1 %tobool.not.i50.not.4, label %if.end9.3.while.end_crit_edge, label %if.end9.4

if.end9.3.while.end_crit_edge:                    ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.4:                                        ; preds = %if.end9.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 10737400) #6
  %34 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.5 = getelementptr i8, ptr %35, i32 40
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.5) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %37 = and i32 %36, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i50.not.5 = icmp eq i32 %37, 0
  br i1 %tobool.not.i50.not.5, label %if.end9.4.while.end_crit_edge, label %if.end9.5

if.end9.4.while.end_crit_edge:                    ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.5:                                        ; preds = %if.end9.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 10737400) #6
  %39 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.6 = getelementptr i8, ptr %40, i32 40
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.6) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %42 = and i32 %41, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i50.not.6 = icmp eq i32 %42, 0
  br i1 %tobool.not.i50.not.6, label %if.end9.5.while.end_crit_edge, label %if.end9.6

if.end9.5.while.end_crit_edge:                    ; preds = %if.end9.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.6:                                        ; preds = %if.end9.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 10737400) #6
  %44 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.7 = getelementptr i8, ptr %45, i32 40
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.7) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %47 = and i32 %46, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i50.not.7 = icmp eq i32 %47, 0
  br i1 %tobool.not.i50.not.7, label %if.end9.6.while.end_crit_edge, label %if.end9.7

if.end9.6.while.end_crit_edge:                    ; preds = %if.end9.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.7:                                        ; preds = %if.end9.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 10737400) #6
  %49 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.8 = getelementptr i8, ptr %50, i32 40
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.8) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %52 = and i32 %51, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i50.not.8 = icmp eq i32 %52, 0
  br i1 %tobool.not.i50.not.8, label %if.end9.7.while.end_crit_edge, label %if.end9.8

if.end9.7.while.end_crit_edge:                    ; preds = %if.end9.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.8:                                        ; preds = %if.end9.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 10737400) #6
  %54 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.9 = getelementptr i8, ptr %55, i32 40
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.9) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %57 = and i32 %56, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i50.not.9 = icmp eq i32 %57, 0
  br i1 %tobool.not.i50.not.9, label %if.end9.8.while.end_crit_edge, label %if.end9.9

if.end9.8.while.end_crit_edge:                    ; preds = %if.end9.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.9:                                        ; preds = %if.end9.8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 10737400) #6
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %60, ptr noundef nonnull @.str.10) #9
  br label %while.end

while.end:                                        ; preds = %if.end9.9, %if.end9.8.while.end_crit_edge, %if.end9.7.while.end_crit_edge, %if.end9.6.while.end_crit_edge, %if.end9.5.while.end_crit_edge, %if.end9.4.while.end_crit_edge, %if.end9.3.while.end_crit_edge, %if.end9.2.while.end_crit_edge, %if.end9.1.while.end_crit_edge, %if.end9.while.end_crit_edge, %if.end.while.end_crit_edge
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %62 = or i32 %61, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %62) #6, !srcloc !68
  %63 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53 = getelementptr i8, ptr %64, i32 40
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %66 = and i32 %65, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i54.not = icmp eq i32 %66, 0
  br i1 %tobool.not.i54.not, label %if.end22, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 10737400) #6
  %68 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.1 = getelementptr i8, ptr %69, i32 40
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.1) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %71 = and i32 %70, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i54.not.1 = icmp eq i32 %71, 0
  br i1 %tobool.not.i54.not.1, label %if.end22.1, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.1:                                       ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 10737400) #6
  %73 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.2 = getelementptr i8, ptr %74, i32 40
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.2) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %76 = and i32 %75, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i54.not.2 = icmp eq i32 %76, 0
  br i1 %tobool.not.i54.not.2, label %if.end22.2, label %if.end22.1.cleanup_crit_edge

if.end22.1.cleanup_crit_edge:                     ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.2:                                       ; preds = %if.end22.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 10737400) #6
  %78 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.3 = getelementptr i8, ptr %79, i32 40
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.3) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %81 = and i32 %80, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i54.not.3 = icmp eq i32 %81, 0
  br i1 %tobool.not.i54.not.3, label %if.end22.3, label %if.end22.2.cleanup_crit_edge

if.end22.2.cleanup_crit_edge:                     ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.3:                                       ; preds = %if.end22.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 10737400) #6
  %83 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.4 = getelementptr i8, ptr %84, i32 40
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.4) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %86 = and i32 %85, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i54.not.4 = icmp eq i32 %86, 0
  br i1 %tobool.not.i54.not.4, label %if.end22.4, label %if.end22.3.cleanup_crit_edge

if.end22.3.cleanup_crit_edge:                     ; preds = %if.end22.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.4:                                       ; preds = %if.end22.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 10737400) #6
  %88 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.5 = getelementptr i8, ptr %89, i32 40
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.5) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %91 = and i32 %90, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i54.not.5 = icmp eq i32 %91, 0
  br i1 %tobool.not.i54.not.5, label %if.end22.5, label %if.end22.4.cleanup_crit_edge

if.end22.4.cleanup_crit_edge:                     ; preds = %if.end22.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.5:                                       ; preds = %if.end22.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 10737400) #6
  %93 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.6 = getelementptr i8, ptr %94, i32 40
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.6) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %96 = and i32 %95, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i54.not.6 = icmp eq i32 %96, 0
  br i1 %tobool.not.i54.not.6, label %if.end22.6, label %if.end22.5.cleanup_crit_edge

if.end22.5.cleanup_crit_edge:                     ; preds = %if.end22.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.6:                                       ; preds = %if.end22.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 10737400) #6
  %98 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.7 = getelementptr i8, ptr %99, i32 40
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.7) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %101 = and i32 %100, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i54.not.7 = icmp eq i32 %101, 0
  br i1 %tobool.not.i54.not.7, label %if.end22.7, label %if.end22.6.cleanup_crit_edge

if.end22.6.cleanup_crit_edge:                     ; preds = %if.end22.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.7:                                       ; preds = %if.end22.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 10737400) #6
  %103 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.8 = getelementptr i8, ptr %104, i32 40
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.8) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %106 = and i32 %105, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i54.not.8 = icmp eq i32 %106, 0
  br i1 %tobool.not.i54.not.8, label %if.end22.8, label %if.end22.7.cleanup_crit_edge

if.end22.7.cleanup_crit_edge:                     ; preds = %if.end22.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.8:                                       ; preds = %if.end22.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 10737400) #6
  %108 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.9 = getelementptr i8, ptr %109, i32 40
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.9) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %111 = and i32 %110, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i54.not.9 = icmp eq i32 %111, 0
  br i1 %tobool.not.i54.not.9, label %if.end22.9, label %if.end22.8.cleanup_crit_edge

if.end22.8.cleanup_crit_edge:                     ; preds = %if.end22.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.9:                                       ; preds = %if.end22.8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 10737400) #6
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %114, ptr noundef nonnull @.str.19) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22.9, %if.end22.8.cleanup_crit_edge, %if.end22.7.cleanup_crit_edge, %if.end22.6.cleanup_crit_edge, %if.end22.5.cleanup_crit_edge, %if.end22.4.cleanup_crit_edge, %if.end22.3.cleanup_crit_edge, %if.end22.2.cleanup_crit_edge, %if.end22.1.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %while.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @activate_receiver(ptr nocapture noundef readonly %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 5
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 40
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %7 = and i32 %6, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.not = icmp eq i32 %7, 0
  br i1 %tobool.not.i.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and4 = and i32 %3, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %and4) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #6, !srcloc !68
  %dev = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 10
  %9 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49 = getelementptr i8, ptr %10, i32 40
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %12 = and i32 %11, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i50.not = icmp eq i32 %12, 0
  br i1 %tobool.not.i50.not, label %if.end.while.end_crit_edge, label %if.end9

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 10737400) #6
  %14 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.1 = getelementptr i8, ptr %15, i32 40
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.1) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %17 = and i32 %16, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i50.not.1 = icmp eq i32 %17, 0
  br i1 %tobool.not.i50.not.1, label %if.end9.while.end_crit_edge, label %if.end9.1

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.1:                                        ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 10737400) #6
  %19 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.2 = getelementptr i8, ptr %20, i32 40
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.2) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %22 = and i32 %21, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i50.not.2 = icmp eq i32 %22, 0
  br i1 %tobool.not.i50.not.2, label %if.end9.1.while.end_crit_edge, label %if.end9.2

if.end9.1.while.end_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.2:                                        ; preds = %if.end9.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 10737400) #6
  %24 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.3 = getelementptr i8, ptr %25, i32 40
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.3) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %27 = and i32 %26, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i50.not.3 = icmp eq i32 %27, 0
  br i1 %tobool.not.i50.not.3, label %if.end9.2.while.end_crit_edge, label %if.end9.3

if.end9.2.while.end_crit_edge:                    ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.3:                                        ; preds = %if.end9.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 10737400) #6
  %29 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.4 = getelementptr i8, ptr %30, i32 40
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.4) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %32 = and i32 %31, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i50.not.4 = icmp eq i32 %32, 0
  br i1 %tobool.not.i50.not.4, label %if.end9.3.while.end_crit_edge, label %if.end9.4

if.end9.3.while.end_crit_edge:                    ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.4:                                        ; preds = %if.end9.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 10737400) #6
  %34 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.5 = getelementptr i8, ptr %35, i32 40
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.5) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %37 = and i32 %36, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i50.not.5 = icmp eq i32 %37, 0
  br i1 %tobool.not.i50.not.5, label %if.end9.4.while.end_crit_edge, label %if.end9.5

if.end9.4.while.end_crit_edge:                    ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.5:                                        ; preds = %if.end9.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 10737400) #6
  %39 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.6 = getelementptr i8, ptr %40, i32 40
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.6) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %42 = and i32 %41, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i50.not.6 = icmp eq i32 %42, 0
  br i1 %tobool.not.i50.not.6, label %if.end9.5.while.end_crit_edge, label %if.end9.6

if.end9.5.while.end_crit_edge:                    ; preds = %if.end9.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.6:                                        ; preds = %if.end9.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 10737400) #6
  %44 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.7 = getelementptr i8, ptr %45, i32 40
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.7) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %47 = and i32 %46, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i50.not.7 = icmp eq i32 %47, 0
  br i1 %tobool.not.i50.not.7, label %if.end9.6.while.end_crit_edge, label %if.end9.7

if.end9.6.while.end_crit_edge:                    ; preds = %if.end9.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.7:                                        ; preds = %if.end9.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 10737400) #6
  %49 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.8 = getelementptr i8, ptr %50, i32 40
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.8) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %52 = and i32 %51, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i50.not.8 = icmp eq i32 %52, 0
  br i1 %tobool.not.i50.not.8, label %if.end9.7.while.end_crit_edge, label %if.end9.8

if.end9.7.while.end_crit_edge:                    ; preds = %if.end9.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.8:                                        ; preds = %if.end9.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 10737400) #6
  %54 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i49.9 = getelementptr i8, ptr %55, i32 40
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49.9) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %57 = and i32 %56, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i50.not.9 = icmp eq i32 %57, 0
  br i1 %tobool.not.i50.not.9, label %if.end9.8.while.end_crit_edge, label %if.end9.9

if.end9.8.while.end_crit_edge:                    ; preds = %if.end9.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end9.9:                                        ; preds = %if.end9.8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 10737400) #6
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %60, ptr noundef nonnull @.str.9) #9
  br label %while.end

while.end:                                        ; preds = %if.end9.9, %if.end9.8.while.end_crit_edge, %if.end9.7.while.end_crit_edge, %if.end9.6.while.end_crit_edge, %if.end9.5.while.end_crit_edge, %if.end9.4.while.end_crit_edge, %if.end9.3.while.end_crit_edge, %if.end9.2.while.end_crit_edge, %if.end9.1.while.end_crit_edge, %if.end9.while.end_crit_edge, %if.end.while.end_crit_edge
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %62 = or i32 %61, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %62) #6, !srcloc !68
  %63 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53 = getelementptr i8, ptr %64, i32 40
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %66 = and i32 %65, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i54.not = icmp eq i32 %66, 0
  br i1 %tobool.not.i54.not, label %if.end22, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 10737400) #6
  %68 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.1 = getelementptr i8, ptr %69, i32 40
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.1) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %71 = and i32 %70, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i54.not.1 = icmp eq i32 %71, 0
  br i1 %tobool.not.i54.not.1, label %if.end22.1, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.1:                                       ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 10737400) #6
  %73 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.2 = getelementptr i8, ptr %74, i32 40
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.2) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %76 = and i32 %75, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i54.not.2 = icmp eq i32 %76, 0
  br i1 %tobool.not.i54.not.2, label %if.end22.2, label %if.end22.1.cleanup_crit_edge

if.end22.1.cleanup_crit_edge:                     ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.2:                                       ; preds = %if.end22.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 10737400) #6
  %78 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.3 = getelementptr i8, ptr %79, i32 40
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.3) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %81 = and i32 %80, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i54.not.3 = icmp eq i32 %81, 0
  br i1 %tobool.not.i54.not.3, label %if.end22.3, label %if.end22.2.cleanup_crit_edge

if.end22.2.cleanup_crit_edge:                     ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.3:                                       ; preds = %if.end22.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %82(i32 noundef 10737400) #6
  %83 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.4 = getelementptr i8, ptr %84, i32 40
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.4) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %86 = and i32 %85, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i54.not.4 = icmp eq i32 %86, 0
  br i1 %tobool.not.i54.not.4, label %if.end22.4, label %if.end22.3.cleanup_crit_edge

if.end22.3.cleanup_crit_edge:                     ; preds = %if.end22.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.4:                                       ; preds = %if.end22.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %87(i32 noundef 10737400) #6
  %88 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.5 = getelementptr i8, ptr %89, i32 40
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.5) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %91 = and i32 %90, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i54.not.5 = icmp eq i32 %91, 0
  br i1 %tobool.not.i54.not.5, label %if.end22.5, label %if.end22.4.cleanup_crit_edge

if.end22.4.cleanup_crit_edge:                     ; preds = %if.end22.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.5:                                       ; preds = %if.end22.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %92 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %92(i32 noundef 10737400) #6
  %93 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.6 = getelementptr i8, ptr %94, i32 40
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.6) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %96 = and i32 %95, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i54.not.6 = icmp eq i32 %96, 0
  br i1 %tobool.not.i54.not.6, label %if.end22.6, label %if.end22.5.cleanup_crit_edge

if.end22.5.cleanup_crit_edge:                     ; preds = %if.end22.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.6:                                       ; preds = %if.end22.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 10737400) #6
  %98 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.7 = getelementptr i8, ptr %99, i32 40
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.7) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %101 = and i32 %100, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i54.not.7 = icmp eq i32 %101, 0
  br i1 %tobool.not.i54.not.7, label %if.end22.7, label %if.end22.6.cleanup_crit_edge

if.end22.6.cleanup_crit_edge:                     ; preds = %if.end22.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.7:                                       ; preds = %if.end22.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %102(i32 noundef 10737400) #6
  %103 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.8 = getelementptr i8, ptr %104, i32 40
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.8) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %106 = and i32 %105, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i54.not.8 = icmp eq i32 %106, 0
  br i1 %tobool.not.i54.not.8, label %if.end22.8, label %if.end22.7.cleanup_crit_edge

if.end22.7.cleanup_crit_edge:                     ; preds = %if.end22.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.8:                                       ; preds = %if.end22.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 10737400) #6
  %108 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i53.9 = getelementptr i8, ptr %109, i32 40
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.9) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %111 = and i32 %110, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i54.not.9 = icmp eq i32 %111, 0
  br i1 %tobool.not.i54.not.9, label %if.end22.9, label %if.end22.8.cleanup_crit_edge

if.end22.8.cleanup_crit_edge:                     ; preds = %if.end22.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22.9:                                       ; preds = %if.end22.8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %112 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %112(i32 noundef 10737400) #6
  %113 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %114, ptr noundef nonnull @.str.20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end22.9, %if.end22.8.cleanup_crit_edge, %if.end22.7.cleanup_crit_edge, %if.end22.6.cleanup_crit_edge, %if.end22.5.cleanup_crit_edge, %if.end22.4.cleanup_crit_edge, %if.end22.3.cleanup_crit_edge, %if.end22.2.cleanup_crit_edge, %if.end22.1.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %while.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xircom_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 2392
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %3) #9
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %3, ptr noundef nonnull @xircom_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %call.i13 = tail call i32 @pci_write_config_dword(ptr noundef %5, i32 noundef 64, i32 noundef 0) #6
  tail call fastcc void @setup_descriptors(ptr noundef %add.ptr.i) #6
  %lock.i = getelementptr i8, ptr %dev, i32 2348
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %ioaddr1.i.i = getelementptr i8, ptr %dev, i32 2336
  %6 = ptrtoint ptr %ioaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 56
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %9 = or i32 %8, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %9) #6, !srcloc !68
  %10 = ptrtoint ptr %ioaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr1.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %11, i32 56
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %13 = or i32 %12, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %13) #6, !srcloc !68
  %14 = ptrtoint ptr %ioaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ioaddr1.i.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %15, i32 56
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i30.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %17 = or i32 %16, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %17) #6, !srcloc !68
  %18 = ptrtoint ptr %ioaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr1.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %19, i32 56
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %21 = or i32 %20, -1499397888
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %21) #6, !srcloc !68
  %22 = ptrtoint ptr %ioaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ioaddr1.i.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %23, i32 48
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34.i) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %25 = or i32 %24, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %25) #6, !srcloc !68
  %dev.i = getelementptr i8, ptr %dev, i32 2396
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @investigate_read_descriptor(ptr noundef %27, ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 128) #6
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @investigate_read_descriptor(ptr noundef %29, ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 2048) #6
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @investigate_read_descriptor(ptr noundef %31, ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef 4096) #6
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @investigate_read_descriptor(ptr noundef %33, ptr noundef %add.ptr.i, i32 noundef 3, i32 noundef 6144) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  %34 = ptrtoint ptr %ioaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioaddr1.i.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 0) #6, !srcloc !68
  %36 = ptrtoint ptr %ioaddr1.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioaddr1.i.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 0) #6, !srcloc !68
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %39, i32 0, i32 103
  %40 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %41, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i.i) #6
  %open = getelementptr i8, ptr %dev, i32 2340
  %42 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %open, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xircom_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  %lock = getelementptr i8, ptr %dev, i32 2348
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %ioaddr1.i = getelementptr i8, ptr %dev, i32 2336
  %2 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %3, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 0) #6, !srcloc !68
  %4 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 0) #6, !srcloc !68
  %add.ptr2.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #6, !srcloc !68
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  %open = getelementptr i8, ptr %dev, i32 2340
  %6 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %open, align 4
  %pdev = getelementptr i8, ptr %dev, i32 2392
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %irq = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 46
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call7 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %dev) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xircom_start_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 2348
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %tx_buffer.i = getelementptr i8, ptr %dev, i32 2308
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  br label %for.body

for.body:                                         ; preds = %investigate_write_descriptor.exit.for.body_crit_edge, %entry
  %desc.097 = phi i32 [ 0, %entry ], [ %inc, %investigate_write_descriptor.exit.for.body_crit_edge ]
  %0 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_buffer.i, align 4
  %mul.i = shl i32 %desc.097, 2
  %arrayidx.i = getelementptr i32, ptr %1, i32 %mul.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp sgt i32 %4, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.investigate_write_descriptor.exit_crit_edge

for.body.investigate_write_descriptor.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %investigate_write_descriptor.exit

if.then.i:                                        ; preds = %for.body
  %arrayidx1.i = getelementptr %struct.xircom_private, ptr %add.ptr.i, i32 0, i32 4, i32 %desc.097
  %5 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx1.i, align 4
  %cmp2.not.i = icmp eq ptr %6, null
  br i1 %cmp2.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then3.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len.i, align 4
  %9 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %10, %8
  store i32 %add.i, ptr %tx_bytes.i, align 4
  %11 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx1.i, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %12, i32 noundef 1) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then3.i, %if.then.i.if.end.i_crit_edge
  %13 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx1.i, align 4
  %and.i = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then10.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %collisions.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %collisions.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end.i.if.end12.i_crit_edge
  %16 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_buffer.i, align 4
  %arrayidx15.i = getelementptr i32, ptr %17, i32 %mul.i
  %18 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %arrayidx15.i, align 4
  %19 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %20) #6
  %21 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_packets.i, align 4
  %inc17.i = add i32 %22, 1
  store i32 %inc17.i, ptr %tx_packets.i, align 4
  br label %investigate_write_descriptor.exit

investigate_write_descriptor.exit:                ; preds = %if.end12.i, %for.body.investigate_write_descriptor.exit_crit_edge
  %inc = add nuw nsw i32 %desc.097, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %investigate_write_descriptor.exit.for.body_crit_edge

investigate_write_descriptor.exit.for.body_crit_edge: ; preds = %investigate_write_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %investigate_write_descriptor.exit
  %transmit_used = getelementptr i8, ptr %dev, i32 2344
  %23 = ptrtoint ptr %transmit_used to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %transmit_used, align 4
  %add = add i32 %24, 1
  %rem = srem i32 %add, 4
  %25 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_buffer.i, align 4
  %mul = shl i32 %24, 2
  %arrayidx9 = getelementptr i32, ptr %26, i32 %mul
  %27 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp10 = icmp eq i32 %28, 0
  br i1 %cmp10, label %if.then, label %if.end50

if.then:                                          ; preds = %for.end
  %arrayidx13 = getelementptr [4 x i32], ptr @bufferoffsets, i32 0, i32 %24
  %29 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx13, align 4
  %div = sdiv i32 %30, 4
  %arrayidx14 = getelementptr i32, ptr %26, i32 %div
  %31 = call ptr @memset(ptr %arrayidx14, i32 0, i32 1536)
  %32 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_buffer.i, align 4
  %arrayidx18 = getelementptr i32, ptr %33, i32 %div
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data.i, align 4
  %38 = call ptr @memcpy(ptr %arrayidx18, ptr %37, i32 %35)
  %39 = load i32, ptr %len, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tx_buffer.i, align 4
  %add22 = or i32 %mul, 1
  %arrayidx23 = getelementptr i32, ptr %42, i32 %add22
  %43 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %arrayidx23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp24 = icmp eq i32 %24, 3
  br i1 %cmp24, label %if.then26, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then26:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_buffer.i, align 4
  %arrayidx30 = getelementptr i32, ptr %45, i32 %add22
  %46 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx30, align 4
  %or = or i32 %47, 2
  store i32 %or, ptr %arrayidx30, align 4
  br label %if.end

if.end:                                           ; preds = %if.then26, %if.then.if.end_crit_edge
  %48 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tx_buffer.i, align 4
  %arrayidx34 = getelementptr i32, ptr %49, i32 %add22
  %50 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx34, align 4
  %or35 = or i32 %51, 240
  store i32 %or35, ptr %arrayidx34, align 4
  %arrayidx36 = getelementptr %struct.xircom_private, ptr %add.ptr.i, i32 0, i32 4, i32 %24
  %52 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %skb, ptr %arrayidx36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tx_buffer.i, align 4
  %arrayidx42 = getelementptr i32, ptr %54, i32 %mul
  %55 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 128, ptr %arrayidx42, align 4
  %ioaddr1.i = getelementptr i8, ptr %dev, i32 2336
  %56 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %57, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 0) #6, !srcloc !68
  %58 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %tx_buffer.i, align 4
  %mul44 = shl nsw i32 %rem, 2
  %arrayidx45 = getelementptr i32, ptr %59, i32 %mul44
  %60 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx45, align 4
  %and = and i32 %61, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end47_crit_edge, label %if.then46

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then46:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %63, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end.if.end47_crit_edge
  %64 = ptrtoint ptr %transmit_used to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %rem, ptr %transmit_used, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  br label %cleanup

if.end50:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i94 = getelementptr inbounds %struct.netdev_queue, ptr %66, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i94) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  %ioaddr1.i95 = getelementptr i8, ptr %dev, i32 2336
  %67 = ptrtoint ptr %ioaddr1.i95 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ioaddr1.i95, align 4
  %add.ptr.i96 = getelementptr i8, ptr %68, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 0) #6, !srcloc !68
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end47
  %retval.0 = phi i32 [ 0, %if.end47 ], [ 16, %if.end50 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xircom_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr i8, ptr %dev, i32 2392
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %irq1 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  tail call void @disable_irq(i32 noundef %3) #6
  %call2 = tail call i32 @xircom_interrupt(i32 noundef %3, ptr noundef %dev)
  tail call void @enable_irq(i32 noundef %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xircom_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_instance, i32 2304
  %ioaddr1 = getelementptr i8, ptr %dev_instance, i32 2336
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %lock = getelementptr i8, ptr %dev_instance, i32 2348
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !69
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end [
    i32 0, label %entry.cleanup_crit_edge
    i32 -1, label %entry.cleanup_crit_edge77
  ]

entry.cleanup_crit_edge77:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i61 = getelementptr i8, ptr %6, i32 40
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #6, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.if.end21_crit_edge, label %if.then6

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then6:                                         ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 8) #6, !srcloc !68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xircom_interrupt.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xircom_interrupt, %do.end16)) #6
          to label %if.then13 [label %do.end16], !srcloc !71

if.then13:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xircom_interrupt.__UNIQUE_ID_ddebug345, ptr noundef %dev_instance, ptr noundef nonnull @.str.16) #6
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %if.then6
  %9 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr1, align 4
  %add.ptr.i64 = getelementptr i8, ptr %10, i32 96
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i64) #6, !srcloc !78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %conv.i = zext i8 %11 to i32
  %and.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i65 = icmp eq i32 %and.i, 0
  %and3.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %..i = select i1 %tobool4.not.i, i32 100, i32 0
  %retval.0.i66 = select i1 %tobool.not.i65, i32 10, i32 %..i
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev_instance, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i66)
  %tobool18.not = icmp eq i32 %retval.0.i66, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_carrier_on(ptr noundef %dev_instance) #6
  br label %if.end21

if.else:                                          ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @netif_carrier_off(ptr noundef %dev_instance) #6
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19, %if.end.if.end21_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #6, !srcloc !68
  %tx_buffer.i = getelementptr i8, ptr %dev_instance, i32 2308
  %tx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 3
  %collisions.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 9
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 103
  %tx_packets.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 1
  br label %for.body

for.body:                                         ; preds = %investigate_write_descriptor.exit.for.body_crit_edge, %if.end21
  %i.073 = phi i32 [ 0, %if.end21 ], [ %inc, %investigate_write_descriptor.exit.for.body_crit_edge ]
  %12 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_buffer.i, align 4
  %mul.i = shl i32 %i.073, 2
  %arrayidx.i = getelementptr i32, ptr %13, i32 %mul.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp sgt i32 %16, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.investigate_write_descriptor.exit_crit_edge

for.body.investigate_write_descriptor.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %investigate_write_descriptor.exit

if.then.i:                                        ; preds = %for.body
  %arrayidx1.i = getelementptr %struct.xircom_private, ptr %add.ptr.i, i32 0, i32 4, i32 %i.073
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx1.i, align 4
  %cmp2.not.i = icmp eq ptr %18, null
  br i1 %cmp2.not.i, label %if.then.i.if.end.i69_crit_edge, label %if.then3.i

if.then.i.if.end.i69_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i69

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  %21 = ptrtoint ptr %tx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_bytes.i, align 4
  %add.i = add i32 %22, %20
  store i32 %add.i, ptr %tx_bytes.i, align 4
  %23 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx1.i, align 4
  tail call void @__dev_kfree_skb_irq(ptr noundef %24, i32 noundef 1) #6
  br label %if.end.i69

if.end.i69:                                       ; preds = %if.then3.i, %if.then.i.if.end.i69_crit_edge
  %25 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx1.i, align 4
  %and.i67 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i67)
  %tobool.not.i68 = icmp eq i32 %and.i67, 0
  br i1 %tobool.not.i68, label %if.end.i69.if.end12.i_crit_edge, label %if.then10.i

if.end.i69.if.end12.i_crit_edge:                  ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then10.i:                                      ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %collisions.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %collisions.i, align 4
  %inc.i = add i32 %27, 1
  store i32 %inc.i, ptr %collisions.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then10.i, %if.end.i69.if.end12.i_crit_edge
  %28 = ptrtoint ptr %tx_buffer.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_buffer.i, align 4
  %arrayidx15.i = getelementptr i32, ptr %29, i32 %mul.i
  %30 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %arrayidx15.i, align 4
  %31 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_tx.i.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %32) #6
  %33 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_packets.i, align 4
  %inc17.i = add i32 %34, 1
  store i32 %inc17.i, ptr %tx_packets.i, align 4
  br label %investigate_write_descriptor.exit

investigate_write_descriptor.exit:                ; preds = %if.end12.i, %for.body.investigate_write_descriptor.exit_crit_edge
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.body26.preheader, label %investigate_write_descriptor.exit.for.body_crit_edge

investigate_write_descriptor.exit.for.body_crit_edge: ; preds = %investigate_write_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body26.preheader:                             ; preds = %investigate_write_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @investigate_read_descriptor(ptr noundef %dev_instance, ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 128)
  tail call fastcc void @investigate_read_descriptor(ptr noundef %dev_instance, ptr noundef %add.ptr.i, i32 noundef 1, i32 noundef 2048)
  tail call fastcc void @investigate_read_descriptor(ptr noundef %dev_instance, ptr noundef %add.ptr.i, i32 noundef 2, i32 noundef 4096)
  tail call fastcc void @investigate_read_descriptor(ptr noundef %dev_instance, ptr noundef %add.ptr.i, i32 noundef 3, i32 noundef 6144)
  br label %cleanup

cleanup:                                          ; preds = %for.body26.preheader, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge77
  %retval.0 = phi i32 [ 1, %for.body26.preheader ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge77 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @investigate_read_descriptor(ptr noundef %dev, ptr nocapture noundef readonly %card, i32 noundef %descnr, i32 noundef %bufferoffset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %mul = shl i32 %descnr, 2
  %arrayidx = getelementptr i32, ptr %1, i32 %mul
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then:                                          ; preds = %entry
  %5 = lshr i32 %4, 16
  %6 = trunc i32 %5 to i16
  %7 = and i16 %6, 2047
  %conv = add nsw i16 %7, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1522, i16 %7)
  %cmp2 = icmp ugt i16 %7, 1522
  br i1 %cmp2, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv151 = zext i16 %conv to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %conv151) #9
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %pkt_len.0 = phi i16 [ 1518, %if.then4 ], [ %conv, %if.then.if.end_crit_edge ]
  %conv6 = sext i16 %pkt_len.0 to i32
  %add = add nsw i32 %conv6, 2
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef %add, i32 noundef 2592) #6
  %cmp7 = icmp eq ptr %call.i, null
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 6
  br label %out

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %11, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %div48 = lshr i32 %bufferoffset, 2
  %arrayidx12 = getelementptr i32, ptr %13, i32 %div48
  %14 = call ptr @memcpy(ptr %add.ptr.i, ptr %arrayidx12, i32 %conv6)
  %call15 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %conv6) #6
  %call16 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i, ptr noundef %dev) #6
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 18
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %call16, ptr %protocol, align 8
  %call17 = tail call i32 @netif_rx(ptr noundef nonnull %call.i) #6
  %stats18 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %16 = ptrtoint ptr %stats18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stats18, align 8
  %inc19 = add i32 %17, 1
  store i32 %inc19, ptr %stats18, align 8
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 2
  br label %out

out:                                              ; preds = %if.end10, %if.then9
  %rx_bytes.sink52 = phi ptr [ %rx_bytes, %if.end10 ], [ %rx_dropped, %if.then9 ]
  %conv6.sink = phi i32 [ %conv6, %if.end10 ], [ 1, %if.then9 ]
  %18 = ptrtoint ptr %rx_bytes.sink52 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_bytes.sink52, align 8
  %add22 = add i32 %19, %conv6.sink
  store i32 %add22, ptr %rx_bytes.sink52, align 8
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %card, align 4
  %arrayidx25 = getelementptr i32, ptr %21, i32 %mul
  %22 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 128, ptr %arrayidx25, align 4
  %ioaddr1.i = getelementptr inbounds %struct.xircom_private, ptr %card, i32 0, i32 5
  %23 = ptrtoint ptr %ioaddr1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr1.i, align 4
  %add.ptr.i50 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 0) #6, !srcloc !68
  br label %if.end26

if.end26:                                         ; preds = %out, %entry.if.end26_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !13, !15, !17, !18, !19, !20, !21, !23, !24, !26, !27, !28, !30, !32, !34, !36, !37, !38, !39, !41, !43, !45, !47, !48, !49, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__UNIQUE_ID_description341, !1, !"__UNIQUE_ID_description341", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_author342, !3, !"__UNIQUE_ID_author342", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 40, i32 1}
!4 = !{ptr @__UNIQUE_ID_file343, !5, !"__UNIQUE_ID_file343", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 41, i32 1}
!6 = !{ptr @__UNIQUE_ID_license344, !5, !"__UNIQUE_ID_license344", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_xircom_cb__347_1172_xircom_ops_init6, !8, !"__initcall__kmod_xircom_cb__347_1172_xircom_ops_init6", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 1172, i32 1}
!9 = !{ptr @__exitcall_xircom_ops_exit, !8, !"__exitcall_xircom_ops_exit", i1 false, i1 false}
!10 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @xircom_ops, !12, !"xircom_ops", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 146, i32 26}
!13 = !{ptr @xircom_pci_table, !14, !"xircom_pci_table", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 140, i32 35}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 217, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @xircom_probe._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @xircom_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @xircom_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 257, i32 2}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 268, i32 3}
!26 = !{ptr @xircom_probe._entry.5, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @xircom_probe._entry_ptr.7, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 272, i32 19}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 768, i32 26}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 856, i32 8}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 1032, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @read_mac_address.__UNIQUE_ID_ddebug346, !35, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!38 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @bufferoffsets, !40, !"bufferoffsets", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 73, i32 12}
!41 = !{ptr @netdev_ops, !42, !"netdev_ops", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 173, i32 36}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 444, i32 19}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 350, i32 3}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @xircom_interrupt.__UNIQUE_ID_ddebug345, !46, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 352, i32 20}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 1114, i32 20}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 826, i32 8}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/dec/tulip/xircom_cb.c", i32 739, i32 8}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
!67 = !{i64 2152610320}
!68 = !{i64 5068198}
!69 = !{i64 5068616}
!70 = !{i64 2152608965}
!71 = !{i64 2148981186, i64 2148981191, i64 2148981204, i64 2148981248, i64 2148981282, i64 2148981303}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2156336780, i64 2156337287, i64 2156336817, i64 2156336873, i64 2156336907, i64 2156336931, i64 2156336972, i64 2156336993, i64 2156337021, i64 2156337055}
!74 = !{i64 2156338477, i64 2156338984, i64 2156338514, i64 2156338570, i64 2156338604, i64 2156338628, i64 2156338669, i64 2156338690, i64 2156338718, i64 2156338752}
!75 = !{i64 2156340346}
!76 = !{i64 2156340898}
!77 = !{i64 2156334508}
!78 = !{i64 5068396}
!79 = !{i64 2152607741}
