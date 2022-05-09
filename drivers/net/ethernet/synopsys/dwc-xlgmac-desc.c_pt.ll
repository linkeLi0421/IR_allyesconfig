; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c_pt.bc'
source_filename = "../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.102 }
%union.anon.102 = type { i32 }
%struct.xlgmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xlgmac_pdata = type { ptr, ptr, %struct.xlgmac_hw_ops, %struct.xlgmac_desc_ops, %struct.xlgmac_stats, i32, ptr, %struct.xlgmac_hw_features, %struct.work_struct, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [6 x i8], i64, %struct.napi_struct, [128 x i32], i32, %struct.mutex, [40 x i8], [256 x i32], i32, i32, [32 x i8], [32 x i8] }
%struct.xlgmac_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xlgmac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xlgmac_hw_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xlgmac_channel = type { [16 x i8], ptr, i32, ptr, i32, [48 x i8], %struct.napi_struct, i32, i32, %struct.timer_list, ptr, ptr, [16 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xlgmac_ring = type { %struct.xlgmac_pkt_info, ptr, i32, i32, ptr, %struct.xlgmac_page_alloc, %struct.xlgmac_page_alloc, i32, i32, i32, %union.anon.118, [120 x i8] }
%struct.xlgmac_pkt_info = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i64, i32, i32 }
%struct.xlgmac_page_alloc = type { ptr, i32, i32, i32 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { i32, i32, i16, i16 }
%struct.xlgmac_desc_data = type { ptr, i32, ptr, i32, i32, %struct.xlgmac_tx_desc_data, %struct.xlgmac_rx_desc_data, i32, i32, %struct.anon.117 }
%struct.xlgmac_tx_desc_data = type { i32, i32 }
%struct.xlgmac_rx_desc_data = type { %struct.xlgmac_buffer_data, %struct.xlgmac_buffer_data, i16, i16 }
%struct.xlgmac_buffer_data = type { %struct.xlgmac_page_alloc, %struct.xlgmac_page_alloc, i32, i32, i32 }
%struct.anon.117 = type { ptr, i32, i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.page = type { i32, %union.anon.26, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.xlgmac_dma_desc = type { i32, i32, i32, i32 }

@xlgmac_alloc_channels.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dwc_xlgmac\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xlgmac_alloc_channels\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"channel_head=%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"channel-%u\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"get_irq %u failed\0A\00", [45 x i8] zeroinitializer }, align 32
@xlgmac_alloc_channels.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: dma_regs=%p, tx_ring=%p, rx_ring=%p\0A\00", [55 x i8] zeroinitializer }, align 32
@xlgmac_alloc_rings.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 45, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xlgmac_alloc_rings\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s - Tx ring:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error initializing Tx ring\00", [37 x i8] zeroinitializer }, align 32
@xlgmac_alloc_rings.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.10, i8 0, i8 48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s - Rx ring:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error initializing Rx ring\0A\00", [36 x i8] zeroinitializer }, align 32
@xlgmac_init_ring.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlgmac_init_ring\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"dma_desc_head=%p, dma_desc_head_addr=%pad, desc_data_head=%p\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dma_map_single failed\0A\00", [41 x i8] zeroinitializer }, align 32
@xlgmac_map_tx_skb.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xlgmac_map_tx_skb\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"skb header: index=%u, dma=%pad, len=%u\0A\00", [56 x i8] zeroinitializer }, align 32
@xlgmac_map_tx_skb.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"skb data: index=%u, dma=%pad, len=%u\0A\00", [58 x i8] zeroinitializer }, align 32
@xlgmac_map_tx_skb.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 0, i8 -111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mapping frag %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"skb_frag_dma_map failed\0A\00", [39 x i8] zeroinitializer }, align 32
@xlgmac_map_tx_skb.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.2, ptr @.str.21, i8 0, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"skb frag: index=%u, dma=%pad, len=%u\0A\00", [58 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.25 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 242, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 257, i32 50 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 268, i32 9 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 281, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 181, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 189, i32 10 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 193, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 200, i32 10 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 149, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 717, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 537, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 542, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 566, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 580, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 594, i32 11 }
@___asan_gen_.90 = private constant [51 x i8] c"../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 600, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 326, i32 6 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 1160, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xlgmac_init_desc_ops(ptr nocapture noundef writeonly %desc_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @xlgmac_alloc_channels_and_rings, ptr %desc_ops, align 4
  %free_channels_and_rings = getelementptr inbounds %struct.xlgmac_desc_ops, ptr %desc_ops, i32 0, i32 1
  %1 = ptrtoint ptr %free_channels_and_rings to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @xlgmac_free_channels_and_rings, ptr %free_channels_and_rings, align 4
  %map_tx_skb = getelementptr inbounds %struct.xlgmac_desc_ops, ptr %desc_ops, i32 0, i32 2
  %2 = ptrtoint ptr %map_tx_skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @xlgmac_map_tx_skb, ptr %map_tx_skb, align 4
  %map_rx_buffer = getelementptr inbounds %struct.xlgmac_desc_ops, ptr %desc_ops, i32 0, i32 3
  %3 = ptrtoint ptr %map_rx_buffer to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xlgmac_map_rx_buffer, ptr %map_rx_buffer, align 4
  %unmap_desc_data = getelementptr inbounds %struct.xlgmac_desc_ops, ptr %desc_ops, i32 0, i32 4
  %4 = ptrtoint ptr %unmap_desc_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xlgmac_unmap_desc_data, ptr %unmap_desc_data, align 4
  %tx_desc_init = getelementptr inbounds %struct.xlgmac_desc_ops, ptr %desc_ops, i32 0, i32 5
  %5 = ptrtoint ptr %tx_desc_init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xlgmac_tx_desc_init, ptr %tx_desc_init, align 4
  %rx_desc_init = getelementptr inbounds %struct.xlgmac_desc_ops, ptr %desc_ops, i32 0, i32 6
  %6 = ptrtoint ptr %rx_desc_init to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @xlgmac_rx_desc_init, ptr %rx_desc_init, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_alloc_channels_and_rings(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @xlgmac_alloc_channels(ptr noundef %pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_alloc_crit_edge

entry.err_alloc_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_alloc

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @xlgmac_alloc_rings(ptr noundef %pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.err_alloc_crit_edge

if.end.err_alloc_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_alloc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_alloc:                                        ; preds = %if.end.err_alloc_crit_edge, %entry.err_alloc_crit_edge
  %ret.0 = phi i32 [ %call, %entry.err_alloc_crit_edge ], [ %call1, %if.end.err_alloc_crit_edge ]
  tail call void @xlgmac_free_channels_and_rings(ptr noundef %pdata)
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_alloc ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_free_channels_and_rings(ptr nocapture noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_head.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %channel_head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel_head.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.xlgmac_free_channels.exit_crit_edge, label %for.cond.preheader.i

entry.xlgmac_free_channels.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %xlgmac_free_channels.exit

for.cond.preheader.i:                             ; preds = %entry
  %channel_count.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %2 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10.not.i = icmp eq i32 %3, 0
  br i1 %cmp10.not.i, label %for.cond.preheader.i.xlgmac_free_rings.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.xlgmac_free_rings.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xlgmac_free_rings.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %channel.011.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %tx_ring.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.011.i, i32 0, i32 10
  %4 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring.i, align 8
  tail call fastcc void @xlgmac_free_ring(ptr noundef %pdata, ptr noundef %5) #9
  %rx_ring.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.011.i, i32 0, i32 11
  %6 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_ring.i, align 4
  tail call fastcc void @xlgmac_free_ring(ptr noundef %pdata, ptr noundef %7) #9
  %inc.i = add nuw i32 %i.012.i, 1
  %incdec.ptr.i = getelementptr %struct.xlgmac_channel, ptr %channel.011.i, i32 1
  %8 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_count.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.xlgmac_free_rings.exit_crit_edge

for.body.i.xlgmac_free_rings.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xlgmac_free_rings.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

xlgmac_free_rings.exit:                           ; preds = %for.body.i.xlgmac_free_rings.exit_crit_edge, %for.cond.preheader.i.xlgmac_free_rings.exit_crit_edge
  %10 = ptrtoint ptr %channel_head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %channel_head.i, align 8
  %tobool.not.i3 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i3, label %xlgmac_free_rings.exit.xlgmac_free_channels.exit_crit_edge, label %if.end.i

xlgmac_free_rings.exit.xlgmac_free_channels.exit_crit_edge: ; preds = %xlgmac_free_rings.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xlgmac_free_channels.exit

if.end.i:                                         ; preds = %xlgmac_free_rings.exit
  call void @__sanitizer_cov_trace_pc() #11
  %tx_ring.i4 = getelementptr inbounds %struct.xlgmac_channel, ptr %.pr, i32 0, i32 10
  %11 = ptrtoint ptr %tx_ring.i4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_ring.i4, align 8
  tail call void @kfree(ptr noundef %12) #9
  %13 = ptrtoint ptr %channel_head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %channel_head.i, align 8
  %tx_ring3.i = getelementptr inbounds %struct.xlgmac_channel, ptr %14, i32 0, i32 10
  %15 = ptrtoint ptr %tx_ring3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %tx_ring3.i, align 8
  %16 = load ptr, ptr %channel_head.i, align 8
  %rx_ring.i5 = getelementptr inbounds %struct.xlgmac_channel, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %rx_ring.i5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_ring.i5, align 4
  tail call void @kfree(ptr noundef %18) #9
  %19 = ptrtoint ptr %channel_head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %channel_head.i, align 8
  %rx_ring6.i = getelementptr inbounds %struct.xlgmac_channel, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %rx_ring6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %rx_ring6.i, align 4
  %22 = load ptr, ptr %channel_head.i, align 8
  tail call void @kfree(ptr noundef %22) #9
  %23 = ptrtoint ptr %channel_head.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %channel_head.i, align 8
  %24 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %channel_count.i, align 4
  br label %xlgmac_free_channels.exit

xlgmac_free_channels.exit:                        ; preds = %if.end.i, %xlgmac_free_rings.exit.xlgmac_free_channels.exit_crit_edge, %entry.xlgmac_free_channels.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_map_tx_skb(ptr nocapture noundef readonly %channel, ptr noundef %skb) #1 align 64 {
entry:
  %skb_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 16
  %tx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 10
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb_dma) #9
  %4 = ptrtoint ptr %skb_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %skb_dma, align 4, !annotation !65
  %cur = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 7
  %5 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur, align 16
  %desc_count = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %desc_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %desc_count, align 4
  %length = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %length, align 8
  %attributes = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attributes, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %mss = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %mss to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mss, align 8
  %cur_mss = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 10, i32 0, i32 2
  %14 = ptrtoint ptr %cur_mss to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cur_mss, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp.not = icmp eq i16 %13, %15
  br i1 %cmp.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %16 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool27.not = icmp eq i32 %16, 0
  br i1 %tobool27.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true28

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true28:                                  ; preds = %lor.lhs.false
  %vlan_ctag = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 11
  %17 = ptrtoint ptr %vlan_ctag to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vlan_ctag, align 2
  %cur_vlan_ctag = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 10, i32 0, i32 3
  %19 = ptrtoint ptr %cur_vlan_ctag to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cur_vlan_ctag, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp31.not = icmp eq i16 %18, %20
  br i1 %cmp31.not, label %land.lhs.true28.if.end_crit_edge, label %land.lhs.true28.if.then_crit_edge

land.lhs.true28.if.then_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

land.lhs.true28.if.end_crit_edge:                 ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true28.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %inc = add i32 %6, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true28.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %cur_index.0 = phi i32 [ %inc, %if.then ], [ %6, %land.lhs.true28.if.end_crit_edge ], [ %6, %lor.lhs.false.if.end_crit_edge ]
  %desc_data_head = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc_data_head, align 4
  %dma_desc_count = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 3
  %23 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_desc_count, align 8
  %sub34 = add i32 %24, -1
  %and35 = and i32 %sub34, %cur_index.0
  %add.ptr = getelementptr %struct.xlgmac_desc_data, ptr %22, i32 %and35
  br i1 %tobool.not, label %if.end.if.end73_crit_edge, label %if.then37

if.end.if.end73_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

if.then37:                                        ; preds = %if.end
  %dev = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %header_len = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 7
  %29 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %header_len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %28) #9
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then37
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !66

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %26) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %26, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debug_dma_map_single(ptr noundef %26, ptr noundef %28, i32 noundef %30) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %28 to i32
  %sub.i = add i32 %36, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %35, i32 %shr.i
  %and.i = and i32 %36, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %26, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %30, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i376 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %37 = ptrtoint ptr %skb_dma to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i376, ptr %skb_dma, align 4
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %39, i32 noundef %retval.0.i376) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i376)
  %cmp.i = icmp eq i32 %retval.0.i376, -1
  br i1 %cmp.i, label %if.then41, label %if.end42

if.then41:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %41, ptr noundef nonnull @.str.15) #12
  br label %err_out

if.end42:                                         ; preds = %dma_map_single_attrs.exit
  %42 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %skb_dma, align 4
  %skb_dma43 = getelementptr %struct.xlgmac_desc_data, ptr %22, i32 %and35, i32 3
  %44 = ptrtoint ptr %skb_dma43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %skb_dma43, align 4
  %45 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %header_len, align 4
  %skb_dma_len = getelementptr %struct.xlgmac_desc_data, ptr %22, i32 %and35, i32 4
  %47 = ptrtoint ptr %skb_dma_len to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %skb_dma_len, align 4
  %msg_enable = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 5
  %48 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msg_enable, align 8
  %and45 = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.end42.do.end60_crit_edge, label %do.body48

if.end42.do.end60_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end60

do.body48:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_map_tx_skb.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_map_tx_skb, %if.then54)) #9
          to label %do.end60 [label %if.then54], !srcloc !67

if.then54:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %52 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %header_len, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_map_tx_skb.__UNIQUE_ID_ddebug358, ptr noundef %51, ptr noundef nonnull @.str.17, i32 noundef %cur_index.0, ptr noundef nonnull %skb_dma, i32 noundef %53) #9
  br label %do.end60

do.end60:                                         ; preds = %if.then54, %do.body48, %if.end42.do.end60_crit_edge
  %54 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %header_len, align 4
  %56 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %length, align 8
  %add64 = add i32 %57, %55
  store i32 %add64, ptr %length, align 8
  %inc65 = add i32 %cur_index.0, 1
  %58 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %desc_data_head, align 4
  %60 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_desc_count, align 8
  %sub70 = add i32 %61, -1
  %and71 = and i32 %sub70, %inc65
  %add.ptr72 = getelementptr %struct.xlgmac_desc_data, ptr %59, i32 %and71
  br label %if.end73

if.end73:                                         ; preds = %do.end60, %if.end.if.end73_crit_edge
  %offset.0 = phi i32 [ %55, %do.end60 ], [ 0, %if.end.if.end73_crit_edge ]
  %desc_data.0 = phi ptr [ %add.ptr72, %do.end60 ], [ %add.ptr, %if.end.if.end73_crit_edge ]
  %cur_index.1 = phi i32 [ %inc65, %do.end60 ], [ %cur_index.0, %if.end.if.end73_crit_edge ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %62 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %64 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_len.i, align 8
  %66 = add i32 %offset.0, %65
  %sub75 = sub i32 %63, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub75)
  %tobool76.not414 = icmp eq i32 %sub75, 0
  br i1 %tobool76.not414, label %if.end73.for.cond129.preheader_crit_edge, label %for.body.lr.ph

if.end73.for.cond129.preheader_crit_edge:         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond129.preheader

for.body.lr.ph:                                   ; preds = %if.end73
  %dev80 = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 1
  %data81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %msg_enable93 = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 5
  br label %for.body

for.cond129.preheader:                            ; preds = %do.end116.for.cond129.preheader_crit_edge, %if.end73.for.cond129.preheader_crit_edge
  %desc_data.1.lcssa = phi ptr [ %desc_data.0, %if.end73.for.cond129.preheader_crit_edge ], [ %add.ptr128, %do.end116.for.cond129.preheader_crit_edge ]
  %cur_index.2.lcssa = phi i32 [ %cur_index.1, %if.end73.for.cond129.preheader_crit_edge ], [ %inc121, %do.end116.for.cond129.preheader_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %67 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i, align 4
  %nr_frags427 = getelementptr inbounds %struct.skb_shared_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %nr_frags427 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %nr_frags427, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp132429.not = icmp eq i8 %70, 0
  br i1 %cmp132429.not, label %for.cond129.preheader.for.end221_crit_edge, label %do.body135.lr.ph

for.cond129.preheader.for.end221_crit_edge:       ; preds = %for.cond129.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end221

do.body135.lr.ph:                                 ; preds = %for.cond129.preheader
  %msg_enable136 = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 5
  %dev172 = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 1
  br label %do.body135

for.body:                                         ; preds = %do.end116.for.body_crit_edge, %for.body.lr.ph
  %cur_index.2418 = phi i32 [ %cur_index.1, %for.body.lr.ph ], [ %inc121, %do.end116.for.body_crit_edge ]
  %desc_data.1417 = phi ptr [ %desc_data.0, %for.body.lr.ph ], [ %add.ptr128, %do.end116.for.body_crit_edge ]
  %offset.1416 = phi i32 [ %offset.0, %for.body.lr.ph ], [ %add118, %do.end116.for.body_crit_edge ]
  %datalen.0415 = phi i32 [ %sub75, %for.body.lr.ph ], [ %sub117, %do.end116.for.body_crit_edge ]
  %71 = call i32 @llvm.umin.i32(i32 %datalen.0415, i32 16320)
  %72 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev80, align 4
  %74 = ptrtoint ptr %data81 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data81, align 4
  %add.ptr82 = getelementptr i8, ptr %75, i32 %offset.1416
  %call.i378 = call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr82) #9
  br i1 %call.i378, label %land.rhs.i380, label %if.end39.i393

land.rhs.i380:                                    ; preds = %for.body
  %.b1.i379 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i379, label %land.rhs.i380.dma_map_single_attrs.exit395_crit_edge, label %if.then.i384, !prof !66

land.rhs.i380.dma_map_single_attrs.exit395_crit_edge: ; preds = %land.rhs.i380
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit395

if.then.i384:                                     ; preds = %land.rhs.i380
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i381 = call ptr @dev_driver_string(ptr noundef %73) #9
  %init_name.i.i382 = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 3
  %76 = ptrtoint ptr %init_name.i.i382 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i.i382, align 8
  %tobool.not.i.i383 = icmp eq ptr %77, null
  br i1 %tobool.not.i.i383, label %if.end.i.i385, label %if.then.i384.dev_name.exit.i387_crit_edge

if.then.i384.dev_name.exit.i387_crit_edge:        ; preds = %if.then.i384
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i387

if.end.i.i385:                                    ; preds = %if.then.i384
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %73, align 4
  br label %dev_name.exit.i387

dev_name.exit.i387:                               ; preds = %if.end.i.i385, %if.then.i384.dev_name.exit.i387_crit_edge
  %retval.0.i.i386 = phi ptr [ %79, %if.end.i.i385 ], [ %77, %if.then.i384.dev_name.exit.i387_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %call16.i381, ptr noundef %retval.0.i.i386) #9
  br label %dma_map_single_attrs.exit395

if.end39.i393:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @debug_dma_map_single(ptr noundef %73, ptr noundef %add.ptr82, i32 noundef %71) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %80 = load ptr, ptr @mem_map, align 4
  %81 = ptrtoint ptr %add.ptr82 to i32
  %sub.i388 = add i32 %81, 1073741824
  %shr.i389 = lshr i32 %sub.i388, 12
  %add.ptr.i390 = getelementptr %struct.page, ptr %80, i32 %shr.i389
  %and.i391 = and i32 %81, 4095
  %call41.i392 = call i32 @dma_map_page_attrs(ptr noundef %73, ptr noundef %add.ptr.i390, i32 noundef %and.i391, i32 noundef %71, i32 noundef 1, i32 noundef 0) #9
  br label %dma_map_single_attrs.exit395

dma_map_single_attrs.exit395:                     ; preds = %if.end39.i393, %dev_name.exit.i387, %land.rhs.i380.dma_map_single_attrs.exit395_crit_edge
  %retval.0.i394 = phi i32 [ %call41.i392, %if.end39.i393 ], [ -1, %dev_name.exit.i387 ], [ -1, %land.rhs.i380.dma_map_single_attrs.exit395_crit_edge ]
  %82 = ptrtoint ptr %skb_dma to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %retval.0.i394, ptr %skb_dma, align 4
  %83 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev80, align 4
  call void @debug_dma_mapping_error(ptr noundef %84, i32 noundef %retval.0.i394) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i394)
  %cmp.i396 = icmp eq i32 %retval.0.i394, -1
  br i1 %cmp.i396, label %if.then87, label %if.end89

if.then87:                                        ; preds = %dma_map_single_attrs.exit395
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @netdev_alert(ptr noundef %86, ptr noundef nonnull @.str.15) #12
  br label %err_out

if.end89:                                         ; preds = %dma_map_single_attrs.exit395
  %87 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %skb_dma, align 4
  %skb_dma90 = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data.1417, i32 0, i32 3
  %89 = ptrtoint ptr %skb_dma90 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %skb_dma90, align 4
  %skb_dma_len91 = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data.1417, i32 0, i32 4
  %90 = ptrtoint ptr %skb_dma_len91 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %71, ptr %skb_dma_len91, align 4
  %91 = ptrtoint ptr %msg_enable93 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %msg_enable93, align 8
  %and94 = and i32 %92, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.end89.do.end116_crit_edge, label %do.body97

if.end89.do.end116_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end116

do.body97:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_map_tx_skb.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_map_tx_skb, %if.then109)) #9
          to label %do.end116 [label %if.then109], !srcloc !67

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_map_tx_skb.__UNIQUE_ID_ddebug361, ptr noundef %94, ptr noundef nonnull @.str.18, i32 noundef %cur_index.2418, ptr noundef nonnull %skb_dma, i32 noundef %71) #9
  br label %do.end116

do.end116:                                        ; preds = %if.then109, %do.body97, %if.end89.do.end116_crit_edge
  %sub117 = sub i32 %datalen.0415, %71
  %add118 = add i32 %offset.1416, %71
  %95 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %length, align 8
  %add120 = add i32 %96, %71
  store i32 %add120, ptr %length, align 8
  %inc121 = add i32 %cur_index.2418, 1
  %97 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %desc_data_head, align 4
  %99 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dma_desc_count, align 8
  %sub126 = add i32 %100, -1
  %and127 = and i32 %sub126, %inc121
  %add.ptr128 = getelementptr %struct.xlgmac_desc_data, ptr %98, i32 %and127
  %tobool76.not = icmp eq i32 %sub117, 0
  br i1 %tobool76.not, label %do.end116.for.cond129.preheader_crit_edge, label %do.end116.for.body_crit_edge

do.end116.for.body_crit_edge:                     ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end116.for.cond129.preheader_crit_edge:        ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond129.preheader

do.body135:                                       ; preds = %for.inc.do.body135_crit_edge, %do.body135.lr.ph
  %cur_index.3433 = phi i32 [ %cur_index.2.lcssa, %do.body135.lr.ph ], [ %cur_index.4.lcssa, %for.inc.do.body135_crit_edge ]
  %desc_data.2432 = phi ptr [ %desc_data.1.lcssa, %do.body135.lr.ph ], [ %desc_data.3.lcssa, %for.inc.do.body135_crit_edge ]
  %i.0430 = phi i32 [ 0, %do.body135.lr.ph ], [ %inc220, %for.inc.do.body135_crit_edge ]
  %101 = ptrtoint ptr %msg_enable136 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %msg_enable136, align 8
  %and137 = and i32 %102, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %do.body135.do.end159_crit_edge, label %do.body140

do.body135.do.end159_crit_edge:                   ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end159

do.body140:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_map_tx_skb.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_map_tx_skb, %if.then152)) #9
          to label %do.end159 [label %if.then152], !srcloc !67

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_map_tx_skb.__UNIQUE_ID_ddebug362, ptr noundef %104, ptr noundef nonnull @.str.19, i32 noundef %i.0430) #9
  br label %do.end159

do.end159:                                        ; preds = %if.then152, %do.body140, %do.body135.do.end159_crit_edge
  %105 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %end.i, align 4
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %106, i32 0, i32 12, i32 %i.0430
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %106, i32 0, i32 12, i32 %i.0430, i32 1
  %107 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool163.not420 = icmp eq i32 %108, 0
  br i1 %tobool163.not420, label %do.end159.for.inc_crit_edge, label %for.body164.lr.ph

do.end159.for.inc_crit_edge:                      ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body164.lr.ph:                                ; preds = %do.end159
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %106, i32 0, i32 12, i32 %i.0430, i32 2
  br label %for.body164

for.body164:                                      ; preds = %do.end206.for.body164_crit_edge, %for.body164.lr.ph
  %cur_index.4424 = phi i32 [ %cur_index.3433, %for.body164.lr.ph ], [ %inc211, %do.end206.for.body164_crit_edge ]
  %desc_data.3423 = phi ptr [ %desc_data.2432, %for.body164.lr.ph ], [ %add.ptr218, %do.end206.for.body164_crit_edge ]
  %offset.2422 = phi i32 [ 0, %for.body164.lr.ph ], [ %add208, %do.end206.for.body164_crit_edge ]
  %datalen.1421 = phi i32 [ %108, %for.body164.lr.ph ], [ %sub207, %do.end206.for.body164_crit_edge ]
  %109 = call i32 @llvm.umin.i32(i32 %datalen.1421, i32 16320)
  %110 = ptrtoint ptr %dev172 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev172, align 4
  %112 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx, align 4
  %114 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bv_offset.i.i, align 4
  %add.i = add i32 %115, %offset.2422
  %call2.i = call i32 @dma_map_page_attrs(ptr noundef %111, ptr noundef %113, i32 noundef %add.i, i32 noundef %109, i32 noundef 1, i32 noundef 0) #9
  %116 = ptrtoint ptr %skb_dma to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %call2.i, ptr %skb_dma, align 4
  %117 = ptrtoint ptr %dev172 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev172, align 4
  call void @debug_dma_mapping_error(ptr noundef %118, i32 noundef %call2.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i399.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i399.not, label %if.then177, label %if.end179

if.then177:                                       ; preds = %for.body164
  call void @__sanitizer_cov_trace_pc() #11
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @netdev_alert(ptr noundef %120, ptr noundef nonnull @.str.20) #12
  br label %err_out

if.end179:                                        ; preds = %for.body164
  %121 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %skb_dma, align 4
  %skb_dma180 = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data.3423, i32 0, i32 3
  %123 = ptrtoint ptr %skb_dma180 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %skb_dma180, align 4
  %skb_dma_len181 = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data.3423, i32 0, i32 4
  %124 = ptrtoint ptr %skb_dma_len181 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %109, ptr %skb_dma_len181, align 4
  %mapped_as_page = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data.3423, i32 0, i32 7
  %125 = ptrtoint ptr %mapped_as_page to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %mapped_as_page, align 4
  %126 = ptrtoint ptr %msg_enable136 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %msg_enable136, align 8
  %and184 = and i32 %127, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and184)
  %tobool185.not = icmp eq i32 %and184, 0
  br i1 %tobool185.not, label %if.end179.do.end206_crit_edge, label %do.body187

if.end179.do.end206_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end206

do.body187:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_map_tx_skb.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_map_tx_skb, %if.then199)) #9
          to label %do.end206 [label %if.then199], !srcloc !67

if.then199:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #11
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_map_tx_skb.__UNIQUE_ID_ddebug365, ptr noundef %129, ptr noundef nonnull @.str.21, i32 noundef %cur_index.4424, ptr noundef nonnull %skb_dma, i32 noundef %109) #9
  br label %do.end206

do.end206:                                        ; preds = %if.then199, %do.body187, %if.end179.do.end206_crit_edge
  %sub207 = sub i32 %datalen.1421, %109
  %add208 = add i32 %offset.2422, %109
  %130 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %length, align 8
  %add210 = add i32 %131, %109
  store i32 %add210, ptr %length, align 8
  %inc211 = add i32 %cur_index.4424, 1
  %132 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %desc_data_head, align 4
  %134 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %dma_desc_count, align 8
  %sub216 = add i32 %135, -1
  %and217 = and i32 %sub216, %inc211
  %add.ptr218 = getelementptr %struct.xlgmac_desc_data, ptr %133, i32 %and217
  %tobool163.not = icmp eq i32 %sub207, 0
  br i1 %tobool163.not, label %do.end206.for.inc_crit_edge, label %do.end206.for.body164_crit_edge

do.end206.for.body164_crit_edge:                  ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body164

do.end206.for.inc_crit_edge:                      ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %do.end206.for.inc_crit_edge, %do.end159.for.inc_crit_edge
  %desc_data.3.lcssa = phi ptr [ %desc_data.2432, %do.end159.for.inc_crit_edge ], [ %add.ptr218, %do.end206.for.inc_crit_edge ]
  %cur_index.4.lcssa = phi i32 [ %cur_index.3433, %do.end159.for.inc_crit_edge ], [ %inc211, %do.end206.for.inc_crit_edge ]
  %inc220 = add nuw nsw i32 %i.0430, 1
  %136 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %nr_frags, align 2
  %conv131 = zext i8 %139 to i32
  %cmp132 = icmp ult i32 %inc220, %conv131
  br i1 %cmp132, label %for.inc.do.body135_crit_edge, label %for.inc.for.end221_crit_edge

for.inc.for.end221_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end221

for.inc.do.body135_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body135

for.end221:                                       ; preds = %for.inc.for.end221_crit_edge, %for.cond129.preheader.for.end221_crit_edge
  %cur_index.3.lcssa = phi i32 [ %cur_index.2.lcssa, %for.cond129.preheader.for.end221_crit_edge ], [ %cur_index.4.lcssa, %for.inc.for.end221_crit_edge ]
  %140 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %desc_data_head, align 4
  %sub225 = add i32 %cur_index.3.lcssa, -1
  %142 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dma_desc_count, align 8
  %sub227 = add i32 %143, -1
  %and228 = and i32 %sub227, %sub225
  %skb230 = getelementptr %struct.xlgmac_desc_data, ptr %141, i32 %and228, i32 2
  %144 = ptrtoint ptr %skb230 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %skb, ptr %skb230, align 4
  %sub231 = sub i32 %cur_index.3.lcssa, %6
  %145 = ptrtoint ptr %desc_count to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %sub231, ptr %desc_count, align 4
  br label %cleanup

err_out:                                          ; preds = %if.then177, %if.then87, %if.then41
  %cur_index.5 = phi i32 [ %cur_index.0, %if.then41 ], [ %cur_index.2418, %if.then87 ], [ %cur_index.4424, %if.then177 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %cur_index.5)
  %cmp234435 = icmp ult i32 %6, %cur_index.5
  br i1 %cmp234435, label %err_out.while.body_crit_edge, label %err_out.cleanup_crit_edge

err_out.cleanup_crit_edge:                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_out.while.body_crit_edge:                     ; preds = %err_out
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_out.while.body_crit_edge
  %start_index.0436 = phi i32 [ %inc239, %while.body.while.body_crit_edge ], [ %6, %err_out.while.body_crit_edge ]
  %146 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %desc_data_head, align 4
  %inc239 = add i32 %start_index.0436, 1
  %148 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %dma_desc_count, align 8
  %sub241 = add i32 %149, -1
  %and242 = and i32 %sub241, %start_index.0436
  %add.ptr243 = getelementptr %struct.xlgmac_desc_data, ptr %147, i32 %and242
  call void @xlgmac_unmap_desc_data(ptr noundef %1, ptr noundef %add.ptr243)
  %exitcond.not = icmp eq i32 %inc239, %cur_index.5
  br i1 %exitcond.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %err_out.cleanup_crit_edge, %for.end221
  %retval.0 = phi i32 [ %sub231, %for.end221 ], [ 0, %err_out.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb_dma) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_map_rx_buffer(ptr nocapture noundef readonly %pdata, ptr nocapture noundef %ring, ptr nocapture noundef writeonly %desc_data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_hdr_pa = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 5
  %0 = ptrtoint ptr %rx_hdr_pa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_hdr_pa, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @xlgmac_alloc_pages(ptr noundef %pdata, ptr noundef %rx_hdr_pa, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %rx_buf_pa = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 6
  %2 = ptrtoint ptr %rx_buf_pa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_buf_pa, align 32
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.then7, label %if.end4.if.end13_crit_edge

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then7:                                         ; preds = %if.end4
  %call9 = tail call fastcc i32 @xlgmac_alloc_pages(ptr noundef %pdata, ptr noundef %rx_buf_pa, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then7.if.end13_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %rx = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 6
  tail call fastcc void @xlgmac_set_buffer_data(ptr noundef %rx, ptr noundef %rx_hdr_pa, i32 noundef 512)
  %buf = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 6, i32 1
  %rx_buf_size = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 30
  %4 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_buf_size, align 4
  tail call fastcc void @xlgmac_set_buffer_data(ptr noundef %buf, ptr noundef %rx_buf_pa, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ %call, %if.then.cleanup_crit_edge ], [ %call9, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_unmap_desc_data(ptr nocapture noundef readonly %pdata, ptr nocapture noundef %desc_data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %skb_dma = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 3
  %0 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %skb_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 4
  %skb_dma_len6 = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 4
  %4 = ptrtoint ptr %skb_dma_len6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skb_dma_len6, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %1, i32 noundef %5, i32 noundef 1, i32 noundef 0) #9
  %6 = ptrtoint ptr %skb_dma to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %skb_dma, align 4
  %skb_dma_len8 = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 4
  %7 = ptrtoint ptr %skb_dma_len8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %skb_dma_len8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  %skb = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 2
  %8 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %9, i32 noundef 1) #9
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %skb, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %rx = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 6
  %11 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx, align 4
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %if.end14.if.end21_crit_edge, label %if.then16

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then16:                                        ; preds = %if.end14
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !66

if.then.i.i:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %12 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %18 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !68

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xlgmac_unmap_desc_data, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !67

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %17, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end21_crit_edge

folio_put_testzero.exit.i.i.if.end21_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %17) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end21_crit_edge, %if.end14.if.end21_crit_edge
  %pa_unmap = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 6, i32 0, i32 1
  %21 = ptrtoint ptr %pa_unmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pa_unmap, align 4
  %tobool25.not = icmp eq ptr %22, null
  br i1 %tobool25.not, label %if.end21.if.end38_crit_edge, label %if.then26

if.end21.if.end38_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then26:                                        ; preds = %if.end21
  %dev27 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 1
  %23 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev27, align 4
  %pages_dma = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 6, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %pages_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pages_dma, align 4
  %pages_len = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 6, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %pages_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pages_len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef 2, i32 noundef 0) #9
  %29 = ptrtoint ptr %pa_unmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pa_unmap, align 4
  %31 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i114 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i114)
  %tobool.not.i.i115 = icmp eq i32 %and.i.i114, 0
  br i1 %tobool.not.i.i115, label %if.end.i.i118, label %if.then.i.i117, !prof !66

if.then.i.i117:                                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i116 = add i32 %33, -1
  br label %_compound_head.exit.i123

if.end.i.i118:                                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %30 to i32
  br label %_compound_head.exit.i123

_compound_head.exit.i123:                         ; preds = %if.end.i.i118, %if.then.i.i117
  %retval.0.i.i119 = phi i32 [ %sub.i.i116, %if.then.i.i117 ], [ %34, %if.end.i.i118 ]
  %35 = inttoptr i32 %retval.0.i.i119 to ptr
  %_refcount.i.i.i.i.i120 = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 3
  %call.i.i.i.i.i.i.i121 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i120, i32 noundef 4) #9
  %36 = ptrtoint ptr %_refcount.i.i.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %_refcount.i.i.i.i.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i.i.i122 = icmp eq i32 %37, 0
  br i1 %cmp.i.i.i.i122, label %if.then.i.i.i.i124, label %do.end5.i.i.i.i128, !prof !68

if.then.i.i.i.i124:                               ; preds = %_compound_head.exit.i123
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

do.end5.i.i.i.i128:                               ; preds = %_compound_head.exit.i123
  %call.i.i.i10.i.i.i.i125 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i120, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i120, i32 1, i32 3, i32 1) #9
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i120, ptr %_refcount.i.i.i.i.i120, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i120) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i.i.i.i.i126 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i126)
  %cmp.i.i.i.i.i.i.i127 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i126, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xlgmac_unmap_desc_data, %if.then.i.i.i.i.i130)) #9
          to label %folio_put_testzero.exit.i.i131 [label %if.then.i.i.i.i.i130], !srcloc !67

if.then.i.i.i.i.i130:                             ; preds = %do.end5.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i129 = zext i1 %cmp.i.i.i.i.i.i.i127 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %35, i32 noundef -1, i32 noundef %conv.i.i.i.i.i129) #9
  br label %folio_put_testzero.exit.i.i131

folio_put_testzero.exit.i.i131:                   ; preds = %if.then.i.i.i.i.i130, %do.end5.i.i.i.i128
  br i1 %cmp.i.i.i.i.i.i.i127, label %if.then.i4.i132, label %folio_put_testzero.exit.i.i131.if.end38_crit_edge

folio_put_testzero.exit.i.i131.if.end38_crit_edge: ; preds = %folio_put_testzero.exit.i.i131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then.i4.i132:                                  ; preds = %folio_put_testzero.exit.i.i131
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %35) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then.i4.i132, %folio_put_testzero.exit.i.i131.if.end38_crit_edge, %if.end21.if.end38_crit_edge
  %buf = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf, align 4
  %tobool42.not = icmp eq ptr %40, null
  br i1 %tobool42.not, label %if.end38.if.end48_crit_edge, label %if.then43

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then43:                                        ; preds = %if.end38
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i134 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i134)
  %tobool.not.i.i135 = icmp eq i32 %and.i.i134, 0
  br i1 %tobool.not.i.i135, label %if.end.i.i138, label %if.then.i.i137, !prof !66

if.then.i.i137:                                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i136 = add i32 %43, -1
  br label %_compound_head.exit.i143

if.end.i.i138:                                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %40 to i32
  br label %_compound_head.exit.i143

_compound_head.exit.i143:                         ; preds = %if.end.i.i138, %if.then.i.i137
  %retval.0.i.i139 = phi i32 [ %sub.i.i136, %if.then.i.i137 ], [ %44, %if.end.i.i138 ]
  %45 = inttoptr i32 %retval.0.i.i139 to ptr
  %_refcount.i.i.i.i.i140 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 3
  %call.i.i.i.i.i.i.i141 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i140, i32 noundef 4) #9
  %46 = ptrtoint ptr %_refcount.i.i.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %_refcount.i.i.i.i.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i.i.i.i142 = icmp eq i32 %47, 0
  br i1 %cmp.i.i.i.i142, label %if.then.i.i.i.i144, label %do.end5.i.i.i.i148, !prof !68

if.then.i.i.i.i144:                               ; preds = %_compound_head.exit.i143
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

do.end5.i.i.i.i148:                               ; preds = %_compound_head.exit.i143
  %call.i.i.i10.i.i.i.i145 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i140, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i140, i32 1, i32 3, i32 1) #9
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i140, ptr %_refcount.i.i.i.i.i140, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i140) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i.i.i.i.i146 = extractvalue { i32, i32 } %48, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i146)
  %cmp.i.i.i.i.i.i.i147 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i146, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xlgmac_unmap_desc_data, %if.then.i.i.i.i.i150)) #9
          to label %folio_put_testzero.exit.i.i151 [label %if.then.i.i.i.i.i150], !srcloc !67

if.then.i.i.i.i.i150:                             ; preds = %do.end5.i.i.i.i148
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i149 = zext i1 %cmp.i.i.i.i.i.i.i147 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %45, i32 noundef -1, i32 noundef %conv.i.i.i.i.i149) #9
  br label %folio_put_testzero.exit.i.i151

folio_put_testzero.exit.i.i151:                   ; preds = %if.then.i.i.i.i.i150, %do.end5.i.i.i.i148
  br i1 %cmp.i.i.i.i.i.i.i147, label %if.then.i4.i152, label %folio_put_testzero.exit.i.i151.if.end48_crit_edge

folio_put_testzero.exit.i.i151.if.end48_crit_edge: ; preds = %folio_put_testzero.exit.i.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then.i4.i152:                                  ; preds = %folio_put_testzero.exit.i.i151
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %45) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then.i4.i152, %folio_put_testzero.exit.i.i151.if.end48_crit_edge, %if.end38.if.end48_crit_edge
  %pa_unmap51 = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 6, i32 1, i32 1
  %49 = ptrtoint ptr %pa_unmap51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pa_unmap51, align 4
  %tobool53.not = icmp eq ptr %50, null
  br i1 %tobool53.not, label %if.end48.if.end68_crit_edge, label %if.then54

if.end48.if.end68_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then54:                                        ; preds = %if.end48
  %dev55 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 1
  %51 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev55, align 4
  %pages_dma59 = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 6, i32 1, i32 1, i32 3
  %53 = ptrtoint ptr %pages_dma59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pages_dma59, align 4
  %pages_len63 = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 6, i32 1, i32 1, i32 1
  %55 = ptrtoint ptr %pages_len63 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pages_len63, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef 2, i32 noundef 0) #9
  %57 = ptrtoint ptr %pa_unmap51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pa_unmap51, align 4
  %59 = getelementptr inbounds %struct.page, ptr %58, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  %and.i.i154 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i154)
  %tobool.not.i.i155 = icmp eq i32 %and.i.i154, 0
  br i1 %tobool.not.i.i155, label %if.end.i.i158, label %if.then.i.i157, !prof !66

if.then.i.i157:                                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i156 = add i32 %61, -1
  br label %_compound_head.exit.i163

if.end.i.i158:                                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %58 to i32
  br label %_compound_head.exit.i163

_compound_head.exit.i163:                         ; preds = %if.end.i.i158, %if.then.i.i157
  %retval.0.i.i159 = phi i32 [ %sub.i.i156, %if.then.i.i157 ], [ %62, %if.end.i.i158 ]
  %63 = inttoptr i32 %retval.0.i.i159 to ptr
  %_refcount.i.i.i.i.i160 = getelementptr inbounds %struct.page, ptr %63, i32 0, i32 3
  %call.i.i.i.i.i.i.i161 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i160, i32 noundef 4) #9
  %64 = ptrtoint ptr %_refcount.i.i.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %_refcount.i.i.i.i.i160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i.i.i.i162 = icmp eq i32 %65, 0
  br i1 %cmp.i.i.i.i162, label %if.then.i.i.i.i164, label %do.end5.i.i.i.i168, !prof !68

if.then.i.i.i.i164:                               ; preds = %_compound_head.exit.i163
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %63, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

do.end5.i.i.i.i168:                               ; preds = %_compound_head.exit.i163
  %call.i.i.i10.i.i.i.i165 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i160, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i160, i32 1, i32 3, i32 1) #9
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i160, ptr %_refcount.i.i.i.i.i160, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i160) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i.i.i.i.i166 = extractvalue { i32, i32 } %66, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i166)
  %cmp.i.i.i.i.i.i.i167 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i166, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xlgmac_unmap_desc_data, %if.then.i.i.i.i.i170)) #9
          to label %folio_put_testzero.exit.i.i171 [label %if.then.i.i.i.i.i170], !srcloc !67

if.then.i.i.i.i.i170:                             ; preds = %do.end5.i.i.i.i168
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i169 = zext i1 %cmp.i.i.i.i.i.i.i167 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %63, i32 noundef -1, i32 noundef %conv.i.i.i.i.i169) #9
  br label %folio_put_testzero.exit.i.i171

folio_put_testzero.exit.i.i171:                   ; preds = %if.then.i.i.i.i.i170, %do.end5.i.i.i.i168
  br i1 %cmp.i.i.i.i.i.i.i167, label %if.then.i4.i172, label %folio_put_testzero.exit.i.i171.if.end68_crit_edge

folio_put_testzero.exit.i.i171.if.end68_crit_edge: ; preds = %folio_put_testzero.exit.i.i171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then.i4.i172:                                  ; preds = %folio_put_testzero.exit.i.i171
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %63) #9
  br label %if.end68

if.end68:                                         ; preds = %if.then.i4.i172, %folio_put_testzero.exit.i.i171.if.end68_crit_edge, %if.end48.if.end68_crit_edge
  %tx = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 5
  %state_saved = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 8
  %67 = call ptr @memset(ptr %tx, i32 0, i32 104)
  %68 = ptrtoint ptr %state_saved to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %state_saved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool71.not = icmp eq i32 %69, 0
  br i1 %tobool71.not, label %if.end68.if.end77_crit_edge, label %if.then72

if.end68.if.end77_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %70 = call ptr @memset(ptr %state_saved, i32 0, i32 16)
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %if.end68.if.end77_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_tx_desc_init(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp35.not = icmp eq i32 %1, 0
  br i1 %cmp35.not, label %entry.for.end11_crit_edge, label %for.body.lr.ph

entry.for.end11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end11

for.body.lr.ph:                                   ; preds = %entry
  %channel_head = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %2 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel_head, align 8
  %tx_desc_init = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 2, i32 19
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.037 = phi i32 [ 0, %for.body.lr.ph ], [ %inc9, %for.end.for.body_crit_edge ]
  %channel.036 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr10, %for.end.for.body_crit_edge ]
  %tx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036, i32 0, i32 10
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end11_crit_edge, label %if.end

for.body.for.end11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end11

if.end:                                           ; preds = %for.body
  %dma_desc_count = getelementptr inbounds %struct.xlgmac_ring, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_desc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp331.not = icmp eq i32 %7, 0
  br i1 %cmp331.not, label %if.end.for.end_crit_edge, label %for.body4.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body4.lr.ph:                                  ; preds = %if.end
  %dma_desc_head_addr = getelementptr inbounds %struct.xlgmac_ring, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %dma_desc_head_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_desc_head_addr, align 4
  %dma_desc_head = getelementptr inbounds %struct.xlgmac_ring, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %dma_desc_head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_desc_head, align 64
  %desc_data_head = getelementptr inbounds %struct.xlgmac_ring, ptr %5, i32 0, i32 4
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body4.lr.ph
  %12 = phi i32 [ %7, %for.body4.lr.ph ], [ %18, %for.body4.for.body4_crit_edge ]
  %j.034 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.body4.for.body4_crit_edge ]
  %dma_desc_addr.033 = phi i32 [ %9, %for.body4.lr.ph ], [ %add, %for.body4.for.body4_crit_edge ]
  %dma_desc.032 = phi ptr [ %11, %for.body4.lr.ph ], [ %incdec.ptr, %for.body4.for.body4_crit_edge ]
  %13 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %desc_data_head, align 4
  %sub = add i32 %12, -1
  %and = and i32 %sub, %j.034
  %add.ptr = getelementptr %struct.xlgmac_desc_data, ptr %14, i32 %and
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dma_desc.032, ptr %add.ptr, align 4
  %dma_desc_addr7 = getelementptr %struct.xlgmac_desc_data, ptr %14, i32 %and, i32 1
  %16 = ptrtoint ptr %dma_desc_addr7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dma_desc_addr.033, ptr %dma_desc_addr7, align 4
  %incdec.ptr = getelementptr %struct.xlgmac_dma_desc, ptr %dma_desc.032, i32 1
  %add = add i32 %dma_desc_addr.033, 16
  %inc = add nuw i32 %j.034, 1
  %17 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_desc_count, align 8
  %cmp3 = icmp ult i32 %inc, %18
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.end_crit_edge

for.body4.for.end_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4

for.end:                                          ; preds = %for.body4.for.end_crit_edge, %if.end.for.end_crit_edge
  %cur = getelementptr inbounds %struct.xlgmac_ring, ptr %5, i32 0, i32 7
  %19 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cur, align 16
  %dirty = getelementptr inbounds %struct.xlgmac_ring, ptr %5, i32 0, i32 8
  %20 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %dirty, align 4
  %21 = getelementptr inbounds %struct.xlgmac_ring, ptr %5, i32 0, i32 10
  %22 = call ptr @memset(ptr %21, i32 0, i32 12)
  %23 = ptrtoint ptr %tx_desc_init to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_desc_init, align 4
  tail call void %24(ptr noundef %channel.036) #9
  %inc9 = add nuw i32 %i.037, 1
  %incdec.ptr10 = getelementptr %struct.xlgmac_channel, ptr %channel.036, i32 1
  %25 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel_count, align 4
  %cmp = icmp ult i32 %inc9, %26
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end11_crit_edge

for.end.for.end11_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end11

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end11:                                        ; preds = %for.end.for.end11_crit_edge, %for.body.for.end11_crit_edge, %entry.for.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_rx_desc_init(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp42.not = icmp eq i32 %1, 0
  br i1 %cmp42.not, label %entry.for.end14_crit_edge, label %for.body.lr.ph

entry.for.end14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end14

for.body.lr.ph:                                   ; preds = %entry
  %channel_head = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %2 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel_head, align 8
  %rx_buf_size.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 30
  %rx_desc_init = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 2, i32 20
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc12, %for.end.for.body_crit_edge ]
  %channel.043 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr13, %for.end.for.body_crit_edge ]
  %rx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.043, i32 0, i32 11
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end14_crit_edge, label %if.end

for.body.for.end14_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end14

if.end:                                           ; preds = %for.body
  %dma_desc_count = getelementptr inbounds %struct.xlgmac_ring, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_desc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp338.not = icmp eq i32 %7, 0
  br i1 %cmp338.not, label %if.end.for.end_crit_edge, label %for.body4.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body4.lr.ph:                                  ; preds = %if.end
  %dma_desc_head_addr = getelementptr inbounds %struct.xlgmac_ring, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %dma_desc_head_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_desc_head_addr, align 4
  %dma_desc_head = getelementptr inbounds %struct.xlgmac_ring, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %dma_desc_head to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_desc_head, align 64
  %desc_data_head = getelementptr inbounds %struct.xlgmac_ring, ptr %5, i32 0, i32 4
  %rx_hdr_pa.i = getelementptr inbounds %struct.xlgmac_ring, ptr %5, i32 0, i32 5
  %rx_buf_pa.i = getelementptr inbounds %struct.xlgmac_ring, ptr %5, i32 0, i32 6
  br label %for.body4

for.body4:                                        ; preds = %if.end10.for.body4_crit_edge, %for.body4.lr.ph
  %12 = phi i32 [ %7, %for.body4.lr.ph ], [ %24, %if.end10.for.body4_crit_edge ]
  %j.041 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %if.end10.for.body4_crit_edge ]
  %dma_desc_addr.040 = phi i32 [ %9, %for.body4.lr.ph ], [ %add, %if.end10.for.body4_crit_edge ]
  %dma_desc.039 = phi ptr [ %11, %for.body4.lr.ph ], [ %incdec.ptr, %if.end10.for.body4_crit_edge ]
  %13 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %desc_data_head, align 4
  %sub = add i32 %12, -1
  %and = and i32 %sub, %j.041
  %add.ptr = getelementptr %struct.xlgmac_desc_data, ptr %14, i32 %and
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dma_desc.039, ptr %add.ptr, align 4
  %dma_desc_addr7 = getelementptr %struct.xlgmac_desc_data, ptr %14, i32 %and, i32 1
  %16 = ptrtoint ptr %dma_desc_addr7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dma_desc_addr.040, ptr %dma_desc_addr7, align 4
  %17 = ptrtoint ptr %rx_hdr_pa.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_hdr_pa.i, align 16
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.then.i, label %for.body4.if.end4.i_crit_edge

for.body4.if.end4.i_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then.i:                                        ; preds = %for.body4
  %call.i = tail call fastcc i32 @xlgmac_alloc_pages(ptr noundef %pdata, ptr noundef %rx_hdr_pa.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.for.end_crit_edge

if.then.i.for.end_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %for.body4.if.end4.i_crit_edge
  %19 = ptrtoint ptr %rx_buf_pa.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_buf_pa.i, align 32
  %tobool6.not.i = icmp eq ptr %20, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end4.i.if.end10_crit_edge

if.end4.i.if.end10_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then7.i:                                       ; preds = %if.end4.i
  %call9.i = tail call fastcc i32 @xlgmac_alloc_pages(ptr noundef %pdata, ptr noundef %rx_buf_pa.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then7.i.if.end10_crit_edge, label %if.then7.i.for.end_crit_edge

if.then7.i.for.end_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then7.i.if.end10_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %if.then7.i.if.end10_crit_edge, %if.end4.i.if.end10_crit_edge
  %rx.i = getelementptr %struct.xlgmac_desc_data, ptr %14, i32 %and, i32 6
  tail call fastcc void @xlgmac_set_buffer_data(ptr noundef %rx.i, ptr noundef %rx_hdr_pa.i, i32 noundef 512) #9
  %buf.i = getelementptr %struct.xlgmac_desc_data, ptr %14, i32 %and, i32 6, i32 1
  %21 = ptrtoint ptr %rx_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_buf_size.i, align 4
  tail call fastcc void @xlgmac_set_buffer_data(ptr noundef %buf.i, ptr noundef %rx_buf_pa.i, i32 noundef %22) #9
  %incdec.ptr = getelementptr %struct.xlgmac_dma_desc, ptr %dma_desc.039, i32 1
  %add = add i32 %dma_desc_addr.040, 16
  %inc = add nuw i32 %j.041, 1
  %23 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_desc_count, align 8
  %cmp3 = icmp ult i32 %inc, %24
  br i1 %cmp3, label %if.end10.for.body4_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end10.for.body4_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4

for.end:                                          ; preds = %if.end10.for.end_crit_edge, %if.then7.i.for.end_crit_edge, %if.then.i.for.end_crit_edge, %if.end.for.end_crit_edge
  %cur = getelementptr inbounds %struct.xlgmac_ring, ptr %5, i32 0, i32 7
  %25 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %cur, align 16
  %dirty = getelementptr inbounds %struct.xlgmac_ring, ptr %5, i32 0, i32 8
  %26 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %dirty, align 4
  %27 = ptrtoint ptr %rx_desc_init to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_desc_init, align 4
  tail call void %28(ptr noundef %channel.043) #9
  %inc12 = add nuw i32 %i.044, 1
  %incdec.ptr13 = getelementptr %struct.xlgmac_channel, ptr %channel.043, i32 1
  %29 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel_count, align 4
  %cmp = icmp ult i32 %inc12, %30
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end14_crit_edge

for.end.for.end14_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end14

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end14:                                        ; preds = %for.end.for.end14_crit_edge, %for.body.for.end14_crit_edge, %entry.for.end14_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlgmac_alloc_channels(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 384) #9
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !68

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %do.body

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end7.i.i
  %msg_enable = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 5
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end12_crit_edge, label %do.body3

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end12

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_alloc_channels.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_alloc_channels, %if.then8)) #9
          to label %do.end12 [label %if.then8], !srcloc !67

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_alloc_channels.__UNIQUE_ID_ddebug354, ptr noundef %8, ptr noundef nonnull @.str.3, ptr noundef nonnull %call8.i.i) #9
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %do.body3, %do.body.do.end12_crit_edge
  %tx_ring_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 11
  %9 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_ring_count, align 8
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %10, i32 256) #9
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %do.end12.err_tx_ring_crit_edge, label %if.end7.i.i158, !prof !68

do.end12.err_tx_ring_crit_edge:                   ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_tx_ring

if.end7.i.i158:                                   ; preds = %do.end12
  %13 = extractvalue { i32, i1 } %11, 0
  %call8.i.i157 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #13
  %tobool14.not = icmp eq ptr %call8.i.i157, null
  br i1 %tobool14.not, label %if.end7.i.i158.err_tx_ring_crit_edge, label %if.end16

if.end7.i.i158.err_tx_ring_crit_edge:             ; preds = %if.end7.i.i158
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_tx_ring

if.end16:                                         ; preds = %if.end7.i.i158
  %rx_ring_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 12
  %14 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_ring_count, align 4
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 256) #9
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %if.end16.err_rx_ring_crit_edge, label %if.end7.i.i191, !prof !68

if.end16.err_rx_ring_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rx_ring

if.end7.i.i191:                                   ; preds = %if.end16
  %18 = extractvalue { i32, i1 } %16, 0
  %call8.i.i190 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #13
  %tobool18.not = icmp eq ptr %call8.i.i190, null
  br i1 %tobool18.not, label %if.end7.i.i191.err_rx_ring_crit_edge, label %for.cond.preheader

if.end7.i.i191.err_rx_ring_crit_edge:             ; preds = %if.end7.i.i191
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_rx_ring

for.cond.preheader:                               ; preds = %if.end7.i.i191
  %19 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp214.not = icmp eq i32 %20, 0
  br i1 %cmp214.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %per_channel_irq = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 34
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %channel.0221 = phi ptr [ %call8.i.i, %for.body.lr.ph ], [ %incdec.ptr73, %for.inc.for.body_crit_edge ]
  %tx_ring.0219 = phi ptr [ %call8.i.i157, %for.body.lr.ph ], [ %tx_ring.1, %for.inc.for.body_crit_edge ]
  %i.0217 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %rx_ring.0215 = phi ptr [ %call8.i.i190, %for.body.lr.ph ], [ %rx_ring.1, %for.inc.for.body_crit_edge ]
  %call22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %channel.0221, i32 noundef 16, ptr noundef nonnull @.str.4, i32 noundef %i.0217)
  %pdata23 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0221, i32 0, i32 1
  %21 = ptrtoint ptr %pdata23 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pdata, ptr %pdata23, align 16
  %queue_index = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0221, i32 0, i32 2
  %22 = ptrtoint ptr %queue_index to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.0217, ptr %queue_index, align 4
  %23 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %24, i32 12544
  %mul = shl i32 %i.0217, 7
  %add.ptr24 = getelementptr i8, ptr %add.ptr, i32 %mul
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0221, i32 0, i32 3
  %25 = ptrtoint ptr %dma_regs to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr24, ptr %dma_regs, align 8
  %26 = ptrtoint ptr %per_channel_irq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %per_channel_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool25.not = icmp eq i32 %27, 0
  br i1 %tobool25.not, label %for.body.if.end31_crit_edge, label %if.then26

for.body.if.end31_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then26:                                        ; preds = %for.body
  %arrayidx = getelementptr %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 35, i32 %i.0217
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp27 = icmp slt i32 %29, 0
  br i1 %cmp27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdata, align 8
  %add = add nuw i32 %i.0217, 1
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.5, i32 noundef %add) #12
  tail call void @kfree(ptr noundef %rx_ring.0215) #9
  br label %err_rx_ring

if.end30:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %dma_irq = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0221, i32 0, i32 4
  %32 = ptrtoint ptr %dma_irq to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %dma_irq, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %for.body.if.end31_crit_edge
  %33 = ptrtoint ptr %tx_ring_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_ring_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0217, i32 %34)
  %cmp33 = icmp ult i32 %i.0217, %34
  br i1 %cmp33, label %if.then34, label %if.end31.if.end36_crit_edge

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr = getelementptr %struct.xlgmac_ring, ptr %tx_ring.0219, i32 1
  %tx_ring35 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0221, i32 0, i32 10
  %35 = ptrtoint ptr %tx_ring35 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %tx_ring.0219, ptr %tx_ring35, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  %tx_ring.1 = phi ptr [ %incdec.ptr, %if.then34 ], [ %tx_ring.0219, %if.end31.if.end36_crit_edge ]
  %36 = ptrtoint ptr %rx_ring_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rx_ring_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0217, i32 %37)
  %cmp38 = icmp ult i32 %i.0217, %37
  br i1 %cmp38, label %if.then39, label %if.end36.do.body43_crit_edge

if.end36.do.body43_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body43

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr40 = getelementptr %struct.xlgmac_ring, ptr %rx_ring.0215, i32 1
  %rx_ring41 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0221, i32 0, i32 11
  %38 = ptrtoint ptr %rx_ring41 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %rx_ring.0215, ptr %rx_ring41, align 4
  br label %do.body43

do.body43:                                        ; preds = %if.then39, %if.end36.do.body43_crit_edge
  %rx_ring.1 = phi ptr [ %incdec.ptr40, %if.then39 ], [ %rx_ring.0215, %if.end36.do.body43_crit_edge ]
  %39 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %msg_enable, align 8
  %and45 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body43.for.inc_crit_edge, label %do.body48

do.body43.for.inc_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body48:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_alloc_channels.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_alloc_channels, %if.then60)) #9
          to label %for.inc [label %if.then60], !srcloc !67

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdata, align 8
  %43 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dma_regs, align 8
  %tx_ring65 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0221, i32 0, i32 10
  %45 = ptrtoint ptr %tx_ring65 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tx_ring65, align 8
  %rx_ring66 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0221, i32 0, i32 11
  %47 = ptrtoint ptr %rx_ring66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_ring66, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_alloc_channels.__UNIQUE_ID_ddebug355, ptr noundef %42, ptr noundef nonnull @.str.6, ptr noundef %channel.0221, ptr noundef %44, ptr noundef %46, ptr noundef %48) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then60, %do.body48, %do.body43.for.inc_crit_edge
  %inc = add nuw i32 %i.0217, 1
  %incdec.ptr73 = getelementptr %struct.xlgmac_channel, ptr %channel.0221, i32 1
  %49 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %channel_count, align 4
  %cmp = icmp ult i32 %inc, %50
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %channel_head74 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %51 = ptrtoint ptr %channel_head74 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call8.i.i, ptr %channel_head74, align 8
  br label %cleanup

err_rx_ring:                                      ; preds = %if.then28, %if.end7.i.i191.err_rx_ring_crit_edge, %if.end16.err_rx_ring_crit_edge
  %ret.0 = phi i32 [ %29, %if.then28 ], [ -12, %if.end7.i.i191.err_rx_ring_crit_edge ], [ -12, %if.end16.err_rx_ring_crit_edge ]
  %tx_ring.2 = phi ptr [ %tx_ring.0219, %if.then28 ], [ %call8.i.i157, %if.end7.i.i191.err_rx_ring_crit_edge ], [ %call8.i.i157, %if.end16.err_rx_ring_crit_edge ]
  tail call void @kfree(ptr noundef %tx_ring.2) #9
  br label %err_tx_ring

err_tx_ring:                                      ; preds = %err_rx_ring, %if.end7.i.i158.err_tx_ring_crit_edge, %do.end12.err_tx_ring_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_rx_ring ], [ -12, %if.end7.i.i158.err_tx_ring_crit_edge ], [ -12, %do.end12.err_tx_ring_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_tx_ring, %for.end, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_tx_ring ], [ 0, %for.end ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlgmac_alloc_rings(ptr nocapture noundef readonly %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_head = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %channel_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp78.not = icmp eq i32 %1, 0
  br i1 %cmp78.not, label %entry.cleanup_crit_edge, label %do.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.lr.ph:                                    ; preds = %entry
  %2 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel_head, align 8
  %msg_enable = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 5
  %tx_desc_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 13
  %rx_desc_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %do.body.lr.ph
  %channel.080 = phi ptr [ %3, %do.body.lr.ph ], [ %incdec.ptr, %for.inc.do.body_crit_edge ]
  %i.079 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %for.inc.do.body_crit_edge ]
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end8_crit_edge, label %do.body1

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

do.body1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_alloc_rings.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_alloc_rings, %if.then5)) #9
          to label %do.end8 [label %if.then5], !srcloc !67

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_alloc_rings.__UNIQUE_ID_ddebug352, ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef %channel.080) #9
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %do.body1, %do.body.do.end8_crit_edge
  %tx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.080, i32 0, i32 10
  %8 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_ring, align 8
  %10 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_desc_count, align 8
  %call9 = tail call fastcc i32 @xlgmac_init_ring(ptr noundef %pdata, ptr noundef %9, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body14, label %do.end8.err_init_ring_crit_edge

do.end8.err_init_ring_crit_edge:                  ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_init_ring

do.body14:                                        ; preds = %do.end8
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 8
  %and16 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body14.do.end40_crit_edge, label %do.body19

do.body14.do.end40_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

do.body19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_alloc_rings.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_alloc_rings, %if.then31)) #9
          to label %do.end40 [label %if.then31], !srcloc !67

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_alloc_rings.__UNIQUE_ID_ddebug353, ptr noundef %15, ptr noundef nonnull @.str.10, ptr noundef %channel.080) #9
  br label %do.end40

do.end40:                                         ; preds = %if.then31, %do.body19, %do.body14.do.end40_crit_edge
  %rx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.080, i32 0, i32 11
  %16 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_ring, align 4
  %18 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_desc_count, align 4
  %call41 = tail call fastcc i32 @xlgmac_init_ring(ptr noundef %pdata, ptr noundef %17, i32 noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %for.inc, label %do.end40.err_init_ring_crit_edge

do.end40.err_init_ring_crit_edge:                 ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_init_ring

for.inc:                                          ; preds = %do.end40
  %inc = add nuw i32 %i.079, 1
  %incdec.ptr = getelementptr %struct.xlgmac_channel, ptr %channel.080, i32 1
  %20 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel_count, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.inc.do.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

err_init_ring:                                    ; preds = %do.end40.err_init_ring_crit_edge, %do.end8.err_init_ring_crit_edge
  %.str.11.sink = phi ptr [ @.str.9, %do.end8.err_init_ring_crit_edge ], [ @.str.11, %do.end40.err_init_ring_crit_edge ]
  %ret.0 = phi i32 [ %call9, %do.end8.err_init_ring_crit_edge ], [ %call41, %do.end40.err_init_ring_crit_edge ]
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %23, ptr noundef nonnull %.str.11.sink) #12
  %24 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channel_head, align 8
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %err_init_ring.cleanup_crit_edge, label %for.cond.preheader.i

err_init_ring.cleanup_crit_edge:                  ; preds = %err_init_ring
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.i:                             ; preds = %err_init_ring
  %26 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp10.not.i = icmp eq i32 %27, 0
  br i1 %cmp10.not.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %channel.011.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %25, %for.cond.preheader.i.for.body.i_crit_edge ]
  %tx_ring.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.011.i, i32 0, i32 10
  %28 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_ring.i, align 8
  tail call fastcc void @xlgmac_free_ring(ptr noundef %pdata, ptr noundef %29) #9
  %rx_ring.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.011.i, i32 0, i32 11
  %30 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_ring.i, align 4
  tail call fastcc void @xlgmac_free_ring(ptr noundef %pdata, ptr noundef %31) #9
  %inc.i = add nuw i32 %i.012.i, 1
  %incdec.ptr.i = getelementptr %struct.xlgmac_channel, ptr %channel.011.i, i32 1
  %32 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel_count, align 4
  %cmp.i = icmp ult i32 %inc.i, %33
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge, %err_init_ring.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_init_ring.cleanup_crit_edge ], [ %ret.0, %for.cond.preheader.i.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %for.body.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlgmac_init_ring(ptr nocapture noundef readonly %pdata, ptr noundef %ring, i32 noundef %dma_desc_count) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ring, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %dma_desc_count1 = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %dma_desc_count1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dma_desc_count, ptr %dma_desc_count1, align 8
  %dev = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %mul = shl i32 %dma_desc_count, 4
  %dma_desc_head_addr = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef %mul, ptr noundef %dma_desc_head_addr, i32 noundef 3264, i32 noundef 0) #9
  %dma_desc_head = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 1
  %3 = ptrtoint ptr %dma_desc_head to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %dma_desc_head, align 64
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.return_crit_edge, label %if.end5

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end5:                                          ; preds = %if.end
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %dma_desc_count, i32 140) #9
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !68

kcalloc.exit.thread:                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %desc_data_head39 = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 4
  %6 = ptrtoint ptr %desc_data_head39 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %desc_data_head39, align 4
  br label %return

if.end7.i.i:                                      ; preds = %if.end5
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #13
  %desc_data_head = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 4
  %8 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %desc_data_head, align 4
  %tobool8.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool8.not, label %if.end7.i.i.return_crit_edge, label %do.body

if.end7.i.i.return_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body:                                          ; preds = %if.end7.i.i
  %msg_enable = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 5
  %9 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msg_enable, align 8
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.return_crit_edge, label %do.body13

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.body13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_init_ring.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_init_ring, %if.then18)) #9
          to label %return [label %if.then18], !srcloc !67

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdata, align 8
  %13 = ptrtoint ptr %dma_desc_head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dma_desc_head, align 64
  %15 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc_data_head, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_init_ring.__UNIQUE_ID_ddebug351, ptr noundef %12, ptr noundef nonnull @.str.13, ptr noundef %14, ptr noundef %dma_desc_head_addr, ptr noundef %16) #9
  br label %return

return:                                           ; preds = %if.then18, %do.body13, %do.body.return_crit_edge, %if.end7.i.i.return_crit_edge, %kcalloc.exit.thread, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ -12, %if.end.return_crit_edge ], [ -12, %if.end7.i.i.return_crit_edge ], [ 0, %do.body.return_crit_edge ], [ 0, %if.then18 ], [ -12, %kcalloc.exit.thread ], [ 0, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlgmac_free_ring(ptr nocapture noundef readonly %pdata, ptr noundef %ring) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ring, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc_data_head = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 4
  %0 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc_data_head, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %for.cond.preheader

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

for.cond.preheader:                               ; preds = %if.end
  %dma_desc_count = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 3
  %2 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_desc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp102.not = icmp eq i32 %3, 0
  br i1 %cmp102.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %4 = phi i32 [ %8, %for.body.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %i.0103 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %5 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc_data_head, align 4
  %sub = add i32 %4, -1
  %and = and i32 %sub, %i.0103
  %add.ptr = getelementptr %struct.xlgmac_desc_data, ptr %6, i32 %and
  tail call void @xlgmac_unmap_desc_data(ptr noundef %pdata, ptr noundef %add.ptr)
  %inc = add nuw i32 %i.0103, 1
  %7 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_desc_count, align 8
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %9 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc_data_head, align 4
  tail call void @kfree(ptr noundef %10) #9
  %11 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %desc_data_head, align 4
  br label %if.end7

if.end7:                                          ; preds = %for.end, %if.end.if.end7_crit_edge
  %rx_hdr_pa = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 5
  %12 = ptrtoint ptr %rx_hdr_pa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_hdr_pa, align 16
  %tobool8.not = icmp eq ptr %13, null
  br i1 %tobool8.not, label %if.end7.if.end21_crit_edge, label %if.then9

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then9:                                         ; preds = %if.end7
  %dev = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 1
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %pages_dma = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 5, i32 3
  %16 = ptrtoint ptr %pages_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pages_dma, align 4
  %pages_len = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %pages_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pages_len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef 2, i32 noundef 0) #9
  %20 = ptrtoint ptr %rx_hdr_pa to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_hdr_pa, align 16
  %22 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !66

if.then.i.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %24, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %21 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %25, %if.end.i.i ]
  %26 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %27 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i.i.i = icmp eq i32 %28, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !68

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xlgmac_free_ring, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !67

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %26, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %26) #9
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %30 = call ptr @memset(ptr %rx_hdr_pa, i32 0, i32 16)
  br label %if.end21

if.end21:                                         ; preds = %put_page.exit, %if.end7.if.end21_crit_edge
  %rx_buf_pa = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 6
  %31 = ptrtoint ptr %rx_buf_pa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_buf_pa, align 32
  %tobool23.not = icmp eq ptr %32, null
  br i1 %tobool23.not, label %if.end21.if.end40_crit_edge, label %if.then24

if.end21.if.end40_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then24:                                        ; preds = %if.end21
  %dev25 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 1
  %33 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev25, align 4
  %pages_dma27 = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 6, i32 3
  %35 = ptrtoint ptr %pages_dma27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pages_dma27, align 4
  %pages_len29 = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %pages_len29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pages_len29, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef 2, i32 noundef 0) #9
  %39 = ptrtoint ptr %rx_buf_pa to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_buf_pa, align 32
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i82 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i82)
  %tobool.not.i.i83 = icmp eq i32 %and.i.i82, 0
  br i1 %tobool.not.i.i83, label %if.end.i.i86, label %if.then.i.i85, !prof !66

if.then.i.i85:                                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i84 = add i32 %43, -1
  br label %_compound_head.exit.i91

if.end.i.i86:                                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %40 to i32
  br label %_compound_head.exit.i91

_compound_head.exit.i91:                          ; preds = %if.end.i.i86, %if.then.i.i85
  %retval.0.i.i87 = phi i32 [ %sub.i.i84, %if.then.i.i85 ], [ %44, %if.end.i.i86 ]
  %45 = inttoptr i32 %retval.0.i.i87 to ptr
  %_refcount.i.i.i.i.i88 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 3
  %call.i.i.i.i.i.i.i89 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i88, i32 noundef 4) #9
  %46 = ptrtoint ptr %_refcount.i.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %_refcount.i.i.i.i.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i.i.i.i90 = icmp eq i32 %47, 0
  br i1 %cmp.i.i.i.i90, label %if.then.i.i.i.i92, label %do.end5.i.i.i.i96, !prof !68

if.then.i.i.i.i92:                                ; preds = %_compound_head.exit.i91
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

do.end5.i.i.i.i96:                                ; preds = %_compound_head.exit.i91
  %call.i.i.i10.i.i.i.i93 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i88, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i88, i32 1, i32 3, i32 1) #9
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i88, ptr %_refcount.i.i.i.i.i88, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i88) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i.i.i.i.i94 = extractvalue { i32, i32 } %48, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i94)
  %cmp.i.i.i.i.i.i.i95 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i94, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xlgmac_free_ring, %if.then.i.i.i.i.i98)) #9
          to label %folio_put_testzero.exit.i.i99 [label %if.then.i.i.i.i.i98], !srcloc !67

if.then.i.i.i.i.i98:                              ; preds = %do.end5.i.i.i.i96
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i97 = zext i1 %cmp.i.i.i.i.i.i.i95 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %45, i32 noundef -1, i32 noundef %conv.i.i.i.i.i97) #9
  br label %folio_put_testzero.exit.i.i99

folio_put_testzero.exit.i.i99:                    ; preds = %if.then.i.i.i.i.i98, %do.end5.i.i.i.i96
  br i1 %cmp.i.i.i.i.i.i.i95, label %if.then.i4.i100, label %folio_put_testzero.exit.i.i99.put_page.exit101_crit_edge

folio_put_testzero.exit.i.i99.put_page.exit101_crit_edge: ; preds = %folio_put_testzero.exit.i.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_page.exit101

if.then.i4.i100:                                  ; preds = %folio_put_testzero.exit.i.i99
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %45) #9
  br label %put_page.exit101

put_page.exit101:                                 ; preds = %if.then.i4.i100, %folio_put_testzero.exit.i.i99.put_page.exit101_crit_edge
  %49 = call ptr @memset(ptr %rx_buf_pa, i32 0, i32 16)
  br label %if.end40

if.end40:                                         ; preds = %put_page.exit101, %if.end21.if.end40_crit_edge
  %dma_desc_head = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 1
  %50 = ptrtoint ptr %dma_desc_head to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dma_desc_head, align 64
  %tobool41.not = icmp eq ptr %51, null
  br i1 %tobool41.not, label %if.end40.cleanup_crit_edge, label %if.then42

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %dev43 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 1
  %52 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev43, align 4
  %dma_desc_count44 = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 3
  %54 = ptrtoint ptr %dma_desc_count44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_desc_count44, align 8
  %mul = shl i32 %55, 4
  %dma_desc_head_addr = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 2
  %56 = ptrtoint ptr %dma_desc_head_addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_desc_head_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %53, i32 noundef %mul, ptr noundef nonnull %51, i32 noundef %57, i32 noundef 0) #9
  %58 = ptrtoint ptr %dma_desc_head to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %dma_desc_head, align 64
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %if.end40.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlgmac_alloc_pages(ptr nocapture noundef readonly %pdata, ptr nocapture noundef writeonly %pa, i32 noundef %order) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %order)
  %cmp4 = icmp sgt i32 %order, -1
  br i1 %cmp4, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %order.addr.05 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ %order, %entry.while.body_crit_edge ]
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 272928, i32 noundef %order.addr.05, i32 noundef 0, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not, label %if.end, label %if.end3

if.end:                                           ; preds = %while.body
  %dec = add nsw i32 %order.addr.05, -1
  %cmp = icmp sgt i32 %order.addr.05, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end3:                                          ; preds = %while.body
  %dev = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %shl = shl i32 4096, %order.addr.05
  %call4 = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef nonnull %call38.i.i.i, i32 noundef 0, i32 noundef %shl, i32 noundef 2, i32 noundef 0) #9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp.i.not = icmp eq i32 %call4, -1
  br i1 %cmp.i.not, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end3
  %4 = getelementptr inbounds %struct.page, ptr %call38.i.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !66

if.then.i.i:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %6, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %call38.i.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %7, %if.end.i.i ]
  %8 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %8, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  %9 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i.i.i.i = icmp eq i32 %10, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !68

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %8, ptr noundef nonnull @.str.14) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #9, !srcloc !69
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #9, !srcloc !71
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xlgmac_alloc_pages, %if.then.i.i.i.i.i)) #9
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !67

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %8, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #9
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__put_page(ptr noundef %8) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %pa to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call38.i.i.i, ptr %pa, align 4
  %pages_len = getelementptr inbounds %struct.xlgmac_page_alloc, ptr %pa, i32 0, i32 1
  %13 = ptrtoint ptr %pages_len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shl, ptr %pages_len, align 4
  %pages_offset = getelementptr inbounds %struct.xlgmac_page_alloc, ptr %pa, i32 0, i32 2
  %14 = ptrtoint ptr %pages_offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %pages_offset, align 4
  %pages_dma12 = getelementptr inbounds %struct.xlgmac_page_alloc, ptr %pa, i32 0, i32 3
  %15 = ptrtoint ptr %pages_dma12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call4, ptr %pages_dma12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -12, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ -12, %if.then.i4.i ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlgmac_set_buffer_data(ptr nocapture noundef writeonly %bd, ptr nocapture noundef %pa, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pa, align 4
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !66

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  %7 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %8, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !68

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.25) #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #9, !srcloc !73
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #9, !srcloc !74
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@xlgmac_set_buffer_data, %if.then.i.i.i.i)) #9
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !67

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__page_ref_mod(ptr noundef %6, i32 noundef 1) #9
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %10 = call ptr @memcpy(ptr %bd, ptr %pa, i32 16)
  %pages_dma = getelementptr inbounds %struct.xlgmac_page_alloc, ptr %pa, i32 0, i32 3
  %11 = ptrtoint ptr %pages_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pages_dma, align 4
  %dma_base = getelementptr inbounds %struct.xlgmac_buffer_data, ptr %bd, i32 0, i32 2
  %13 = ptrtoint ptr %dma_base to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dma_base, align 4
  %pages_offset = getelementptr inbounds %struct.xlgmac_page_alloc, ptr %pa, i32 0, i32 2
  %14 = ptrtoint ptr %pages_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pages_offset, align 4
  %dma_off = getelementptr inbounds %struct.xlgmac_buffer_data, ptr %bd, i32 0, i32 3
  %16 = ptrtoint ptr %dma_off to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dma_off, align 4
  %dma_len = getelementptr inbounds %struct.xlgmac_buffer_data, ptr %bd, i32 0, i32 4
  %17 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %len, ptr %dma_len, align 4
  %18 = load i32, ptr %pages_offset, align 4
  %add = add i32 %18, %len
  store i32 %add, ptr %pages_offset, align 4
  %add4 = add i32 %add, %len
  %pages_len = getelementptr inbounds %struct.xlgmac_page_alloc, ptr %pa, i32 0, i32 1
  %19 = ptrtoint ptr %pages_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pages_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %20)
  %cmp = icmp ugt i32 %add4, %20
  br i1 %cmp, label %if.then, label %get_page.exit.if.end_crit_edge

get_page.exit.if.end_crit_edge:                   ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pa_unmap = getelementptr inbounds %struct.xlgmac_buffer_data, ptr %bd, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %pa_unmap, ptr %pa, i32 16)
  %22 = call ptr @memset(ptr %pa, i32 0, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %get_page.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !15, !16, !17, !19, !21, !22, !24, !26, !27, !28, !30, !32, !34, !35, !36, !38, !39, !41, !42, !44, !46, !47, !49, !50, !51, !53}
!llvm.named.register.sp = !{!55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c", i32 242, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @xlgmac_alloc_channels.__UNIQUE_ID_ddebug354, !1, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c", i32 257, i32 50}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c", i32 268, i32 9}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c", i32 281, i32 3}
!12 = !{ptr @xlgmac_alloc_channels.__UNIQUE_ID_ddebug355, !11, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c", i32 181, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @xlgmac_alloc_rings.__UNIQUE_ID_ddebug352, !14, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c", i32 189, i32 10}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c", i32 193, i32 3}
!21 = !{ptr @xlgmac_alloc_rings.__UNIQUE_ID_ddebug353, !20, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c", i32 200, i32 10}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c", i32 149, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @xlgmac_init_ring.__UNIQUE_ID_ddebug351, !25, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/mm.h", i32 717, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c", i32 537, i32 32}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c", i32 542, i32 3}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @xlgmac_map_tx_skb.__UNIQUE_ID_ddebug358, !33, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c", i32 566, i32 3}
!38 = !{ptr @xlgmac_map_tx_skb.__UNIQUE_ID_ddebug361, !37, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c", i32 580, i32 3}
!41 = !{ptr @xlgmac_map_tx_skb.__UNIQUE_ID_ddebug362, !40, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c", i32 594, i32 11}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-desc.c", i32 600, i32 4}
!46 = !{ptr @xlgmac_map_tx_skb.__UNIQUE_ID_ddebug365, !45, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!55 = !{!"sp"}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 2148355221, i64 2148355226, i64 2148355239, i64 2148355283, i64 2148355317, i64 2148355338}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 2153595510, i64 2153595993, i64 2153595547, i64 2153595603, i64 2153595637, i64 2153595661, i64 2153595702, i64 2153595723, i64 2153595751, i64 2153595785}
!70 = !{i64 2148630280}
!71 = !{i64 2148545013, i64 2148545045, i64 2148545074, i64 2148545108, i64 2148545139, i64 2148545162}
!72 = !{i64 2148630509}
!73 = !{i64 2153615422, i64 2153615906, i64 2153615459, i64 2153615515, i64 2153615549, i64 2153615573, i64 2153615614, i64 2153615635, i64 2153615663, i64 2153615697}
!74 = !{i64 2148541828, i64 2148541854, i64 2148541883, i64 2148541917, i64 2148541948, i64 2148541971}
