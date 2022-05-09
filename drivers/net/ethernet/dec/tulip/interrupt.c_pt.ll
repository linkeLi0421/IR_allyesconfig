; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/dec/tulip/interrupt.c_pt.bc'
source_filename = "../drivers/net/ethernet/dec/tulip/interrupt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tulip_chip_table = type { ptr, i32, i32, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tulip_private = type { ptr, ptr, ptr, ptr, i32, i32, [32 x %struct.ring_info], [128 x %struct.ring_info], [96 x i16], i32, i32, i32, %struct.napi_struct, %struct.timer_list, %struct.timer_list, [2 x i32], %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i16, i32, i32, [512 x i8], ptr, %struct.ethtool_wolinfo, i16, i16, i16, [4 x i16], [4 x i8], i8, ptr, i32, i32, ptr, i32, i32, i32, ptr, i32, i32, %struct.work_struct, ptr }
%struct.ring_info = type { ptr, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.121, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.121 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.page = type { i32, %union.anon.26, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }
%struct.tulip_rx_desc = type { i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.tulip_tx_desc = type { i32, i32, i32, i32 }

@tulip_debug = external dso_local local_unnamed_addr global i32, align 4
@tulip_poll.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 33, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tulip\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tulip_poll\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/net/ethernet/dec/tulip/interrupt.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c" In tulip_rx(), entry %d %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@tulip_poll.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 34, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c" In tulip_poll(), hardware disappeared\0A\00", [56 x i8] zeroinitializer }, align 32
@tulip_poll.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 38, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"In tulip_rx(), entry %d %08x\0A\00", [34 x i8] zeroinitializer }, align 32
@tulip_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 185, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Oversized Ethernet frame spanned multiple buffers, status %08x!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tulip_poll._entry_ptr = internal global ptr @tulip_poll._entry, section ".printk_index", align 4
@tulip_poll.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Receive error, Rx status %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@tulip_rx_copybreak = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@tulip_poll._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 241, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Internal fault: The skbuff addresses do not match in tulip_rx: %08x vs. %08llx %p / %p\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tulip_poll._entry_ptr.13 = internal global ptr @tulip_poll._entry.10, section ".printk_index", align 4
@tulip_tbl = external dso_local local_unnamed_addr constant [0 x %struct.tulip_chip_table], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tulip_max_interrupt_work = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@tulip_interrupt.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -110, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tulip_interrupt\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"interrupt  csr5=%#8.8x new csr5=%#8.8x\0A\00", [56 x i8] zeroinitializer }, align 32
@tulip_interrupt.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 -102, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Transmit error, Tx status %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@tulip_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.2, i32 655, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Out-of-sync dirty pointer, %d vs. %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tulip_interrupt._entry_ptr = internal global ptr @tulip_interrupt._entry, section ".printk_index", align 4
@tulip_interrupt._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 669, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"The transmitter stopped.  CSR5 is %x, CSR6 %x, new CSR6 %x\0A\00", [36 x i8] zeroinitializer }, align 32
@tulip_interrupt._entry_ptr.20 = internal global ptr @tulip_interrupt._entry.18, section ".printk_index", align 4
@tulip_interrupt._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 723, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(%lu) System Error occurred (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@tulip_interrupt._entry_ptr.23 = internal global ptr @tulip_interrupt._entry.21, section ".printk_index", align 4
@tulip_interrupt._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.2, i32 734, ptr @.str.12, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Re-enabling interrupts, %08x\0A\00", [34 x i8] zeroinitializer }, align 32
@tulip_interrupt._entry_ptr.26 = internal global ptr @tulip_interrupt._entry.24, section ".printk_index", align 4
@tulip_interrupt._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.14, ptr @.str.2, i32 742, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Too much work during an interrupt, csr5=0x%08x. (%lu) (%d,%d,%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@tulip_interrupt._entry_ptr.29 = internal global ptr @tulip_interrupt._entry.27, section ".printk_index", align 4
@tulip_interrupt.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.30, i8 0, i8 -52, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"exiting interrupt, csr5=%#04x\0A\00", [33 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tulip_stop_rxtx.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.34, ptr @.str.35, i8 0, i8 -119, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tulip_stop_rxtx\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/dec/tulip/tulip.h\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"tulip_stop_rxtx() failed (CSR5 0x%x CSR6 0x%x)\0A\00", [48 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 131, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 136, i32 4 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 152, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 183, i32 56 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 191, i32 7 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"tulip_rx_copybreak\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 17, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 237, i32 48 }
@___asan_gen_.81 = private unnamed_addr constant [25 x i8] c"tulip_max_interrupt_work\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 18, i32 14 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 586, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 618, i32 7 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 653, i32 5 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 666, i32 6 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 721, i32 5 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 732, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 741, i32 5 }
@___asan_gen_.124 = private constant [46 x i8] c"../drivers/net/ethernet/dec/tulip/interrupt.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 818, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 326, i32 6 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [42 x i8] c"../drivers/net/ethernet/dec/tulip/tulip.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 546, i32 4 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @tulip_interrupt._entry, ptr @tulip_interrupt._entry.18, ptr @tulip_interrupt._entry.21, ptr @tulip_interrupt._entry.24, ptr @tulip_interrupt._entry.27, ptr @tulip_interrupt._entry_ptr, ptr @tulip_interrupt._entry_ptr.20, ptr @tulip_interrupt._entry_ptr.23, ptr @tulip_interrupt._entry_ptr.26, ptr @tulip_interrupt._entry_ptr.29, ptr @tulip_poll._entry, ptr @tulip_poll._entry.10, ptr @tulip_poll._entry_ptr, ptr @tulip_poll._entry_ptr.13, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @tulip_rx_copybreak, ptr @.str.11, ptr @.str.12, ptr @tulip_max_interrupt_work, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_rx_copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_poll._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_max_interrupt_work to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_interrupt._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_interrupt._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_interrupt._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tulip_interrupt._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tulip_refill_rx(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %cur_rx = getelementptr i8, ptr %dev, i32 4232
  %dirty_rx = getelementptr i8, ptr %dev, i32 4240
  %0 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_rx, align 8
  %2 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dirty_rx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not76 = icmp eq i32 %1, %3
  br i1 %cmp.not76, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdev = getelementptr i8, ptr %dev, i32 4832
  %rx_ring = getelementptr i8, ptr %dev, i32 2312
  br label %for.body

for.body:                                         ; preds = %if.end26.for.body_crit_edge, %for.body.lr.ph
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %inc30, %if.end26.for.body_crit_edge ]
  %refilled.077 = phi i32 [ 0, %for.body.lr.ph ], [ %refilled.2, %if.end26.for.body_crit_edge ]
  %rem = and i32 %4, 127
  %arrayidx = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 7, i32 %rem
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 8
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %if.then, label %for.body.if.end26_crit_edge

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then:                                          ; preds = %for.body
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev, i32 noundef 1540, i32 noundef 2592) #5
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %arrayidx, align 8
  %cmp9 = icmp eq ptr %call.i, null
  br i1 %cmp9, label %if.then.for.end_crit_edge, label %if.end

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end:                                           ; preds = %if.then
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 8
  %dev11 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %data = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %call.i68 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %11) #5
  br i1 %call.i68, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !80

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev11) #5
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev11, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #5
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @debug_dma_map_single(ptr noundef %dev11, ptr noundef %11, i32 noundef 1540) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %17 = ptrtoint ptr %11 to i32
  %sub.i = add i32 %17, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i69 = getelementptr %struct.page, ptr %16, i32 %shr.i
  %and.i = and i32 %17, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev11, ptr noundef %add.ptr.i69, i32 noundef %and.i, i32 noundef 1540, i32 noundef 2, i32 noundef 0) #5
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 8
  %dev14 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  tail call void @debug_dma_mapping_error(ptr noundef %dev14, i32 noundef %retval.0.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, -1
  br i1 %cmp.i, label %if.then16, label %cleanup

if.then16:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @consume_skb(ptr noundef nonnull %call.i) #5
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx, align 8
  br label %for.end

cleanup:                                          ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  %mapping23 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 7, i32 %rem, i32 1
  %21 = ptrtoint ptr %mapping23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i, ptr %mapping23, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i)
  %23 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_ring, align 8
  %buffer1 = getelementptr %struct.tulip_rx_desc, ptr %24, i32 %rem, i32 2
  %25 = ptrtoint ptr %buffer1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %buffer1, align 4
  %inc = add i32 %refilled.077, 1
  br label %if.end26

if.end26:                                         ; preds = %cleanup, %for.body.if.end26_crit_edge
  %refilled.2 = phi i32 [ %inc, %cleanup ], [ %refilled.077, %for.body.if.end26_crit_edge ]
  %26 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_ring, align 8
  %arrayidx28 = getelementptr %struct.tulip_rx_desc, ptr %27, i32 %rem
  %28 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 128, ptr %arrayidx28, align 4
  %29 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dirty_rx, align 8
  %inc30 = add i32 %30, 1
  store i32 %inc30, ptr %dirty_rx, align 8
  %31 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cur_rx, align 8
  %cmp.not = icmp eq i32 %32, %inc30
  br i1 %cmp.not, label %if.end26.for.end_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %if.end26.for.end_crit_edge, %if.then16, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  %refilled.075 = phi i32 [ %refilled.077, %if.then16 ], [ 0, %entry.for.end_crit_edge ], [ %refilled.2, %if.end26.for.end_crit_edge ], [ %refilled.077, %if.then.for.end_crit_edge ]
  %chip_id = getelementptr i8, ptr %dev, i32 3800
  %33 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp31 = icmp eq i32 %34, 4
  br i1 %cmp31, label %if.then32, label %for.end.if.end39_crit_edge

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then32:                                        ; preds = %for.end
  %base_addr = getelementptr i8, ptr %dev, i32 4848
  %35 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base_addr, align 8
  %add.ptr = getelementptr i8, ptr %36, i32 40
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %38 = and i32 %37, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %38)
  %cmp34 = icmp eq i32 %38, 2048
  br i1 %cmp34, label %if.then35, label %if.then32.if.end39_crit_edge

if.then32.if.end39_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base_addr, align 8
  %add.ptr37 = getelementptr i8, ptr %40, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 16777216) #5, !srcloc !84
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.then32.if.end39_crit_edge, %for.end.if.end39_crit_edge
  ret i32 %refilled.075
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @oom_timer(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr i8, ptr %t, i32 -272
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #5
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__napi_schedule(ptr noundef %napi) #5
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tulip_poll(ptr noundef %napi, i32 noundef %budget) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr i8, ptr %napi, i32 1088
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %cur_rx = getelementptr i8, ptr %napi, i32 416
  %2 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_rx, align 8
  %rem = and i32 %3, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %budget)
  %cmp = icmp sgt i32 %budget, 127
  %dec = sext i1 %cmp to i32
  %spec.select = add i32 %dec, %budget
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %4 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp3 = icmp sgt i32 %4, 4
  br i1 %cmp3, label %do.body5, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_poll.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_poll, %if.end14)) #5
          to label %if.then10 [label %if.end14], !srcloc !85

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %rx_ring = getelementptr i8, ptr %napi, i32 -1504
  %5 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_ring, align 8
  %arrayidx = getelementptr %struct.tulip_rx_desc, ptr %6, i32 %rem
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_poll.__UNIQUE_ID_ddebug342, ptr noundef %1, ptr noundef nonnull @.str.3, i32 noundef %rem, i32 noundef %8) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %do.body5, %entry.if.end14_crit_edge
  %base_addr = getelementptr i8, ptr %napi, i32 1032
  %rx_ring44 = getelementptr i8, ptr %napi, i32 -1504
  %dirty_rx = getelementptr i8, ptr %napi, i32 424
  %pdev = getelementptr i8, ptr %napi, i32 1016
  %rx_buffers = getelementptr i8, ptr %napi, i32 -1232
  %dev210 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 133
  %stats233 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 2
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 10
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 4
  %rx_frame_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 13
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 12
  %rx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 36, i32 14
  br label %do.body15

do.body15:                                        ; preds = %do.cond252.do.body15_crit_edge, %if.end14
  %received.0 = phi i32 [ 0, %if.end14 ], [ %received.1.lcssa, %do.cond252.do.body15_crit_edge ]
  %work_done.0 = phi i32 [ 0, %if.end14 ], [ %work_done.1.lcssa, %do.cond252.do.body15_crit_edge ]
  %entry2.0 = phi i32 [ %rem, %if.end14 ], [ %entry2.1.lcssa, %do.cond252.do.body15_crit_edge ]
  %9 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base_addr, align 8
  %add.ptr16 = getelementptr i8, ptr %10, i32 40
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #5, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %cmp18 = icmp eq i32 %11, -1
  br i1 %cmp18, label %do.body21, label %if.end41

do.body21:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_poll.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_poll, %do.end258)) #5
          to label %if.then35 [label %do.end258], !srcloc !85

if.then35:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_poll.__UNIQUE_ID_ddebug343, ptr noundef %1, ptr noundef nonnull @.str.4) #5
  br label %do.end258

if.end41:                                         ; preds = %do.body15
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr, align 8
  %add.ptr43 = getelementptr i8, ptr %13, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 -1073741824) #5, !srcloc !84
  %14 = ptrtoint ptr %rx_ring44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_ring44, align 8
  %arrayidx45476 = getelementptr %struct.tulip_rx_desc, ptr %15, i32 %entry2.0
  %16 = ptrtoint ptr %arrayidx45476 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx45476, align 4
  %and477 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and477)
  %tobool47.not478 = icmp eq i32 %and477, 0
  br i1 %tobool47.not478, label %if.end41.while.body_crit_edge, label %if.end41.do.cond252_crit_edge

if.end41.do.cond252_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond252

if.end41.while.body_crit_edge:                    ; preds = %if.end41
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %if.end41.while.body_crit_edge
  %18 = phi i32 [ %87, %cleanup.while.body_crit_edge ], [ %17, %if.end41.while.body_crit_edge ]
  %entry2.1481 = phi i32 [ %rem242, %cleanup.while.body_crit_edge ], [ %entry2.0, %if.end41.while.body_crit_edge ]
  %work_done.1480 = phi i32 [ %inc, %cleanup.while.body_crit_edge ], [ %work_done.0, %if.end41.while.body_crit_edge ]
  %received.1479 = phi i32 [ %inc239, %cleanup.while.body_crit_edge ], [ %received.0, %if.end41.while.body_crit_edge ]
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dirty_rx, align 8
  %add = add i32 %21, 128
  %22 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_rx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %23)
  %cmp55 = icmp eq i32 %add, %23
  br i1 %cmp55, label %while.body.do.cond252_crit_edge, label %if.end57

while.body.do.cond252_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond252

if.end57:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %24 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %24)
  %cmp58 = icmp sgt i32 %24, 5
  br i1 %cmp58, label %do.body61, label %if.end57.if.end81_crit_edge

if.end57.if.end81_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

do.body61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_poll.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_poll, %if.end81)) #5
          to label %if.then75 [label %if.end81], !srcloc !85

if.then75:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_poll.__UNIQUE_ID_ddebug344, ptr noundef %1, ptr noundef nonnull @.str.5, i32 noundef %entry2.1481, i32 noundef %19) #5
  br label %if.end81

if.end81:                                         ; preds = %if.then75, %do.body61, %if.end57.if.end81_crit_edge
  %inc = add i32 %work_done.1480, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %spec.select)
  %cmp82.not = icmp slt i32 %inc, %spec.select
  br i1 %cmp82.not, label %if.end84, label %not_done

if.end84:                                         ; preds = %if.end81
  %25 = lshr i32 %19, 16
  %26 = trunc i32 %25 to i16
  %27 = and i16 %26, 2047
  %and86 = and i32 %19, 939543378
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and86)
  %cmp87.not = icmp eq i32 %and86, 768
  br i1 %cmp87.not, label %lor.lhs.false, label %if.end84.if.then92_crit_edge

if.end84.if.then92_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then92

lor.lhs.false:                                    ; preds = %if.end84
  %conv = add nsw i16 %27, -4
  %conv89 = sext i16 %conv to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 1522, i16 %27)
  %cmp90 = icmp ugt i16 %27, 1522
  br i1 %cmp90, label %lor.lhs.false.if.then92_crit_edge, label %if.else168

lor.lhs.false.if.then92_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then92

if.then92:                                        ; preds = %lor.lhs.false.if.then92_crit_edge, %if.end84.if.then92_crit_edge
  %and93 = and i32 %19, 939524880
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and93)
  %cmp94.not = icmp eq i32 %and93, 768
  br i1 %cmp94.not, label %if.else, label %if.then96

if.then96:                                        ; preds = %if.then92
  %and97 = and i32 %19, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and97)
  %cmp98.not = icmp eq i32 %and97, 32767
  br i1 %cmp98.not, label %if.then96.if.end238_crit_edge, label %if.then100

if.then96.if.end238_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end238

if.then100:                                       ; preds = %if.then96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %28 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp101 = icmp sgt i32 %28, 1
  br i1 %cmp101, label %do.end106, label %if.then100.if.end238.sink.split_crit_edge

if.then100.if.end238.sink.split_crit_edge:        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end238.sink.split

do.end106:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev210, ptr noundef nonnull @.str.6, i32 noundef %19) #8
  br label %if.end238.sink.split

if.else:                                          ; preds = %if.then92
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %29 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp111 = icmp sgt i32 %29, 2
  br i1 %cmp111, label %do.body115, label %if.else.if.end135_crit_edge

if.else.if.end135_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end135

do.body115:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_poll.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_poll, %if.end135)) #5
          to label %if.then129 [label %if.end135], !srcloc !85

if.then129:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_poll.__UNIQUE_ID_ddebug345, ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %19) #5
  br label %if.end135

if.end135:                                        ; preds = %if.then129, %do.body115, %if.else.if.end135_crit_edge
  %30 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_errors, align 8
  %inc137 = add i32 %31, 1
  store i32 %inc137, ptr %rx_errors, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 1523, i16 %27)
  %cmp139 = icmp ult i16 %27, 1523
  %and142 = and i32 %19, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  %or.cond = select i1 %cmp139, i1 %tobool143.not, i1 false
  br i1 %or.cond, label %if.end135.if.end148_crit_edge, label %if.then144

if.end135.if.end148_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end148

if.then144:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_length_errors, align 8
  %inc147 = add i32 %33, 1
  store i32 %inc147, ptr %rx_length_errors, align 8
  br label %if.end148

if.end148:                                        ; preds = %if.then144, %if.end135.if.end148_crit_edge
  %and149 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149)
  %tobool150.not = icmp eq i32 %and149, 0
  br i1 %tobool150.not, label %if.end148.if.end154_crit_edge, label %if.then151

if.end148.if.end154_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end154

if.then151:                                       ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %rx_frame_errors to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rx_frame_errors, align 4
  %inc153 = add i32 %35, 1
  store i32 %inc153, ptr %rx_frame_errors, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %if.end148.if.end154_crit_edge
  %and155 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.end154.if.end160_crit_edge, label %if.then157

if.end154.if.end160_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end160

if.then157:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_crc_errors, align 8
  %inc159 = add i32 %37, 1
  store i32 %inc159, ptr %rx_crc_errors, align 8
  br label %if.end160

if.end160:                                        ; preds = %if.then157, %if.end154.if.end160_crit_edge
  %and161 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.end160.if.end238_crit_edge, label %if.end160.if.end238.sink.split_crit_edge

if.end160.if.end238.sink.split_crit_edge:         ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end238.sink.split

if.end160.if.end238_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end238

if.else168:                                       ; preds = %lor.lhs.false
  %38 = load i32, ptr @tulip_rx_copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv89)
  %cmp170 = icmp sgt i32 %38, %conv89
  br i1 %cmp170, label %land.lhs.true, label %if.else168.if.else193_crit_edge

if.else168.if.else193_crit_edge:                  ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else193

land.lhs.true:                                    ; preds = %if.else168
  %add173 = add nsw i32 %conv89, 2
  %call.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add173, i32 noundef 2592) #5
  %cmp175.not = icmp eq ptr %call.i, null
  br i1 %cmp175.not, label %land.lhs.true.if.else193_crit_edge, label %if.then177

land.lhs.true.if.else193_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else193

if.then177:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 2
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %41 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %42, i32 2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %43 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev, align 8
  %dev178 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %arrayidx179 = getelementptr [128 x %struct.ring_info], ptr %rx_buffers, i32 0, i32 %entry2.1481
  %mapping = getelementptr inbounds %struct.ring_info, ptr %arrayidx179, i32 0, i32 1
  %45 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mapping, align 4
  tail call void @dma_sync_single_for_cpu(ptr noundef %dev178, i32 noundef %46, i32 noundef %conv89, i32 noundef 2) #5
  %47 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx179, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %48, i32 0, i32 19
  %49 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data, align 4
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i, align 4
  %53 = call ptr @memcpy(ptr %52, ptr %50, i32 %conv89)
  %call186 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %conv89) #5
  %54 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev, align 8
  %dev188 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %56 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mapping, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %dev188, i32 noundef %57, i32 noundef %conv89, i32 noundef 2) #5
  br label %if.end230

if.else193:                                       ; preds = %land.lhs.true.if.else193_crit_edge, %if.else168.if.else193_crit_edge
  %arrayidx195 = getelementptr [128 x %struct.ring_info], ptr %rx_buffers, i32 0, i32 %entry2.1481
  %58 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx195, align 8
  %call198 = tail call ptr @skb_put(ptr noundef %59, i32 noundef %conv89) #5
  %mapping201 = getelementptr inbounds %struct.ring_info, ptr %arrayidx195, i32 0, i32 1
  %60 = ptrtoint ptr %mapping201 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mapping201, align 4
  %62 = ptrtoint ptr %rx_ring44 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rx_ring44, align 8
  %buffer1 = getelementptr %struct.tulip_rx_desc, ptr %63, i32 %entry2.1481, i32 2
  %64 = ptrtoint ptr %buffer1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %buffer1, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %66)
  %cmp204.not = icmp eq i32 %61, %66
  br i1 %cmp204.not, label %if.else193.if.end218_crit_edge, label %do.end209

if.else193.if.end218_crit_edge:                   ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end218

do.end209:                                        ; preds = %if.else193
  call void @__sanitizer_cov_trace_pc() #7
  %conv217 = zext i32 %61 to i64
  %head = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 18
  %67 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %head, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev210, ptr noundef nonnull @.str.11, i32 noundef %66, i64 noundef %conv217, ptr noundef %68, ptr noundef %call198) #8
  br label %if.end218

if.end218:                                        ; preds = %do.end209, %if.else193.if.end218_crit_edge
  %69 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdev, align 8
  %dev220 = getelementptr inbounds %struct.pci_dev, ptr %70, i32 0, i32 44
  %71 = ptrtoint ptr %mapping201 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mapping201, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev220, i32 noundef %72, i32 noundef 1540, i32 noundef 2, i32 noundef 0) #5
  %73 = ptrtoint ptr %arrayidx195 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %arrayidx195, align 8
  %74 = ptrtoint ptr %mapping201 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %mapping201, align 4
  br label %if.end230

if.end230:                                        ; preds = %if.end218, %if.then177
  %skb.0 = phi ptr [ %call.i, %if.then177 ], [ %59, %if.end218 ]
  %call231 = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0, ptr noundef %1) #5
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 15, i32 0, i32 18
  %75 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %call231, ptr %protocol, align 8
  %call232 = tail call i32 @netif_receive_skb(ptr noundef %skb.0) #5
  %76 = ptrtoint ptr %stats233 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %stats233, align 8
  %inc234 = add i32 %77, 1
  store i32 %inc234, ptr %stats233, align 8
  br label %if.end238.sink.split

if.end238.sink.split:                             ; preds = %if.end230, %if.end160.if.end238.sink.split_crit_edge, %do.end106, %if.then100.if.end238.sink.split_crit_edge
  %rx_length_errors.sink498 = phi ptr [ %rx_bytes, %if.end230 ], [ %rx_length_errors, %do.end106 ], [ %rx_length_errors, %if.then100.if.end238.sink.split_crit_edge ], [ %rx_fifo_errors, %if.end160.if.end238.sink.split_crit_edge ]
  %.sink497 = phi i32 [ %conv89, %if.end230 ], [ 1, %do.end106 ], [ 1, %if.then100.if.end238.sink.split_crit_edge ], [ 1, %if.end160.if.end238.sink.split_crit_edge ]
  %78 = ptrtoint ptr %rx_length_errors.sink498 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_length_errors.sink498, align 8
  %inc109 = add i32 %79, %.sink497
  store i32 %inc109, ptr %rx_length_errors.sink498, align 8
  br label %if.end238

if.end238:                                        ; preds = %if.end238.sink.split, %if.end160.if.end238_crit_edge, %if.then96.if.end238_crit_edge
  %inc239 = add i32 %received.1479, 1
  %80 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cur_rx, align 8
  %inc241 = add i32 %81, 1
  store i32 %inc241, ptr %cur_rx, align 8
  %rem242 = and i32 %inc241, 127
  %82 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dirty_rx, align 8
  %sub245 = sub i32 %inc241, %83
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub245)
  %cmp246 = icmp ugt i32 %sub245, 32
  br i1 %cmp246, label %if.then248, label %if.end238.cleanup_crit_edge

if.end238.cleanup_crit_edge:                      ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then248:                                       ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #7
  %call249 = tail call i32 @tulip_refill_rx(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then248, %if.end238.cleanup_crit_edge
  %84 = ptrtoint ptr %rx_ring44 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rx_ring44, align 8
  %arrayidx45 = getelementptr %struct.tulip_rx_desc, ptr %85, i32 %rem242
  %86 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx45, align 4
  %and = and i32 %87, 128
  %tobool47.not = icmp eq i32 %and, 0
  br i1 %tobool47.not, label %cleanup.while.body_crit_edge, label %cleanup.do.cond252_crit_edge

cleanup.do.cond252_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.cond252

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.cond252:                                       ; preds = %cleanup.do.cond252_crit_edge, %while.body.do.cond252_crit_edge, %if.end41.do.cond252_crit_edge
  %received.1.lcssa = phi i32 [ %received.0, %if.end41.do.cond252_crit_edge ], [ %received.1479, %while.body.do.cond252_crit_edge ], [ %inc239, %cleanup.do.cond252_crit_edge ]
  %work_done.1.lcssa = phi i32 [ %work_done.0, %if.end41.do.cond252_crit_edge ], [ %work_done.1480, %while.body.do.cond252_crit_edge ], [ %inc, %cleanup.do.cond252_crit_edge ]
  %entry2.1.lcssa = phi i32 [ %entry2.0, %if.end41.do.cond252_crit_edge ], [ %entry2.1481, %while.body.do.cond252_crit_edge ], [ %rem242, %cleanup.do.cond252_crit_edge ]
  %88 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base_addr, align 8
  %add.ptr254 = getelementptr i8, ptr %89, i32 40
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr254) #5, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %91 = and i32 %90, 1073741824
  %tobool257.not = icmp eq i32 %91, 0
  br i1 %tobool257.not, label %do.cond252.do.end258_crit_edge, label %do.cond252.do.body15_crit_edge

do.cond252.do.body15_crit_edge:                   ; preds = %do.cond252
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body15

do.cond252.do.end258_crit_edge:                   ; preds = %do.cond252
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end258

do.end258:                                        ; preds = %do.cond252.do.end258_crit_edge, %if.then35, %do.body21
  %received.4 = phi i32 [ %received.0, %if.then35 ], [ %received.0, %do.body21 ], [ %received.1.lcssa, %do.cond252.do.end258_crit_edge ]
  %work_done.4 = phi i32 [ %work_done.0, %if.then35 ], [ %work_done.0, %do.body21 ], [ %work_done.1.lcssa, %do.cond252.do.end258_crit_edge ]
  %flags = getelementptr i8, ptr %napi, i32 -8
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %flags, align 8
  %and259 = and i32 %93, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259)
  %tobool260.not = icmp eq i32 %and259, 0
  br i1 %tobool260.not, label %do.end258.if.end280_crit_edge, label %if.then261

do.end258.if.end280_crit_edge:                    ; preds = %do.end258
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end280

if.then261:                                       ; preds = %do.end258
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %received.4)
  %cmp262 = icmp sgt i32 %received.4, 1
  %mit_on = getelementptr i8, ptr %napi, i32 432
  %94 = ptrtoint ptr %mit_on to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mit_on, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool265.not = icmp eq i32 %95, 0
  br i1 %cmp262, label %if.then264, label %if.else271

if.then264:                                       ; preds = %if.then261
  br i1 %tobool265.not, label %if.then266, label %if.then264.if.end280_crit_edge

if.then264.if.end280_crit_edge:                   ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end280

if.then266:                                       ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %mit_on to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %mit_on, align 8
  %97 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base_addr, align 8
  %add.ptr269 = getelementptr i8, ptr %98, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr269, i32 61824) #5, !srcloc !84
  br label %if.end280

if.else271:                                       ; preds = %if.then261
  br i1 %tobool265.not, label %if.else271.if.end280_crit_edge, label %if.then274

if.else271.if.end280_crit_edge:                   ; preds = %if.else271
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end280

if.then274:                                       ; preds = %if.else271
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %mit_on to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 0, ptr %mit_on, align 8
  %100 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base_addr, align 8
  %add.ptr277 = getelementptr i8, ptr %101, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr277, i32 0) #5, !srcloc !84
  br label %if.end280

if.end280:                                        ; preds = %if.then274, %if.else271.if.end280_crit_edge, %if.then266, %if.then264.if.end280_crit_edge, %do.end258.if.end280_crit_edge
  %call281 = tail call i32 @tulip_refill_rx(ptr noundef %1)
  %102 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %dirty_rx, align 8
  %rem284 = and i32 %103, 127
  %arrayidx285 = getelementptr [128 x %struct.ring_info], ptr %rx_buffers, i32 0, i32 %rem284
  %104 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx285, align 8
  %cmp287 = icmp eq ptr %105, null
  br i1 %cmp287, label %if.end280.oom_crit_edge, label %if.end290

if.end280.oom_crit_edge:                          ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #7
  br label %oom

if.end290:                                        ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #7
  %call291 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.4) #5
  %chip_id = getelementptr i8, ptr %napi, i32 -16
  %106 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %chip_id, align 8
  %valid_intrs = getelementptr [0 x %struct.tulip_chip_table], ptr @tulip_tbl, i32 0, i32 %107, i32 2
  %108 = ptrtoint ptr %valid_intrs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %valid_intrs, align 4
  %110 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base_addr, align 8
  %add.ptr294 = getelementptr i8, ptr %111, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %112 = tail call i32 @llvm.bswap.i32(i32 %109) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr294, i32 %112) #5, !srcloc !84
  br label %cleanup323

not_done:                                         ; preds = %if.end81
  %113 = add i32 %work_done.0, 1
  %smax.le = call i32 @llvm.smax.i32(i32 %spec.select, i32 %113)
  %114 = ptrtoint ptr %cur_rx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cur_rx, align 8
  %116 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %dirty_rx, align 8
  %sub297 = sub i32 %115, %117
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub297)
  %cmp298 = icmp ugt i32 %sub297, 64
  br i1 %cmp298, label %not_done.if.then308_crit_edge, label %lor.lhs.false300

not_done.if.then308_crit_edge:                    ; preds = %not_done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then308

lor.lhs.false300:                                 ; preds = %not_done
  %rem303 = and i32 %117, 127
  %arrayidx304 = getelementptr [128 x %struct.ring_info], ptr %rx_buffers, i32 0, i32 %rem303
  %118 = ptrtoint ptr %arrayidx304 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx304, align 8
  %cmp306 = icmp eq ptr %119, null
  br i1 %cmp306, label %lor.lhs.false300.if.then308_crit_edge, label %lor.lhs.false300.if.end310_crit_edge

lor.lhs.false300.if.end310_crit_edge:             ; preds = %lor.lhs.false300
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end310

lor.lhs.false300.if.then308_crit_edge:            ; preds = %lor.lhs.false300
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then308

if.then308:                                       ; preds = %lor.lhs.false300.if.then308_crit_edge, %not_done.if.then308_crit_edge
  %call309 = tail call i32 @tulip_refill_rx(ptr noundef %1)
  br label %if.end310

if.end310:                                        ; preds = %if.then308, %lor.lhs.false300.if.end310_crit_edge
  %120 = ptrtoint ptr %dirty_rx to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dirty_rx, align 8
  %rem313 = and i32 %121, 127
  %arrayidx314 = getelementptr [128 x %struct.ring_info], ptr %rx_buffers, i32 0, i32 %rem313
  %122 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %arrayidx314, align 8
  %cmp316 = icmp eq ptr %123, null
  br i1 %cmp316, label %if.end310.oom_crit_edge, label %if.end310.cleanup323_crit_edge

if.end310.cleanup323_crit_edge:                   ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup323

if.end310.oom_crit_edge:                          ; preds = %if.end310
  call void @__sanitizer_cov_trace_pc() #7
  br label %oom

oom:                                              ; preds = %if.end310.oom_crit_edge, %if.end280.oom_crit_edge
  %work_done.5 = phi i32 [ %work_done.4, %if.end280.oom_crit_edge ], [ %smax.le, %if.end310.oom_crit_edge ]
  %oom_timer = getelementptr i8, ptr %napi, i32 272
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %124 = load volatile i32, ptr @jiffies, align 128
  %add320 = add i32 %124, 1
  %call321 = tail call i32 @mod_timer(ptr noundef %oom_timer, i32 noundef %add320) #5
  %call322 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %work_done.5) #5
  br label %cleanup323

cleanup323:                                       ; preds = %oom, %if.end310.cleanup323_crit_edge, %if.end290
  %retval.0 = phi i32 [ %work_done.5, %oom ], [ %work_done.4, %if.end290 ], [ %smax.le, %if.end310.cleanup323_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tulip_interrupt(i32 noundef %irq, ptr noundef %dev_instance) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_instance, i32 2304
  %base_addr = getelementptr i8, ptr %dev_instance, i32 4848
  %0 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr, align 8
  %2 = load i32, ptr @tulip_max_interrupt_work, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !81
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %flags = getelementptr i8, ptr %dev_instance, i32 3808
  %and3 = and i32 %4, 98304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %cmp = icmp eq i32 %and3, 0
  br i1 %cmp, label %entry.cleanup359_crit_edge, label %if.end6

entry.cleanup359_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup359

if.end6:                                          ; preds = %entry
  %nir = getelementptr i8, ptr %dev_instance, i32 4844
  %5 = ptrtoint ptr %nir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nir, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %nir, align 4
  %chip_id = getelementptr i8, ptr %dev_instance, i32 3800
  %add.ptr13 = getelementptr i8, ptr %1, i32 56
  %napi = getelementptr i8, ptr %dev_instance, i32 3816
  %lock = getelementptr i8, ptr %dev_instance, i32 4144
  %dirty_tx40 = getelementptr i8, ptr %dev_instance, i32 4244
  %cur_tx = getelementptr i8, ptr %dev_instance, i32 4236
  %tx_ring = getelementptr i8, ptr %dev_instance, i32 2316
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 5
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 16
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 17
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 20
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 18
  %full_duplex = getelementptr i8, ptr %dev_instance, i32 4252
  %tx_heartbeat_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 19
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 3
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 9
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 1
  %pdev131 = getelementptr i8, ptr %dev_instance, i32 4832
  %dev159 = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 133
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 103
  %add.ptr178 = getelementptr i8, ptr %1, i32 48
  %csr6 = getelementptr i8, ptr %dev_instance, i32 4260
  %add.ptr209 = getelementptr i8, ptr %1, i32 8
  %mc_filter = getelementptr i8, ptr %dev_instance, i32 4136
  %add.ptr219 = getelementptr i8, ptr %1, i32 172
  %arrayidx221 = getelementptr i8, ptr %dev_instance, i32 4140
  %add.ptr222 = getelementptr i8, ptr %1, i32 176
  %add.ptr228 = getelementptr i8, ptr %1, i32 64
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 15
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 4
  %link_change = getelementptr i8, ptr %dev_instance, i32 4776
  %ttimer = getelementptr i8, ptr %dev_instance, i32 4836
  br label %do.body

do.body:                                          ; preds = %if.end311.do.body_crit_edge, %if.end6
  %tx.0 = phi i32 [ 0, %if.end6 ], [ %tx.4, %if.end311.do.body_crit_edge ]
  %oi.0 = phi i32 [ 0, %if.end6 ], [ %oi.2, %if.end311.do.body_crit_edge ]
  %rxd.0 = phi i32 [ 0, %if.end6 ], [ %rxd.1, %if.end311.do.body_crit_edge ]
  %work_count.0 = phi i32 [ %2, %if.end6 ], [ %dec, %if.end311.do.body_crit_edge ]
  %csr5.0 = phi i32 [ %4, %if.end6 ], [ %spec.select, %if.end311.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rxd.0)
  %tobool7.not = icmp eq i32 %rxd.0, 0
  br i1 %tobool7.not, label %land.lhs.true, label %do.body.if.end18_crit_edge

do.body.if.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

land.lhs.true:                                    ; preds = %do.body
  %and8 = and i32 %csr5.0, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end18_crit_edge, label %if.then10

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then10:                                        ; preds = %land.lhs.true
  %7 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chip_id, align 8
  %valid_intrs = getelementptr [0 x %struct.tulip_chip_table], ptr @tulip_tbl, i32 0, i32 %8, i32 2
  %9 = ptrtoint ptr %valid_intrs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %valid_intrs, align 4
  %and12 = and i32 %10, -961
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %and12) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %11) #5, !srcloc !84
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #5
  br i1 %call.i, label %if.then.i, label %if.then10.napi_schedule.exit_crit_edge

if.then10.napi_schedule.exit_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__napi_schedule(ptr noundef %napi) #5
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %if.then10.napi_schedule.exit_crit_edge
  %and14 = and i32 %csr5.0, -99281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %napi_schedule.exit.do.end321_crit_edge, label %napi_schedule.exit.if.end18_crit_edge

napi_schedule.exit.if.end18_crit_edge:            ; preds = %napi_schedule.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

napi_schedule.exit.do.end321_crit_edge:           ; preds = %napi_schedule.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end321

if.end18:                                         ; preds = %napi_schedule.exit.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %do.body.if.end18_crit_edge
  %tobool314.not = phi i1 [ false, %napi_schedule.exit.if.end18_crit_edge ], [ true, %land.lhs.true.if.end18_crit_edge ], [ false, %do.body.if.end18_crit_edge ]
  %rxd.1 = phi i32 [ 1, %napi_schedule.exit.if.end18_crit_edge ], [ 0, %land.lhs.true.if.end18_crit_edge ], [ 1, %do.body.if.end18_crit_edge ]
  %and19 = and i32 %csr5.0, 130879
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %and19) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #5, !srcloc !84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %13 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp21 = icmp sgt i32 %13, 4
  br i1 %cmp21, label %do.body24, label %if.end18.if.end36_crit_edge

if.end18.if.end36_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

do.body24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_interrupt.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_interrupt, %if.end36)) #5
          to label %if.then30 [label %if.end36], !srcloc !85

if.then30:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #7
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !81
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_interrupt.__UNIQUE_ID_ddebug346, ptr noundef %dev_instance, ptr noundef nonnull @.str.15, i32 noundef %csr5.0, i32 noundef %15) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then30, %do.body24, %if.end18.if.end36_crit_edge
  %and37 = and i32 %csr5.0, 2055
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end183_crit_edge, label %if.then39

if.end36.if.end183_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end183

if.then39:                                        ; preds = %if.end36
  tail call void @_raw_spin_lock(ptr noundef %lock) #5
  %16 = ptrtoint ptr %dirty_tx40 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dirty_tx40, align 4
  %18 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_tx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp41.not536 = icmp eq i32 %19, %17
  br i1 %cmp41.not536, label %if.then39.for.end_crit_edge, label %if.then39.for.body_crit_edge

if.then39.for.body_crit_edge:                     ; preds = %if.then39
  br label %for.body

if.then39.for.end_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then39.for.body_crit_edge
  %dirty_tx.0538 = phi i32 [ %inc151, %for.inc.for.body_crit_edge ], [ %17, %if.then39.for.body_crit_edge ]
  %tx.1537 = phi i32 [ %tx.2.ph, %for.inc.for.body_crit_edge ], [ %tx.0, %if.then39.for.body_crit_edge ]
  %rem = and i32 %dirty_tx.0538, 31
  %20 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_ring, align 4
  %arrayidx43 = getelementptr %struct.tulip_tx_desc, ptr %21, i32 %rem
  %22 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx43, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp45 = icmp slt i32 %24, 0
  br i1 %cmp45, label %for.body.for.end_crit_edge, label %if.end47

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end47:                                         ; preds = %for.body
  %arrayidx48 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %rem
  %25 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx48, align 8
  %cmp49 = icmp eq ptr %26, null
  br i1 %cmp49, label %if.then50, label %if.end60

if.then50:                                        ; preds = %if.end47
  %mapping = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %rem, i32 1
  %27 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mapping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool53.not = icmp eq i32 %28, 0
  br i1 %tobool53.not, label %if.then50.for.inc_crit_edge, label %if.then54

if.then50.for.inc_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then54:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %pdev131 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev131, align 8
  %dev55 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void @dma_unmap_page_attrs(ptr noundef %dev55, i32 noundef %28, i32 noundef 192, i32 noundef 1, i32 noundef 0) #5
  br label %for.inc

if.end60:                                         ; preds = %if.end47
  %and61 = and i32 %24, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.else, label %if.then63

if.then63:                                        ; preds = %if.end60
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %31 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp64 = icmp sgt i32 %31, 1
  br i1 %cmp64, label %do.body67, label %if.then63.if.end87_crit_edge

if.then63.if.end87_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

do.body67:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_interrupt.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_interrupt, %if.end87)) #5
          to label %if.then81 [label %if.end87], !srcloc !85

if.then81:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_interrupt.__UNIQUE_ID_ddebug347, ptr noundef %dev_instance, ptr noundef nonnull @.str.16, i32 noundef %24) #5
  br label %if.end87

if.end87:                                         ; preds = %if.then81, %do.body67, %if.then63.if.end87_crit_edge
  %32 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_errors, align 4
  %inc88 = add i32 %33, 1
  store i32 %inc88, ptr %tx_errors, align 4
  %and89 = and i32 %24, 16644
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end87.if.end94_crit_edge, label %if.then91

if.end87.if.end94_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then91:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_aborted_errors, align 8
  %inc93 = add i32 %35, 1
  store i32 %inc93, ptr %tx_aborted_errors, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then91, %if.end87.if.end94_crit_edge
  %and95 = and i32 %24, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.end94.if.end100_crit_edge, label %if.then97

if.end94.if.end100_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end100

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_carrier_errors, align 4
  %inc99 = add i32 %37, 1
  store i32 %inc99, ptr %tx_carrier_errors, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then97, %if.end94.if.end100_crit_edge
  %and101 = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %if.end100.if.end106_crit_edge, label %if.then103

if.end100.if.end106_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

if.then103:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_window_errors, align 8
  %inc105 = add i32 %39, 1
  store i32 %inc105, ptr %tx_window_errors, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %if.end100.if.end106_crit_edge
  %and107 = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %if.end106.if.end112_crit_edge, label %if.then109

if.end106.if.end112_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end112

if.then109:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_fifo_errors, align 8
  %inc111 = add i32 %41, 1
  store i32 %inc111, ptr %tx_fifo_errors, align 8
  br label %if.end112

if.end112:                                        ; preds = %if.then109, %if.end106.if.end112_crit_edge
  %and113 = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end112.if.end130_crit_edge, label %land.lhs.true115

if.end112.if.end130_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end130

land.lhs.true115:                                 ; preds = %if.end112
  %42 = ptrtoint ptr %full_duplex to i32
  call void @__asan_load2_noabort(i32 %42)
  %bf.load = load i16, ptr %full_duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %cmp116 = icmp sgt i16 %bf.load, -1
  br i1 %cmp116, label %land.lhs.true115.if.end130.sink.split_crit_edge, label %land.lhs.true115.if.end130_crit_edge

land.lhs.true115.if.end130_crit_edge:             ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end130

land.lhs.true115.if.end130.sink.split_crit_edge:  ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end130.sink.split

if.else:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %len = getelementptr inbounds %struct.sk_buff, ptr %26, i32 0, i32 6
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  %45 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %46, %44
  store i32 %add, ptr %tx_bytes, align 4
  %47 = lshr i32 %24, 3
  %and125 = and i32 %47, 15
  %48 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %collisions, align 4
  %add127 = add i32 %49, %and125
  store i32 %add127, ptr %collisions, align 4
  br label %if.end130.sink.split

if.end130.sink.split:                             ; preds = %if.else, %land.lhs.true115.if.end130.sink.split_crit_edge
  %tx_heartbeat_errors.sink546 = phi ptr [ %tx_packets, %if.else ], [ %tx_heartbeat_errors, %land.lhs.true115.if.end130.sink.split_crit_edge ]
  %50 = ptrtoint ptr %tx_heartbeat_errors.sink546 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_heartbeat_errors.sink546, align 4
  %inc119 = add i32 %51, 1
  store i32 %inc119, ptr %tx_heartbeat_errors.sink546, align 4
  br label %if.end130

if.end130:                                        ; preds = %if.end130.sink.split, %land.lhs.true115.if.end130_crit_edge, %if.end112.if.end130_crit_edge
  %52 = ptrtoint ptr %pdev131 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pdev131, align 8
  %dev132 = getelementptr inbounds %struct.pci_dev, ptr %53, i32 0, i32 44
  %mapping135 = getelementptr %struct.tulip_private, ptr %add.ptr.i, i32 0, i32 6, i32 %rem, i32 1
  %54 = ptrtoint ptr %mapping135 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mapping135, align 4
  %56 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx48, align 8
  %len139 = getelementptr inbounds %struct.sk_buff, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %len139 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len139, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev132, i32 noundef %55, i32 noundef %59, i32 noundef 1, i32 noundef 0) #5
  %60 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx48, align 8
  tail call void @__dev_kfree_skb_irq(ptr noundef %61, i32 noundef 1) #5
  %62 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %arrayidx48, align 8
  %63 = ptrtoint ptr %mapping135 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %mapping135, align 4
  %inc149 = add i32 %tx.1537, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end130, %if.then54, %if.then50.for.inc_crit_edge
  %tx.2.ph = phi i32 [ %tx.1537, %if.then50.for.inc_crit_edge ], [ %tx.1537, %if.then54 ], [ %inc149, %if.end130 ]
  %inc151 = add i32 %dirty_tx.0538, 1
  %64 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cur_tx, align 4
  %cmp41.not = icmp eq i32 %65, %inc151
  br i1 %cmp41.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.then39.for.end_crit_edge
  %tx.1.lcssa = phi i32 [ %tx.0, %if.then39.for.end_crit_edge ], [ %tx.1537, %for.body.for.end_crit_edge ], [ %tx.2.ph, %for.inc.for.end_crit_edge ]
  %dirty_tx.0.lcssa = phi i32 [ %17, %if.then39.for.end_crit_edge ], [ %dirty_tx.0538, %for.body.for.end_crit_edge ], [ %inc151, %for.inc.for.end_crit_edge ]
  %66 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cur_tx, align 4
  %sub153 = sub i32 %67, %dirty_tx.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub153)
  %cmp154 = icmp ugt i32 %sub153, 32
  br i1 %cmp154, label %do.end158, label %for.end.if.end162_crit_edge

for.end.if.end162_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end162

do.end158:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev159, ptr noundef nonnull @.str.17, i32 noundef %dirty_tx.0.lcssa, i32 noundef %67) #8
  %add161 = add i32 %dirty_tx.0.lcssa, 32
  br label %if.end162

if.end162:                                        ; preds = %do.end158, %for.end.if.end162_crit_edge
  %dirty_tx.1 = phi i32 [ %add161, %do.end158 ], [ %dirty_tx.0.lcssa, %for.end.if.end162_crit_edge ]
  %68 = ptrtoint ptr %cur_tx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cur_tx, align 4
  %sub164 = sub i32 %69, %dirty_tx.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %sub164)
  %cmp165 = icmp ult i32 %sub164, 30
  br i1 %cmp165, label %if.then166, label %if.end162.if.end167_crit_edge

if.end162.if.end167_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end167

if.then166:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %71) #5
  br label %if.end167

if.end167:                                        ; preds = %if.then166, %if.end162.if.end167_crit_edge
  %72 = ptrtoint ptr %dirty_tx40 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %dirty_tx.1, ptr %dirty_tx40, align 4
  %and169 = and i32 %csr5.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.end167.if.end181_crit_edge, label %if.then171

if.end167.if.end181_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end181

if.then171:                                       ; preds = %if.end167
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %73 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp172 = icmp sgt i32 %73, 2
  br i1 %cmp172, label %do.end176, label %if.then171.if.end180_crit_edge

if.then171.if.end180_crit_edge:                   ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end180

do.end176:                                        ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #7
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr178) #5, !srcloc !81
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %76 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %csr6, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev159, ptr noundef nonnull @.str.19, i32 noundef %csr5.0, i32 noundef %75, i32 noundef %77) #8
  br label %if.end180

if.end180:                                        ; preds = %do.end176, %if.then171.if.end180_crit_edge
  tail call fastcc void @tulip_restart_rxtx(ptr noundef %add.ptr.i)
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %if.end167.if.end181_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #5
  br label %if.end183

if.end183:                                        ; preds = %if.end181, %if.end36.if.end183_crit_edge
  %tx.4 = phi i32 [ %tx.1.lcssa, %if.end181 ], [ %tx.0, %if.end36.if.end183_crit_edge ]
  %and184 = and i32 %csr5.0, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %if.end183.if.end257_crit_edge, label %if.then186

if.end183.if.end257_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end257

if.then186:                                       ; preds = %if.end183
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %csr5.0)
  %cmp187 = icmp eq i32 %csr5.0, -1
  br i1 %cmp187, label %if.then186.do.end321_crit_edge, label %if.end189

if.then186.do.end321_crit_edge:                   ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end321

if.end189:                                        ; preds = %if.then186
  %and190 = and i32 %csr5.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %if.end189.if.end196_crit_edge, label %if.then192

if.end189.if.end196_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end196

if.then192:                                       ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tx_errors, align 4
  %inc195 = add i32 %79, 1
  store i32 %inc195, ptr %tx_errors, align 4
  br label %if.end196

if.end196:                                        ; preds = %if.then192, %if.end189.if.end196_crit_edge
  %and197 = and i32 %csr5.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and197)
  %tobool198.not = icmp eq i32 %and197, 0
  br i1 %tobool198.not, label %if.end196.if.end210_crit_edge, label %if.then199

if.end196.if.end210_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end210

if.then199:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %csr6, align 4
  %and201 = and i32 %81, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %and201)
  %cmp202.not = icmp eq i32 %and201, 49152
  %or = or i32 %81, 2097152
  %add205 = add i32 %81, 16384
  %storemerge = select i1 %cmp202.not, i32 %or, i32 %add205
  %82 = ptrtoint ptr %csr6 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %storemerge, ptr %csr6, align 4
  tail call fastcc void @tulip_restart_rxtx(ptr noundef %add.ptr.i)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr209, i32 0) #5, !srcloc !84
  br label %if.end210

if.end210:                                        ; preds = %if.then199, %if.end196.if.end210_crit_edge
  %and211 = and i32 %csr5.0, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %if.end210.if.end224_crit_edge, label %if.then213

if.end210.if.end224_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end224

if.then213:                                       ; preds = %if.end210
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags, align 8
  %and215 = and i32 %84, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  br i1 %tobool216.not, label %if.then213.if.end224_crit_edge, label %if.then217

if.then213.if.end224_crit_edge:                   ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end224

if.then217:                                       ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %mc_filter to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mc_filter, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %87 = tail call i32 @llvm.bswap.i32(i32 %86) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr219, i32 %87) #5, !srcloc !84
  %88 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx221, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %90 = tail call i32 @llvm.bswap.i32(i32 %89) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr222, i32 %90) #5, !srcloc !84
  br label %if.end224

if.end224:                                        ; preds = %if.then217, %if.then213.if.end224_crit_edge, %if.end210.if.end224_crit_edge
  %and225 = and i32 %csr5.0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.end224.if.end235_crit_edge, label %if.then227

if.end224.if.end235_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end235

if.then227:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #7
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr228) #5, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %92 = and i32 %91, -65536
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  %94 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %rx_missed_errors, align 4
  %add232 = add i32 %95, %93
  store i32 %add232, ptr %rx_missed_errors, align 4
  %96 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rx_errors, align 8
  %inc234 = add i32 %97, 1
  store i32 %inc234, ptr %rx_errors, align 8
  %98 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base_addr, align 8
  %100 = ptrtoint ptr %csr6 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %csr6, align 4
  %or.i = or i32 %101, 8194
  %add.ptr.i526 = getelementptr i8, ptr %99, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %102 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i526, i32 %102) #5, !srcloc !84
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !86
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i526) #5, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  br label %if.end235

if.end235:                                        ; preds = %if.then227, %if.end224.if.end235_crit_edge
  %and236 = and i32 %csr5.0, 134221840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and236)
  %tobool237.not = icmp eq i32 %and236, 0
  br i1 %tobool237.not, label %if.end235.if.end243_crit_edge, label %if.then238

if.end235.if.end243_crit_edge:                    ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end243

if.then238:                                       ; preds = %if.end235
  %104 = ptrtoint ptr %link_change to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %link_change, align 8
  %tobool239.not = icmp eq ptr %105, null
  br i1 %tobool239.not, label %if.then238.if.end243_crit_edge, label %if.then240

if.then238.if.end243_crit_edge:                   ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end243

if.then240:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %105(ptr noundef %dev_instance, i32 noundef %csr5.0) #5
  br label %if.end243

if.end243:                                        ; preds = %if.then240, %if.then238.if.end243_crit_edge, %if.end235.if.end243_crit_edge
  %and244 = and i32 %csr5.0, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  br i1 %tobool245.not, label %if.end243.if.end254_crit_edge, label %if.then246

if.end243.if.end254_crit_edge:                    ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end254

if.then246:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #7
  %106 = lshr i32 %csr5.0, 23
  %and248 = and i32 %106, 7
  %107 = ptrtoint ptr %nir to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nir, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev159, ptr noundef nonnull @.str.22, i32 noundef %108, i32 noundef %and248) #8
  br label %if.end254

if.end254:                                        ; preds = %if.then246, %if.end243.if.end254_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1158217720) #5, !srcloc !84
  %inc256 = add i32 %oi.0, 1
  br label %if.end257

if.end257:                                        ; preds = %if.end254, %if.end183.if.end257_crit_edge
  %oi.1 = phi i32 [ %inc256, %if.end254 ], [ %oi.0, %if.end183.if.end257_crit_edge ]
  %and258 = and i32 %csr5.0, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and258)
  %tobool259.not = icmp eq i32 %and258, 0
  br i1 %tobool259.not, label %if.end257.if.end273_crit_edge, label %if.then260

if.end257.if.end273_crit_edge:                    ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end273

if.then260:                                       ; preds = %if.end257
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %109 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %cmp261 = icmp sgt i32 %109, 2
  br i1 %cmp261, label %do.end265, label %if.then260.if.end267_crit_edge

if.then260.if.end267_crit_edge:                   ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end267

do.end265:                                        ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev159, ptr noundef nonnull @.str.25, i32 noundef %csr5.0) #8
  br label %if.end267

if.end267:                                        ; preds = %do.end265, %if.then260.if.end267_crit_edge
  %110 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %chip_id, align 8
  %valid_intrs270 = getelementptr [0 x %struct.tulip_chip_table], ptr @tulip_tbl, i32 0, i32 %111, i32 2
  %112 = ptrtoint ptr %valid_intrs270 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %valid_intrs270, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %114) #5, !srcloc !84
  %115 = ptrtoint ptr %ttimer to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %ttimer, align 4
  %inc272 = add i32 %oi.1, 1
  br label %if.end273

if.end273:                                        ; preds = %if.end267, %if.end257.if.end273_crit_edge
  %oi.2 = phi i32 [ %inc272, %if.end267 ], [ %oi.1, %if.end257.if.end273_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %tx.4)
  %cmp274 = icmp sgt i32 %tx.4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %oi.2)
  %cmp277 = icmp sgt i32 %oi.2, 32
  %or.cond = select i1 %cmp274, i1 true, i1 %cmp277
  br i1 %or.cond, label %if.then278, label %if.end308

if.then278:                                       ; preds = %if.end273
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %116 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp279 = icmp sgt i32 %116, 1
  br i1 %cmp279, label %do.end283, label %if.then278.if.end286_crit_edge

if.then278.if.end286_crit_edge:                   ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end286

do.end283:                                        ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #7
  %117 = ptrtoint ptr %nir to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nir, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev159, ptr noundef nonnull @.str.28, i32 noundef %csr5.0, i32 noundef %118, i32 noundef %tx.4, i32 noundef 0, i32 noundef %oi.2) #8
  br label %if.end286

if.end286:                                        ; preds = %do.end283, %if.then278.if.end286_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -65152) #5, !srcloc !84
  %119 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %flags, align 8
  %and289 = and i32 %120, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and289)
  %tobool290.not = icmp eq i32 %and289, 0
  br i1 %tobool290.not, label %if.else293, label %if.then291

if.then291:                                       ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr292 = getelementptr i8, ptr %1, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr292, i32 9355) #5, !srcloc !84
  br label %do.end321

if.else293:                                       ; preds = %if.end286
  %121 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %chip_id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %122)
  %cmp295 = icmp eq i32 %122, 4
  br i1 %cmp295, label %if.then296, label %if.else300

if.then296:                                       ; preds = %if.else293
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #5, !srcloc !84
  %timer = getelementptr i8, ptr %dev_instance, i32 4040
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %123 = load volatile i32, ptr @jiffies, align 128
  %add298 = add i32 %123, 2
  %call299 = tail call i32 @mod_timer(ptr noundef %timer, i32 noundef %add298) #5
  br label %do.end321

if.else300:                                       ; preds = %if.else293
  call void @__sanitizer_cov_trace_pc() #7
  %neg = and i32 %csr5.0, 91119
  %or303 = xor i32 %neg, 125935
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %124 = tail call i32 @llvm.bswap.i32(i32 %or303) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %124) #5, !srcloc !84
  %add.ptr305 = getelementptr i8, ptr %1, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr305, i32 301989888) #5, !srcloc !84
  br label %do.end321

if.end308:                                        ; preds = %if.end273
  %dec = add i32 %work_count.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp309 = icmp eq i32 %dec, 0
  br i1 %cmp309, label %if.end308.do.end321_crit_edge, label %if.end311

if.end308.do.end321_crit_edge:                    ; preds = %if.end308
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end321

if.end311:                                        ; preds = %if.end308
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !81
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %and316 = and i32 %126, -961
  %spec.select = select i1 %tobool314.not, i32 %126, i32 %and316
  %and319 = and i32 %spec.select, 14639
  %cmp320.not = icmp eq i32 %and319, 0
  br i1 %cmp320.not, label %if.end311.do.end321_crit_edge, label %if.end311.do.body_crit_edge

if.end311.do.body_crit_edge:                      ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end311.do.end321_crit_edge:                    ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end321

do.end321:                                        ; preds = %if.end311.do.end321_crit_edge, %if.end308.do.end321_crit_edge, %if.else300, %if.then296, %if.then291, %if.then186.do.end321_crit_edge, %napi_schedule.exit.do.end321_crit_edge
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr228) #5, !srcloc !81
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %and324 = and i32 %128, 131071
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and324)
  %tobool325.not = icmp eq i32 %and324, 0
  br i1 %tobool325.not, label %do.end321.if.end332_crit_edge, label %if.then326

do.end321.if.end332_crit_edge:                    ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end332

if.then326:                                       ; preds = %do.end321
  call void @__sanitizer_cov_trace_pc() #7
  %and327 = and i32 %128, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and327)
  %tobool328.not = icmp eq i32 %and327, 0
  %spec.select519 = select i1 %tobool328.not, i32 %and324, i32 65536
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %dev_instance, i32 0, i32 36, i32 6
  %129 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rx_dropped, align 8
  %add331 = add i32 %130, %spec.select519
  store i32 %add331, ptr %rx_dropped, align 8
  br label %if.end332

if.end332:                                        ; preds = %if.then326, %do.end321.if.end332_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tulip_debug to i32))
  %131 = load i32, ptr @tulip_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %131)
  %cmp333 = icmp sgt i32 %131, 4
  br i1 %cmp333, label %do.body336, label %if.end332.cleanup359_crit_edge

if.end332.cleanup359_crit_edge:                   ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup359

do.body336:                                       ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_interrupt.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_interrupt, %cleanup359)) #5
          to label %if.then350 [label %cleanup359], !srcloc !85

if.then350:                                       ; preds = %do.body336
  call void @__sanitizer_cov_trace_pc() #7
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !81
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_interrupt.__UNIQUE_ID_ddebug348, ptr noundef %dev_instance, ptr noundef nonnull @.str.30, i32 noundef %133) #5
  br label %cleanup359

cleanup359:                                       ; preds = %if.then350, %do.body336, %if.end332.cleanup359_crit_edge, %entry.cleanup359_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup359_crit_edge ], [ 1, %if.then350 ], [ 1, %if.end332.cleanup359_crit_edge ], [ 1, %do.body336 ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tulip_restart_rxtx(ptr nocapture noundef readonly %tp) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %base_addr.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 42
  %0 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_addr.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 48
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !81
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %and.i = and i32 %3, 8194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.tulip_stop_rxtx.exit_crit_edge, label %if.then.i

entry.tulip_stop_rxtx.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %tulip_stop_rxtx.exit

if.then.i:                                        ; preds = %entry
  %and1.i = and i32 %3, -8195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %4 = tail call i32 @llvm.bswap.i32(i32 %and1.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #5, !srcloc !84
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !87
  %add.ptr4.i = getelementptr i8, ptr %1, i32 40
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.then.i
  %dec33.i = phi i32 [ 129, %if.then.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %6 = and i32 %5, 32256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not.i = icmp eq i32 %6, 0
  br i1 %tobool7.not.i, label %land.rhs.i.tulip_stop_rxtx.exit_crit_edge, label %while.body.i

land.rhs.i.tulip_stop_rxtx.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tulip_stop_rxtx.exit

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #5
  %dec.i = add nsw i32 %dec33.i, -1
  %tobool3.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool3.not.i, label %do.body10.critedge.i, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

do.body10.critedge.i:                             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tulip_restart_rxtx, %tulip_stop_rxtx.exit)) #5
          to label %if.then16.i [label %tulip_stop_rxtx.exit], !srcloc !85

if.then16.i:                                      ; preds = %do.body10.critedge.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 46
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !81
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !81
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, ptr noundef %9, ptr noundef nonnull @.str.35, i32 noundef %11, i32 noundef %13) #5
  br label %tulip_stop_rxtx.exit

tulip_stop_rxtx.exit:                             ; preds = %if.then16.i, %do.body10.critedge.i, %land.rhs.i.tulip_stop_rxtx.exit_crit_edge, %entry.tulip_stop_rxtx.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 1073740) #5
  %15 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base_addr.i, align 8
  %csr6.i = getelementptr inbounds %struct.tulip_private, ptr %tp, i32 0, i32 25
  %17 = ptrtoint ptr %csr6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %csr6.i, align 4
  %or.i = or i32 %18, 8194
  %add.ptr.i3 = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 %19) #5, !srcloc !84
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !86
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3) #5, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !60, !62, !63, !64, !66, !68, !69, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 131, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @tulip_poll.__UNIQUE_ID_ddebug342, !1, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 136, i32 4}
!8 = !{ptr @tulip_poll.__UNIQUE_ID_ddebug343, !7, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 152, i32 5}
!11 = !{ptr @tulip_poll.__UNIQUE_ID_ddebug344, !10, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 183, i32 56}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @tulip_poll._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @tulip_poll._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 191, i32 7}
!20 = !{ptr @tulip_poll.__UNIQUE_ID_ddebug345, !19, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 237, i32 48}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tulip_poll._entry.10, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @tulip_poll._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 586, i32 4}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tulip_interrupt.__UNIQUE_ID_ddebug346, !27, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 618, i32 7}
!32 = !{ptr @tulip_interrupt.__UNIQUE_ID_ddebug347, !31, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 653, i32 5}
!35 = !{ptr @tulip_interrupt._entry, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tulip_interrupt._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 666, i32 6}
!39 = !{ptr @tulip_interrupt._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tulip_interrupt._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 721, i32 5}
!43 = !{ptr @tulip_interrupt._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tulip_interrupt._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 732, i32 5}
!47 = !{ptr @tulip_interrupt._entry.24, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @tulip_interrupt._entry_ptr.26, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 741, i32 5}
!51 = !{ptr @tulip_interrupt._entry.27, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @tulip_interrupt._entry_ptr.29, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 818, i32 3}
!55 = !{ptr @tulip_interrupt.__UNIQUE_ID_ddebug348, !54, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!56 = !{ptr @tulip_rx_copybreak, !57, !"tulip_rx_copybreak", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 17, i32 5}
!58 = !{ptr @tulip_max_interrupt_work, !59, !"tulip_max_interrupt_work", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 18, i32 14}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!64 = distinct !{null, !65, !"mit_table", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/dec/tulip/interrupt.c", i32 24, i32 21}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/dec/tulip/tulip.h", i32 546, i32 4}
!68 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @tulip_stop_rxtx.__UNIQUE_ID_ddebug339, !67, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 5003762}
!82 = !{i64 2152544111}
!83 = !{i64 2152545466}
!84 = !{i64 5003344}
!85 = !{i64 2148508747, i64 2148508752, i64 2148508765, i64 2148508809, i64 2148508843, i64 2148508864}
!86 = !{i64 2156424020}
!87 = !{i64 2156424255}
